open Make_test_v;;

testing "Figure_symbol_subtree_by_input_fullnameoffile_provider_v with
   Figure_symbol_tree_by_input_fullnameoffile_provider_u_point_print_debug.ml";;

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
   #use "Figure_symbol_subtree_by_input_fullnameoffile_provider_u_point_print_debug.ml";;

*)

(* Input File *)

let nam_inp = "Point_print.inp";;
let fno_inp = Input_file_fullnameoffile_by_input_file_nameoffile_provider_v.provide nam_inp;;
Parameters_general_register_v.store_force "input-file" fno_inp;;

test_number 1 (
(fno_inp : string ) =
  "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_print.inp"
);;


open Figure_symbol_subtree_by_input_fullnameoffile_provider_v;;

let sym_inp_t = 
    Input_symbol_tree_by_input_fullnameoffile_provider_v.provide 
    fno_inp;;

let sym_fig_dep_ll =
    Figure_symbol_dependency_list_list_by_input_fullnameoffile_provider_v.provide 
      fno_inp;;

let sym_fig_stl = List.map
      Tree_v.tree_off_list 
      sym_fig_dep_ll;;
  
let sym_fig_ifi = Figure_symbol_v.figure_inputfile_constructor fno_inp;;

test_number 2 (
(sym_fig_ifi : Figure_symbol_t.figure_symbol ) =
  Figure_symbol_t.Figure_context_symbol
   (Figure_context_symbol_t.Figure_createdby_symbol
     (Figure_createdby_symbol_t.Figure_inputfile_symbol
       (Figure_inputfile_symbol_t.Figure_inputfile_constructor
         "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_print.inp")))
);;

let sym_fig_t = Figure_symbol_subtree_by_input_fullnameoffile_provider_v.provide fno_inp;;

test_number 3 (
(sym_fig_t : Figure_symbol_t.figure_symbol Tree_t.tree ) =  Tree_t.Inner
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_createdby_symbol
       (Figure_createdby_symbol_t.Figure_inputfile_symbol
         (Figure_inputfile_symbol_t.Figure_inputfile_constructor
           "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_print.inp"))),
   [Tree_t.Leaf
     (Figure_symbol_t.Figure_field_symbol
       (Figure_field_symbol_t.Figure_field_fence_symbol
         (Figure_field_fence_symbol_t.Figure_point_symbol
           (Figure_point_symbol_t.Figure_point_constructor "Poi_a"))))])
);;
