(** {3 The functionalities for a Symbol Formula for a SEQADV Record of a Pdb file.} *)

let nam_cod = "Seqadv_fieldpdb_data_v"


let column_pair_of_seqadv_fieldpdb_symbol = function
  | Seqadv_fieldpdb_symbol_t.Empty_1 -> (Ordinal_p.make 7, Ordinal_p.make 7)
  | Seqadv_fieldpdb_symbol_t.Seqadv_id -> (Ordinal_p.make 8, Ordinal_p.make 11)
  | Seqadv_fieldpdb_symbol_t.Empty_2 -> (Ordinal_p.make 12, Ordinal_p.make 12)
  | Seqadv_fieldpdb_symbol_t.Seqadv_residue_name -> (Ordinal_p.make 13, Ordinal_p.make 15)
  | Seqadv_fieldpdb_symbol_t.Empty_3 -> (Ordinal_p.make 16, Ordinal_p.make 16)
  | Seqadv_fieldpdb_symbol_t.Seqadv_chain_id -> (Ordinal_p.make 17, Ordinal_p.make 17)
  | Seqadv_fieldpdb_symbol_t.Empty_4 -> (Ordinal_p.make 18, Ordinal_p.make 18)
  | Seqadv_fieldpdb_symbol_t.Seqadv_sequence_number -> (Ordinal_p.make 19, Ordinal_p.make 22)
  | Seqadv_fieldpdb_symbol_t.Seqadv_insertion_code -> (Ordinal_p.make 23, Ordinal_p.make 23)
  | Seqadv_fieldpdb_symbol_t.Empty_5 -> (Ordinal_p.make 24, Ordinal_p.make 24)
  | Seqadv_fieldpdb_symbol_t.Seqadv_database -> (Ordinal_p.make 25, Ordinal_p.make 28)
  | Seqadv_fieldpdb_symbol_t.Empty_6 -> (Ordinal_p.make 29, Ordinal_p.make 29)
  | Seqadv_fieldpdb_symbol_t.Seqadv_sequence_databse_accession_number -> (Ordinal_p.make 30, Ordinal_p.make 38)
  | Seqadv_fieldpdb_symbol_t.Empty_7 -> (Ordinal_p.make 39, Ordinal_p.make 39)
  | Seqadv_fieldpdb_symbol_t.Seqadv_sequence_databse_residue_name -> (Ordinal_p.make 40, Ordinal_p.make 42)
  | Seqadv_fieldpdb_symbol_t.Empty_8 -> (Ordinal_p.make 43, Ordinal_p.make 43)
  | Seqadv_fieldpdb_symbol_t.Seqadv_sequence_databse_sequence_number -> (Ordinal_p.make 44, Ordinal_p.make 48)
  | Seqadv_fieldpdb_symbol_t.Empty_9 -> (Ordinal_p.make 49, Ordinal_p.make 49)
  | Seqadv_fieldpdb_symbol_t.Seqadv_conflict_description -> (Ordinal_p.make 50, Ordinal_p.make 70)
  | Seqadv_fieldpdb_symbol_t.Empty_10 -> (Ordinal_p.make 71, Ordinal_p.make 80)
;;

let column_and_width_of_seqadv_fieldpdb_symbol smb =
  let (c1, c2) = column_pair_of_seqadv_fieldpdb_symbol smb in
  let w = (Ordinal_p.int_of_ordinal c2) - (Ordinal_p.int_of_ordinal c1) + 1 in
  (c1, w)
;;

let column_and_width_and_symbol_of_seqadv_fieldpdb_symbol smb =
  let (c1, w) = column_and_width_of_seqadv_fieldpdb_symbol smb in
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

let seqadv_chain_idpdb_of_seqadv_fieldpdb_symbol_of_recordpdb_string smb str_rcp =
 let (col, wid) =
    column_and_width_of_seqadv_fieldpdb_symbol smb in
 let str_cid =
   String.sub str_rcp (Ordinal_p.int_decrement_of_ordinal col) wid in

  try Scanf.sscanf str_cid "%c" (fun ch -> ch)
  with End_of_file ->
    print_fatal_error nam_cod "chain_idpdb_off_seqadv_recordpdb_string" str_cid col wid;
;;

(** created by ./do_some_fieldpdp_data_v Seqadv Safs 18 May 2010. *)
