open Make_test_v;;

testing "Figure_tag_tree_by_input_fullnameoffile_provider_v with
   Figure_tag_tree_by_input_fullnameoffile_provider_u_point_homothety_n_translation_debug.ml";;

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
   #use "Figure_tag_tree_by_input_fullnameoffile_provider_u_point_homothety_n_translation_debug.ml";;

*)

(* Input File *)

let nam_inp = "Point_homothety_n_translation.inp";;
let fno_inp = Input_file_fullnameoffile_by_input_file_nameoffile_provider_v.provide nam_inp;;
Parameters_general_register_v.store_force "input-file" fno_inp;;

test_number 1 (
(fno_inp : string ) =
  "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_homothety_n_translation.inp"
);;

let sym_fig_ifi = Figure_symbol_v.figure_inputfile_constructor fno_inp;;

test_number 2 (
( sym_fig_ifi : Figure_symbol_t.figure_symbol ) =
  Figure_symbol_t.Figure_context_symbol
   (Figure_context_symbol_t.Figure_createdby_symbol
     (Figure_createdby_symbol_t.Figure_inputfile_symbol
       (Figure_inputfile_symbol_t.Figure_inputfile_constructor
         "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_homothety_n_translation.inp")))
);;

open Figure_tag_tree_by_input_fullnameoffile_provider_v;;

let sym_fig_dep_ll = 
    Figure_symbol_dependency_list_list_by_input_fullnameoffile_provider_v.provide  
    fno_inp
;;

test_number 3 (
(sym_fig_dep_ll : Figure_symbol_t.figure_symbol list list ) =
  [[Figure_symbol_t.Figure_field_fence_symbol
     (Figure_field_fence_symbol_t.Figure_point_symbol
       (Figure_point_symbol_t.Figure_point_constructor "Poi_t"));
    Figure_symbol_t.Figure_field_fence_symbol
     (Figure_field_fence_symbol_t.Figure_point_symbol
       (Figure_point_symbol_t.Figure_point_constructor "Poi_h"));
    Figure_symbol_t.Figure_field_fence_symbol
     (Figure_field_fence_symbol_t.Figure_point_symbol
       (Figure_point_symbol_t.Figure_point_constructor "Poi_a"))];
   [Figure_symbol_t.Figure_field_body_symbol
     (Figure_field_body_symbol_t.Figure_segment_symbol
       (Figure_segment_symbol_t.Figure_segment_constructor "Seg_bc"))];
   [Figure_symbol_t.Figure_field_fence_symbol
     (Figure_field_fence_symbol_t.Figure_point_symbol
       (Figure_point_symbol_t.Figure_point_constructor "Cen_b"))]]
);;

let sym_fig_stl = List.map
      Tree_v.tree_off_list 
      sym_fig_dep_ll;;

test_number 4 (
( sym_fig_stl : Figure_symbol_t.figure_symbol Tree_t.tree list ) =
  [Tree_t.Inner
    (Figure_symbol_t.Figure_field_fence_symbol
      (Figure_field_fence_symbol_t.Figure_point_symbol
        (Figure_point_symbol_t.Figure_point_constructor "Poi_t")),
    [Tree_t.Inner
      (Figure_symbol_t.Figure_field_fence_symbol
        (Figure_field_fence_symbol_t.Figure_point_symbol
          (Figure_point_symbol_t.Figure_point_constructor "Poi_h")),
      [Tree_t.Leaf
        (Figure_symbol_t.Figure_field_fence_symbol
          (Figure_field_fence_symbol_t.Figure_point_symbol
            (Figure_point_symbol_t.Figure_point_constructor "Poi_a")))])]);
   Tree_t.Leaf
    (Figure_symbol_t.Figure_field_body_symbol
      (Figure_field_body_symbol_t.Figure_segment_symbol
        (Figure_segment_symbol_t.Figure_segment_constructor "Seg_bc")));
   Tree_t.Leaf
    (Figure_symbol_t.Figure_field_fence_symbol
      (Figure_field_fence_symbol_t.Figure_point_symbol
        (Figure_point_symbol_t.Figure_point_constructor "Cen_b")))]
);;

test_number 5 (
sym_fig_ifi = Figure_symbol_v.figure_inputfile_constructor fno_inp
);;

let sym_fig_st = Tree_v.make_of_node sym_fig_ifi sym_fig_stl;;

test_number 6 (
(sym_fig_st : Figure_symbol_t.figure_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_createdby_symbol
       (Figure_createdby_symbol_t.Figure_inputfile_symbol
         (Figure_inputfile_symbol_t.Figure_inputfile_constructor
           "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_homothety_n_translation.inp"))),
   [Tree_t.Inner
     (Figure_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Figure_point_symbol
         (Figure_point_symbol_t.Figure_point_constructor "Poi_t")),
     [Tree_t.Inner
       (Figure_symbol_t.Figure_field_fence_symbol
         (Figure_field_fence_symbol_t.Figure_point_symbol
           (Figure_point_symbol_t.Figure_point_constructor "Poi_h")),
       [Tree_t.Leaf
         (Figure_symbol_t.Figure_field_fence_symbol
           (Figure_field_fence_symbol_t.Figure_point_symbol
             (Figure_point_symbol_t.Figure_point_constructor "Poi_a")))])]);
    Tree_t.Leaf
     (Figure_symbol_t.Figure_field_body_symbol
       (Figure_field_body_symbol_t.Figure_segment_symbol
         (Figure_segment_symbol_t.Figure_segment_constructor "Seg_bc")));
    Tree_t.Leaf
     (Figure_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Figure_point_symbol
         (Figure_point_symbol_t.Figure_point_constructor "Cen_b")))])
);;

let sym_fig_t = figure_symbol_tree_of_input_fullnameoffile fno_inp;;


test_number 7 (
( sym_fig_t : Figure_symbol_t.figure_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_domain_symbol
       (Figure_domain_symbol_t.Figure_domain_constructor "figure")),
   [Tree_t.Inner
     (Figure_symbol_t.Figure_context_symbol
       (Figure_context_symbol_t.Figure_createdby_symbol
         (Figure_createdby_symbol_t.Figure_inputfile_symbol
           (Figure_inputfile_symbol_t.Figure_inputfile_constructor
             "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_homothety_n_translation.inp"))),
     [Tree_t.Inner
       (Figure_symbol_t.Figure_field_fence_symbol
         (Figure_field_fence_symbol_t.Figure_point_symbol
           (Figure_point_symbol_t.Figure_point_constructor "Poi_t")),
       [Tree_t.Inner
         (Figure_symbol_t.Figure_field_fence_symbol
           (Figure_field_fence_symbol_t.Figure_point_symbol
             (Figure_point_symbol_t.Figure_point_constructor "Poi_h")),
         [Tree_t.Leaf
           (Figure_symbol_t.Figure_field_fence_symbol
             (Figure_field_fence_symbol_t.Figure_point_symbol
               (Figure_point_symbol_t.Figure_point_constructor "Poi_a")))])]);
      Tree_t.Leaf
       (Figure_symbol_t.Figure_field_body_symbol
         (Figure_field_body_symbol_t.Figure_segment_symbol
           (Figure_segment_symbol_t.Figure_segment_constructor "Seg_bc")));
      Tree_t.Leaf
       (Figure_symbol_t.Figure_field_fence_symbol
         (Figure_field_fence_symbol_t.Figure_point_symbol
           (Figure_point_symbol_t.Figure_point_constructor "Cen_b")))])])
);;

let soi_fig_t = figure_sole_index_tree_of_input_fullnameoffile fno_inp;;

test_number 8 (
(soi_fig_t : Sole_index_t.sole_index Tree_t.tree ) =
 Tree_t.Inner ([6],
   [Tree_t.Inner ([28; 6],
     [Tree_t.Inner ([1; 28; 6],
       [Tree_t.Inner ([1; 1; 28; 6], [Tree_t.Leaf [1; 1; 1; 28; 6]])]);
      Tree_t.Leaf [2; 28; 6]; Tree_t.Leaf [3; 28; 6]])])
);;
 
let tag_fig_t = Tree_v.map2 Tag_v.make sym_fig_t soi_fig_t;;

test_number 9 (
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
		 "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_homothety_n_translation.inp"))),
       [28; 6]),
     [Tree_t.Inner
       ((Figure_symbol_t.Figure_field_fence_symbol
          (Figure_field_fence_symbol_t.Figure_point_symbol
            (Figure_point_symbol_t.Figure_point_constructor "Poi_t")),
         [1; 28; 6]),
       [Tree_t.Inner
         ((Figure_symbol_t.Figure_field_fence_symbol
            (Figure_field_fence_symbol_t.Figure_point_symbol
              (Figure_point_symbol_t.Figure_point_constructor "Poi_h")),
           [1; 1; 28; 6]),
         [Tree_t.Leaf
           (Figure_symbol_t.Figure_field_fence_symbol
             (Figure_field_fence_symbol_t.Figure_point_symbol
               (Figure_point_symbol_t.Figure_point_constructor "Poi_a")),
            [1; 1; 1; 28; 6])])]);
      Tree_t.Leaf
       (Figure_symbol_t.Figure_field_body_symbol
         (Figure_field_body_symbol_t.Figure_segment_symbol
           (Figure_segment_symbol_t.Figure_segment_constructor "Seg_bc")),
        [2; 28; 6]);
      Tree_t.Leaf
       (Figure_symbol_t.Figure_field_fence_symbol
         (Figure_field_fence_symbol_t.Figure_point_symbol
           (Figure_point_symbol_t.Figure_point_constructor "Cen_b")),
        [3; 28; 6])])])
);;

test_number 10 (
tag_fig_t = Figure_tag_tree_by_input_fullnameoffile_provider_v.provide fno_inp
);;

let tag_fig_ifi_l = Tree_v.node_list_off_tree tag_fig_t;;
 
test_number 11 (
(tag_fig_ifi_l : Figure_symbol_t.figure_symbol Tag_t.tag list ) =
  [(Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_domain_symbol
       (Figure_domain_symbol_t.Figure_domain_constructor "figure")),
    [6]);
   (Figure_symbol_t.Figure_context_symbol
      (Figure_context_symbol_t.Figure_createdby_symbol
	 (Figure_createdby_symbol_t.Figure_inputfile_symbol
            (Figure_inputfile_symbol_t.Figure_inputfile_constructor
               "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_homothety_n_translation.inp"))),
    [28; 6]);
   (Figure_symbol_t.Figure_field_fence_symbol
     (Figure_field_fence_symbol_t.Figure_point_symbol
       (Figure_point_symbol_t.Figure_point_constructor "Poi_t")),
    [1; 28; 6]);
   (Figure_symbol_t.Figure_field_fence_symbol
     (Figure_field_fence_symbol_t.Figure_point_symbol
       (Figure_point_symbol_t.Figure_point_constructor "Poi_h")),
    [1; 1; 28; 6]);
   (Figure_symbol_t.Figure_field_fence_symbol
     (Figure_field_fence_symbol_t.Figure_point_symbol
       (Figure_point_symbol_t.Figure_point_constructor "Poi_a")),
    [1; 1; 1; 28; 6]);
   (Figure_symbol_t.Figure_field_body_symbol
     (Figure_field_body_symbol_t.Figure_segment_symbol
       (Figure_segment_symbol_t.Figure_segment_constructor "Seg_bc")),
    [2; 28; 6]);
   (Figure_symbol_t.Figure_field_fence_symbol
     (Figure_field_fence_symbol_t.Figure_point_symbol
       (Figure_point_symbol_t.Figure_point_constructor "Cen_b")),
    [3; 28; 6])]
);;


Figure_tag_tree_by_input_fullnameoffile_register_v.dump ();;
Figure_creation_module_name_by_sole_index_register_v.dump ();;
Figure_symbol_by_sole_index_register_v.dump ();;
