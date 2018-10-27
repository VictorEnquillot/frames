(** {3 The functionalities for a Symbol Formula for a HELIX Record of a Pdb file.} *)

let nam_cod = "Helix_fieldpdb_data_v"


let column_pair_of_helix_fieldpdb_symbol = function
  | Helix_fieldpdb_symbol_t.Empty_1 -> (Ordinal_p.make 7, Ordinal_p.make 7)
  | Helix_fieldpdb_symbol_t.Helix_serial_number -> (Ordinal_p.make 8, Ordinal_p.make 10)
  | Helix_fieldpdb_symbol_t.Empty_2 -> (Ordinal_p.make 11, Ordinal_p.make 11)
  | Helix_fieldpdb_symbol_t.Helix_id -> (Ordinal_p.make 12, Ordinal_p.make 14)
  | Helix_fieldpdb_symbol_t.Helix_initial_residue_name -> (Ordinal_p.make 16, Ordinal_p.make 18)
  | Helix_fieldpdb_symbol_t.Empty_3 -> (Ordinal_p.make 19, Ordinal_p.make 19)
  | Helix_fieldpdb_symbol_t.Helix_initial_chain_id -> (Ordinal_p.make 20, Ordinal_p.make 20)
  | Helix_fieldpdb_symbol_t.Empty_4 -> (Ordinal_p.make 21, Ordinal_p.make 21)
  | Helix_fieldpdb_symbol_t.Helix_initial_residue_sequence_number -> (Ordinal_p.make 22, Ordinal_p.make 25)
  | Helix_fieldpdb_symbol_t.Helix_initial_residue_insertion_code -> (Ordinal_p.make 26, Ordinal_p.make 26)
  | Helix_fieldpdb_symbol_t.Empty_5 -> (Ordinal_p.make 27, Ordinal_p.make 27)
  | Helix_fieldpdb_symbol_t.Helix_final_residue_name -> (Ordinal_p.make 28, Ordinal_p.make 30)
  | Helix_fieldpdb_symbol_t.Empty_6 -> (Ordinal_p.make 31, Ordinal_p.make 31)
  | Helix_fieldpdb_symbol_t.Helix_final_chain_id -> (Ordinal_p.make 32, Ordinal_p.make 32)
  | Helix_fieldpdb_symbol_t.Empty_7 -> (Ordinal_p.make 33, Ordinal_p.make 33)
  | Helix_fieldpdb_symbol_t.Helix_final_residue_sequence_number -> (Ordinal_p.make 34, Ordinal_p.make 37)
  | Helix_fieldpdb_symbol_t.Helix_final_residue_insertion_code -> (Ordinal_p.make 38, Ordinal_p.make 38)
  | Helix_fieldpdb_symbol_t.Helix_class -> (Ordinal_p.make 39, Ordinal_p.make 40)
  | Helix_fieldpdb_symbol_t.Empty_8 -> (Ordinal_p.make 41, Ordinal_p.make 71)
  | Helix_fieldpdb_symbol_t.Helix_length -> (Ordinal_p.make 72, Ordinal_p.make 76)
  | Helix_fieldpdb_symbol_t.Empty_9 -> (Ordinal_p.make 77, Ordinal_p.make 80)
;;

let column_and_width_of_helix_fieldpdb_symbol smb =
  let (c1, c2) = column_pair_of_helix_fieldpdb_symbol smb in
  let w = (Ordinal_p.int_of_ordinal c2) - (Ordinal_p.int_of_ordinal c1) + 1 in
  (c1, w)
;;

let column_and_width_and_symbol_of_helix_fieldpdb_symbol smb =
  let (c1, w) = column_and_width_of_helix_fieldpdb_symbol smb in
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

let helix_chain_idpdb_of_helix_fieldpdb_symbol_of_recordpdb_string smb str_rcp =
 let (col, wid) =
    column_and_width_of_helix_fieldpdb_symbol smb in
 let str_cid =
   String.sub str_rcp (Ordinal_p.int_decrement_of_ordinal col) wid in

  try Scanf.sscanf str_cid "%c" (fun ch -> ch)
  with End_of_file ->
    print_fatal_error nam_cod "chain_idpdb_off_helix_recordpdb_string" str_cid col wid;
;;

(** created by ./do_some_fieldpdp_data_v Helix Hlfs 18 May 2010. *)
