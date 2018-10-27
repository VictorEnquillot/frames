open Make_test_v;;

testing "Localinput_variable_name_list_by_symbol_predicate_trio_n_as_variable_name_provider_v with
    Localinput_variable_name_list_by_symbol_predicate_trio_n_as_variable_name_provider_u_point_homothety.ml";;

(* Deleting Registers *)

















(* Tracing *)


(* toplevel 
   #use "Localinput_variable_name_list_by_symbol_predicate_trio_n_as_variable_name_provider_u_point_homothety.ml";; 

*)

(* Predicates *)

let sym_pre_def = Localinput_symbol_v.is_input_command_define;;
let sym_pre_as = Localinput_symbol_v.is_input_as;;
let sym_pre_by = Localinput_symbol_v.is_input_by;;
let sym_pre_cen = Localinput_symbol_v.is_input_entity_property_center 
let sym_pre_ove = Localinput_symbol_v.is_input_entity_property_over
let sym_pre_on = Localinput_symbol_v.is_input_entity_property_on

(* Input File *)

let dir_inp ="/keep/sources/ocaml_top/setup/frames/inputset/files/";;
let nof_inp = dir_inp ^ "Print_homothety_point_a.inp";;

let fno_inp = Filename_p.filename nof_inp;;

let nam_iev_l = Localinput_as_local_variable_free_defined_tag_list_by_input_fullnameoffile_provider_v.provide fno_inp;;

test_number 1 (
 nam_iev_l 
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

(* H_b_2 *)

let nam_iev = "H_b_2";;
let tag_inp_def_st = Localinput_as_body_handle_command_define_tag_subtree_by_input_variable_name_provider_v.provide nam_iev;;

test_number 2 (
 tag_inp_def_st 
(* : Localinput_symbol_t.input_entity_symbol Tag_t.tag Tree_t.tree *)
=
  Tree_t.Inner
   ((Localinput_symbol_t.Localinput_local_symbol
      (Localinput_local_symbol_t.Localinput_local_command_symbol
        Localinput_local_command_symbol_t.Localinput_command_define),
     [3; 1]),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_local_symbol
       (Localinput_local_symbol_t.Localinput_local_variable_symbol
         (Localinput_local_variable_symbol_t.Localinput_local_variable_free
           "H_b_2")),
      [1; 3; 1]);
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
        [2; 2; 3; 1])]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_local_symbol
       (Localinput_local_symbol_t.Localinput_local_keyword_symbol
         Localinput_local_keyword_symbol_t.Localinput_end),
      [3; 3; 1])])
);;

let tag_inp_pro_st = Localinput_as_property_entity_tag_subtree_by_input_variable_name_provider_v.provide nam_iev;;

test_number 3 (
tag_inp_pro_st
(* : Localinput_symbol_t.input_entity_symbol Tree_t.tree list *)
=
  Tree_t.Inner
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
      [4; 1; 2; 3; 1])])
);;

open Localinput_variable_name_list_by_symbol_predicate_trio_n_variable_name_provider_v;;

let sym_pre_t = (sym_pre_def, sym_pre_as, sym_pre_cen) ;;

let (sym_pre_def, sym_pre_asby, sym_pre_subp) = sym_pre_t ;;

  let fno_inp = input_filename ();;

  let tag_inp_t = 
    Localinput_tag_tree_by_input_fullnameoffile_provider_v.provide 
      fno_inp
 ;;  

(* define subtree *)
  let tag_inp_def_stl = 
    input_entity_tag_subtree_list_of_symbol_predicate_of_tree 
      sym_pre_def
      tag_inp_t
  ;;

  let tag_inp_def_tl = List.filter 
      (Tree_v.has_topson_of_leaf_predicate_of_tree 
         (fun t -> Localinput_tag_v.string_off t = nam_iev)) 
      tag_inp_def_stl 
 ;;

  let tag_inp_def_st = List_v.element_off_one_element_list tag_inp_def_tl;;

(* as or by subtree *)
  let tag_inp_asby_st = 
    input_entity_tag_subtree_of_symbol_predicate_of_tree 
      sym_pre_asby 
      tag_inp_def_st
 ;;


(* subproperty Center, On, Over *)
  let tag_inp_subp_st = 
    input_entity_tag_subtree_of_symbol_predicate_of_tree 
      sym_pre_subp
      tag_inp_asby_st
 ;;

test_number 4 (
 tag_inp_subp_st 
(* : Localinput_symbol_t.input_entity_symbol Tag_t.tag Tree_t.tree *)
=
  Tree_t.Inner
   ((Localinput_symbol_t.Localinput_property_symbol
      Localinput_property_symbol_t.Localinput_property_center,
     [2; 1; 2; 3; 1]),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_local_symbol
       (Localinput_local_symbol_t.Localinput_local_variable_symbol
         (Localinput_local_variable_symbol_t.Localinput_local_variable_free
           "P_bc_b_tag")),
      [1; 2; 1; 2; 3; 1])])
);;

  let sym_inp_subp_st = Tree_v.map Tag_v.entity_off_tag tag_inp_subp_st;;
  
(* Variable_name as Leaf of Subproperty *)
  let nam_iev_l = string_list_of_topson_leaf_predicate_off_symbol_tree
    Localinput_symbol_v.is_input_entity_local_variable_free 
    sym_inp_subp_st
;;

let nam_iev_cen_l = provide (sym_pre_t, nam_iev);;

test_number 5 (
nam_iev_cen_l 
(* : Localinput_symbol_t.input_entity_symbol Tag_t.tag Tree_t.tree *)
=
["P_bc_b_tag"]
);;

let nam_iev_cen_l = Localinput_variable_name_list_by_symbol_predicate_trio_n_variable_name_provider_v.provide (sym_pre_t, nam_iev);;

test_number 6 (
nam_iev_cen_l 
(* : string *)
=
["P_bc_b_tag"]
);;

(* P_h_val *)

let nam_iev = "P_h_val";;
let sym_pre_t = (sym_pre_def, sym_pre_by, sym_pre_on) ;;
let (sym_pre_def, sym_pre_asby, sym_pre_subp) = sym_pre_t ;;

  let fno_inp = input_filename ();;

  let tag_inp_t = 
    Localinput_tag_tree_by_input_fullnameoffile_provider_v.provide 
      fno_inp
 ;;  

(* define subtree *)
  let tag_inp_def_stl = 
    input_entity_tag_subtree_list_of_symbol_predicate_of_tree 
      sym_pre_def
      tag_inp_t
  ;;

  let tag_inp_def_tl = List.filter 
      (Tree_v.has_topson_of_leaf_predicate_of_tree 
         (fun t -> Localinput_tag_v.string_off t = nam_iev)) 
      tag_inp_def_stl 
 ;;

  let tag_inp_def_st = List_v.element_off_one_element_list tag_inp_def_tl;;

(* as or by subtree *)
  let tag_inp_asby_st = 
    input_entity_tag_subtree_of_symbol_predicate_of_tree 
      sym_pre_asby 
      tag_inp_def_st
 ;;

test_number 7 (
tag_inp_asby_st 
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

(* subproperty Center, On, Over *)
  let tag_inp_subp_st = 
    input_entity_tag_subtree_of_symbol_predicate_of_tree 
      sym_pre_subp
      tag_inp_asby_st
 ;;

test_number 8 (
 tag_inp_subp_st 
(* : Localinput_symbol_t.input_entity_symbol Tag_t.tag Tree_t.tree *)
=
  Tree_t.Inner
   ((Localinput_symbol_t.Localinput_property_symbol
      Localinput_property_symbol_t.Localinput_property_on,
     [2; 1; 2; 4; 1]),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_local_symbol
       (Localinput_local_symbol_t.Localinput_local_variable_symbol
         (Localinput_local_variable_symbol_t.Localinput_local_variable_free
           "P_t_a_tag")),
      [1; 2; 1; 2; 4; 1])])
);;

  let sym_inp_subp_st = Tree_v.map Tag_v.entity_off_tag tag_inp_subp_st;;
  
(* Variable_name as Leaf of Subproperty *)
  let nam_iev_l = string_list_of_topson_leaf_predicate_off_symbol_tree
    Localinput_symbol_v.is_input_entity_local_variable_free 
    sym_inp_subp_st
;;

let nam_iev_on_l = provide (sym_pre_t, nam_iev);;

test_number 9 (
nam_iev_on_l 
(* : Localinput_symbol_t.input_entity_symbol Tag_t.tag Tree_t.tree *)
=
["P_t_a_tag"]
);;

let nam_iev_on_l = Localinput_variable_name_list_by_symbol_predicate_trio_n_variable_name_provider_v.provide (sym_pre_t, nam_iev);;

test_number 10 (
nam_iev_on_l 
(* : string *)
=
["P_t_a_tag"]
);;

