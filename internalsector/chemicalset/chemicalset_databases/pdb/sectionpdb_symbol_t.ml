(** {3 The Symbol for a Section in Pdb File} *)

type sectionpdb_symbol = 
  | Title_sectionpdb_symbol
  | Next of sectionpdb_symbol
;;
(** The Section types must follow the PDB Canonical Order. *)

(* Order list of Sectionpdb Symbols :
  | Title_sectionpdb_symbol
  | Primary_structure_sectionpdb_symbol
  | Heterogen_sectionpdb_symbol
  | Secondary_structure_sectionpdb_symbol
  | Connectivity_annotations_sectionpdb_symbol
  | Miscellaneous_features_sectionpdb_symbol
  | Crystallographic_sectionpdb_symbol
  | Coordinate_transformation_sectionpdb_symbol
  | Coordinate_sectionpdb_symbol
  | Connectivity_sectionpdb_symbol
  | Bookkeeping_sectionpdb_symbol
;;
*)
