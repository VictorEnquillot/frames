open Make_test_v;;

testing "Figure_tag_tree_by_input_variable_name_provider_v with
    Figure_tag_by_input_variable_name_provider_u_point_print_debug.ml";;

(* Deleting Registers *)

Register_v.delete  Context_fullnameoffile_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_index_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_name_by_context_nameoffile_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;









(* Tracing *)

Parameters_general_register_v.store_force  "trace-build" "false";;
Parameters_general_register_v.store_force  "trace-store" "false";;
Parameters_general_register_v.store_force  "trace-translate" "false";;
Parameters_general_register_v.store_force  "trace-provide" "false";;
Parameters_general_register_v.store_force  "trace-extract" "false";;

(* toplevel 
   #use "Figure_tag_by_input_variable_name_provider_u_point_print_debug.ml";;

*)

(* Input File *)

let nam_inp = "Point_print.inp";;
let fno_inp = Input_file_fullnameoffile_by_input_file_nameoffile_provider_v.provide nam_inp;;
Parameters_general_register_v.store_force "input-file" fno_inp;;

test_number 1 (
(fno_inp : string ) =
  "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_print.inp"
);;

let tag_fig_t = 
    Figure_tag_tree_by_input_fullnameoffile_provider_v.provide 
      fno_inp ;;

test_number 2 (
(tag_fig_t : Figure_symbol_t.figure_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Figure_symbol_t.Figure_context_symbol
      (Figure_context_symbol_t.Figure_domain_symbol
        (Figure_domain_symbol_t.Figure_domain_constructor "figure")),
     [6]),
   [Tree_t.Inner
     ((Figure_symbol_t.Figure_context_symbol
        (Figure_context_symbol_t.Figure_createdby_symbol
          (Figure_createdby_symbol_t.Figure_inputfile_symbol
            (Figure_inputfile_symbol_t.Figure_inputfile_constructor
              "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_print.inp"))),
       [29; 6]),
     [Tree_t.Leaf
       (Figure_symbol_t.Figure_field_symbol
         (Figure_field_symbol_t.Figure_field_fence_symbol
           (Figure_field_fence_symbol_t.Figure_point_symbol
             (Figure_point_symbol_t.Figure_point_constructor "Poi_a"))),
        [1; 29; 6])])])
);;

let tag_fig_l = Tree_v.node_list_off_tree tag_fig_t;;

test_number 3 (
(tag_fig_l : Figure_symbol_t.figure_symbol Tag_t.tag list ) =
  [(Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_domain_symbol
       (Figure_domain_symbol_t.Figure_domain_constructor "figure")),
    [6]);
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_createdby_symbol
       (Figure_createdby_symbol_t.Figure_inputfile_symbol
         (Figure_inputfile_symbol_t.Figure_inputfile_constructor
           "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_print.inp"))),
    [29; 6]);
   (Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Figure_point_symbol
         (Figure_point_symbol_t.Figure_point_constructor "Poi_a"))),
    [1; 29; 6])]
);;

open Figure_tag_by_input_variable_name_provider_v;; 
  
(* External Poi_a *)

let nam_ivn = "Poi_a";;
let sym_inp_kin = Input_variable_kind_by_input_variable_name_provider_v.provide nam_ivn ;;

test_number 4 (
(sym_inp_kin : Input_symbol_t.input_symbol ) =
  Input_symbol_t.Input_keyword_symbol
   Input_keyword_symbol_t.Input_keyword_external
);;

(* let figure_tag_of_external_input_variable_name nam_ivn *)

let sof_fig = 
  String_off_in_database_by_external_input_variable_name_provider_v.provide 
    nam_ivn;;

test_number 5 (
( sof_fig : string ) = 
"T_A"
);;

let nam_con =
  Context_name_by_external_input_variable_name_provider_v.provide 
    nam_ivn;;

test_number 6 (
(nam_con : string ) = 
"Con_db1"
);;

let nam_dba = 
  Database_name_by_context_input_variable_name_provider_v.provide
    nam_con;;

test_number 7 (
(nam_dba : string ) = 
"db1"
);;

let tag_fig_l = Figure_tag_all_list_by_database_name_provider_v.provide nam_dba;;

let tag_fig = List_v.only_element_of_predicate_off_list
    (fun t -> Figure_tag_v.string_off t = sof_fig)
    tag_fig_l;;

test_number 8 (
( tag_fig : Figure_symbol_t.figure_symbol Tag_t.tag ) =
  (Figure_symbol_t.Figure_field_symbol
    (Figure_field_symbol_t.Figure_field_fence_symbol
      (Figure_field_fence_symbol_t.Figure_point_symbol
        (Figure_point_symbol_t.Figure_point_constructor "T_A"))),
   [1; 3; 1; 6])
);;

let tag_fig_tar = figure_tag_of_external_input_variable_name nam_ivn;;

test_number 9 (
(tag_fig_tar : Figure_symbol_t.figure_symbol Tag_t.tag ) =
  (Figure_symbol_t.Figure_field_symbol
    (Figure_field_symbol_t.Figure_field_fence_symbol
      (Figure_field_fence_symbol_t.Figure_point_symbol
        (Figure_point_symbol_t.Figure_point_constructor "T_A"))),
   [1; 3; 1; 6])
);;

test_number 10 (
tag_fig_tar = provide nam_ivn
);;
