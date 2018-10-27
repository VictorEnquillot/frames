open Make_test_v;;

testing "Localinput_as_local_variable_free_defined_tag_list_by_basicname_inputbox_provider_v with
    Localinput_as_local_variable_free_defined_tag_list_by_basicname_inputbox_provider_u_point_homothety.ml";;

(* Deleting Registers *)

















(* Tracing *)


(* toplevel 
   #use "Localinput_as_local_variable_free_defined_tag_list_by_basicname_inputbox_provider_u_point_homothety.ml";; 

*)

(* Input File *)

let dir_inp ="/keep/sources/ocaml_top/setup/frames/inputset/files/";;
let nof_inp = dir_inp ^ "Print_homothety_point_a.inp";;

let fno_inp = Filename_p.filename nof_inp;;

let tag_inp_def_stl = Localinput_as_body_handle_command_define_tag_subtree_list_by_basicname_inputbox_provider_v.provide fno_inp;;
let sym_inp_def_stl = List.map (Tree_v.map Tag_v.entity_off_tag) tag_inp_def_stl;;

test_number 1 (
sym_inp_def_stl
(* : Localinput_symbol_t.input_entity_symbol Tree_t.tree list *)
=
  [Tree_t.Inner
    (Localinput_symbol_t.Localinput_local_symbol
      (Localinput_local_symbol_t.Localinput_local_command_symbol
        Localinput_local_command_symbol_t.Localinput_command_define),
    [Tree_t.Leaf
      (Localinput_symbol_t.Localinput_local_symbol
        (Localinput_local_symbol_t.Localinput_local_variable_symbol
          (Localinput_local_variable_symbol_t.Localinput_local_variable_free
            "P_bc_b_tag")));
     Tree_t.Inner
      (Localinput_symbol_t.Localinput_local_symbol
        (Localinput_local_symbol_t.Localinput_local_keyword_symbol
          Localinput_local_keyword_symbol_t.Localinput_as),
      [Tree_t.Inner
        (Localinput_symbol_t.Localinput_frames_symbol
          Localinput_frames_symbol_t.Localinput_frames_entity,
        [Tree_t.Leaf
          (Localinput_symbol_t.Localinput_frames_symbol
            (Localinput_frames_symbol_t.Localinput_frames_category "tag"));
         Tree_t.Leaf
          (Localinput_symbol_t.Localinput_frames_symbol
            (Localinput_frames_symbol_t.Localinput_frames_domain "user"));
         Tree_t.Leaf
          (Localinput_symbol_t.Localinput_frames_symbol
            (Localinput_frames_symbol_t.Localinput_frames_database "db1"));
         Tree_t.Leaf
          (Localinput_symbol_t.Localinput_frames_symbol
            (Localinput_frames_symbol_t.Localinput_frames_what
              "figure_point_constructor"));
         Tree_t.Leaf
          (Localinput_symbol_t.Localinput_frames_symbol
            (Localinput_frames_symbol_t.Localinput_frames_name "BC_B"));
         Tree_t.Leaf
          (Localinput_symbol_t.Localinput_local_symbol
            (Localinput_local_symbol_t.Localinput_local_keyword_symbol
              Localinput_local_keyword_symbol_t.Localinput_end))]);
       Tree_t.Leaf
        (Localinput_symbol_t.Localinput_local_symbol
          (Localinput_local_symbol_t.Localinput_local_keyword_symbol
            Localinput_local_keyword_symbol_t.Localinput_end))]);
     Tree_t.Leaf
      (Localinput_symbol_t.Localinput_local_symbol
        (Localinput_local_symbol_t.Localinput_local_keyword_symbol
          Localinput_local_keyword_symbol_t.Localinput_end))]);
   Tree_t.Inner
    (Localinput_symbol_t.Localinput_local_symbol
      (Localinput_local_symbol_t.Localinput_local_command_symbol
        Localinput_local_command_symbol_t.Localinput_command_define),
    [Tree_t.Leaf
      (Localinput_symbol_t.Localinput_local_symbol
        (Localinput_local_symbol_t.Localinput_local_variable_symbol
          (Localinput_local_variable_symbol_t.Localinput_local_variable_free
            "P_t_a_tag")));
     Tree_t.Inner
      (Localinput_symbol_t.Localinput_local_symbol
        (Localinput_local_symbol_t.Localinput_local_keyword_symbol
          Localinput_local_keyword_symbol_t.Localinput_as),
      [Tree_t.Inner
        (Localinput_symbol_t.Localinput_frames_symbol
          Localinput_frames_symbol_t.Localinput_frames_entity,
        [Tree_t.Leaf
          (Localinput_symbol_t.Localinput_frames_symbol
            (Localinput_frames_symbol_t.Localinput_frames_category "tag"));
         Tree_t.Leaf
          (Localinput_symbol_t.Localinput_frames_symbol
            (Localinput_frames_symbol_t.Localinput_frames_domain "user"));
         Tree_t.Leaf
          (Localinput_symbol_t.Localinput_frames_symbol
            (Localinput_frames_symbol_t.Localinput_frames_database "db1"));
         Tree_t.Leaf
          (Localinput_symbol_t.Localinput_frames_symbol
            (Localinput_frames_symbol_t.Localinput_frames_what
              "figure_point_constructor"));
         Tree_t.Leaf
          (Localinput_symbol_t.Localinput_frames_symbol
            (Localinput_frames_symbol_t.Localinput_frames_name "T_A"));
         Tree_t.Leaf
          (Localinput_symbol_t.Localinput_local_symbol
            (Localinput_local_symbol_t.Localinput_local_keyword_symbol
              Localinput_local_keyword_symbol_t.Localinput_end))]);
       Tree_t.Leaf
        (Localinput_symbol_t.Localinput_local_symbol
          (Localinput_local_symbol_t.Localinput_local_keyword_symbol
            Localinput_local_keyword_symbol_t.Localinput_end))]);
     Tree_t.Leaf
      (Localinput_symbol_t.Localinput_local_symbol
        (Localinput_local_symbol_t.Localinput_local_keyword_symbol
          Localinput_local_keyword_symbol_t.Localinput_end))]);
   Tree_t.Inner
    (Localinput_symbol_t.Localinput_local_symbol
      (Localinput_local_symbol_t.Localinput_local_command_symbol
        Localinput_local_command_symbol_t.Localinput_command_define),
    [Tree_t.Leaf
      (Localinput_symbol_t.Localinput_local_symbol
        (Localinput_local_symbol_t.Localinput_local_variable_symbol
          (Localinput_local_variable_symbol_t.Localinput_local_variable_free
            "H_b_2")));
     Tree_t.Inner
      (Localinput_symbol_t.Localinput_local_symbol
        (Localinput_local_symbol_t.Localinput_local_keyword_symbol
          Localinput_local_keyword_symbol_t.Localinput_as),
      [Tree_t.Inner
        (Localinput_symbol_t.Localinput_property_symbol
          Localinput_property_symbol_t.Localinput_property_entity,
        [Tree_t.Leaf
          (Localinput_symbol_t.Localinput_property_symbol
            (Localinput_property_symbol_t.Localinput_property_what
              "property_figure_homothety_constructor"));
         Tree_t.Inner
          (Localinput_symbol_t.Localinput_property_symbol
            Localinput_property_symbol_t.Localinput_property_center,
          [Tree_t.Leaf
            (Localinput_symbol_t.Localinput_local_symbol
              (Localinput_local_symbol_t.Localinput_local_variable_symbol
                (Localinput_local_variable_symbol_t.Localinput_local_variable_free
                  "P_bc_b_tag")))]);
         Tree_t.Inner
          (Localinput_symbol_t.Localinput_property_symbol
            Localinput_property_symbol_t.Localinput_property_scale_factor,
          [Tree_t.Leaf
            (Localinput_symbol_t.Localinput_local_symbol
              (Localinput_local_symbol_t.Localinput_local_constant_symbol
                (Localinput_local_constant_symbol_t.Localinput_local_constant_float
                  " 2.0")))]);
         Tree_t.Leaf
          (Localinput_symbol_t.Localinput_local_symbol
            (Localinput_local_symbol_t.Localinput_local_keyword_symbol
              Localinput_local_keyword_symbol_t.Localinput_end))]);
       Tree_t.Leaf
        (Localinput_symbol_t.Localinput_local_symbol
          (Localinput_local_symbol_t.Localinput_local_keyword_symbol
            Localinput_local_keyword_symbol_t.Localinput_end))]);
     Tree_t.Leaf
      (Localinput_symbol_t.Localinput_local_symbol
        (Localinput_local_symbol_t.Localinput_local_keyword_symbol
          Localinput_local_keyword_symbol_t.Localinput_end))]);
   Tree_t.Inner
    (Localinput_symbol_t.Localinput_local_symbol
      (Localinput_local_symbol_t.Localinput_local_command_symbol
        Localinput_local_command_symbol_t.Localinput_command_define),
    [Tree_t.Leaf
      (Localinput_symbol_t.Localinput_local_symbol
        (Localinput_local_symbol_t.Localinput_local_variable_symbol
          (Localinput_local_variable_symbol_t.Localinput_local_variable_free
            "P_h_val")));
     Tree_t.Inner
      (Localinput_symbol_t.Localinput_local_symbol
        (Localinput_local_symbol_t.Localinput_local_keyword_symbol
          Localinput_local_keyword_symbol_t.Localinput_by),
      [Tree_t.Inner
        (Localinput_symbol_t.Localinput_local_symbol
          (Localinput_local_symbol_t.Localinput_local_keyword_symbol
            Localinput_local_keyword_symbol_t.Localinput_applying),
        [Tree_t.Inner
          (Localinput_symbol_t.Localinput_property_symbol
            Localinput_property_symbol_t.Localinput_property_operator,
          [Tree_t.Leaf
            (Localinput_symbol_t.Localinput_local_symbol
              (Localinput_local_symbol_t.Localinput_local_variable_symbol
                (Localinput_local_variable_symbol_t.Localinput_local_variable_free
                  "H_b_2")))]);
         Tree_t.Inner
          (Localinput_symbol_t.Localinput_property_symbol
            Localinput_property_symbol_t.Localinput_property_on,
          [Tree_t.Leaf
            (Localinput_symbol_t.Localinput_local_symbol
              (Localinput_local_symbol_t.Localinput_local_variable_symbol
                (Localinput_local_variable_symbol_t.Localinput_local_variable_free
                  "P_t_a_tag")))]);
         Tree_t.Leaf
          (Localinput_symbol_t.Localinput_local_symbol
            (Localinput_local_symbol_t.Localinput_local_keyword_symbol
              Localinput_local_keyword_symbol_t.Localinput_end))]);
       Tree_t.Leaf
        (Localinput_symbol_t.Localinput_local_symbol
          (Localinput_local_symbol_t.Localinput_local_keyword_symbol
            Localinput_local_keyword_symbol_t.Localinput_end))]);
     Tree_t.Leaf
      (Localinput_symbol_t.Localinput_local_symbol
        (Localinput_local_symbol_t.Localinput_local_keyword_symbol
          Localinput_local_keyword_symbol_t.Localinput_end))])]
);;

let tag_inp_def_st = List.nth tag_inp_def_stl 0;;

test_number 2 (
tag_inp_def_st
(* : Localinput_symbol_t.input_entity_symbol Tree_t.tree *)
=
  Tree_t.Inner
   ((Localinput_symbol_t.Localinput_local_symbol
      (Localinput_local_symbol_t.Localinput_local_command_symbol
        Localinput_local_command_symbol_t.Localinput_command_define),
     [1; 1]),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_local_symbol
       (Localinput_local_symbol_t.Localinput_local_variable_symbol
         (Localinput_local_variable_symbol_t.Localinput_local_variable_free
           "P_bc_b_tag")),
      [1; 1; 1]);
    Tree_t.Inner
     ((Localinput_symbol_t.Localinput_local_symbol
        (Localinput_local_symbol_t.Localinput_local_keyword_symbol
          Localinput_local_keyword_symbol_t.Localinput_as),
       [2; 1; 1]),
     [Tree_t.Inner
       ((Localinput_symbol_t.Localinput_frames_symbol
          Localinput_frames_symbol_t.Localinput_frames_entity,
         [1; 2; 1; 1]),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_frames_symbol
           (Localinput_frames_symbol_t.Localinput_frames_category "tag"),
          [1; 1; 2; 1; 1]);
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_frames_symbol
           (Localinput_frames_symbol_t.Localinput_frames_domain "user"),
          [2; 1; 2; 1; 1]);
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_frames_symbol
           (Localinput_frames_symbol_t.Localinput_frames_database "db1"),
          [3; 1; 2; 1; 1]);
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_frames_symbol
           (Localinput_frames_symbol_t.Localinput_frames_what
             "figure_point_constructor"),
          [4; 1; 2; 1; 1]);
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_frames_symbol
           (Localinput_frames_symbol_t.Localinput_frames_name "BC_B"),
          [5; 1; 2; 1; 1]);
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_local_symbol
           (Localinput_local_symbol_t.Localinput_local_keyword_symbol
             Localinput_local_keyword_symbol_t.Localinput_end),
          [6; 1; 2; 1; 1])]);
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_local_symbol
         (Localinput_local_symbol_t.Localinput_local_keyword_symbol
           Localinput_local_keyword_symbol_t.Localinput_end),
        [2; 2; 1; 1])]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_local_symbol
       (Localinput_local_symbol_t.Localinput_local_keyword_symbol
         Localinput_local_keyword_symbol_t.Localinput_end),
      [3; 1; 1])])
);;


let tag_ifd_l = Localinput_as_local_variable_free_defined_tag_list_by_basicname_inputbox_provider_v.provide fno_inp;;

test_number 3 (
tag_ifd_l 
(* : Localinput_symbol_t.input_entity_symbol Tag_t.tag list *)
  =
[(Localinput_symbol_t.Localinput_local_symbol
    (Localinput_local_symbol_t.Localinput_local_variable_symbol
       (Localinput_local_variable_symbol_t.Localinput_local_variable_free
          "P_bc_b_tag")),
  [1; 1; 1]);
 (Localinput_symbol_t.Localinput_local_symbol
    (Localinput_local_symbol_t.Localinput_local_variable_symbol
       (Localinput_local_variable_symbol_t.Localinput_local_variable_free
          "P_t_a_tag")),
  [1; 2; 1]);
 (Localinput_symbol_t.Localinput_local_symbol
    (Localinput_local_symbol_t.Localinput_local_variable_symbol
       (Localinput_local_variable_symbol_t.Localinput_local_variable_free
          "H_b_2")),
  [1; 3; 1]);
 (Localinput_symbol_t.Localinput_local_symbol
    (Localinput_local_symbol_t.Localinput_local_variable_symbol
       (Localinput_local_variable_symbol_t.Localinput_local_variable_free
          "P_h_val")),
  [1; 4; 1])]
);;
