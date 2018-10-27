(** {3 The functionalities for a Symbol Formula for a DBREF1 Record of a Pdb file.} *)

let nam_cod = "Dbref1_fieldpdb_data_v"


let column_pair_of_dbref1_fieldpdb_symbol = function
  | Dbref1_fieldpdb_symbol_t.Empty_1 -> (Ordinal_p.make 7, Ordinal_p.make 7)
  | Dbref1_fieldpdb_symbol_t.Dbref1_id -> (Ordinal_p.make 8, Ordinal_p.make 11)
  | Dbref1_fieldpdb_symbol_t.Empty_2 -> (Ordinal_p.make 12, Ordinal_p.make 12)
  | Dbref1_fieldpdb_symbol_t.Dbref1_chain_id -> (Ordinal_p.make 13, Ordinal_p.make 13)
  | Dbref1_fieldpdb_symbol_t.Empty_3 -> (Ordinal_p.make 14, Ordinal_p.make 14)
  | Dbref1_fieldpdb_symbol_t.Dbref1_pdb_sequence_segment_initial_sequence_number -> (Ordinal_p.make 15, Ordinal_p.make 18)
  | Dbref1_fieldpdb_symbol_t.Dbref1_pdb_sequence_segment_initial_insertion_code -> (Ordinal_p.make 19, Ordinal_p.make 19)
  | Dbref1_fieldpdb_symbol_t.Empty_4 -> (Ordinal_p.make 20, Ordinal_p.make 20)
  | Dbref1_fieldpdb_symbol_t.Dbref1_pdb_sequence_segment_final_sequence_number -> (Ordinal_p.make 21, Ordinal_p.make 24)
  | Dbref1_fieldpdb_symbol_t.Dbref1_pdb_sequence_segment_final_insertion_code -> (Ordinal_p.make 25, Ordinal_p.make 25)
  | Dbref1_fieldpdb_symbol_t.Empty_5 -> (Ordinal_p.make 26, Ordinal_p.make 26)
  | Dbref1_fieldpdb_symbol_t.Dbref1_sequence_database_name -> (Ordinal_p.make 27, Ordinal_p.make 32)
  | Dbref1_fieldpdb_symbol_t.Empty_6 -> (Ordinal_p.make 33, Ordinal_p.make 47)
  | Dbref1_fieldpdb_symbol_t.Dbref1_sequence_database_identification_code -> (Ordinal_p.make 48, Ordinal_p.make 67)
  | Dbref1_fieldpdb_symbol_t.Empty_7 -> (Ordinal_p.make 68, Ordinal_p.make 80)
;;

let column_and_width_of_dbref1_fieldpdb_symbol smb =
  let (c1, c2) = column_pair_of_dbref1_fieldpdb_symbol smb in
  let w = (Ordinal_p.int_of_ordinal c2) - (Ordinal_p.int_of_ordinal c1) + 1 in
  (c1, w)
;;

let column_and_width_and_symbol_of_dbref1_fieldpdb_symbol smb =
  let (c1, w) = column_and_width_of_dbref1_fieldpdb_symbol smb in
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

let dbref1_chain_idpdb_of_dbref1_fieldpdb_symbol_of_recordpdb_string smb str_rcp =
 let (col, wid) =
    column_and_width_of_dbref1_fieldpdb_symbol smb in
 let str_cid =
   String.sub str_rcp (Ordinal_p.int_decrement_of_ordinal col) wid in

  try Scanf.sscanf str_cid "%c" (fun ch -> ch)
  with End_of_file ->
    print_fatal_error nam_cod "chain_idpdb_off_dbref1_recordpdb_string" str_cid col wid;
;;

(** created by ./do_some_fieldpdp_data_v Dbref1 D1fs 18 May 2010. *)
