open Make_test_v;;

testing "Input_entity_as_local_variable_free_defined_tag_list_by_input_filename_provider_v with
    Input_entity_as_local_variable_free_defined_tag_list_by_input_filename_provider_u_point_homothety.ml";;

(* Deleting Registers *)
Register_v.delete  Common_symbol_by_sole_index_register_v.register;;
Register_v.delete  Debug_by_module_name_register_v.register;;
Register_v.delete  Frames_entity_string_quintet_by_input_entity_variable_name_register_v.register;;
Register_v.delete  Input_entity_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Input_entity_symbol_by_sole_index_register_v.register;;
Register_v.delete  Input_entity_tag_by_input_entity_variable_name_register_v.register;;
Register_v.delete  Input_entity_tag_tree_by_input_entity_tag_register_v.register;;
Register_v.delete  Parameters_figureset_general_register_v.register;;
Register_v.delete  Property_entity_string_trio_by_input_entity_variable_name_register_v.register;;


(* Tracing *)

Parameters_figureset_general_register_v.store_force "trace-store" "false";;
Parameters_figureset_general_register_v.store_force "trace-provide" "false";;
Parameters_figureset_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Input_entity_as_local_variable_free_defined_tag_list_by_input_filename_provider_u_point_homothety.ml";; 

*)

(* Input File *)

let dir_inp ="/keep/sources/ocaml_top/setup/frames/inputset/files/";;
let nof_inp = dir_inp ^ "Point_homothety.inp";;
Parameters_figureset_general_register_v.store "input-file" nof_inp;;

let fin_inp = Filename_p.filename nof_inp;;

let tag_ien_def_stl = Input_entity_as_local_command_define_tag_subtree_list_by_input_filename_provider_v.provide fin_inp;;
let sym_ien_def_stl = List.map (Tree_v.map Tag_v.entity_off_tag) tag_ien_def_stl;;

test_number 1 (
sym_ien_def_stl
(* : Input_entity_symbol_t.input_entity_symbol Tree_t.tree list *)
=
  [Tree_t.Inner
    (Input_entity_symbol_t.Input_entity_local_symbol
      (Input_entity_local_symbol_t.Input_entity_local_command_symbol
        Input_entity_local_command_symbol_t.Input_command_define),
    [Tree_t.Leaf
      (Input_entity_symbol_t.Input_entity_local_symbol
        (Input_entity_local_symbol_t.Input_entity_local_variable_symbol
          (Input_entity_local_variable_symbol_t.Input_entity_local_variable_free
            "P_bc_b_tag")));
     Tree_t.Inner
      (Input_entity_symbol_t.Input_entity_local_symbol
        (Input_entity_local_symbol_t.Input_entity_local_keyword_symbol
          Input_entity_local_keyword_symbol_t.Input_as),
      [Tree_t.Inner
        (Input_entity_symbol_t.Input_entity_frames_symbol
          Input_entity_frames_symbol_t.Input_entity_frames_entity,
        [Tree_t.Leaf
          (Input_entity_symbol_t.Input_entity_frames_symbol
            (Input_entity_frames_symbol_t.Input_entity_frames_category "tag"));
         Tree_t.Leaf
          (Input_entity_symbol_t.Input_entity_frames_symbol
            (Input_entity_frames_symbol_t.Input_entity_frames_domain "figure"));
         Tree_t.Leaf
          (Input_entity_symbol_t.Input_entity_frames_symbol
            (Input_entity_frames_symbol_t.Input_entity_frames_database "db1"));
         Tree_t.Leaf
          (Input_entity_symbol_t.Input_entity_frames_symbol
            (Input_entity_frames_symbol_t.Input_entity_frames_what
              "figure_point_constructor"));
         Tree_t.Leaf
          (Input_entity_symbol_t.Input_entity_frames_symbol
            (Input_entity_frames_symbol_t.Input_entity_frames_name "BC_B"));
         Tree_t.Leaf
          (Input_entity_symbol_t.Input_entity_local_symbol
            (Input_entity_local_symbol_t.Input_entity_local_keyword_symbol
              Input_entity_local_keyword_symbol_t.Input_end))]);
       Tree_t.Leaf
        (Input_entity_symbol_t.Input_entity_local_symbol
          (Input_entity_local_symbol_t.Input_entity_local_keyword_symbol
            Input_entity_local_keyword_symbol_t.Input_end))]);
     Tree_t.Leaf
      (Input_entity_symbol_t.Input_entity_local_symbol
        (Input_entity_local_symbol_t.Input_entity_local_keyword_symbol
          Input_entity_local_keyword_symbol_t.Input_end))]);
   Tree_t.Inner
    (Input_entity_symbol_t.Input_entity_local_symbol
      (Input_entity_local_symbol_t.Input_entity_local_command_symbol
        Input_entity_local_command_symbol_t.Input_command_define),
    [Tree_t.Leaf
      (Input_entity_symbol_t.Input_entity_local_symbol
        (Input_entity_local_symbol_t.Input_entity_local_variable_symbol
          (Input_entity_local_variable_symbol_t.Input_entity_local_variable_free
            "P_t_a_tag")));
     Tree_t.Inner
      (Input_entity_symbol_t.Input_entity_local_symbol
        (Input_entity_local_symbol_t.Input_entity_local_keyword_symbol
          Input_entity_local_keyword_symbol_t.Input_as),
      [Tree_t.Inner
        (Input_entity_symbol_t.Input_entity_frames_symbol
          Input_entity_frames_symbol_t.Input_entity_frames_entity,
        [Tree_t.Leaf
          (Input_entity_symbol_t.Input_entity_frames_symbol
            (Input_entity_frames_symbol_t.Input_entity_frames_category "tag"));
         Tree_t.Leaf
          (Input_entity_symbol_t.Input_entity_frames_symbol
            (Input_entity_frames_symbol_t.Input_entity_frames_domain "figure"));
         Tree_t.Leaf
          (Input_entity_symbol_t.Input_entity_frames_symbol
            (Input_entity_frames_symbol_t.Input_entity_frames_database "db1"));
         Tree_t.Leaf
          (Input_entity_symbol_t.Input_entity_frames_symbol
            (Input_entity_frames_symbol_t.Input_entity_frames_what
              "figure_point_constructor"));
         Tree_t.Leaf
          (Input_entity_symbol_t.Input_entity_frames_symbol
            (Input_entity_frames_symbol_t.Input_entity_frames_name "T_A"));
         Tree_t.Leaf
          (Input_entity_symbol_t.Input_entity_local_symbol
            (Input_entity_local_symbol_t.Input_entity_local_keyword_symbol
              Input_entity_local_keyword_symbol_t.Input_end))]);
       Tree_t.Leaf
        (Input_entity_symbol_t.Input_entity_local_symbol
          (Input_entity_local_symbol_t.Input_entity_local_keyword_symbol
            Input_entity_local_keyword_symbol_t.Input_end))]);
     Tree_t.Leaf
      (Input_entity_symbol_t.Input_entity_local_symbol
        (Input_entity_local_symbol_t.Input_entity_local_keyword_symbol
          Input_entity_local_keyword_symbol_t.Input_end))]);
   Tree_t.Inner
    (Input_entity_symbol_t.Input_entity_local_symbol
      (Input_entity_local_symbol_t.Input_entity_local_command_symbol
        Input_entity_local_command_symbol_t.Input_command_define),
    [Tree_t.Leaf
      (Input_entity_symbol_t.Input_entity_local_symbol
        (Input_entity_local_symbol_t.Input_entity_local_variable_symbol
          (Input_entity_local_variable_symbol_t.Input_entity_local_variable_free
            "H_b_2")));
     Tree_t.Inner
      (Input_entity_symbol_t.Input_entity_local_symbol
        (Input_entity_local_symbol_t.Input_entity_local_keyword_symbol
          Input_entity_local_keyword_symbol_t.Input_as),
      [Tree_t.Inner
        (Input_entity_symbol_t.Input_entity_property_symbol
          Input_entity_property_symbol_t.Input_entity_property_entity,
        [Tree_t.Leaf
          (Input_entity_symbol_t.Input_entity_property_symbol
            (Input_entity_property_symbol_t.Input_entity_property_what
              "property_figure_homothety_constructor"));
         Tree_t.Inner
          (Input_entity_symbol_t.Input_entity_property_symbol
            Input_entity_property_symbol_t.Input_entity_property_center,
          [Tree_t.Leaf
            (Input_entity_symbol_t.Input_entity_local_symbol
              (Input_entity_local_symbol_t.Input_entity_local_variable_symbol
                (Input_entity_local_variable_symbol_t.Input_entity_local_variable_free
                  "P_bc_b_tag")))]);
         Tree_t.Inner
          (Input_entity_symbol_t.Input_entity_property_symbol
            Input_entity_property_symbol_t.Input_entity_property_scale_factor,
          [Tree_t.Leaf
            (Input_entity_symbol_t.Input_entity_local_symbol
              (Input_entity_local_symbol_t.Input_entity_local_constant_symbol
                (Input_entity_local_constant_symbol_t.Input_entity_local_constant_float
                  " 2.0")))]);
         Tree_t.Leaf
          (Input_entity_symbol_t.Input_entity_local_symbol
            (Input_entity_local_symbol_t.Input_entity_local_keyword_symbol
              Input_entity_local_keyword_symbol_t.Input_end))]);
       Tree_t.Leaf
        (Input_entity_symbol_t.Input_entity_local_symbol
          (Input_entity_local_symbol_t.Input_entity_local_keyword_symbol
            Input_entity_local_keyword_symbol_t.Input_end))]);
     Tree_t.Leaf
      (Input_entity_symbol_t.Input_entity_local_symbol
        (Input_entity_local_symbol_t.Input_entity_local_keyword_symbol
          Input_entity_local_keyword_symbol_t.Input_end))]);
   Tree_t.Inner
    (Input_entity_symbol_t.Input_entity_local_symbol
      (Input_entity_local_symbol_t.Input_entity_local_command_symbol
        Input_entity_local_command_symbol_t.Input_command_define),
    [Tree_t.Leaf
      (Input_entity_symbol_t.Input_entity_local_symbol
        (Input_entity_local_symbol_t.Input_entity_local_variable_symbol
          (Input_entity_local_variable_symbol_t.Input_entity_local_variable_free
            "P_h_val")));
     Tree_t.Inner
      (Input_entity_symbol_t.Input_entity_local_symbol
        (Input_entity_local_symbol_t.Input_entity_local_keyword_symbol
          Input_entity_local_keyword_symbol_t.Input_by),
      [Tree_t.Inner
        (Input_entity_symbol_t.Input_entity_local_symbol
          (Input_entity_local_symbol_t.Input_entity_local_keyword_symbol
            Input_entity_local_keyword_symbol_t.Input_applying),
        [Tree_t.Inner
          (Input_entity_symbol_t.Input_entity_property_symbol
            Input_entity_property_symbol_t.Input_entity_property_operator,
          [Tree_t.Leaf
            (Input_entity_symbol_t.Input_entity_local_symbol
              (Input_entity_local_symbol_t.Input_entity_local_variable_symbol
                (Input_entity_local_variable_symbol_t.Input_entity_local_variable_free
                  "H_b_2")))]);
         Tree_t.Inner
          (Input_entity_symbol_t.Input_entity_property_symbol
            Input_entity_property_symbol_t.Input_entity_property_on,
          [Tree_t.Leaf
            (Input_entity_symbol_t.Input_entity_local_symbol
              (Input_entity_local_symbol_t.Input_entity_local_variable_symbol
                (Input_entity_local_variable_symbol_t.Input_entity_local_variable_free
                  "P_t_a_tag")))]);
         Tree_t.Leaf
          (Input_entity_symbol_t.Input_entity_local_symbol
            (Input_entity_local_symbol_t.Input_entity_local_keyword_symbol
              Input_entity_local_keyword_symbol_t.Input_end))]);
       Tree_t.Leaf
        (Input_entity_symbol_t.Input_entity_local_symbol
          (Input_entity_local_symbol_t.Input_entity_local_keyword_symbol
            Input_entity_local_keyword_symbol_t.Input_end))]);
     Tree_t.Leaf
      (Input_entity_symbol_t.Input_entity_local_symbol
        (Input_entity_local_symbol_t.Input_entity_local_keyword_symbol
          Input_entity_local_keyword_symbol_t.Input_end))])]
);;

let tag_ien_def_st = List.nth tag_ien_def_stl 0;;

test_number 2 (
tag_ien_def_st
(* : Input_entity_symbol_t.input_entity_symbol Tree_t.tree *)
=
  Tree_t.Inner
   ((Input_entity_symbol_t.Input_entity_local_symbol
      (Input_entity_local_symbol_t.Input_entity_local_command_symbol
        Input_entity_local_command_symbol_t.Input_command_define),
     [1; 1]),
   [Tree_t.Leaf
     (Input_entity_symbol_t.Input_entity_local_symbol
       (Input_entity_local_symbol_t.Input_entity_local_variable_symbol
         (Input_entity_local_variable_symbol_t.Input_entity_local_variable_free
           "P_bc_b_tag")),
      [1; 1; 1]);
    Tree_t.Inner
     ((Input_entity_symbol_t.Input_entity_local_symbol
        (Input_entity_local_symbol_t.Input_entity_local_keyword_symbol
          Input_entity_local_keyword_symbol_t.Input_as),
       [2; 1; 1]),
     [Tree_t.Inner
       ((Input_entity_symbol_t.Input_entity_frames_symbol
          Input_entity_frames_symbol_t.Input_entity_frames_entity,
         [1; 2; 1; 1]),
       [Tree_t.Leaf
         (Input_entity_symbol_t.Input_entity_frames_symbol
           (Input_entity_frames_symbol_t.Input_entity_frames_category "tag"),
          [1; 1; 2; 1; 1]);
        Tree_t.Leaf
         (Input_entity_symbol_t.Input_entity_frames_symbol
           (Input_entity_frames_symbol_t.Input_entity_frames_domain "figure"),
          [2; 1; 2; 1; 1]);
        Tree_t.Leaf
         (Input_entity_symbol_t.Input_entity_frames_symbol
           (Input_entity_frames_symbol_t.Input_entity_frames_database "db1"),
          [3; 1; 2; 1; 1]);
        Tree_t.Leaf
         (Input_entity_symbol_t.Input_entity_frames_symbol
           (Input_entity_frames_symbol_t.Input_entity_frames_what
             "figure_point_constructor"),
          [4; 1; 2; 1; 1]);
        Tree_t.Leaf
         (Input_entity_symbol_t.Input_entity_frames_symbol
           (Input_entity_frames_symbol_t.Input_entity_frames_name "BC_B"),
          [5; 1; 2; 1; 1]);
        Tree_t.Leaf
         (Input_entity_symbol_t.Input_entity_local_symbol
           (Input_entity_local_symbol_t.Input_entity_local_keyword_symbol
             Input_entity_local_keyword_symbol_t.Input_end),
          [6; 1; 2; 1; 1])]);
      Tree_t.Leaf
       (Input_entity_symbol_t.Input_entity_local_symbol
         (Input_entity_local_symbol_t.Input_entity_local_keyword_symbol
           Input_entity_local_keyword_symbol_t.Input_end),
        [2; 2; 1; 1])]);
    Tree_t.Leaf
     (Input_entity_symbol_t.Input_entity_local_symbol
       (Input_entity_local_symbol_t.Input_entity_local_keyword_symbol
         Input_entity_local_keyword_symbol_t.Input_end),
      [3; 1; 1])])
);;


let tag_ifd_l = Input_entity_as_local_variable_free_defined_tag_list_by_input_filename_provider_v.provide fin_inp;;

test_number 3 (
tag_ifd_l 
(* : Input_entity_symbol_t.input_entity_symbol Tag_t.tag list *)
  =
[(Input_entity_symbol_t.Input_entity_local_symbol
    (Input_entity_local_symbol_t.Input_entity_local_variable_symbol
       (Input_entity_local_variable_symbol_t.Input_entity_local_variable_free
          "P_bc_b_tag")),
  [1; 1; 1]);
 (Input_entity_symbol_t.Input_entity_local_symbol
    (Input_entity_local_symbol_t.Input_entity_local_variable_symbol
       (Input_entity_local_variable_symbol_t.Input_entity_local_variable_free
          "P_t_a_tag")),
  [1; 2; 1]);
 (Input_entity_symbol_t.Input_entity_local_symbol
    (Input_entity_local_symbol_t.Input_entity_local_variable_symbol
       (Input_entity_local_variable_symbol_t.Input_entity_local_variable_free
          "H_b_2")),
  [1; 3; 1]);
 (Input_entity_symbol_t.Input_entity_local_symbol
    (Input_entity_local_symbol_t.Input_entity_local_variable_symbol
       (Input_entity_local_variable_symbol_t.Input_entity_local_variable_free
          "P_h_val")),
  [1; 4; 1])]
);;
