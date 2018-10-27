(** {3 The functionalities fro a Constrained Symbol Formula for an Entry of the Pdb} *)

let nam_cod = "Entrypdb_symbol_formula_v";;

(** 
@see {{:http://www.wwpdb.org/documentation/format32/sect2.html#TITLE}
        http://www.wwpdb.org/documentation/format32/sect2.html#TITLE}
    
    A entry contains Sections organized in a well defined list order.
*)


let sectionpdb_symbol_list_of_entrypdb_symbol =
  | ProteinID pid ->
      [Sectionpdb_symbol_t.title_sectionpdb_symbol;
       Sectionpdb_symbol_t.primary_structure_sectionpdb_symbol; 
       Sectionpdb_symbol_t.heterogen_sectionpdb_symbol; 
       Sectionpdb_symbol_t.secondary_structure_sectionpdb_symbol; 
       Sectionpdb_symbol_t.connectivity_annotations_sectionpdb_symbol; 
       Sectionpdb_symbol_t.miscellaneous_features_sectionpdb_symbol; 
       Sectionpdb_symbol_t.coordinate_transformation_sectionpdb_symbol; 
       Sectionpdb_symbol_t.crystallographic_sectionpdb_symbol; 
       Sectionpdb_symbol_t.coordinate_sectionpdb_symbol; 
       Sectionpdb_symbol_t.connectivity_sectionpdb_symbol; 
       Sectionpdb_symbol_t.bookkeeping_sectionpdb_symbol;] 
  | CofferID mid ->
      Utils_v.not_yet_implemented nam_cod "secondary_structure_sectionpdb_symbol"
;;

let retrieve sym_enp =
  sectionpdb_symbol_list_of_entrypdb_symbol sym_enp
;;	
