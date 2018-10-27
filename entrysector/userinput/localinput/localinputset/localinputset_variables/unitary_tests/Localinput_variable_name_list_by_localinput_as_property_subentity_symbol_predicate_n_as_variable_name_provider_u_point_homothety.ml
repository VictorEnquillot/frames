open Make_test_v;;

testing "Localinput_variable_name_list_by_localinput_as_property_subentity_symbol_predicate_n_as_variable_name_provider_v with
    Localinput_variable_name_list_by_localinput_as_property_subentity_symbol_predicate_n_as_variable_name_provider_u_point_homothety.ml";;

(* Deleting Registers *)

















(* Tracing *)


(* toplevel 
   #use "Localinput_variable_name_list_by_localinput_as_property_subentity_symbol_predicate_n_as_variable_name_provider_u_point_homothety.ml";; 

*)

(* Input File *)

let dir_inp ="/keep/sources/ocaml_top/setup/frames/inputset/files/";;
let nam_ibo = dir_inp ^ "Print_homothety_point_a";;

let fno_inp = Filename_p.filename nam_ibo;;

let nam_iev_l = Localinput_as_local_variable_free_defined_tag_list_by_basicname_inputbox_provider_v.provide fno_inp;;

test_number 1 (
 nam_iev_l 
(* : Localinput_symbol_t.localinput_symbol Tag_t.tag list *)
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
let tag_loi_def_st = Localinput_as_body_handle_command_define_tag_subtree_by_localinput_variable_name_provider_v.provide nam_iev;;

test_number 2 (
 tag_loi_def_st 
(* : Localinput_symbol_t.localinput_symbol Tag_t.tag Tree_t.tree *)
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

let tag_loi_pro_st = Localinput_as_property_entity_tag_subtree_by_localinput_variable_name_provider_v.provide nam_iev;;

test_number 3 (
tag_loi_pro_st
(* : Localinput_symbol_t.localinput_symbol Tree_t.tree list *)
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

open Localinput_variable_name_list_by_localinput_as_property_subentity_symbol_predicate_n_as_variable_name_provider_v;;

let sym_cen_pre = Localinput_symbol_v.is_localinput_property_center;;
let tag_loi_sub_st =
    input_as_property_subentity_tag_tree_of_subpredicate_localinput_variable_name
      sym_cen_pre
      nam_iev;;

test_number 4 (
tag_loi_sub_st 
(* : Localinput_symbol_t.localinput_symbol Tag_t.tag Tree_t.tree *)
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

let sym_inp_sub_st = Tree_v.map Tag_v.entity_off_tag tag_loi_sub_st;;

let nam_iev_cen_l = string_list_of_topson_leaf_predicate_off_symbol_tree
    Localinput_symbol_v.is_localinput_local_variable_free 
    sym_inp_sub_st;;

test_number 5 (
nam_iev_cen_l 
(* : string *)
=
["P_bc_b_tag"]
);;

let nam_iev_cen_l = Localinput_variable_name_list_by_localinput_as_property_subentity_symbol_predicate_n_as_variable_name_provider_v.provide (sym_cen_pre, nam_iev);;

test_number 6 (
nam_iev_cen_l 
(* : string *)
=
["P_bc_b_tag"]
);;

(* P_h_val *)

let nam_iev = "P_h_val";;

let tag_loi_def_st = Localinput_as_body_handle_command_define_tag_subtree_by_localinput_variable_name_provider_v.provide nam_iev;;

test_number 7 (
tag_loi_def_st 
(* :
  Localinput_symbol_t.localinput_symbol Tag_t.tag Tree_t.tree *)
  =
  Tree_t.Inner
   ((Localinput_symbol_t.Localinput_local_symbol
      (Localinput_local_symbol_t.Localinput_local_command_symbol
        Localinput_local_command_symbol_t.Localinput_command_define),
     [4; 1]),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_local_symbol
       (Localinput_local_symbol_t.Localinput_local_variable_symbol
         (Localinput_local_variable_symbol_t.Localinput_local_variable_free
           "P_h_val")),
      [1; 4; 1]);
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
        [2; 2; 4; 1])]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_local_symbol
       (Localinput_local_symbol_t.Localinput_local_keyword_symbol
         Localinput_local_keyword_symbol_t.Localinput_end),
      [3; 4; 1])])
);;
let tag_loi_pro_st = Localinput_as_property_entity_tag_subtree_by_localinput_variable_name_provider_v.provide nam_iev;;

test_number 8 (
tag_loi_pro_st
(* : Localinput_symbol_t.localinput_symbol Tree_t.tree list *)
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

(***
open Localinput_variable_name_list_by_localinput_as_property_subentity_symbol_predicate_n_as_variable_name_provider_v;;

let sym_cen_pre = Localinput_symbol_v.is_localinput_property_center;;
let tag_loi_sub_st =
    input_as_property_subentity_tag_tree_of_subpredicate_localinput_variable_name
      sym_cen_pre
      nam_iev;;

test_number 9 (
tag_loi_sub_st 
(* : Localinput_symbol_t.localinput_symbol Tag_t.tag Tree_t.tree *)
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

let sym_inp_sub_st = Tree_v.map Tag_v.entity_off_tag tag_loi_sub_st;;

let nam_iev_cen_l = string_list_of_topson_leaf_predicate_off_symbol_tree
    Localinput_symbol_v.is_localinput_local_variable_free 
    sym_inp_sub_st;;

test_number 10 (
nam_iev_cen_l 
(* : string *)
=
["P_bc_b_tag"]
);;

let nam_iev_cen_l = Localinput_variable_name_list_by_localinput_as_property_subentity_symbol_predicate_n_as_variable_name_provider_v.provide (sym_cen_pre, nam_iev);;

test_number 11 (
nam_iev_cen_l 
(* : string *)
=
["P_bc_b_tag"]
);;
***)
