(** {3 The Symbol functionnalities for a Section of a Pdb Entry} *)

val name : 
    Sectionpdb_symbol_t.sectionpdb_symbol ->
      string 
;;

val bookkeeping_sectionpdb_symbol : Sectionpdb_symbol_t.sectionpdb_symbol;;
val connectivity_sectionpdb_symbol : Sectionpdb_symbol_t.sectionpdb_symbol;;
val connectivity_annotations_sectionpdb_symbol : Sectionpdb_symbol_t.sectionpdb_symbol;;
val coordinate_sectionpdb_symbol : Sectionpdb_symbol_t.sectionpdb_symbol;;
val coordinate_transformation_sectionpdb_symbol : Sectionpdb_symbol_t.sectionpdb_symbol;;
val crystallographic_sectionpdb_symbol : Sectionpdb_symbol_t.sectionpdb_symbol;;
val heterogen_sectionpdb_symbol : Sectionpdb_symbol_t.sectionpdb_symbol;;
val miscellaneous_features_sectionpdb_symbol : Sectionpdb_symbol_t.sectionpdb_symbol;;
val primary_structure_sectionpdb_symbol : Sectionpdb_symbol_t.sectionpdb_symbol;;
val secondary_structure_sectionpdb_symbol : Sectionpdb_symbol_t.sectionpdb_symbol;;
val title_sectionpdb_symbol : Sectionpdb_symbol_t.sectionpdb_symbol;;
