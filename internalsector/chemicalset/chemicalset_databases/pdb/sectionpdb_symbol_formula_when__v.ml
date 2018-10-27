(** {3 The functionalities fro a Constrained Symbol Formula for an Entry of the Pdb} *)

(** 
@see {{:http://www.wwpdb.org/documentation/format32/sect2.html#TITLE}
        http://www.wwpdb.org/documentation/format32/sect2.html#TITLE}

A Section contains Packs of Records.
*)


let make_of_title_sectionpdb_symbol sym_scp =
    * HEADER
    * OBSLTE
    * TITLE
    * SPLIT
    * CAVEAT
    * COMPND
    * SOURCE
    * KEYWDS
    * EXPDTA
    * NUMMDL
    * MDLTYP
    * AUTHOR
    * REVDAT
    * SPRSDE
    * JRNL
    * REMARKS 
;;

let make =  function
  | Entrypdb_symbol_t.Title_sectionpdb_symbol -> 
      make_of_title_sectionpdb_symbol 
  | s when s = Sectionpdb_symbol_v.remark_sectionpdb_symbol -> 
  | s when s = Sectionpdb_symbol_v.primary_structure_sectionpdb_symbol -> 
  | s when s = Sectionpdb_symbol_v.annotations_sectionpdb_symbol -> 
  | s when s = Sectionpdb_symbol_v.heterogen_sectionpdb_symbol -> 
  | s when s = Sectionpdb_symbol_v.secondary_structure_sectionpdb_symbol -> 
  | s when s = Sectionpdb_symbol_v.connectivity_annotations_sectionpdb_symbol -> 
  | s when s = Sectionpdb_symbol_v.miscellaneous_features_sectionpdb_symbol -> 
  | s when s = Sectionpdb_symbol_v.crystallographic_sectionpdb_symbol -> 
  | s when s = Sectionpdb_symbol_v.coordinate_transformation_sectionpdb_symbol -> 
  | s when s = Sectionpdb_symbol_v.coordinate_sectionpdb_symbol -> 
  | s when s = Sectionpdb_symbol_v.connectivity_sectionpdb_symbol ->
  | s when s = Sectionpdb_symbol_v.bookkeeping_sectionpdb_symbol -> 
  | Entrypdb_symbol_t.Next s -> failwith "Unkown_sectionpdb"
