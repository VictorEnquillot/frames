(** {3 The functionalities for a Symbol for a Field in a SITE Record of a Pdb file.} *)

(** {6 Abbreviating.} *)

val site_sequence_number : Site_fieldpdb_symbol_t.site_fieldpdb_symbol;;
val site_name : Site_fieldpdb_symbol_t.site_fieldpdb_symbol;;
val site_residue_count : Site_fieldpdb_symbol_t.site_fieldpdb_symbol;;
val site_first_residue_name : Site_fieldpdb_symbol_t.site_fieldpdb_symbol;;
val site_first_residue_chain_id : Site_fieldpdb_symbol_t.site_fieldpdb_symbol;;
val site_first_residue_sequence_number : Site_fieldpdb_symbol_t.site_fieldpdb_symbol;;
val site_first_residue_insertion_code : Site_fieldpdb_symbol_t.site_fieldpdb_symbol;;
val site_second_residue_name : Site_fieldpdb_symbol_t.site_fieldpdb_symbol;;
val site_second_residue_chain_id : Site_fieldpdb_symbol_t.site_fieldpdb_symbol;;
val site_second_residue_sequence_number : Site_fieldpdb_symbol_t.site_fieldpdb_symbol;;
val site_second_residue_insertion_code : Site_fieldpdb_symbol_t.site_fieldpdb_symbol;;
val site_third_residue_name : Site_fieldpdb_symbol_t.site_fieldpdb_symbol;;
val site_third_residue_chain_id : Site_fieldpdb_symbol_t.site_fieldpdb_symbol;;
val site_third_residue_sequence_number : Site_fieldpdb_symbol_t.site_fieldpdb_symbol;;
val site_third_residue_insertion_code : Site_fieldpdb_symbol_t.site_fieldpdb_symbol;;
val site_fourth_residue_name : Site_fieldpdb_symbol_t.site_fieldpdb_symbol;;
val site_fourth_residue_chain_id : Site_fieldpdb_symbol_t.site_fieldpdb_symbol;;
val site_fourth_residue_sequence_number : Site_fieldpdb_symbol_t.site_fieldpdb_symbol;;
val site_fourth_residue_insertion_code : Site_fieldpdb_symbol_t.site_fieldpdb_symbol;;

(** {6 Converting.} *)

val string_of_site_fieldpdb_symbol :
  Site_fieldpdb_symbol_t.site_fieldpdb_symbol ->
       string
;;

val name :
  Site_fieldpdb_symbol_t.site_fieldpdb_symbol ->
       string
;;

val print : Format.formatter ->
  Site_fieldpdb_symbol_t.site_fieldpdb_symbol ->
       unit
;;
