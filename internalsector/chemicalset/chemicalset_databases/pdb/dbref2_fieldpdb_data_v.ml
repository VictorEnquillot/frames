(** {3 The functionalities for a Symbol Formula for a DBREF2 Record of a Pdb file.} *)

let nam_cod = "Dbref2_fieldpdb_data_v"


let column_pair_of_dbref2_fieldpdb_symbol = function
  | Dbref2_fieldpdb_symbol_t.Empty_1 -> (Ordinal_p.make 7, Ordinal_p.make 7)
  | Dbref2_fieldpdb_symbol_t.Dbref2_id -> (Ordinal_p.make 8, Ordinal_p.make 11)
  | Dbref2_fieldpdb_symbol_t.Empty_2 -> (Ordinal_p.make 12, Ordinal_p.make 12)
  | Dbref2_fieldpdb_symbol_t.Dbref2_chain_id -> (Ordinal_p.make 13, Ordinal_p.make 13)
  | Dbref2_fieldpdb_symbol_t.Empty_3 -> (Ordinal_p.make 14, Ordinal_p.make 18)
  | Dbref2_fieldpdb_symbol_t.Dbref2_sequence_database_accession_code -> (Ordinal_p.make 19, Ordinal_p.make 40)
  | Dbref2_fieldpdb_symbol_t.Empty_4 -> (Ordinal_p.make 41, Ordinal_p.make 45)
  | Dbref2_fieldpdb_symbol_t.Dbref2_pdb_sequence_segment_initial_sequence_number -> (Ordinal_p.make 46, Ordinal_p.make 55)
  | Dbref2_fieldpdb_symbol_t.Empty_5 -> (Ordinal_p.make 56, Ordinal_p.make 47)
  | Dbref2_fieldpdb_symbol_t.Dbref2_pdb_sequence_segment_final_sequence_number -> (Ordinal_p.make 58, Ordinal_p.make 67)
  | Dbref2_fieldpdb_symbol_t.Empty_8 -> (Ordinal_p.make 69, Ordinal_p.make 80)
;;

let column_and_width_of_dbref2_fieldpdb_symbol smb =
  let (c1, c2) = column_pair_of_dbref2_fieldpdb_symbol smb in
  let w = (Ordinal_p.int_of_ordinal c2) - (Ordinal_p.int_of_ordinal c1) + 1 in
  (c1, w)
;;

let column_and_width_and_symbol_of_dbref2_fieldpdb_symbol smb =
  let (c1, w) = column_and_width_of_dbref2_fieldpdb_symbol smb in
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

let dbref2_chain_idpdb_of_dbref2_fieldpdb_symbol_of_recordpdb_string smb str_rcp =
 let (col, wid) =
    column_and_width_of_dbref2_fieldpdb_symbol smb in
 let str_cid =
   String.sub str_rcp (Ordinal_p.int_decrement_of_ordinal col) wid in

  try Scanf.sscanf str_cid "%c" (fun ch -> ch)
  with End_of_file ->
    print_fatal_error nam_cod "chain_idpdb_off_dbref2_recordpdb_string" str_cid col wid;
;;

(** created by ./do_some_fieldpdp_data_v Dbref2 D2fs 18 May 2010. *)
