(** {3 The functionalities for a Symbol Formula for a SSBOND Record of a Pdb file.} *)

let nam_cod = "Ssbond_fieldpdb_data_v"


let column_pair_of_ssbond_fieldpdb_symbol = function
  | Ssbond_fieldpdb_symbol_t.Empty_1 -> (Ordinal_p.make 7, Ordinal_p.make 7)
  | Ssbond_fieldpdb_symbol_t.Ssbond_serial_number -> (Ordinal_p.make 8, Ordinal_p.make 10)
  | Ssbond_fieldpdb_symbol_t.Empty_2 -> (Ordinal_p.make 11, Ordinal_p.make 11)
  | Ssbond_fieldpdb_symbol_t.Ssbond_residue_name_1 -> (Ordinal_p.make 12, Ordinal_p.make 14)
  | Ssbond_fieldpdb_symbol_t.Empty_3 -> (Ordinal_p.make 15, Ordinal_p.make 15)
  | Ssbond_fieldpdb_symbol_t.Ssbond_chain_idpdb_1 -> (Ordinal_p.make 16, Ordinal_p.make 16)
  | Ssbond_fieldpdb_symbol_t.Empty_4 -> (Ordinal_p.make 17, Ordinal_p.make 17)
  | Ssbond_fieldpdb_symbol_t.Ssbond_residue_sequence_number_1 -> (Ordinal_p.make 18, Ordinal_p.make 21)
  | Ssbond_fieldpdb_symbol_t.Ssbond_insertion_code_1 -> (Ordinal_p.make 22, Ordinal_p.make 22)
  | Ssbond_fieldpdb_symbol_t.Empty_5 -> (Ordinal_p.make 23, Ordinal_p.make 25)
  | Ssbond_fieldpdb_symbol_t.Ssbond_residue_name_2 -> (Ordinal_p.make 26, Ordinal_p.make 28)
  | Ssbond_fieldpdb_symbol_t.Empty_6 -> (Ordinal_p.make 29, Ordinal_p.make 29)
  | Ssbond_fieldpdb_symbol_t.Ssbond_chain_idpdb_2 -> (Ordinal_p.make 30, Ordinal_p.make 30)
  | Ssbond_fieldpdb_symbol_t.Empty_7 -> (Ordinal_p.make 31, Ordinal_p.make 31)
  | Ssbond_fieldpdb_symbol_t.Ssbond_residue_sequence_number_2 -> (Ordinal_p.make 32, Ordinal_p.make 35)
  | Ssbond_fieldpdb_symbol_t.Ssbond_insertion_code_2 -> (Ordinal_p.make 36, Ordinal_p.make 36)
  | Ssbond_fieldpdb_symbol_t.Empty_8 -> (Ordinal_p.make 37, Ordinal_p.make 59)
  | Ssbond_fieldpdb_symbol_t.Ssbond_symmetry_operator_1 -> (Ordinal_p.make 60, Ordinal_p.make 65)
  | Ssbond_fieldpdb_symbol_t.Empty_9 -> (Ordinal_p.make 66, Ordinal_p.make 66)
  | Ssbond_fieldpdb_symbol_t.Ssbond_symmetry_operator_2 -> (Ordinal_p.make 67, Ordinal_p.make 72)
  | Ssbond_fieldpdb_symbol_t.Empty_10 -> (Ordinal_p.make 73, Ordinal_p.make 73)
  | Ssbond_fieldpdb_symbol_t.SSbond_length -> (Ordinal_p.make 74, Ordinal_p.make 78)
  | Ssbond_fieldpdb_symbol_t.Empty_11 -> (Ordinal_p.make 79, Ordinal_p.make 80)
;;

let column_and_width_of_ssbond_fieldpdb_symbol smb =
  let (c1, c2) = column_pair_of_ssbond_fieldpdb_symbol smb in
  let w = (Ordinal_p.int_of_ordinal c2) - (Ordinal_p.int_of_ordinal c1) + 1 in
  (c1, w)
;;

let column_and_width_and_symbol_of_ssbond_fieldpdb_symbol smb =
  let (c1, w) = column_and_width_of_ssbond_fieldpdb_symbol smb in
  (c1, w, smb)
;;

let print_fatal_error nam_cod nam fld c w =
      Format.fprintf
	Format.err_formatter
	"@.@[<hov>%s.%s: --- Fatal Error ---@.\
        expecting data from field >%s< at column %i of %i-digits wide.@.\
        found End_of_file.@.\
        cure : check fields width@]@."
	nam_cod nam fld (Ordinal_p.int_of_ordinal c) w;
        assert false;
;;

let ssbond_chain_idpdb_of_ssbond_fieldpdb_symbol_of_recordpdb_string smb str_rcp =
 let (col, wid) =
    column_and_width_of_ssbond_fieldpdb_symbol smb in
 let str_cid =
   String.sub str_rcp (Ordinal_p.int_decrement_of_ordinal col) wid in

  try Scanf.sscanf str_cid "%c" (fun ch -> ch)
  with End_of_file ->
    print_fatal_error nam_cod "chain_idpdb_off_ssbond_recordpdb_string" str_cid col wid;
;;

(** created by ./do_some_fieldpdp_data_v Ssbond Sbfs 18 May 2010. *)
