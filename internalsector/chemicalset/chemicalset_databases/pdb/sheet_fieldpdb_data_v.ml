(** {3 The functionalities for a Symbol Formula for a SHEET Record of a Pdb file.} *)

let nam_cod = "Sheet_fieldpdb_data_v"


let column_pair_of_sheet_fieldpdb_symbol = function
  | Sheet_fieldpdb_symbol_t.Empty_1 -> (Ordinal_p.make 7, Ordinal_p.make 7)
  | Sheet_fieldpdb_symbol_t.Sheet_strand_number -> (Ordinal_p.make 8, Ordinal_p.make 10)
  | Sheet_fieldpdb_symbol_t.Empty_2 -> (Ordinal_p.make 11, Ordinal_p.make 11)
  | Sheet_fieldpdb_symbol_t.Sheet_id -> (Ordinal_p.make 12, Ordinal_p.make 14)
  | Sheet_fieldpdb_symbol_t.Sheet_strand_count -> (Ordinal_p.make 15, Ordinal_p.make 16)
  | Sheet_fieldpdb_symbol_t.Sheet_initial_residue_name -> (Ordinal_p.make 18, Ordinal_p.make 20)
  | Sheet_fieldpdb_symbol_t.Empty_3 -> (Ordinal_p.make 21, Ordinal_p.make 21)
  | Sheet_fieldpdb_symbol_t.Sheet_initial_residue_chain_id -> (Ordinal_p.make 22, Ordinal_p.make 22)
  | Sheet_fieldpdb_symbol_t.Empty_4 -> (Ordinal_p.make 21, Ordinal_p.make 21)
  | Sheet_fieldpdb_symbol_t.Sheet_initial_residue_sequence_number -> (Ordinal_p.make 23, Ordinal_p.make 26)
  | Sheet_fieldpdb_symbol_t.Sheet_initial_residue_insertion_code -> (Ordinal_p.make 27, Ordinal_p.make 27)
  | Sheet_fieldpdb_symbol_t.Empty_5 -> (Ordinal_p.make 28, Ordinal_p.make 28)
  | Sheet_fieldpdb_symbol_t.Sheet_final_residue_name -> (Ordinal_p.make 29, Ordinal_p.make 31)
  | Sheet_fieldpdb_symbol_t.Empty_6 -> (Ordinal_p.make 32, Ordinal_p.make 32)
  | Sheet_fieldpdb_symbol_t.Sheet_final_residue_chain_id -> (Ordinal_p.make 33, Ordinal_p.make 33)
  | Sheet_fieldpdb_symbol_t.Empty_7 -> (Ordinal_p.make 33, Ordinal_p.make 33)
  | Sheet_fieldpdb_symbol_t.Sheet_final_residue_sequence_number -> (Ordinal_p.make 34, Ordinal_p.make 37)
  | Sheet_fieldpdb_symbol_t.Sheet_final_residue_insertion_code -> (Ordinal_p.make 38, Ordinal_p.make 38)
  | Sheet_fieldpdb_symbol_t.Sheet_sense -> (Ordinal_p.make 39, Ordinal_p.make 40)
  | Sheet_fieldpdb_symbol_t.Empty_8 -> (Ordinal_p.make 41, Ordinal_p.make 41)
  | Sheet_fieldpdb_symbol_t.Sheet_current_strand_atom_name -> (Ordinal_p.make 42, Ordinal_p.make 45)
  | Sheet_fieldpdb_symbol_t.Sheet_current_strand_residue_name -> (Ordinal_p.make 46, Ordinal_p.make 48)
  | Sheet_fieldpdb_symbol_t.Empty_9 -> (Ordinal_p.make 49, Ordinal_p.make 49)
  | Sheet_fieldpdb_symbol_t.Sheet_current_strand_chain_id -> (Ordinal_p.make 50, Ordinal_p.make 50)
  | Sheet_fieldpdb_symbol_t.Sheet_current_strand_residue_sequence_number -> (Ordinal_p.make 51, Ordinal_p.make 54)
  | Sheet_fieldpdb_symbol_t.Sheet_current_strand_residue_inserion_code -> (Ordinal_p.make 55, Ordinal_p.make 55)
  | Sheet_fieldpdb_symbol_t.Empty_10 -> (Ordinal_p.make 56, Ordinal_p.make 56)
  | Sheet_fieldpdb_symbol_t.Sheet_previous_strand_atom_name -> (Ordinal_p.make 57, Ordinal_p.make 60)
  | Sheet_fieldpdb_symbol_t.Sheet_previous_strand_residue_name -> (Ordinal_p.make 61, Ordinal_p.make 63)
  | Sheet_fieldpdb_symbol_t.Empty_11 -> (Ordinal_p.make 64, Ordinal_p.make 64)
  | Sheet_fieldpdb_symbol_t.Sheet_previous_strand_chain_id -> (Ordinal_p.make 65, Ordinal_p.make 65)
  | Sheet_fieldpdb_symbol_t.Sheet_previous_strand_residue_sequence_number -> (Ordinal_p.make 66, Ordinal_p.make 69)
  | Sheet_fieldpdb_symbol_t.Sheet_previous_strand_residue_inserion_code -> (Ordinal_p.make 70, Ordinal_p.make 70)
  | Sheet_fieldpdb_symbol_t.Empty_12 -> (Ordinal_p.make 71, Ordinal_p.make 80)
;;

let column_and_width_of_sheet_fieldpdb_symbol smb =
  let (c1, c2) = column_pair_of_sheet_fieldpdb_symbol smb in
  let w = (Ordinal_p.int_of_ordinal c2) - (Ordinal_p.int_of_ordinal c1) + 1 in
  (c1, w)
;;

let column_and_width_and_symbol_of_sheet_fieldpdb_symbol smb =
  let (c1, w) = column_and_width_of_sheet_fieldpdb_symbol smb in
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

let sheet_chain_idpdb_of_sheet_fieldpdb_symbol_of_recordpdb_string smb str_rcp =
 let (col, wid) =
    column_and_width_of_sheet_fieldpdb_symbol smb in
 let str_cid =
   String.sub str_rcp (Ordinal_p.int_decrement_of_ordinal col) wid in

  try Scanf.sscanf str_cid "%c" (fun ch -> ch)
  with End_of_file ->
    print_fatal_error nam_cod "chain_idpdb_off_sheet_recordpdb_string" str_cid col wid;
;;

(** created by ./do_some_fieldpdp_data_v Sheet Shfs 18 May 2010. *)
