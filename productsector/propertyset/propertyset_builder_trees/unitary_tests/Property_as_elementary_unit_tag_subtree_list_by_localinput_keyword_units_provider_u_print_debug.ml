open Make_test_v;;

testing "Property_as_elementary_unit_tag_subtree_list_by_localinput_keyword_units_provider_v with
    Property_as_elementary_unit_tag_subtree_list_by_localinput_keyword_units_provider_u_print_debug.ml";;

(* Deleting Registers *)









(* Tracing *)


(* toplevel 
   #use "Property_as_elementary_unit_tag_subtree_list_by_localinput_keyword_units_provider_u_print_debug.ml";; 

*)

(* Input File *)

let nam_ibo = "Print";;
let dir_inp ="/keep/sources/ocaml_top/setup/frames/inputset/files/";;
let nam_ibo = dir_inp ^ nam_inp;;

let sym_loi_t = Localinput_symbol_subtree_by_basicname_inputbox_provider_v.provide nam_ibo;;

test_number 1 (
(sym_loi_t : Localinput_symbol_t.localinput_symbol Tree_t.tree)
  =
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
             (Localinput_constant_symbol_t.Localinput_constant_string "point"))]);
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
         Localinput_keyword_symbol_t.Localinput_keyword_units,
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

open Property_symbol_subtree_by_basicname_inputbox_provider_v;;

let tag_loi_l =
  Localinput_tag_all_list_by_basicname_inputbox_provider_v.provide 
    nam_ibo;;

let tag_loi_kun = List_v.only_element_of_predicate_of_list 
    (fun (s, i) -> Localinput_symbol_v.is_localinput_keyword_units s)
    tag_loi_l
;;

test_number 2(
(tag_loi_kun : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
  (Localinput_symbol_t.Localinput_keyword_symbol
    Localinput_keyword_symbol_t.Localinput_keyword_units,
   [2; 2; 34])
);;

  let tag_iku = (* Coerce Down *)
  (Tag_v.map_entity Localinput_symbol_v.localinput_keyword_units_symbol_off_localinput_symbol)
  tag_loi_kun;;

test_number 3 (
(tag_ico_pow_l : Localinput_command_symbol_t.localinput_command_symbol Tag_t.tag list ) =
  [(Localinput_command_symbol_t.Localinput_command_print, [2; 34]);
   (Localinput_command_symbol_t.Localinput_command_print, [3; 34])]
);;

let tag_ico = List.nth tag_ico_pow_l 0;;

test_number 4 (
(tag_ico : Localinput_command_symbol_t.localinput_command_symbol Tag_t.tag )
  =
(Localinput_command_symbol_t.Localinput_command_print, [2; 34])
);;

let sym_pro_oun = 
    Property_as_operator_tounit_symbol_from_localinput_command_tag_translator_v.translate 
      tag_ico;;

test_number 5 (
(sym_pro_oun : Property_symbol_t.property_symbol ) =
  Property_symbol_t.Operator_fence_symbol
   (Operator_fence_symbol_t.Operator_fence_tounit "print")
);;

let sym_pro_tar_st =
    property_as_target_symbol_subtree_of_localinput_command_tag tag_ico  ;;

test_number 6 (
(sym_pro_tar_st : 'a Tree_t.tree ) = Tree_t.Empty 
);;

let sym_pro_uni_stl =
    property_as_units_symbol_subtree_list_of_localinput_command_tag tag_ico;;

test_number 7 (
( sym_pro_uni_stl : Property_symbol_t.property_symbol Tree_t.tree list ) =
  [Tree_t.Leaf
    (Property_symbol_t.Property_external_symbol
      (Property_external_symbol_t.Property_external_elementary_symbol
        "length_meter"));
   Tree_t.Leaf
    (Property_symbol_t.Property_external_symbol
      (Property_external_symbol_t.Property_external_elementary_symbol
        "angle_radian"))]
);;


let sym_pro_uni_t = Tree_v.make_of_node sym_pro_oun (sym_pro_tar_st :: sym_pro_uni_stl);;

test_number 8 (
(sym_pro_uni_t : Property_symbol_t.property_symbol Tree_t.tree ) =
Tree_t.Inner
 (Property_symbol_t.Operator_fence_symbol
   (Operator_fence_symbol_t.Operator_fence_tounit "print"),
 [Tree_t.Empty;
  Tree_t.Leaf
   (Property_symbol_t.Property_external_symbol
     (Property_external_symbol_t.Property_external_elementary_symbol
       "length_meter"));
  Tree_t.Leaf
   (Property_symbol_t.Property_external_symbol
     (Property_external_symbol_t.Property_external_elementary_symbol
       "angle_radian"))])
);;

let sym_pro_uni_t = property_as_operator_tounit_symbol_subtree_of_localinput_command_tag tag_ico;;

test_number 9 (
(sym_pro_uni_t : Property_symbol_t.property_symbol Tree_t.tree ) =
Tree_t.Inner
 (Property_symbol_t.Operator_fence_symbol
   (Operator_fence_symbol_t.Operator_fence_tounit "print"),
 [Tree_t.Empty;
  Tree_t.Leaf
   (Property_symbol_t.Property_external_symbol
     (Property_external_symbol_t.Property_external_elementary_symbol
       "length_meter"));
  Tree_t.Leaf
   (Property_symbol_t.Property_external_symbol
     (Property_external_symbol_t.Property_external_elementary_symbol
       "angle_radian"))])
);;

let tag_loi_uni_st = Localinput_tag_subtree_by_localinput_body_handle_command_tag_provider_v.provide tag_ico;;

let tag_loi_uit_stl =  
    Tree_v.subtree_filter_of_node_predicate_off_tree 
      (fun (s, i) -> Localinput_symbol_v.is_localinput_keyword_units_item s)
      tag_loi_uni_st;;

test_number 10 (
(tag_loi_uit_stl : Localinput_symbol_t.localinput_symbol Tag_t.tag Tree_t.tree list )
=
  [Tree_t.Inner
    ((Localinput_symbol_t.Localinput_keyword_symbol
       Localinput_keyword_symbol_t.Localinput_keyword_units_item,
      [1; 2; 2; 34]),
    [Tree_t.Leaf
      (Localinput_symbol_t.Localinput_basic_symbol
        (Localinput_basic_symbol_t.Localinput_basic_string "length"),
       [1; 1; 2; 2; 34]);
     Tree_t.Leaf
      (Localinput_symbol_t.Localinput_basic_symbol
        (Localinput_basic_symbol_t.Localinput_basic_string "meter"),
       [2; 1; 2; 2; 34])]);
   Tree_t.Inner
    ((Localinput_symbol_t.Localinput_keyword_symbol
       Localinput_keyword_symbol_t.Localinput_keyword_units_item,
      [2; 2; 2; 34]),
    [Tree_t.Leaf
      (Localinput_symbol_t.Localinput_basic_symbol
        (Localinput_basic_symbol_t.Localinput_basic_string "angle"),
       [1; 2; 2; 2; 34]);
     Tree_t.Leaf
      (Localinput_symbol_t.Localinput_basic_symbol
        (Localinput_basic_symbol_t.Localinput_basic_string "radian"),
       [2; 2; 2; 2; 34])])]
);;

let sym_pun_stl =  
  property_as_unit_symbol_subtree_list_of_localinput_keyword_units_item_tag_subtree_list 
      tag_loi_uit_stl;;

test_number 11 (
(sym_pun_stl : Property_symbol_t.property_symbol Tree_t.tree list )
=
  [Tree_t.Leaf
    (Property_symbol_t.Property_external_symbol
      (Property_external_symbol_t.Property_external_elementary_symbol
        "length_meter"));
   Tree_t.Leaf
    (Property_symbol_t.Property_external_symbol
      (Property_external_symbol_t.Property_external_elementary_symbol
        "angle_radian"))]
);;

test_number 12 (
sym_pun_stl =
property_as_units_symbol_subtree_list_of_localinput_command_tag tag_ico
);;

let sym_pro_t = Property_symbol_subtree_by_basicname_inputbox_provider_v.provide nam_ibo;;

test_number 13 (
(sym_pro_t : Property_symbol_t.property_symbol Tree_t.tree )
=
Tree_t.Inner
  (Property_symbol_t.Property_environment_symbol
     (Property_environment_symbol_t.Property_localinput_file_symbol
	(Property_localinput_file_symbol_t.Property_localinput_file_constructor
           "/keep/sources/ocaml_top/setup/frames/inputset/files/Print")),
   [Tree_t.Inner
     (Property_symbol_t.Operator_fence_symbol
	(Operator_fence_symbol_t.Operator_fence_tounit "print"),
      [Tree_t.Empty;
       Tree_t.Leaf
	 (Property_symbol_t.Property_external_symbol
            (Property_external_symbol_t.Property_external_elementary_symbol
               "length_meter"));
       Tree_t.Leaf
	 (Property_symbol_t.Property_external_symbol
            (Property_external_symbol_t.Property_external_elementary_symbol
           "angle_radian"))]);
    Tree_t.Inner
      (Property_symbol_t.Operator_fence_symbol
	 (Operator_fence_symbol_t.Operator_fence_tounit "print"),
       [Tree_t.Empty])])
);;

