(** {3 The functionalities for a Symbol for a Field in a LINK Record of a Pdb file.} *)

(** {6 Abbreviating.} *)

val link_atom_name_1 : Link_fieldpdb_symbol_t.link_fieldpdb_symbol;;
val link_alternative_location_1 : Link_fieldpdb_symbol_t.link_fieldpdb_symbol;;
val link_residue_name_1 : Link_fieldpdb_symbol_t.link_fieldpdb_symbol;;
val link_chain_idpdb_1 : Link_fieldpdb_symbol_t.link_fieldpdb_symbol;;
val link_residue_sequence_number_1 : Link_fieldpdb_symbol_t.link_fieldpdb_symbol;;
val link_insertion_code_1 : Link_fieldpdb_symbol_t.link_fieldpdb_symbol;;
val link_atom_name_2 : Link_fieldpdb_symbol_t.link_fieldpdb_symbol;;
val link_alternative_location_2 : Link_fieldpdb_symbol_t.link_fieldpdb_symbol;;
val link_residue_name_2 : Link_fieldpdb_symbol_t.link_fieldpdb_symbol;;
val link_chain_idpdb_2 : Link_fieldpdb_symbol_t.link_fieldpdb_symbol;;
val link_residue_sequence_number_2 : Link_fieldpdb_symbol_t.link_fieldpdb_symbol;;
val link_insertion_code_2 : Link_fieldpdb_symbol_t.link_fieldpdb_symbol;;
val symmetry_operator_1 : Link_fieldpdb_symbol_t.link_fieldpdb_symbol;;
val symmetry_operator_2 : Link_fieldpdb_symbol_t.link_fieldpdb_symbol;;
val link_length : Link_fieldpdb_symbol_t.link_fieldpdb_symbol;;

(** {6 Converting.} *)

val string_of_link_fieldpdb_symbol :
  Link_fieldpdb_symbol_t.link_fieldpdb_symbol ->
       string
;;

val name :
  Link_fieldpdb_symbol_t.link_fieldpdb_symbol ->
       string
;;

val print : Format.formatter ->
  Link_fieldpdb_symbol_t.link_fieldpdb_symbol ->
       unit
;;
