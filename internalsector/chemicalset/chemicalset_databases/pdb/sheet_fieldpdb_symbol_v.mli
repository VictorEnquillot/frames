(** {3 The functionalities for a Symbol for a Field in a SHEET Record of a Pdb file.} *)

(** {6 Abbreviating.} *)

val sheet_strand_number : Sheet_fieldpdb_symbol_t.sheet_fieldpdb_symbol;;
val sheet_id : Sheet_fieldpdb_symbol_t.sheet_fieldpdb_symbol;;
val sheet_strand_count : Sheet_fieldpdb_symbol_t.sheet_fieldpdb_symbol;;
val sheet_initial_residue_name : Sheet_fieldpdb_symbol_t.sheet_fieldpdb_symbol;;
val sheet_initial_residue_chain_id : Sheet_fieldpdb_symbol_t.sheet_fieldpdb_symbol;;
val sheet_initial_residue_sequence_number : Sheet_fieldpdb_symbol_t.sheet_fieldpdb_symbol;;
val sheet_initial_residue_insertion_code : Sheet_fieldpdb_symbol_t.sheet_fieldpdb_symbol;;
val sheet_final_residue_name : Sheet_fieldpdb_symbol_t.sheet_fieldpdb_symbol;;
val sheet_final_residue_chain_id : Sheet_fieldpdb_symbol_t.sheet_fieldpdb_symbol;;
val sheet_final_residue_sequence_number : Sheet_fieldpdb_symbol_t.sheet_fieldpdb_symbol;;
val sheet_final_residue_insertion_code : Sheet_fieldpdb_symbol_t.sheet_fieldpdb_symbol;;
val sheet_sense : Sheet_fieldpdb_symbol_t.sheet_fieldpdb_symbol;;
val sheet_current_strand_atom_name : Sheet_fieldpdb_symbol_t.sheet_fieldpdb_symbol;;
val sheet_current_strand_residue_name : Sheet_fieldpdb_symbol_t.sheet_fieldpdb_symbol;;
val sheet_current_strand_chain_id : Sheet_fieldpdb_symbol_t.sheet_fieldpdb_symbol;;
val sheet_current_strand_residue_sequence_number : Sheet_fieldpdb_symbol_t.sheet_fieldpdb_symbol;;
val sheet_current_strand_residue_inserion_code : Sheet_fieldpdb_symbol_t.sheet_fieldpdb_symbol;;
val sheet_previous_strand_atom_name : Sheet_fieldpdb_symbol_t.sheet_fieldpdb_symbol;;
val sheet_previous_strand_residue_name : Sheet_fieldpdb_symbol_t.sheet_fieldpdb_symbol;;
val sheet_previous_strand_chain_id : Sheet_fieldpdb_symbol_t.sheet_fieldpdb_symbol;;
val sheet_previous_strand_residue_sequence_number : Sheet_fieldpdb_symbol_t.sheet_fieldpdb_symbol;;
val sheet_previous_strand_residue_inserion_code : Sheet_fieldpdb_symbol_t.sheet_fieldpdb_symbol;;

(** {6 Converting.} *)

val string_of_sheet_fieldpdb_symbol :
  Sheet_fieldpdb_symbol_t.sheet_fieldpdb_symbol ->
       string
;;

val name :
  Sheet_fieldpdb_symbol_t.sheet_fieldpdb_symbol ->
       string
;;

val print : Format.formatter ->
  Sheet_fieldpdb_symbol_t.sheet_fieldpdb_symbol ->
       unit
;;
