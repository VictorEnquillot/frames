open Make_test_v;;

testing "Figure_tag_all_list_by_figure_context_databox_tag_provider_v with
    Figure_tag_all_list_by_figure_context_databox_tag_provider_u_point_a_debug.ml";;

(* Deleting Registers *)

Register_v.delete  Context_fullnameoffile_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_index_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_name_by_context_nameoffile_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;

(* Tracing *)

Parameters_general_register_v.store_force  "trace-store" "true";;
Parameters_general_register_v.store_force  "trace-retrieve" "true";;
Parameters_general_register_v.store_force  "trace-translate" "false";;
Parameters_general_register_v.store_force  "trace-provide" "false";;
Parameters_general_register_v.store_force  "trace-extract" "false";;

(* Debugging *)

                                       
(* toplevel 
   #use "Figure_tag_all_list_by_figure_context_databox_tag_provider_u_point_a_debug.ml";; 

*)

(* Database file *)

let nam_dba = "db1figure";;
let nam_dbo = "point_a";;

Parameters_general_register_v.store_force "database-name" nam_dba;;
Parameters_general_register_v.store_force "databox-name" nam_dbo;;

(* Argument tag_fbo *)

open Figure_tag_all_list_by_figure_context_databox_tag_provider_v;; 

let tag_fbo = Figure_context_databox_tag_by_database_name_n_databox_name_provider_v.provide (nam_dba, nam_dbo);;

let tag_fig_l = provide tag_fbo;;

test_number 1 (
( tag_fig_l : Figure_symbol_t.figure_symbol Tag_t.tag list ) =
  [(Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_domain_symbol
       (Figure_context_domain_symbol_t.Figure_context_domain_constructor
         "figure")),
    [8]);
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_database_symbol
       (Figure_context_database_symbol_t.Figure_context_database_constructor
         "db1figure")),
    [1; 8]);
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_databox_symbol
       (Figure_context_databox_symbol_t.Figure_context_databox_constructor
         "point_a")),
    [1; 1; 8]);
   (Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Figure_field_fence_point_symbol
         (Figure_field_fence_point_symbol_t.Figure_field_fence_point_constructor "A"))),
    [1; 1; 1; 8])]
);;

let str_all = Figure_tag_all_list_by_figure_context_databox_tag_register_v.dump ();;

test_number 2 (
(str_all : string ) =
  " [\n   ((Figure_context_databox_symbol_t.Figure_context_databox_constructor \"point_a\", [1; 1; 8]),  [\n   (Figure_symbol_t.Figure_context_domain_constructor \"figure\", [8]);\n   (Figure_symbol_t.Figure_context_database_constructor \"db1figure\", [1; 8]);\n   (Figure_symbol_t.Figure_context_databox_constructor \"point_a\", [1; 1; 8]);\n   (Figure_symbol_t.Figure_field_fence_point_constructor \"A\", [1; 1; 1; 8])\n  ])\n  ]"
);;

let str_soi = Figure_creation_module_name_by_sole_index_register_v.dump ();;

test_number 3 (
(str_soi : string ) =
  " [\n   ([1; 8], Figure_tag_all_list_by_figure_context_databox_tag_provider_v);\n   ([1; 1; 1; 8], Figure_tag_all_list_by_figure_context_databox_tag_provider_v);\n   ([1; 1; 8], Figure_tag_all_list_by_figure_context_databox_tag_provider_v);\n   ([8], Figure_tag_all_list_by_figure_context_databox_tag_provider_v)\n  ]"
);;

