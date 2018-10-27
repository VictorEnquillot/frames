open Make_test_v;;

testing "Figure_tag_tree_by_input_fullnameoffile_provider_v with
    Figure_tag_tree_by_input_fullnameoffile_provider_u_point_homothety_debug.ml";;

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
   #use "Figure_tag_tree_by_input_fullnameoffile_provider_u_point_homothety_debug.ml";;

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

open Figure_tag_tree_by_input_fullnameoffile_provider_v;;
  
let sym_fig_ifi_st =
    Figure_symbol_subtree_by_input_fullnameoffile_provider_v.provide 
      fno_inp;;

test_number 2 (
(sym_fig_ifi_st : Figure_symbol_t.figure_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_createdby_symbol
       (Figure_createdby_symbol_t.Figure_inputfile_constructor
         "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_homothety.inp")),
   [Tree_t.Leaf
     (Figure_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Figure_point_symbol
         (Figure_point_symbol_t.Figure_point_constructor "Poi_h")))])
);;

let soi_fig_ifi =
    Figure_createdby_tag_by_input_fullnameoffile_provider_v.figure_createdby_sole_index 
      fno_inp;;

let soi_fig_ifi_st =
    Sole_index_v.sole_index_tree_of_tree_of_root_sole_index
      sym_fig_ifi_st
      soi_fig_ifi;;

let soi_dom = 
    Domain_tag_v.domain_sole_index_of_domain_name_of_string_of_sole_index_up 
      "figure" "" [] ;;

let soi_fig_st =
    figure_sole_index_tree_of_input_fullnameoffile 
      fno_inp;;

test_number 3 (
(soi_fig_st : Sole_index_t.sole_index Tree_t.tree ) =
  Tree_t.Inner ([6], [Tree_t.Inner ([27; 6], [Tree_t.Leaf [1; 27; 6]])])
);;

let sym_fig_t =
    figure_symbol_tree_of_input_fullnameoffile
      fno_inp;;

test_number 4 (
( sym_fig_t : Figure_symbol_t.figure_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_domain_symbol
       (Figure_domain_symbol_t.Figure_domain_constructor "figure")),
   [Tree_t.Inner
     (Figure_symbol_t.Figure_context_symbol
       (Figure_context_symbol_t.Figure_createdby_symbol
         (Figure_createdby_symbol_t.Figure_inputfile_constructor
           "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_homothety.inp")),
     [Tree_t.Leaf
       (Figure_symbol_t.Figure_field_fence_symbol
         (Figure_field_fence_symbol_t.Figure_point_symbol
           (Figure_point_symbol_t.Figure_point_constructor "Poi_h")))])])
);;

let soi_fig_t =
    figure_sole_index_tree_of_input_fullnameoffile 
      fno_inp;;

test_number 5 (
(soi_fig_t : Sole_index_t.sole_index Tree_t.tree ) =
  Tree_t.Inner ([6], [Tree_t.Inner ([27; 6], [Tree_t.Leaf [1; 27; 6]])])
);;

let tag_fig_t = Figure_tag_tree_by_input_fullnameoffile_provider_v.provide fno_inp;;

test_number 6 (
( tag_fig_t : Figure_symbol_t.figure_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Figure_symbol_t.Figure_context_symbol
      (Figure_context_symbol_t.Figure_domain_symbol
        (Figure_domain_symbol_t.Figure_domain_constructor "figure")),
     [6]),
   [Tree_t.Inner
     ((Figure_symbol_t.Figure_context_symbol
        (Figure_context_symbol_t.Figure_createdby_symbol
          (Figure_createdby_symbol_t.Figure_inputfile_constructor
            "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_homothety.inp")),
       [27; 6]),
     [Tree_t.Leaf
       (Figure_symbol_t.Figure_field_fence_symbol
         (Figure_field_fence_symbol_t.Figure_point_symbol
           (Figure_point_symbol_t.Figure_point_constructor "Poi_h")),
        [1; 27; 6])])])
);;

Figure_tag_tree_by_input_fullnameoffile_register_v.dump ();;
Figure_symbol_by_sole_index_register_v.dump ();;
Figure_creation_module_name_by_sole_index_register_v.dump ();;
