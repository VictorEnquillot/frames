open Make_test_v;;

testing "Localinput_as_property_entity_tag_subtree_by_localinput_variable_name_provider_v with
    Localinput_as_property_entity_tag_subtree_by_localinput_variable_name_provider_u_point_homothety.ml";;

(* Deleting Registers *)

















(* Tracing *)


(* toplevel 
   #use "Localinput_as_property_entity_tag_subtree_by_localinput_variable_name_provider_u_point_homothety.ml";; 

*)

(* Input File *)

let dir_inp ="/keep/sources/ocaml_top/setup/frames/inputset/files/";;
let nam_ibo = dir_inp ^ "Print_homothety_point_a";;

let fno_inp = Filename_p.filename nam_ibo;;

let nam_iev_l = Localinput_as_local_variable_free_defined_tag_list_by_basicname_inputbox_provider_v.provide fno_inp;;

test_number 1 (
 nam_iev_l 
(* : Localinput_symbol_t.localinput_entity_symbol Tag_t.tag list *)
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

let nam_iev = "H_b_2";;
let tag_loi_pro_st = Localinput_as_property_entity_tag_subtree_by_localinput_variable_name_provider_v.provide nam_iev;;

test_number 2 (
tag_loi_pro_st
(* : Localinput_symbol_t.localinput_entity_symbol Tree_t.tree list *)
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

