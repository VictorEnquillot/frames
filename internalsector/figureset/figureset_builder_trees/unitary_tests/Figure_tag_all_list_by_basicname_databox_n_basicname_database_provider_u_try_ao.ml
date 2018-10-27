open Make_test_v;;

testing "Figure_tag_all_list_by_basicname_databox_n_basicname_database_provider_v with
    Figure_tag_all_list_by_basicname_databox_n_basicname_database_provider_u_segment_BC.ml";;

(* Deleting Registers *)
Register_v.delete Databox_name_n_database_name_by_figure_context_databox_tag_register_v.register;;
Register_v.delete Figure_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Figure_fence_by_figure_tag_register_v.register;;
Register_v.delete Figure_son_tag_list_by_figure_father_tag_register_v.register;;
Register_v.delete Figure_symbol_by_sole_index_register_v.register;;
Register_v.delete Figure_tag_all_list_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Figure_tag_all_list_by_figure_context_databox_tag_register_v.register;;
Register_v.delete Figure_tag_subtree_by_figure_tag_register_v.register;;
Register_v.delete Figure_tag_tree_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Figure_tag_tree_by_figure_context_databox_tag_register_v.register;;


(* Tracing *)


(* Debugging *)

                                       
(* toplevel 
   #use "Figure_tag_all_list_by_basicname_databox_n_basicname_database_provider_u_segment_BC.ml";; 
         
*)

(* Database file *)

let nam_dba = "db1points";;
let nam_dbo = "segment_BC";;

Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_dbo;;

(* Argument (bna_dbo, bna_dba) *)

open Figure_tag_all_list_by_basicname_databox_n_basicname_database_provider_v;; 

let tag_fig_t = Figure_tag_tree_by_basicname_databox_n_basicname_database_provider_v.provide
      (bna_dbo, bna_dba);;

let tag_fig_tso_l  = Tree_v.root_topson_node_list_off_tree tag_fig_t;;

test_number 1 (
( tag_fig_tso_l : Figure_symbol_t.figure_symbol Tag_t.tag list ) =
  [(Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_domain_symbol
       (Figure_context_domain_symbol_t.Figure_context_domain_constructor
         "figure")),
    [22]);
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_database_symbol
       (Figure_context_database_symbol_t.Figure_context_database_constructor
         "db1points")),
    [5; 22])]
);;

let tag_fig_l = Tree_v.node_list_off_tree tag_fig_t;;

test_number 2 (
( tag_fig_l : Figure_symbol_t.figure_symbol Tag_t.tag list ) =
  [(Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_domain_symbol
       (Figure_context_domain_symbol_t.Figure_context_domain_constructor
         "figure")),
    [22]);
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_database_symbol
       (Figure_context_database_symbol_t.Figure_context_database_constructor
         "db1points")),
    [5; 22]);
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_databox_symbol
       (Figure_context_databox_symbol_t.Figure_context_databox_constructor
         "segment_BC")),
    [6; 5; 22]);
   (Figure_symbol_t.Figure_set_body_symbol
     (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
       (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
         (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_anycenter_symbol
           (Figure_set_body_centered_aopefset_anycenter_symbol_t.Figure_set_body_centered_aopefset_anycenter_constructor
             "segment_BC")))),
    [1; 6; 5; 22]);
   (Figure_symbol_t.Figure_set_body_symbol
     (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
       (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
         (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_onecenter_symbol
           (Figure_set_body_centered_aopefset_onecenter_symbol_t.Figure_set_body_centered_aopefset_onecenter_constructor
             "he")))),
    [1; 1; 6; 5; 22]);
   (Figure_symbol_t.Figure_set_body_symbol
     (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
       (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
         (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry_symbol
           (Figure_set_body_centered_aopefset_shellsymmetry_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry_constructor
             "he s")))),
    [1; 1; 1; 6; 5; 22]);
   (Figure_symbol_t.Figure_set_body_symbol
     (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
       (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
         (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_shellordinal_symbol
           (Figure_set_body_centered_aopefset_shellordinal_symbol_t.Figure_set_body_segment_constructor
             "he s 1")))),
    [1; 1; 1; 1; 6; 5; 22]);
   (Figure_symbol_t.Figure_set_fence_symbol
     (Figure_set_fence_symbol_t.Figure_set_fence_centered_symbol
       (Figure_set_fence_centered_symbol_t.Figure_set_fence_centered_aopef_symbol
         (Figure_set_fence_centered_aopef_symbol_t.Figure_set_fence_centered_aopef_constructor
           "he s 1 1"))),
    [1; 1; 1; 1; 1; 6; 5; 22]);
   (Figure_symbol_t.Figure_set_fence_symbol
     (Figure_set_fence_symbol_t.Figure_set_fence_centered_symbol
       (Figure_set_fence_centered_symbol_t.Figure_set_fence_centered_aopef_symbol
         (Figure_set_fence_centered_aopef_symbol_t.Figure_set_fence_centered_aopef_constructor
           "he s 1 2"))),
    [2; 1; 1; 1; 1; 6; 5; 22]);
   (Figure_symbol_t.Figure_set_body_symbol
     (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
       (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
         (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_shellordinal_symbol
           (Figure_set_body_centered_aopefset_shellordinal_symbol_t.Figure_set_body_segment_constructor
             "he s 2")))),
    [2; 1; 1; 1; 6; 5; 22]);
   (Figure_symbol_t.Figure_set_fence_symbol
     (Figure_set_fence_symbol_t.Figure_set_fence_centered_symbol
       (Figure_set_fence_centered_symbol_t.Figure_set_fence_centered_aopef_symbol
         (Figure_set_fence_centered_aopef_symbol_t.Figure_set_fence_centered_aopef_constructor
           "he s 2 1"))),
    [1; 2; 1; 1; 1; 6; 5; 22]);
   (Figure_symbol_t.Figure_set_body_symbol
     (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
       (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
         (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry_symbol
           (Figure_set_body_centered_aopefset_shellsymmetry_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry_constructor
             "he p")))),
    [2; 1; 1; 6; 5; 22]);
   (Figure_symbol_t.Figure_set_body_symbol
     (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
       (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
         (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_shellordinal_symbol
           (Figure_set_body_centered_aopefset_shellordinal_symbol_t.Figure_set_body_segment_constructor
             "BC")))),
    [1; 2; 1; 1; 6; 5; 22]);
   (Figure_symbol_t.Figure_set_fence_symbol
     (Figure_set_fence_symbol_t.Figure_set_fence_centered_symbol
       (Figure_set_fence_centered_symbol_t.Figure_set_fence_centered_aopef_symbol
         (Figure_set_fence_centered_aopef_symbol_t.Figure_set_fence_centered_aopef_constructor
           "BC 1"))),
    [1; 1; 2; 1; 1; 6; 5; 22]);
   (Figure_symbol_t.Figure_set_fence_symbol
     (Figure_set_fence_symbol_t.Figure_set_fence_centered_symbol
       (Figure_set_fence_centered_symbol_t.Figure_set_fence_centered_aopef_symbol
         (Figure_set_fence_centered_aopef_symbol_t.Figure_set_fence_centered_aopef_constructor
           "BC_B"))),
    [2; 1; 2; 1; 1; 6; 5; 22]);
   (Figure_symbol_t.Figure_set_body_symbol
     (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
       (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
         (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_shellordinal_symbol
           (Figure_set_body_centered_aopefset_shellordinal_symbol_t.Figure_set_body_segment_constructor
             "he p 3")))),
    [2; 2; 1; 1; 6; 5; 22]);
   (Figure_symbol_t.Figure_set_fence_symbol
     (Figure_set_fence_symbol_t.Figure_set_fence_centered_symbol
       (Figure_set_fence_centered_symbol_t.Figure_set_fence_centered_aopef_symbol
         (Figure_set_fence_centered_aopef_symbol_t.Figure_set_fence_centered_aopef_constructor
           "he p 3 1"))),
    [1; 2; 2; 1; 1; 6; 5; 22]);
   (Figure_symbol_t.Figure_set_body_symbol
     (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
       (Figure_set_body_centered_symbol_t.Figure_set_body_centered_ecppefset_symbol
         (Figure_set_body_centered_ecppefset_symbol_t.Figure_set_body_centered_ecppefset_constructor
           "segment_BC"))),
    [2; 6; 5; 22])]
);;

test_number 3 (
tag_fig_l = provide (bna_dbo, bna_dba)
);;

