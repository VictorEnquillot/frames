open Make_test_v;;

testing "Localinput_define_symbol_subtree_list_by_basicname_inputbox_provider_v with
    Localinput_define_symbol_subtree_list_by_basicname_inputbox_provider_u_point_homothety.ml";;

(* toplevel 
   #use "Localinput_define_symbol_subtree_list_by_basicname_inputbox_provider_u_point_homothety.ml";; 

*)

(* Deleting Registers *)

















(* Tracing *)


(* Input File *)

let dir_inp ="/keep/sources/ocaml_top/setup/frames/inputset/files/";;
let nof_inp = dir_inp ^ "Print_homothety_point_a.inp";;

let fno_inp = Filename_p.filename nof_inp;;

let sym_inp_def_tl = Localinput_define_symbol_subtree_list_by_basicname_inputbox_provider_v.provide fno_inp;;

test_number 1 (
sym_inp_def_tl
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
              "property_figureset_homothety"));
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
