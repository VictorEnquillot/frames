open Make_test_v;;

testing "Figure_symbol_subtree_by_input_variable_name_provider_v with
   Figure_symbol_subtree_by_input_variable_name_provider_u_point_homothety_debug.ml";;

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
   #use "Figure_symbol_subtree_by_input_variable_name_provider_u_point_homothety_debug.ml";;

*)

(* Input File *)

let nam_inp = "Point_homothety.inp";;
let fno_inp = Input_file_fullnameoffile_by_input_file_nameoffile_provider_v.provide nam_inp;;
Parameters_general_register_v.store_force "input-file" fno_inp;;

test_number 1 (
(fno_inp : string ) =
  "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_homothety.inp"
);;

open Figure_symbol_subtree_by_input_variable_name_provider_v;;

let sym_inp_t = 
  Input_symbol_tree_by_input_fullnameoffile_provider_v.provide 
    fno_inp;;

let nam_n_kin_l = Input_variable_name_n_kind_list_by_input_fullnameoffile_provider_v.provide fno_inp;;

test_number 2 (
(nam_n_kin_l :
  (string, Input_symbol_t.input_symbol) Doublet_t.doublet list ) =
  [("Con_db1",
    Input_symbol_t.Input_keyword_symbol
     Input_keyword_symbol_t.Input_keyword_context);
   ("Con_hom",
    Input_symbol_t.Input_keyword_symbol
     Input_keyword_symbol_t.Input_keyword_context);
   ("Cen_b",
    Input_symbol_t.Input_keyword_symbol
     Input_keyword_symbol_t.Input_keyword_external);
   ("Poi_a",
    Input_symbol_t.Input_keyword_symbol
     Input_keyword_symbol_t.Input_keyword_external);
   ("Hom_b_2",
    Input_symbol_t.Input_keyword_symbol
     (Input_keyword_symbol_t.Input_keyword_operator_symbol
       Input_keyword_operator_symbol_t.Input_keyword_operator_constructor));
   ("Poi_h",
    Input_symbol_t.Input_keyword_symbol
     Input_keyword_symbol_t.Input_keyword_target)]
);;

let nam_ivn = "Poi_h";; 
let nam_con_ext = External_context_name_by_input_variable_name_provider_v.provide nam_ivn;;
  let nam_dba = Database_name_by_context_input_variable_name_provider_v.provide nam_con_ext;;
  let tag_fig_t = Figure_tag_tree_by_database_name_provider_v.provide nam_dba;;
  let sym_fig_t = Tree_v.map Tag_v.entity_off_tag tag_fig_t;;

  let sof_fig_ext = Figure_string_off_by_input_variable_name_provider_v.provide nam_ivn;;

let nam_dom = Domain_name_by_input_variable_name_provider_v.provide nam_ivn ;;

test_number 3 (
(nam_dom : string ) = 
"figure"
);;

let sym_inp_kin = Input_variable_kind_by_input_variable_name_provider_v.provide nam_ivn;;

test_number 4 (
(sym_inp_kin : Input_symbol_t.input_symbol ) =
  Input_symbol_t.Input_keyword_symbol
   Input_keyword_symbol_t.Input_keyword_target
);;

let nam_ivn_tar = "Poi_h";;

let sof_fig_ext = Figure_string_off_by_input_variable_name_provider_v.provide nam_ivn_tar;;
let sym_fig_st = Figure_symbol_subtree_by_input_variable_name_provider_v.provide nam_ivn_tar;;

test_number 5 (
(sym_fig_st : Figure_symbol_t.figure_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Figure_point_symbol
         (Figure_point_symbol_t.Figure_point_constructor "Poi_h"))),
   [Tree_t.Leaf
     (Figure_symbol_t.Figure_field_symbol
       (Figure_field_symbol_t.Figure_field_fence_symbol
         (Figure_field_fence_symbol_t.Figure_point_symbol
           (Figure_point_symbol_t.Figure_point_constructor "Poi_a"))))])
);;




