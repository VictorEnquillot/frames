open Make_test_v;;

testing "Skeleton_tag_all_list_by_parameters_general_provider_v with
    Skeleton_tag_all_list_by_parameters_general_provider_u_any_debug.ml";;

(* Deleting Registers *)

Register_v.delete  Context_fullnameoffile_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_index_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_name_by_context_nameoffile_register_v.register;;
Register_v.delete  Debug_by_module_name_register_v.register;;
Register_v.delete  Elementary_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Elementary_deepfence_by_elementary_tag_register_v.register;;
Register_v.delete  Elementary_symbol_by_sole_index_register_v.register;;
Register_v.delete  Elementary_tag_all_list_by_elementary_basisset_tag_register_v.register;;
Register_v.delete  Elementary_tag_tree_by_elementary_tag_register_v.register;;
Register_v.delete  Nwchem_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Nwchem_lexer_symbol_reverse_list_by_database_fullnameoffile_register_v.register;;
Register_v.delete  Nwchem_symbol_by_sole_index_register_v.register;;
Register_v.delete  Nwchem_tag_all_list_by_nwchem_context_basisset_tag_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;
Register_v.delete  Skeleton_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Skeleton_symbol_by_sole_index_register_v.register;;
Register_v.delete  Skeleton_tag_all_list_by_skeleton_context_datafile_tag_register_v.register;;
Register_v.delete  Skeleton_tag_subtree_by_skeleton_tag_register_v.register;;
Register_v.delete  Son_nwchem_tag_list_by_father_nwchem_tag_register_v.register;;


(* Tracing *)

Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Skeleton_tag_all_list_by_parameters_general_provider_u_any_debug.ml";; 

*)

let nam_dba = "nwchem";;
let nam_bas = "lanl2dz";;

Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "datafile-name" nam_bas;;

open Skeleton_tag_all_list_by_parameters_general_provider_v;;

let tag_prt_t = Skeleton_tag_tree_by_parameters_general_provider_v.provide ();;

let tag_tso_l = Tree_v.root_topson_node_list_off_tree tag_prt_t;;

test_number 1 (
(tag_tso_l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) =
  [(Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_domain_symbol
       (Skeleton_context_domain_symbol_t.Skeleton_context_domain_constructor
         "skeleton")),
    [19]);
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_database_symbol
       (Skeleton_context_database_symbol_t.Skeleton_context_database_constructor
         "nwchem")),
    [5; 19])]
);;

let tag_prt_l = Tree_v.node_list_off_tree tag_prt_t;;

let tag_top_l = List.filter (fun (s, i) -> List.length i <= 5) tag_prt_l;;

test_number 2 (
(tag_top_l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) =
 [(Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_domain_symbol
       (Skeleton_context_domain_symbol_t.Skeleton_context_domain_constructor
         "skeleton")),
    [19]);
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_database_symbol
       (Skeleton_context_database_symbol_t.Skeleton_context_database_constructor
         "nwchem")),
    [5; 19]);
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_datafile_symbol
       (Skeleton_context_datafile_symbol_t.Skeleton_context_datafile_constructor
         "lanl2dz")),
    [5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_body_symbol
       (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
         (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
           (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_any_center
             "lanl2dz")))),
    [1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_body_symbol
       (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
         (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
           (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_center
             "ne")))),
    [1; 1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_body_symbol
       (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
         (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
           (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_center
             "au")))),
    [2; 1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_body_symbol
       (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
         (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_ecppef
           "lanl2dz"))),
    [2; 5; 5; 19])]
);;


