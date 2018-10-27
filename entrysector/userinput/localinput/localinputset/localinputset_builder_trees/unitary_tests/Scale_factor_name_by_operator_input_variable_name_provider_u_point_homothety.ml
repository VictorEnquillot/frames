open Make_test_v;;

testing "Scale_factor_name_by_operator_input_variable_name_provider_v with
    Scale_factor_name_by_operator_input_variable_name_provider_u_point_homothety.ml";;

(* Deleting Registers *)

















(* Tracing *)


(* toplevel 
   #use "Scale_factor_name_by_operator_input_variable_name_provider_u_point_homothety.ml";; 

*)

(* Input File *)

let nof_inp = "Print_homothety_point_a.inp";;
let dir_inp ="/keep/sources/ocaml_top/setup/frames/inputset/files/";;
let fno_inp = dir_inp ^ nam_inp;;

let tag_inp_stl = Localinput_as_body_handle_command_define_tag_subtree_list_by_input_fullnameoffile_provider_v.provide fno_inp;;
let sym_inp_stl = List.map (Tree_v.map Tag_v.entity_off_tag) tag_inp_stl ;;

let sym_inp_ll = List.map Tree_v.topson_node_list_off_tree sym_inp_stl;;

test_number 1 (
( sym_inp_ll : Localinput_symbol_t.input_symbol list list ) =
  [[Localinput_symbol_t.Localinput_variable_symbol
     (Localinput_variable_symbol_t.Localinput_variable_name_constructor "Con_loc");
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_context;
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_end];
   [Localinput_symbol_t.Localinput_variable_symbol
     (Localinput_variable_symbol_t.Localinput_variable_name_constructor "Con_hom");
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_context;
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_end];
   [Localinput_symbol_t.Localinput_variable_symbol
     (Localinput_variable_symbol_t.Localinput_variable_name_constructor "Cen_b");
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_external;
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_end];
   [Localinput_symbol_t.Localinput_variable_symbol
     (Localinput_variable_symbol_t.Localinput_variable_name_constructor "Poi_a");
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_external;
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_end];
   [Localinput_symbol_t.Localinput_variable_symbol
     (Localinput_variable_symbol_t.Localinput_variable_name_constructor "Hom_b_2");
    Localinput_symbol_t.Localinput_keyword_symbol
     (Localinput_keyword_symbol_t.Localinput_keyword_operator_symbol
       Localinput_keyword_operator_symbol_t.Localinput_keyword_operator_constructor);
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_end];
   [Localinput_symbol_t.Localinput_variable_symbol
     (Localinput_variable_symbol_t.Localinput_variable_name_constructor "Poi_h");
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_target;
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_end]]
);;

let nam_iva = "Hom_b_2";;

let tag_inp_cde_t = 
    Localinput_as_body_handle_command_define_tag_subtree_by_input_variable_name_provider_v.provide 
      nam_iva;;
let sym_inp_cde_t = Tree_v.map Tag_v.entity_off_tag tag_inp_cde_t;;

test_number 2 (
(sym_inp_cde_t : Localinput_symbol_t.input_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Localinput_symbol_t.Localinput_body_handle_command_symbol
     Localinput_body_handle_command_symbol_t.Localinput_command_define,
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_variable_symbol
       (Localinput_variable_symbol_t.Localinput_variable_name_constructor "Hom_b_2"));
    Tree_t.Inner
     (Localinput_symbol_t.Localinput_keyword_symbol
       (Localinput_keyword_symbol_t.Localinput_keyword_operator_symbol
         Localinput_keyword_operator_symbol_t.Localinput_keyword_operator_constructor),
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
           (Localinput_basic_symbol_t.Localinput_basic_string "Cen_b"))]);
      Tree_t.Inner
       (Localinput_symbol_t.Localinput_keyword_symbol
         Localinput_keyword_symbol_t.Localinput_keyword_scale_factor,
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_basic_symbol
           (Localinput_basic_symbol_t.Localinput_basic_float "2.0"))])]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_keyword_symbol
       Localinput_keyword_symbol_t.Localinput_keyword_end)])
);;

let sym_inp_con_t = 
    Tree_v.subtree_of_node_predicate_off_tree 
      Localinput_symbol_v.is_input_keyword_operator
      sym_inp_cde_t;;

test_number 3 (
( sym_inp_con_t : Localinput_symbol_t.input_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Localinput_symbol_t.Localinput_keyword_symbol
     (Localinput_keyword_symbol_t.Localinput_keyword_operator_symbol
       Localinput_keyword_operator_symbol_t.Localinput_keyword_operator_constructor),
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
         (Localinput_basic_symbol_t.Localinput_basic_string "Cen_b"))]);
    Tree_t.Inner
     (Localinput_symbol_t.Localinput_keyword_symbol
       Localinput_keyword_symbol_t.Localinput_keyword_scale_factor,
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_basic_symbol
         (Localinput_basic_symbol_t.Localinput_basic_float "2.0"))])])
);;

let sym_inp_dom_t = 
    Tree_v.subtree_of_node_predicate_off_tree 
      Localinput_symbol_v.is_input_keyword_scale_factor
      sym_inp_cde_t;;

test_number 4 (
sym_inp_dom_t
(* : Localinput_symbol_t.input_symbol Tree_t.tree *)
=
  Tree_t.Inner
   (Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_scale_factor,
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_basic_symbol
       (Localinput_basic_symbol_t.Localinput_basic_float "2.0"))])
);;

let sym_inp_lea_l = Tree_v.subtree_of_node_predicate_off_tree Localinput_symbol_v.is_input_basic_float sym_inp_dom_t;;

test_number 5 (
sym_inp_lea_l 
(* : Localinput_symbol_t.input_symbol Tree_t.tree *)
=
  Tree_t.Leaf
   (Localinput_symbol_t.Localinput_basic_symbol
     (Localinput_basic_symbol_t.Localinput_basic_float "2.0"))
);;

let sym_dom = Scale_factor_name_by_operator_input_variable_name_provider_v.provide nam_iva;;

test_number 6 (
sym_dom 
(* : string *)
=
 "2.0"
);;
