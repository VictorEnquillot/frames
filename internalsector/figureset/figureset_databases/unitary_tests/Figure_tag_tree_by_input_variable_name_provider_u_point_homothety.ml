open Make_test_v;;

testing "Figure_tag_tree_by_input_variable_name_provider_v with
    Figure_tag_tree_by_input_variable_name_provider_u_point_homothety_debug.ml";;

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
   #use "Figure_tag_tree_by_input_variable_name_provider_u_point_homothety_debug.ml";;

*)

(* Input File *)

let nam_inp = "Point_homothety.inp";;
let dir_inp ="/keep/sources/ocaml_top/setup/frames/inputset/files/";;
let fno_inp = dir_inp ^ nam_inp;;
Parameters_general_register_v.store_force "input-file" fno_inp;;

test_number 1 (
(fno_inp : string ) =
  "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_homothety.inp"
);;


(* open Figure_tag_tree_by_input_variable_name_provider_v;; *)
  
let nam_ivn = "Cen_b";;

let sym_inp_kin = Input_variable_kind_by_input_variable_name_provider_v.provide nam_ivn ;;

test_number 2 (
(sym_inp_kin : Input_symbol_t.input_symbol ) =
  Input_symbol_t.Input_keyword_symbol
   Input_keyword_symbol_t.Input_keyword_external
);;


let con_ivn = Context_name_by_external_input_variable_name_provider_v.provide nam_ivn;;
let nam_dba = Database_name_by_context_input_variable_name_provider_v.provide con_ivn;;
let tag_fig_t = 
    Figure_tag_tree_by_database_name_provider_v.provide
      nam_dba;;

let tag_fig_l = Tree_v.node_list_off_tree tag_fig_t;;

let sym_fig_ext = 
  Figure_symbol_by_external_input_variable_name_provider_v.provide
    nam_ivn
;;

test_number 3 (
(sym_fig_ext : Figure_symbol_t.figure_symbol ) =
  Figure_symbol_t.Figure_field_fence_symbol
   (Figure_field_fence_symbol_t.Figure_point_symbol
     (Figure_point_symbol_t.Figure_point_constructor "BC_B"))
);;

let tag_fig = List.filter
    (fun (s, i) -> s = sym_fig_ext)
    tag_fig_l;;

test_number 4 (
(tag_fig : Figure_symbol_t.figure_symbol Tag_t.tag list ) =
[(Figure_symbol_t.Figure_field_fence_symbol
    (Figure_field_fence_symbol_t.Figure_point_symbol
       (Figure_point_symbol_t.Figure_point_constructor "BC_B")),
  [1; 4; 1; 6])]
);;


(* Target *)

let nam_ivn = "Poi_h";;
let sym_inp_kin = Input_variable_kind_by_input_variable_name_provider_v.provide nam_ivn ;;

test_number 5 (
(sym_inp_kin : Input_symbol_t.input_symbol ) =
  Input_symbol_t.Input_keyword_symbol
   Input_keyword_symbol_t.Input_keyword_target
);;

let fno_inp = Parameters_general_register_v.retrieve "input-file";;

let tag_fig_t = 
    Figure_tag_tree_by_input_fullnameoffile_provider_v.provide 
      fno_inp ;;

let tag_fig_l = Tree_v.node_list_off_tree tag_fig_t;;

test_number 6 (
(tag_fig_l : Figure_symbol_t.figure_symbol Tag_t.tag list ) =
  [(Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_domain_symbol
       (Figure_domain_symbol_t.Figure_domain_constructor "figure")),
    [6]);
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_createdby_symbol
       (Figure_createdby_symbol_t.Figure_inputfile_constructor
         "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_homothety.inp")),
    [27; 6]);
   (Figure_symbol_t.Figure_field_fence_symbol
     (Figure_field_fence_symbol_t.Figure_point_symbol
       (Figure_point_symbol_t.Figure_point_constructor "Poi_h")),
    [1; 27; 6])]
);;

let sym_fig_ext = 
    Target_figure_symbol_by_input_variable_name_provider_v.provide
      nam_ivn;;

test_number 7 (
(sym_fig_ext : Figure_symbol_t.figure_symbol ) =
  Figure_symbol_t.Figure_field_fence_symbol
   (Figure_field_fence_symbol_t.Figure_point_symbol
     (Figure_point_symbol_t.Figure_point_constructor "Poi_h"))
);;

let tag_fig = List_v.only_element_of_predicate_off_list
    (fun (s, i) -> s = sym_fig_ext)
    tag_fig_l;;

test_number 8 (
(tag_fig : Figure_symbol_t.figure_symbol Tag_t.tag ) =
  (Figure_symbol_t.Figure_field_fence_symbol
    (Figure_field_fence_symbol_t.Figure_point_symbol
      (Figure_point_symbol_t.Figure_point_constructor "Poi_h")),
jb,,,b   [1; 27; 6])
);;
