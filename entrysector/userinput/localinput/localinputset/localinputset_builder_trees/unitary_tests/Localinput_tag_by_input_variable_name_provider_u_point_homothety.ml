open Make_test_v;;

testing "Localinput_tag_by_input_variable_name_provider_v with
    Localinput_tag_by_input_variable_name_provider_u_point_homothety.ml";;

(* Deleting Registers *)

















(* Tracing *)


(* Predicates *)

let sym_pre_def = Localinput_symbol_v.is_input_command_define;;
let sym_pre_as = Localinput_symbol_v.is_input_as;;
let sym_pre_by = Localinput_symbol_v.is_input_by;;
let sym_pre_cen = Localinput_symbol_v.is_input_entity_property_center 
let sym_pre_ove = Localinput_symbol_v.is_input_entity_property_over
let sym_pre_on = Localinput_symbol_v.is_input_entity_property_on

(* toplevel 
   #use "Localinput_tag_by_input_variable_name_provider_u_point_homothety.ml";;

*)

(* Input File *)

let nof_inp = "Print_homothety_point_a.inp";;
let dir_inp ="/keep/sources/ocaml_top/setup/frames/inputset/files/";;
let fno_inp = dir_inp ^ nam_inp;;

let tag_iev_l = Localinput_as_local_variable_free_defined_tag_list_by_input_fullnameoffile_provider_v.provide fno_inp;;

test_number 1 (
 tag_iev_l 
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

let nam_iev_l = List.map (fun t -> Localinput_symbol_v.string_off (Tag_v.entity_off_tag t)) tag_iev_l;;

test_number 2 (
 nam_iev_l 
(* : string list *)
  = 
["P_bc_b_tag"; "P_t_a_tag"; "H_b_2"; "P_h_val"]
);;

open Localinput_tag_by_input_variable_name_provider_v;;

(* H_b_2 *)

let nam_iev = "H_b_2";;

let tag_inp_def_st = 
    Localinput_as_body_handle_command_define_tag_subtree_by_input_variable_name_provider_v.provide 
      nam_iev;;

let tag_inp_as_st = input_entity_tag_subtree_of_symbol_predicate_of_tree 
      symbol_predicate_as
      tag_inp_def_st;;

test_number 3 (
 tag_inp_as_st 
(* : Localinput_symbol_t.input_entity_symbol Tag_t.tag Tree_t.tree *)
=
  Tree_t.Inner
   ((Localinput_symbol_t.Localinput_local_symbol
      (Localinput_local_symbol_t.Localinput_local_keyword_symbol
        Localinput_local_keyword_symbol_t.Localinput_as),
     [2; 3; 1]),
   [Tree_t.Inner
     ((Localinput_symbol_t.Localinput_property_symbol
        Localinput_property_symbol_t.Localinput_property_entity,
       [1; 2; 3; 1]),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_property_symbol
         (Localinput_property_symbol_t.Localinput_property_what
           "property_figure_homothety_constructor"),
        [1; 1; 2; 3; 1]);
      Tree_t.Inner
       ((Localinput_symbol_t.Localinput_property_symbol
          Localinput_property_symbol_t.Localinput_property_center,
         [2; 1; 2; 3; 1]),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_local_symbol
           (Localinput_local_symbol_t.Localinput_local_variable_symbol
             (Localinput_local_variable_symbol_t.Localinput_local_variable_free
               "P_bc_b_tag")),
          [1; 2; 1; 2; 3; 1])]);
      Tree_t.Inner
       ((Localinput_symbol_t.Localinput_property_symbol
          Localinput_property_symbol_t.Localinput_property_scale_factor,
         [3; 1; 2; 3; 1]),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_local_symbol
           (Localinput_local_symbol_t.Localinput_local_constant_symbol
             (Localinput_local_constant_symbol_t.Localinput_local_constant_float
               " 2.0")),
          [1; 3; 1; 2; 3; 1])]);
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_local_symbol
         (Localinput_local_symbol_t.Localinput_local_keyword_symbol
           Localinput_local_keyword_symbol_t.Localinput_end),
        [4; 1; 2; 3; 1])]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_local_symbol
       (Localinput_local_symbol_t.Localinput_local_keyword_symbol
         Localinput_local_keyword_symbol_t.Localinput_end),
      [2; 2; 3; 1])])
);;

let tag_inp_tps_l = Tree_v.topson_notleaf_node_list_off_tree tag_inp_as_st ;;
let tag_inp_tps = List_v.element_off_one_element_list tag_inp_tps_l;;

test_number 4 (
tag_inp_tps
(* : Localinput_symbol_t.input_entity_symbol Tag_t.tag *)
  =
  (Localinput_symbol_t.Localinput_property_symbol
     Localinput_property_symbol_t.Localinput_property_entity,
    [1; 2; 3; 1])
);;

(* P_h_val *)

let nam_iev = "P_h_val";;

let tag_inp_def_st = 
    Localinput_as_body_handle_command_define_tag_subtree_by_input_variable_name_provider_v.provide 
      nam_iev;;

let boo = has_node_of_node_predicate_off_tree tag_predicate_as tag_inp_def_st;;

let tag_inp_by_st = input_entity_tag_subtree_of_symbol_predicate_of_tree 
      symbol_predicate_by
      tag_inp_def_st;;

test_number 5 (
 tag_inp_by_st 
(* : Localinput_symbol_t.input_entity_symbol Tag_t.tag Tree_t.tree *)
=
  Tree_t.Inner
   ((Localinput_symbol_t.Localinput_local_symbol
      (Localinput_local_symbol_t.Localinput_local_keyword_symbol
        Localinput_local_keyword_symbol_t.Localinput_by),
     [2; 4; 1]),
   [Tree_t.Inner
     ((Localinput_symbol_t.Localinput_local_symbol
        (Localinput_local_symbol_t.Localinput_local_keyword_symbol
          Localinput_local_keyword_symbol_t.Localinput_applying),
       [1; 2; 4; 1]),
     [Tree_t.Inner
       ((Localinput_symbol_t.Localinput_property_symbol
          Localinput_property_symbol_t.Localinput_property_operator,
         [1; 1; 2; 4; 1]),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_local_symbol
           (Localinput_local_symbol_t.Localinput_local_variable_symbol
             (Localinput_local_variable_symbol_t.Localinput_local_variable_free
               "H_b_2")),
          [1; 1; 1; 2; 4; 1])]);
      Tree_t.Inner
       ((Localinput_symbol_t.Localinput_property_symbol
          Localinput_property_symbol_t.Localinput_property_on,
         [2; 1; 2; 4; 1]),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_local_symbol
           (Localinput_local_symbol_t.Localinput_local_variable_symbol
             (Localinput_local_variable_symbol_t.Localinput_local_variable_free
               "P_t_a_tag")),
          [1; 2; 1; 2; 4; 1])]);
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_local_symbol
         (Localinput_local_symbol_t.Localinput_local_keyword_symbol
           Localinput_local_keyword_symbol_t.Localinput_end),
        [3; 1; 2; 4; 1])]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_local_symbol
       (Localinput_local_symbol_t.Localinput_local_keyword_symbol
         Localinput_local_keyword_symbol_t.Localinput_end),
      [2; 2; 4; 1])])
);;

let tag_inp_ope_st = 
  input_entity_tag_subtree_of_symbol_predicate_of_tree 
    symbol_predicate_operator
    tag_inp_by_st;;

test_number 6 (
 tag_inp_ope_st 
(* : Localinput_symbol_t.input_entity_symbol Tag_t.tag Tree_t.tree *)
=
  Tree_t.Inner
   ((Localinput_symbol_t.Localinput_property_symbol
      Localinput_property_symbol_t.Localinput_property_operator,
     [1; 1; 2; 4; 1]),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_local_symbol
       (Localinput_local_symbol_t.Localinput_local_variable_symbol
         (Localinput_local_variable_symbol_t.Localinput_local_variable_free
           "H_b_2")),
      [1; 1; 1; 2; 4; 1])])
);;

let tag_inp_tps = Tree_v.root_off_tree tag_inp_ope_st;;

test_number 7 (
tag_inp_tps
(* : Localinput_symbol_t.input_entity_symbol Tag_t.tag *)
  =
(Localinput_symbol_t.Localinput_property_symbol
  Localinput_property_symbol_t.Localinput_property_operator,
 [1; 1; 2; 4; 1])
);;

(* ----------- Main Test ------- *)

let tag_inp_l = List.map Localinput_tag_by_input_variable_name_provider_v.provide nam_iev_l;;

test_number 8 (
 tag_inp_l 
(* : Localinput_symbol_t.input_entity_symbol Tag_t.tag list *)
  =
[(Localinput_symbol_t.Localinput_frames_symbol
    Localinput_frames_symbol_t.Localinput_frames_entity,
  [1; 2; 1; 1]);
 (Localinput_symbol_t.Localinput_frames_symbol
    Localinput_frames_symbol_t.Localinput_frames_entity,
  [1; 2; 2; 1]);
 (Localinput_symbol_t.Localinput_property_symbol
    Localinput_property_symbol_t.Localinput_property_entity,
  [1; 2; 3; 1]);
 (Localinput_symbol_t.Localinput_property_symbol
    Localinput_property_symbol_t.Localinput_property_operator,
  [1; 1; 2; 4; 1])]
);;
