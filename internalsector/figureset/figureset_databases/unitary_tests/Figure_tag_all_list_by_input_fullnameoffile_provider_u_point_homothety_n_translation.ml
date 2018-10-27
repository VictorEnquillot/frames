open Make_test_v;;

testing "Figure_tag_all_list_by_input_fullnameoffile_provider_v with
   Figure_tag_all_list_by_input_fullnameoffile_provider_u_point_homothety_n_translation_debug.ml";;

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
   #use "Figure_tag_all_list_by_input_fullnameoffile_provider_u_point_homothety_n_translation_debug.ml";;

*)

(* Input File *)

let nam_inp = "Point_homothety_n_translation.inp";;
let fno_inp = Input_file_fullnameoffile_by_input_file_nameoffile_provider_v.provide nam_inp;;
Parameters_general_register_v.store_force "input-file" fno_inp;;

test_number 1 (
(fno_inp : string ) =
  "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_homothety_n_translation.inp"
);;

let tag_fig_t = Figure_tag_tree_by_input_fullnameoffile_provider_v.provide fno_inp;;

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
              "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_homothety_n_translation.inp"))),
       [28; 6]),
     [Tree_t.Inner
       ((Figure_symbol_t.Figure_field_symbol
          (Figure_field_symbol_t.Figure_field_fence_symbol
            (Figure_field_fence_symbol_t.Figure_point_symbol
              (Figure_point_symbol_t.Figure_point_constructor "Poi_t"))),
         [1; 28; 6]),
       [Tree_t.Inner
         ((Figure_symbol_t.Figure_field_symbol
            (Figure_field_symbol_t.Figure_field_fence_symbol
              (Figure_field_fence_symbol_t.Figure_point_symbol
                (Figure_point_symbol_t.Figure_point_constructor "Poi_h"))),
           [1; 1; 28; 6]),
         [Tree_t.Leaf
           (Figure_symbol_t.Figure_field_symbol
             (Figure_field_symbol_t.Figure_field_fence_symbol
               (Figure_field_fence_symbol_t.Figure_point_symbol
                 (Figure_point_symbol_t.Figure_point_constructor "Poi_a"))),
            [1; 1; 1; 28; 6])])]);
      Tree_t.Leaf
       (Figure_symbol_t.Figure_field_symbol
         (Figure_field_symbol_t.Figure_field_body_symbol
           (Figure_field_body_symbol_t.Figure_segment_symbol
             (Figure_segment_symbol_t.Figure_segment_constructor "Seg_bc"))),
        [2; 28; 6]);
      Tree_t.Leaf
       (Figure_symbol_t.Figure_field_symbol
         (Figure_field_symbol_t.Figure_field_fence_symbol
           (Figure_field_fence_symbol_t.Figure_point_symbol
             (Figure_point_symbol_t.Figure_point_constructor "Cen_b"))),
        [3; 28; 6])])])
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
           "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_homothety_n_translation.inp"))),
    [28; 6]);
   (Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Figure_point_symbol
         (Figure_point_symbol_t.Figure_point_constructor "Poi_t"))),
    [1; 28; 6]);
   (Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Figure_point_symbol
         (Figure_point_symbol_t.Figure_point_constructor "Poi_h"))),
    [1; 1; 28; 6]);
   (Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Figure_point_symbol
         (Figure_point_symbol_t.Figure_point_constructor "Poi_a"))),
    [1; 1; 1; 28; 6]);
   (Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_body_symbol
       (Figure_field_body_symbol_t.Figure_segment_symbol
         (Figure_segment_symbol_t.Figure_segment_constructor "Seg_bc"))),
    [2; 28; 6]);
   (Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Figure_point_symbol
         (Figure_point_symbol_t.Figure_point_constructor "Cen_b"))),
    [3; 28; 6])]
);;

test_number 4 (
tag_fig_l = Figure_tag_all_list_by_input_fullnameoffile_provider_v.provide fno_inp
);;
 
