open Make_test_v;;

testing "Skeleton_tag_all_list_by_database_name_n_databox_name_provider_v with
    Skeleton_tag_all_list_by_parameters_general_provider_u_any.ml";;

(* Deleting Registers *)





(* Tracing *)


(* toplevel 
   #use "Skeleton_tag_all_list_by_parameters_general_provider_u_any.ml";; 

*)

let nam_dba = "nwchem";;
let nam_bas = "lanl2dz";;

Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_bas;;

open Skeleton_tag_all_list_by_database_name_n_databox_name_provider_v;;

let tag_ske_t = Skeleton_tag_tree_by_parameters_general_provider_v.provide ();;

let tag_tso_l = Tree_v.root_topson_node_list_off_tree tag_ske_t;;

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

let tag_ske_l = Tree_v.node_list_off_tree tag_ske_t;;

let tag_top_l = List.filter (fun (s, i) -> List.length i <= 5) tag_ske_l;;

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
     (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
       (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
         "lanl2dz")),
    [5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_body_symbol
       (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
         (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
           (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_anycenter
             "lanl2dz")))),
    [1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_body_symbol
       (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
         (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
           (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_onecenter
             "ne")))),
    [1; 1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_body_symbol
       (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
         (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
           (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_onecenter
             "au")))),
    [2; 1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_body_symbol
       (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
         (Skeleton_body_centered_symbol_t.Skeleton_body_centered_ecppef
           "lanl2dz"))),
    [2; 5; 5; 19])]
);;


