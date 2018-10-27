open Make_test_v;;

testing "Localinput_symbol_tree_by_localinput_fullname_provider_v with
    Localinput_symbol_tree_by_localinput_fullname_provider_u_point_homothety.ml";;

(* Deleting Registers *)














(* Tracing *)


(* toplevel 
   #use "Localinput_symbol_tree_by_localinput_fullname_provider_u_point_homothety.ml";; 

*)

(* Input File *)

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Print_homothety_point_a";;
let fno_inp = Localinputbox_name_by_localinput_nameoffile_provider_v.provide nam_ibo;;

open Localinput_symbol_tree_by_localinput_fullname_provider_v;;

let sym_inp_t = provide fno_inp;;

let sym_inp_rts_l = Tree_v.root_topson_node_list_off_tree sym_inp_t;;

test_number 1 (
(sym_inp_rts_l : Localinput_symbol_t.localinput_symbol list ) =
  [Localinput_symbol_t.Localinput_file_symbol
    (Localinput_file_symbol_t.Localinput_file_constructor
      "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Print_homothety_point_a");
   Localinput_symbol_t.Localinput_body_handle_command_symbol
    Localinput_body_handle_command_symbol_t.Localinput_command_define;
   Localinput_symbol_t.Localinput_body_handle_command_symbol
    Localinput_body_handle_command_symbol_t.Localinput_command_define;
   Localinput_symbol_t.Localinput_body_handle_command_symbol
    Localinput_body_handle_command_symbol_t.Localinput_command_define;
   Localinput_symbol_t.Localinput_body_handle_command_symbol
    Localinput_body_handle_command_symbol_t.Localinput_command_define;
   Localinput_symbol_t.Localinput_body_handle_command_symbol
    Localinput_body_handle_command_symbol_t.Localinput_command_define;
   Localinput_symbol_t.Localinput_body_handle_command_symbol
    Localinput_body_handle_command_symbol_t.Localinput_command_define;
   Localinput_symbol_t.Localinput_body_handle_command_symbol
    Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_unit_print_constructor;
   Localinput_symbol_t.Localinput_body_handle_command_symbol
    Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_stop]
);;

let sym_inp_tso_stl = Tree_v.topson_tree_list_off_tree sym_inp_t;;

let pre_tre =
  let pre_lea = Localinput_symbol_v.is_localinput_variable_name_constructor in
  let pre_nod = Localinput_symbol_v.is_localinput_keyword_context in
  Tree_v.has_a_topson_leaf_and_a_topson_node_of_leaf_predicate_of_node_predicate_off_tree pre_lea pre_nod 
;;

let sym_inp_con_stl = List.filter pre_tre sym_inp_tso_stl;;

test_number 2 (
(sym_inp_con_stl : Localinput_symbol_t.localinput_symbol Tree_t.tree list ) =
  [Tree_t.Inner
    (Localinput_symbol_t.Localinput_body_handle_command_symbol
      Localinput_body_handle_command_symbol_t.Localinput_command_define,
    [Tree_t.Leaf
      (Localinput_symbol_t.Localinput_variable_symbol
        (Localinput_variable_symbol_t.Localinput_variable_name_symbol
          (Localinput_variable_name_symbol_t.Localinput_variable_name_constructor
            "Con_loc")));
     Tree_t.Inner
      (Localinput_symbol_t.Localinput_keyword_symbol
        Localinput_keyword_symbol_t.Localinput_keyword_context,
      [Tree_t.Inner
        (Localinput_symbol_t.Localinput_keyword_symbol
          Localinput_keyword_symbol_t.Localinput_keyword_database,
        [Tree_t.Leaf
          (Localinput_symbol_t.Localinput_basic_symbol
            (Localinput_basic_symbol_t.Localinput_basic_string_symbol
              (Localinput_basic_string_symbol_t.Localinput_basic_string_constructor
                "db1")))]);
       Tree_t.Inner
        (Localinput_symbol_t.Localinput_keyword_symbol
          Localinput_keyword_symbol_t.Localinput_keyword_domain,
        [Tree_t.Leaf
          (Localinput_symbol_t.Localinput_basic_symbol
            (Localinput_basic_symbol_t.Localinput_basic_string_symbol
              (Localinput_basic_string_symbol_t.Localinput_basic_string_constructor
                "user")))])]);
     Tree_t.Leaf
      (Localinput_symbol_t.Localinput_keyword_symbol
        Localinput_keyword_symbol_t.Localinput_keyword_end)]);
   Tree_t.Inner
    (Localinput_symbol_t.Localinput_body_handle_command_symbol
      Localinput_body_handle_command_symbol_t.Localinput_command_define,
    [Tree_t.Leaf
      (Localinput_symbol_t.Localinput_variable_symbol
        (Localinput_variable_symbol_t.Localinput_variable_name_symbol
          (Localinput_variable_name_symbol_t.Localinput_variable_name_constructor
            "Con_hom")));
     Tree_t.Inner
      (Localinput_symbol_t.Localinput_keyword_symbol
        Localinput_keyword_symbol_t.Localinput_keyword_context,
      [Tree_t.Inner
        (Localinput_symbol_t.Localinput_keyword_symbol
          Localinput_keyword_symbol_t.Localinput_keyword_createdby,
        [Tree_t.Leaf
          (Localinput_symbol_t.Localinput_basic_symbol
            (Localinput_basic_symbol_t.Localinput_basic_string_symbol
              (Localinput_basic_string_symbol_t.Localinput_basic_string_constructor
                "Hom_b_2")))]);
       Tree_t.Inner
        (Localinput_symbol_t.Localinput_keyword_symbol
          Localinput_keyword_symbol_t.Localinput_keyword_domain,
        [Tree_t.Leaf
          (Localinput_symbol_t.Localinput_basic_symbol
            (Localinput_basic_symbol_t.Localinput_basic_string_symbol
              (Localinput_basic_string_symbol_t.Localinput_basic_string_constructor
                "user")))])]);
     Tree_t.Leaf
      (Localinput_symbol_t.Localinput_keyword_symbol
        Localinput_keyword_symbol_t.Localinput_keyword_end)])]
);;

let pre_tre =
  let pre_lea = Localinput_symbol_v.is_localinput_variable_name_constructor in
  let pre_nod = Localinput_symbol_v.is_localinput_keyword_operator in
  Tree_v.has_a_topson_leaf_and_a_topson_node_of_leaf_predicate_of_node_predicate_off_tree pre_lea pre_nod 
;;

let sym_inp_ope_stl = List.filter pre_tre sym_inp_tso_stl;;

test_number 3 (
(sym_inp_ope_stl : Localinput_symbol_t.localinput_symbol Tree_t.tree list ) =
 [Tree_t.Inner
    (Localinput_symbol_t.Localinput_body_handle_command_symbol
      Localinput_body_handle_command_symbol_t.Localinput_command_define,
    [Tree_t.Leaf
      (Localinput_symbol_t.Localinput_variable_symbol
        (Localinput_variable_symbol_t.Localinput_variable_name_symbol
          (Localinput_variable_name_symbol_t.Localinput_variable_name_constructor
            "Hom_b_2")));
     Tree_t.Inner
      (Localinput_symbol_t.Localinput_keyword_symbol
        Localinput_keyword_symbol_t.Localinput_keyword_operator,
      [Tree_t.Inner
        (Localinput_symbol_t.Localinput_keyword_symbol
          Localinput_keyword_symbol_t.Localinput_keyword_type,
        [Tree_t.Leaf
          (Localinput_symbol_t.Localinput_constant_symbol
            (Localinput_constant_symbol_t.Localinput_constant_string "operator"));
         Tree_t.Leaf
          (Localinput_symbol_t.Localinput_constant_symbol
            (Localinput_constant_symbol_t.Localinput_constant_string "transformation"));
         Tree_t.Leaf
          (Localinput_symbol_t.Localinput_constant_symbol
            (Localinput_constant_symbol_t.Localinput_constant_string "homothety"))]);
       Tree_t.Inner
        (Localinput_symbol_t.Localinput_keyword_symbol
          Localinput_keyword_symbol_t.Localinput_keyword_center,
        [Tree_t.Leaf
          (Localinput_symbol_t.Localinput_basic_symbol
            (Localinput_basic_symbol_t.Localinput_basic_string_symbol
              (Localinput_basic_string_symbol_t.Localinput_basic_string_constructor
                "Cen_b")))]);
       Tree_t.Inner
        (Localinput_symbol_t.Localinput_keyword_symbol
          Localinput_keyword_symbol_t.Localinput_keyword_scale_factor,
        [Tree_t.Leaf
          (Localinput_symbol_t.Localinput_basic_symbol
            (Localinput_basic_symbol_t.Localinput_basic_float_symbol
              (Localinput_basic_float_symbol_t.Localinput_basic_float_constructor "2.0")))])]);
     Tree_t.Leaf
      (Localinput_symbol_t.Localinput_keyword_symbol
        Localinput_keyword_symbol_t.Localinput_keyword_end)])]
);;
