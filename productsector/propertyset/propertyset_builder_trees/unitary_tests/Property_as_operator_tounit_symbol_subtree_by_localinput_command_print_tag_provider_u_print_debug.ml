open Make_test_v;;

testing "Property_as_operator_tounit_symbol_subtree_by_localinput_command_print_tag_provider_v with
    Property_as_operator_tounit_symbol_subtree_by_localinput_command_print_tag_provider_u_print_debug.ml";;

(* Deleting Registers *)









(* Tracing *)


(* toplevel 
   #use "Property_as_operator_tounit_symbol_subtree_by_localinput_command_print_tag_provider_u_print_debug.ml";; 

*)

(* Input File *)

let nam_ibo = "Print";;
let dir_inp ="/keep/sources/ocaml_top/setup/frames/inputset/files/";;
let nam_ibo = dir_inp ^ nam_inp;;

let sym_loi_t = Localinput_symbol_subtree_by_basicname_inputbox_provider_v.provide nam_ibo;;

test_number 1 (
(sym_loi_t : Localinput_symbol_t.localinput_symbol Tree_t.tree) =
 Tree_t.Inner
   (Localinput_symbol_t.Localinput_file
     "/keep/sources/ocaml_top/setup/frames/inputset/files/Print",
   [Tree_t.Inner
     (Localinput_symbol_t.Localinput_command_symbol
       Localinput_command_symbol_t.Localinput_command_define,
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_variable_symbol
         (Localinput_variable_symbol_t.Localinput_variable_name "Poi_a"));
      Tree_t.Inner
       (Localinput_symbol_t.Localinput_keyword_symbol
         Localinput_keyword_symbol_t.Localinput_keyword_external,
       [Tree_t.Inner
         (Localinput_symbol_t.Localinput_keyword_symbol
           Localinput_keyword_symbol_t.Localinput_keyword_type,
         [Tree_t.Leaf
           (Localinput_symbol_t.Localinput_constant_symbol
             (Localinput_constant_symbol_t.Localinput_constant_string "figure"));
          Tree_t.Leaf
           (Localinput_symbol_t.Localinput_constant_symbol
             (Localinput_constant_symbol_t.Localinput_constant_string "point"));
          Tree_t.Leaf
           (Localinput_symbol_t.Localinput_constant_symbol
             (Localinput_constant_symbol_t.Localinput_constant_string "constructor"))]);
        Tree_t.Inner
         (Localinput_symbol_t.Localinput_keyword_symbol
           Localinput_keyword_symbol_t.Localinput_keyword_name,
         [Tree_t.Leaf
           (Localinput_symbol_t.Localinput_basic_symbol
             (Localinput_basic_symbol_t.Localinput_basic_string "T_A"))]);
        Tree_t.Inner
         (Localinput_symbol_t.Localinput_keyword_symbol
           Localinput_keyword_symbol_t.Localinput_keyword_context,
         [Tree_t.Leaf
           (Localinput_symbol_t.Localinput_basic_symbol
             (Localinput_basic_symbol_t.Localinput_basic_string "Con_db1"))])]);
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_keyword_symbol
         Localinput_keyword_symbol_t.Localinput_keyword_end)]);
    Tree_t.Inner
     (Localinput_symbol_t.Localinput_command_symbol
       Localinput_command_symbol_t.Localinput_command_print,
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_variable_symbol
         (Localinput_variable_symbol_t.Localinput_variable_name "Poi_a"));
      Tree_t.Inner
       (Localinput_symbol_t.Localinput_keyword_symbol
         (Localinput_keyword_symbol_t.Localinput_keyword_units_symbol
           Localinput_keyword_units_symbol_t.Localinput_keyword_units_constructor),
       [Tree_t.Inner
         (Localinput_symbol_t.Localinput_keyword_symbol
           Localinput_keyword_symbol_t.Localinput_keyword_units_item,
         [Tree_t.Leaf
           (Localinput_symbol_t.Localinput_basic_symbol
             (Localinput_basic_symbol_t.Localinput_basic_string "length"));
          Tree_t.Leaf
           (Localinput_symbol_t.Localinput_basic_symbol
             (Localinput_basic_symbol_t.Localinput_basic_string "meter"))]);
        Tree_t.Inner
         (Localinput_symbol_t.Localinput_keyword_symbol
           Localinput_keyword_symbol_t.Localinput_keyword_units_item,
         [Tree_t.Leaf
           (Localinput_symbol_t.Localinput_basic_symbol
             (Localinput_basic_symbol_t.Localinput_basic_string "angle"));
          Tree_t.Leaf
           (Localinput_symbol_t.Localinput_basic_symbol
             (Localinput_basic_symbol_t.Localinput_basic_string "radian"))]);
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_keyword_symbol
           Localinput_keyword_symbol_t.Localinput_keyword_end)]);
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_keyword_symbol
         Localinput_keyword_symbol_t.Localinput_keyword_end)]);
    Tree_t.Inner
     (Localinput_symbol_t.Localinput_command_symbol
       Localinput_command_symbol_t.Localinput_command_print,
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_keyword_symbol
         Localinput_keyword_symbol_t.Localinput_keyword_statistics);
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_keyword_symbol
         Localinput_keyword_symbol_t.Localinput_keyword_end)]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_command_symbol
       Localinput_command_symbol_t.Localinput_command_stop)])

);;

open Property_as_operator_tounit_symbol_subtree_by_localinput_command_print_tag_provider_v;;

let tag_loi_l =
  Localinput_tag_all_list_by_basicname_inputbox_provider_v.provide 
    nam_ibo;;

let tag_loi_com_l = List.filter
    (fun (s, i) -> Localinput_symbol_v.is_localinput_command_print s)
    tag_loi_l;;

let tag_loi_com = List.hd tag_loi_com_l;;

test_number 2 (
(tag_loi_com : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
(Localinput_symbol_t.Localinput_command_symbol
   Localinput_command_symbol_t.Localinput_command_print,
 [2; 35])
);;

let tag_ico = (* Coerce Down *)
  (Tag_v.map_entity Localinput_symbol_v.localinput_command_symbol_off_localinput_symbol)
    tag_loi_com;;

test_number 3 (
(tag_ico : Localinput_command_symbol_t.localinput_command_symbol Tag_t.tag) =
  (Localinput_command_symbol_t.Localinput_command_print, [2; 35])
);;

let tag_loi_com_st = 
    Localinput_tag_subtree_by_localinput_tag_provider_v.provide 
      tag_loi_com;;

test_number 4 (
(tag_loi_com_st : Localinput_symbol_t.localinput_symbol Tag_t.tag Tree_t.tree) =
  Tree_t.Inner
   ((Localinput_symbol_t.Localinput_command_symbol
      Localinput_command_symbol_t.Localinput_command_print,
     [2; 35]),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_variable_symbol
       (Localinput_variable_symbol_t.Localinput_variable_name "Poi_a"),
      [1; 2; 35]);
    Tree_t.Inner
     ((Localinput_symbol_t.Localinput_keyword_symbol
        (Localinput_keyword_symbol_t.Localinput_keyword_units_symbol
          Localinput_keyword_units_symbol_t.Localinput_keyword_units_constructor),
       [2; 2; 35]),
     [Tree_t.Inner
       ((Localinput_symbol_t.Localinput_keyword_symbol
          Localinput_keyword_symbol_t.Localinput_keyword_units_item,
         [1; 2; 2; 35]),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_basic_symbol
           (Localinput_basic_symbol_t.Localinput_basic_string "length"),
          [1; 1; 2; 2; 35]);
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_basic_symbol
           (Localinput_basic_symbol_t.Localinput_basic_string "meter"),
          [2; 1; 2; 2; 35])]);
      Tree_t.Inner
       ((Localinput_symbol_t.Localinput_keyword_symbol
          Localinput_keyword_symbol_t.Localinput_keyword_units_item,
         [2; 2; 2; 35]),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_basic_symbol
           (Localinput_basic_symbol_t.Localinput_basic_string "angle"),
          [1; 2; 2; 2; 35]);
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_basic_symbol
           (Localinput_basic_symbol_t.Localinput_basic_string "radian"),
          [2; 2; 2; 2; 35])]);
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_keyword_symbol
         Localinput_keyword_symbol_t.Localinput_keyword_end,
        [3; 2; 2; 35])]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_keyword_symbol
       Localinput_keyword_symbol_t.Localinput_keyword_end,
      [3; 2; 35])])
);;

(* Leaf node *)


  let tag_loi_lea =
    Tree_v.only_topson_leaf_node_of_node_predicate_off_tree 
      (fun (s, i) -> not (Localinput_symbol_v.is_localinput_keyword_end s))
      tag_loi_com_st;;

let tag_loi_uit_stl =  
    Tree_v.subtree_filter_of_node_predicate_off_tree 
      (fun (s, i) -> Localinput_symbol_v.is_localinput_keyword_units_item s)
      tag_loi_com_st;;

test_number 5 (
( tag_loi_uit_stl : Localinput_symbol_t.localinput_symbol Tag_t.tag Tree_t.tree list ) =
 [Tree_t.Inner
    ((Localinput_symbol_t.Localinput_keyword_symbol
       Localinput_keyword_symbol_t.Localinput_keyword_units_item,
      [1; 2; 2; 35]),
    [Tree_t.Leaf
      (Localinput_symbol_t.Localinput_basic_symbol
        (Localinput_basic_symbol_t.Localinput_basic_string "length"),
       [1; 1; 2; 2; 35]);
     Tree_t.Leaf
      (Localinput_symbol_t.Localinput_basic_symbol
        (Localinput_basic_symbol_t.Localinput_basic_string "meter"),
       [2; 1; 2; 2; 35])]);
   Tree_t.Inner
    ((Localinput_symbol_t.Localinput_keyword_symbol
       Localinput_keyword_symbol_t.Localinput_keyword_units_item,
      [2; 2; 2; 35]),
    [Tree_t.Leaf
      (Localinput_symbol_t.Localinput_basic_symbol
        (Localinput_basic_symbol_t.Localinput_basic_string "angle"),
       [1; 2; 2; 2; 35]);
     Tree_t.Leaf
      (Localinput_symbol_t.Localinput_basic_symbol
        (Localinput_basic_symbol_t.Localinput_basic_string "radian"),
       [2; 2; 2; 2; 35])])]
);;

let tag_loi_kun = Tree_v.node_find_of_node_predicate_off_tree 
    (fun (e, s) -> Localinput_symbol_v.is_localinput_keyword_units_symbol_off_localinput_symbol e)
    tag_loi_com_st;;

test_number 6 (
( tag_loi_kun : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
  (Localinput_symbol_t.Localinput_keyword_symbol
    (Localinput_keyword_symbol_t.Localinput_keyword_units_symbol
      Localinput_keyword_units_symbol_t.Localinput_keyword_units_constructor),
   [2; 2; 35])
);;

let tag_iku = Tag_v.map_entity 
    Localinput_symbol_v.localinput_keyword_units_symbol_off_localinput_symbol
    tag_loi_kun;;

let sym_pro_eun_stl =
    Property_as_external_elementary_symbol_subtree_list_by_localinput_keyword_units_tag_provider_v.provide
    tag_iku
;;

test_number 7 (
( sym_pro_eun_stl : Property_symbol_t.property_symbol Tree_t.tree list )=
  [Tree_t.Leaf
    (Property_symbol_t.Property_external_symbol
      (Property_external_symbol_t.Property_external_elementary_symbol
        "elementary_units_length_meter"));
   Tree_t.Leaf
    (Property_symbol_t.Property_external_symbol
      (Property_external_symbol_t.Property_external_elementary_symbol
        "elementary_units_angle_radian"))]
);;

let sym_pro_st = Property_as_operator_tounit_symbol_subtree_by_localinput_command_print_tag_provider_v.provide tag_ico;;

test_number 8 (
(sym_pro_st : Property_symbol_t.property_symbol Tree_t.tree ) =
Tree_t.Inner
 (Property_symbol_t.Operator_fence_symbol
   (Operator_fence_symbol_t.Operator_fence_tounit "operator_print"),
 [Tree_t.Leaf
   (Property_symbol_t.Property_external_symbol
     (Property_external_symbol_t.Property_external_elementary_symbol
       "elementary_units_length_meter"));
  Tree_t.Leaf
   (Property_symbol_t.Property_external_symbol
     (Property_external_symbol_t.Property_external_elementary_symbol
       "elementary_units_angle_radian"))])
);;
