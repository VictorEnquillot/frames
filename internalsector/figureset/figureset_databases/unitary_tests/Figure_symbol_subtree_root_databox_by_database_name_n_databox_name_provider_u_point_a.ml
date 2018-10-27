open Make_test_v;;

testing "Figure_symbol_subtree_root_databox_by_database_name_n_databox_name_provider_v with
    Figure_symbol_subtree_root_databox_by_database_name_n_databox_name_provider_u_point_a_debug.ml";;

(* Deleting Registers *)

Register_v.delete  Context_fullnameoffile_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_index_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_name_by_context_nameoffile_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;

(* Tracing *)

Parameters_general_register_v.store_force  "trace-store" "false";;
Parameters_general_register_v.store_force  "trace-translate" "false";;
Parameters_general_register_v.store_force  "trace-provide" "false";;
Parameters_general_register_v.store_force  "trace-extract" "false";;

(* Debugging *)

                                       
(* toplevel 
   #use "Figure_symbol_subtree_root_databox_by_database_name_n_databox_name_provider_u_point_a_debug.ml";; 

*)

(* Database file *)

let nam_dba = "db1figure";;
let nam_dbo = "point_a";;

Parameters_general_register_v.store_force "database-name" nam_dba;;
Parameters_general_register_v.store_force "databox-name" nam_dbo;;

(* Argument (nam_dba, nam_dbo) *)

open Figure_symbol_subtree_root_databox_by_database_name_n_databox_name_provider_v;; 

let sym_fig_ffi_st = 
  Figure_as_field_symbol_subtree_by_database_name_n_databox_name_provider_v.provide
    (nam_dba, nam_dbo);;

test_number 1 (
(sym_fig_ffi_st : Figure_symbol_t.figure_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Figure_field_fence_point_symbol
         (Figure_field_fence_point_symbol_t.Figure_field_fence_point_constructor
           "A"))))
);;

let tag_fig_fba = Figure_as_context_database_tag_by_database_name_provider_v.provide nam_dba;;

test_number 2 (
(tag_fig_fba : Figure_symbol_t.figure_symbol Tag_t.tag ) =
  (Figure_symbol_t.Figure_context_symbol
    (Figure_context_symbol_t.Figure_context_database_symbol
      (Figure_context_database_symbol_t.Figure_context_database_constructor
        "db1figure")),
   [1; 8])
);;

let tag_fig_fbo = 
  Figure_as_context_databox_tag_by_database_name_n_databox_name_provider_v.provide 
    (nam_dba, nam_dbo);;

test_number 3 (
(tag_fig_fbo : Figure_symbol_t.figure_symbol Tag_t.tag ) =
(Figure_symbol_t.Figure_context_symbol
   (Figure_context_symbol_t.Figure_context_databox_symbol
      (Figure_context_databox_symbol_t.Figure_context_databox_constructor
         "point_a")),
 [1; 1; 8])
);;

let sym_fig_fbo = Tag_v.entity_off_tag tag_fig_fbo;;

let sym_fig_st = Tree_v.make_of_node sym_fig_fbo [sym_fig_ffi_st];;

test_number 4 (
( sym_fig_st : Figure_symbol_t.figure_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_databox_symbol
       (Figure_context_databox_symbol_t.Figure_context_databox_constructor
         "point_a")),
   [Tree_t.Leaf
     (Figure_symbol_t.Figure_field_symbol
       (Figure_field_symbol_t.Figure_field_fence_symbol
         (Figure_field_fence_symbol_t.Figure_field_fence_point_symbol
           (Figure_field_fence_point_symbol_t.Figure_field_fence_point_constructor "A"))))])
);;

test_number 5 (
sym_fig_st = provide (nam_dba, nam_dbo)
);;
