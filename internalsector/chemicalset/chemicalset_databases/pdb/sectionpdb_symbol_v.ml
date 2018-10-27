(** {3 The Symbol functionnalities for a Section of a Pdb Entry} *)

let nam_cod = "Sectionpdb_symbol_v";;


(** {6 Extracting.} *)

let title_sectionpdb_symbol = Sectionpdb_symbol_t.Title_sectionpdb_symbol;;
let primary_structure_sectionpdb_symbol = Sectionpdb_symbol_t.Next title_sectionpdb_symbol;;
let annotations_sectionpdb_symbol = Sectionpdb_symbol_t.Next primary_structure_sectionpdb_symbol;;
let heterogen_sectionpdb_symbol = Sectionpdb_symbol_t.Next annotations_sectionpdb_symbol;;
let secondary_structure_sectionpdb_symbol = Sectionpdb_symbol_t.Next heterogen_sectionpdb_symbol;;
let connectivity_annotations_sectionpdb_symbol = Sectionpdb_symbol_t.Next secondary_structure_sectionpdb_symbol;;
let miscellaneous_features_sectionpdb_symbol = Sectionpdb_symbol_t.Next connectivity_annotations_sectionpdb_symbol;;
let crystallographic_sectionpdb_symbol = Sectionpdb_symbol_t.Next miscellaneous_features_sectionpdb_symbol;;
let coordinate_transformation_sectionpdb_symbol = Sectionpdb_symbol_t.Next crystallographic_sectionpdb_symbol;;
let coordinate_sectionpdb_symbol = Sectionpdb_symbol_t.Next coordinate_transformation_sectionpdb_symbol;;
let connectivity_sectionpdb_symbol = Sectionpdb_symbol_t.Next coordinate_sectionpdb_symbol;;
let bookkeeping_sectionpdb_symbol = Sectionpdb_symbol_t.Next connectivity_sectionpdb_symbol;;

let rec name = function
  | Sectionpdb_symbol_t.Title_sectionpdb_symbol -> "Title" 
  | s when s = primary_structure_sectionpdb_symbol -> "Primary"
  | s when s = annotations_sectionpdb_symbol -> "Annotations"
  | s when s = heterogen_sectionpdb_symbol -> "Heterogen"
  | s when s = secondary_structure_sectionpdb_symbol -> "Secondary_structure"
  | s when s = connectivity_annotations_sectionpdb_symbol -> "Connectivity_annotations"
  | s when s = miscellaneous_features_sectionpdb_symbol -> "Miscellaneous_features"
  | s when s = crystallographic_sectionpdb_symbol -> "Crystallographic"
  | s when s = coordinate_transformation_sectionpdb_symbol -> "Coordinate_transformation"
  | s when s = coordinate_sectionpdb_symbol -> "Coordinate"
  | s when s = connectivity_sectionpdb_symbol -> "Connectivity"
  | s when s = bookkeeping_sectionpdb_symbol -> "Bookkeeping"
  | Sectionpdb_symbol_t.Next s -> Format.sprintf "Next (%s)" (name s)
;;
