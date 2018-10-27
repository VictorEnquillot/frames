open Make_test_v;;

testing "Figure_tag_all_list_by_figure_context_databox_tag_provider_v with
    Figure_tag_all_list_by_figure_context_databox_tag_provider_u_segment_BC.ml";;

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
   #use "Figure_tag_all_list_by_figure_context_databox_tag_provider_u_segment_BC.ml";; 

*)

(* Database file *)

let nam_dba = "db1points";;
let nam_dbo = "segment_BC";;
let nam_mod = "Figure_tag_all_list_by_figure_context_databox_tag_provider_v";;

(* Parameters_general_register_v.store nam_mod "database-name" nam_dba;; *)
(* Parameters_general_register_v.store nam_mod "databox-name" nam_dbo;; *)

(* Argument tag_fbo *)

open Figure_tag_all_list_by_figure_context_databox_tag_provider_v;; 

let tag_fbo = Figure_context_databox_tag_by_basicname_databox_n_basicname_database_provider_v.provide (bna_dbo, bna_dba);;

test_number 1 (
true
)

let (bna_dbo, bna_dba) = 
    Databox_name_n_database_name_by_figure_context_databox_tag_provider_v.provide
      tag_fbo;;

let tag_fig_l = provide tag_fbo;;

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

let str_all = Figure_tag_all_list_by_figure_context_databox_tag_register_v.dump ();;

test_number 3 (
(str_all : string ) =
 " [\n   ((Figure_context_databox_symbol_t.Figure_context_databox_constructor \"segment_BC\", [6; 5; 22]),  [\n   (Figure_symbol_t.Figure_context_domain_constructor \"figure\", [22]);\n   (Figure_symbol_t.Figure_context_database_constructor \"db1points\", [5; 22]);\n   (Figure_symbol_t.Figure_context_databox_constructor \"segment_BC\", [6; 5; 22]);\n   (Figure_symbol_t.Figure_set_body_centered_aopefset_anycenter_constructor \"segment_BC\", [1; 6; 5; 22]);\n   (Figure_symbol_t.Figure_set_body_centered_aopefset_onecenter_constructor \"he\", [1; 1; 6; 5; 22]);\n   (Figure_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry_constructor \"he s\", [1; 1; 1; 6; 5; 22]);\n   (Figure_symbol_t.Figure_set_body_segment_constructor \"he s 1\", [1; 1; 1; 1; 6; 5; 22]);\n   (Figure_symbol_t.Figure_set_fence_centered_aopef_constructor \"he s 1 1\", [1; 1; 1; 1; 1; 6; 5; 22]);\n   (Figure_symbol_t.Figure_set_fence_centered_aopef_constructor \"he s 1 2\", [2; 1; 1; 1; 1; 6; 5; 22]);\n   (Figure_symbol_t.Figure_set_body_segment_constructor \"he s 2\", [2; 1; 1; 1; 6; 5; 22]);\n   (Figure_symbol_t.Figure_set_fence_centered_aopef_constructor \"he s 2 1\", [1; 2; 1; 1; 1; 6; 5; 22]);\n   (Figure_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry_constructor \"he p\", [2; 1; 1; 6; 5; 22]);\n   (Figure_symbol_t.Figure_set_body_segment_constructor \"BC\", [1; 2; 1; 1; 6; 5; 22]);\n   (Figure_symbol_t.Figure_set_fence_centered_aopef_constructor \"BC 1\", [1; 1; 2; 1; 1; 6; 5; 22]);\n   (Figure_symbol_t.Figure_set_fence_centered_aopef_constructor \"BC_B\", [2; 1; 2; 1; 1; 6; 5; 22]);\n   (Figure_symbol_t.Figure_set_body_segment_constructor \"he p 3\", [2; 2; 1; 1; 6; 5; 22]);\n   (Figure_symbol_t.Figure_set_fence_centered_aopef_constructor \"he p 3 1\", [1; 2; 2; 1; 1; 6; 5; 22]);\n   (Figure_symbol_t.Figure_set_body_centered_ecppefset_constructor \"segment_BC\", [2; 6; 5; 22])\n  ])\n  ]"
);;

let str_soi = Figure_creation_module_name_by_sole_index_register_v.dump ();;

test_number 4 (
(str_soi : string ) =
  " [\n   ([2; 1; 1; 1; 6; 5; 22], Figure_tag_all_list_by_figure_context_databox_tag_provider_v);\n   ([2; 6; 5; 22], Figure_tag_all_list_by_figure_context_databox_tag_provider_v);\n   ([1; 2; 1; 1; 1; 6; 5; 22], Figure_tag_all_list_by_figure_context_databox_tag_provider_v);\n   ([1; 1; 1; 1; 1; 6; 5; 22], Figure_tag_all_list_by_figure_context_databox_tag_provider_v);\n   ([1; 6; 5; 22], Figure_tag_all_list_by_figure_context_databox_tag_provider_v);\n   ([5; 22], Figure_tag_all_list_by_figure_context_databox_tag_provider_v);\n   ([1; 2; 1; 1; 6; 5; 22], Figure_tag_all_list_by_figure_context_databox_tag_provider_v);\n   ([1; 1; 6; 5; 22], Figure_tag_all_list_by_figure_context_databox_tag_provider_v);\n   ([2; 1; 1; 6; 5; 22], Figure_tag_all_list_by_figure_context_databox_tag_provider_v);\n   ([1; 1; 1; 1; 6; 5; 22], Figure_tag_all_list_by_figure_context_databox_tag_provider_v);\n   ([1; 2; 2; 1; 1; 6; 5; 22], Figure_tag_all_list_by_figure_context_databox_tag_provider_v);\n   ([2; 1; 2; 1; 1; 6; 5; 22], Figure_tag_all_list_by_figure_context_databox_tag_provider_v);\n   ([2; 1; 1; 1; 1; 6; 5; 22], Figure_tag_all_list_by_figure_context_databox_tag_provider_v);\n   ([1; 1; 2; 1; 1; 6; 5; 22], Figure_tag_all_list_by_figure_context_databox_tag_provider_v);\n   ([1; 1; 1; 6; 5; 22], Figure_tag_all_list_by_figure_context_databox_tag_provider_v);\n   ([6; 5; 22], Figure_tag_all_list_by_figure_context_databox_tag_provider_v);\n   ([2; 2; 1; 1; 6; 5; 22], Figure_tag_all_list_by_figure_context_databox_tag_provider_v);\n   ([22], Figure_tag_all_list_by_figure_context_databox_tag_provider_v)\n  ]"
);;

