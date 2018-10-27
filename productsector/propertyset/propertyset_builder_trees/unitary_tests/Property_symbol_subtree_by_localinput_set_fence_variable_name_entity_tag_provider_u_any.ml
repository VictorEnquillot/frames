open Make_test_v;;

testing "Property_symbol_subtree_by_localinput_set_fence_variable_name_entity_tag_provider_v with
    Property_symbol_subtree_by_localinput_set_fence_variable_name_entity_tag_provider_u_any.ml";;

(* Deleting Registers *)


(* Tracing *)


(* toplevel 
   #use "Property_symbol_subtree_by_localinput_set_fence_variable_name_entity_tag_provider_u_any.ml";; 

*)

open Property_symbol_subtree_by_localinput_set_fence_variable_name_entity_tag_provider_v;; 

let nam_ibo = "Print_homothety_point_a";;
let nam_iba = "local";;

let tag_loi_t = Localinput_tag_tree_by_basicname_inputbox_provider_v.provide nam_ibo;;
let tag_loi_l = Localinput_tag_all_list_by_basicname_inputbox_provider_v.provide nam_ibo;;
let tag_loi_lcd_stl = 
    Localinput_as_body_handle_command_creation_define_tag_subtree_list_by_basicname_inputbox_provider_v.provide
      nam_ibo;;

(* Argument Target Implicit tag_lve *)

let nam_lve_Poi_h = "Poi_h";;

let pre_tag_lve_sof sof (s, i) = (Localinput_symbol_v.is_localinput_set_fence_variable_name_entity_symbol_off_localinput_symbol s) && (Localinput_symbol_v.string_off s = sof);; 

let tag_loi_lve_Poi_h_l = List.filter (pre_tag_lve_sof nam_lve_Poi_h) tag_loi_l;;

test_number 1 ( 
(tag_loi_lve_Poi_h_l : Localinput_symbol_t.localinput_symbol Tag_t.tag list ) =
  [(Localinput_symbol_t.Localinput_set_fence_symbol
     (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
       (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
         (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_target_symbol
           (Localinput_set_fence_variable_name_entity_target_symbol_t.Localinput_set_fence_variable_name_entity_target_constructor
             "Poi_h")))),
    [1; 2; 6; 38; 1; 22; 1]);
   (Localinput_symbol_t.Localinput_set_fence_symbol
     (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
       (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
         (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_implicit_symbol
           (Localinput_set_fence_variable_name_entity_implicit_symbol_t.Localinput_set_fence_variable_name_entity_implicit_constructor
             "Poi_h")))),
    [1; 2; 9; 38; 1; 22; 1])]
);;

let pre_tag_lei_sof sof (s, i) = Localinput_symbol_v.localinput_set_fence_variable_name_entity_implicit_constructor sof = s;;
let tag_loi_lei_Poi_h = List_v.only_element_of_predicate_off_list (pre_tag_lei_sof nam_lve_Poi_h) tag_loi_l;;

test_number 2 ( 
(tag_loi_lei_Poi_h : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
  (Localinput_symbol_t.Localinput_set_fence_symbol
    (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
      (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
        (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_implicit_symbol
          (Localinput_set_fence_variable_name_entity_implicit_symbol_t.Localinput_set_fence_variable_name_entity_implicit_constructor
            "Poi_h")))),
   [1; 2; 9; 38; 1; 22; 1])
);;

let tag_lei_cur = Tag_v.map_entity Localinput_symbol_v.localinput_set_fence_variable_name_entity_implicit_symbol_off_localinput_symbol tag_loi_lei_Poi_h;;
let soi_lei_cur =  Tag_v.sole_index_off_tag tag_lei_cur ;;

(* First Pass of Recursion Poi_h is Implicit *)

let tag_lve_cur = Tag_v.map_entity Localinput_symbol_v.localinput_set_fence_variable_name_entity_symbol_off_localinput_symbol tag_loi_lei_Poi_h;;
let tag_lve_top = tag_lve_cur;;

test_number 3 (
(tag_lve_top :
  Localinput_set_fence_variable_name_entity_symbol_t.localinput_set_fence_variable_name_entity_symbol
  Tag_t.tag ) =
  (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_implicit_symbol
    (Localinput_set_fence_variable_name_entity_implicit_symbol_t.Localinput_set_fence_variable_name_entity_implicit_constructor
      "Poi_h"),
   [1; 2; 9; 38; 1; 22; 1])
);;

let (sym_lve_cur, soi_lve_cur) = tag_lve_cur;;

(* Operator Unit *)

let sym_lei_cur = Tag_v.entity_off_tag tag_lei_cur;;
let sof_lei_cur = Localinput_set_fence_variable_name_entity_implicit_symbol_v.string_off sym_lei_cur;;

let sym_pou_ope = 
  Operator_fence_tounit_symbol_by_localinput_set_fence_variable_name_entity_implicit_tag_provider_v.provide 
    tag_lei_cur
;;

(* Coerce Up *) 
let sym_pro_ope =
  Property_symbol_v.property_symbol_of_operator_fence_tounit_symbol
    sym_pou_ope
;;

test_number 4 (
(sym_pro_ope : Property_symbol_t.property_symbol ) =
  Property_symbol_t.Operator_fence_symbol
   (Operator_fence_symbol_t.Operator_fence_tounit_symbol
     (Operator_fence_tounit_symbol_t.Operator_fence_tounit_print_symbol
       (Operator_fence_tounit_print_symbol_t.Operator_fence_tounit_print_constructor
         "Poi_h")))
);;

let sym_pro_ope_f = Tree_v.make_of_leaf sym_pro_ope;;
 
test_number 5 ( 
(sym_pro_ope_f : Property_symbol_t.property_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Property_symbol_t.Operator_fence_symbol
     (Operator_fence_symbol_t.Operator_fence_tounit_symbol
       (Operator_fence_tounit_symbol_t.Operator_fence_tounit_print_symbol
         (Operator_fence_tounit_print_symbol_t.Operator_fence_tounit_print_constructor
           "Poi_h"))))
);;

(* Operand of tag_lei_cur is Target Poi_h = tag_lve_lto *)

let tag_lei_cur = Tag_v.make sym_lei_cur soi_lve_cur;;

let tag_loi_lcd = 
  Localinput_as_fence_variable_name_entity_as_operand_tag_by_localinput_set_fence_variable_name_entity_implicit_tag_provider_v.provide 
    tag_lei_cur;;

let tag_lve_lto = Tag_v.map_entity 
    Localinput_symbol_v.localinput_set_fence_variable_name_entity_symbol_off_localinput_symbol 
    tag_loi_lcd;;

(* Second Pass of Recursion tag_lve_cur is Target Poi_h *)
(* let sym_pro_lto_st = apply tag_lve_lto in  *)
(* let sym_pro_stl = sym_pro_ope_f :: [sym_pro_lto_st] in *)

let tag_lve_cur = tag_lve_lto;;

test_number 6 (
(tag_lve_cur :
  Localinput_set_fence_variable_name_entity_symbol_t.localinput_set_fence_variable_name_entity_symbol
  Tag_t.tag ) =
  (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_target_symbol
    (Localinput_set_fence_variable_name_entity_target_symbol_t.Localinput_set_fence_variable_name_entity_target_constructor
      "Poi_h"),
   [1; 2; 6; 38; 1; 22; 1])
);;

let (sym_lve_cur, soi_lve_cur) = tag_lve_cur;;

(* Operator of Target *)

let sym_net_cur = 
  Localinput_set_fence_variable_name_entity_symbol_v.localinput_set_fence_variable_name_entity_target_symbol_off_localinput_set_fence_variable_name_entity_symbol 
    sym_lve_cur;;

let tag_net_cur = Tag_v.make sym_net_cur soi_lve_cur;;

test_number 7 (
(tag_net_cur :
  Localinput_set_fence_variable_name_entity_target_symbol_t.localinput_set_fence_variable_name_entity_target_symbol
  Tag_t.tag ) =
  (Localinput_set_fence_variable_name_entity_target_symbol_t.Localinput_set_fence_variable_name_entity_target_constructor
    "Poi_h",
   [1; 2; 6; 38; 1; 22; 1])
);;

let tag_lto_ope = 
  Localinput_set_fence_cell_target_operator_tag_by_localinput_set_fence_variable_name_entity_target_tag_provider_v.provide
    tag_net_cur
;;

test_number 8 (
(tag_lto_ope :
  Localinput_set_fence_cell_target_operator_symbol_t.localinput_set_fence_cell_target_operator_symbol
  Tag_t.tag ) =
  (Localinput_set_fence_cell_target_operator_symbol_t.Localinput_set_fence_cell_target_operator_constructor
    "Hom_b_2",
   [2; 2; 2; 2; 6; 38; 1; 22; 1])
);;

let tag_vno =
  Localinput_set_fence_variable_name_operator_tag_by_localinput_set_fence_cell_target_operator_tag_provider_v.provide
    tag_lto_ope;;

test_number 9 (
(tag_vno :
  Localinput_set_fence_variable_name_operator_symbol_t.localinput_set_fence_variable_name_operator_symbol
  Tag_t.tag ) =
  (Localinput_set_fence_variable_name_operator_symbol_t.Localinput_set_fence_variable_name_operator_constructor
    "Hom_b_2",
   [1; 2; 5; 38; 1; 22; 1])
);;

let sym_pro_ope_f = 
  Property_symbol_leaf_by_localinput_set_fence_variable_name_operator_tag_provider_v.provide
	    tag_vno;;

test_number 10 (
(sym_pro_ope_f : Property_symbol_t.property_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Property_symbol_t.Operator_fence_symbol
     (Operator_fence_symbol_t.Operator_fence_creation_symbol
       (Operator_fence_creation_symbol_t.Operator_fence_creation_toentity_symbol
         (Operator_fence_creation_toentity_symbol_t.Operator_fence_creation_toentity_constructor
           "Hom_b_2"))))
);;

let tag_lto_lto = 
  Localinput_set_fence_cell_target_operand_tag_by_localinput_set_fence_variable_name_entity_target_tag_provider_v.provide
    tag_net_cur;;

test_number 11 ( 
(tag_lto_lto :
  Localinput_set_fence_cell_target_operand_symbol_t.localinput_set_fence_cell_target_operand_symbol
   Tag_t.tag ) =
(Localinput_set_fence_cell_target_operand_symbol_t.Localinput_set_fence_cell_target_operand_constructor
   "Poi_a",
 [3; 2; 2; 2; 6; 38; 1; 22; 1])
);;

let tag_lve_lto = 
  Localinput_set_fence_variable_name_entity_tag_by_localinput_set_fence_cell_target_operand_tag_provider_v.provide
    tag_lto_lto;;

(* let sym_pro_lto_st = apply tag_lve_lto in *)

(* Third Pass of Recursion tag_lve_cur is External Poi_a *)

let tag_lve_cur = tag_lve_lto;;

test_number 12 (
(tag_lve_cur :
  Localinput_set_fence_variable_name_entity_symbol_t.localinput_set_fence_variable_name_entity_symbol
  Tag_t.tag ) =
  (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol
    (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
      "Poi_a"),
   [1; 2; 4; 38; 1; 22; 1])
);;

let (sym_lve_cur, soi_lve_cur) = tag_lve_cur;;

let sym_nee_cur = 
  Localinput_set_fence_variable_name_entity_symbol_v.localinput_set_fence_variable_name_entity_external_symbol_off_localinput_set_fence_variable_name_entity_symbol 
    sym_lve_cur;;

let tag_nee_cur = Tag_v.make sym_nee_cur soi_lve_cur;;

let sof_nee_cur = Localinput_set_fence_variable_name_entity_external_symbol_v.string_off sym_nee_cur;;

test_number 13 (
(sof_nee_cur : string ) = 
"Poi_a"
);;

let sym_pro_lto = Property_symbol_v.property_set_fence_operand_external_constructor sof_nee_cur;;

let tag_loi_ope_f = Tree_v.make_of_leaf sym_pro_lto;;

test_number 14 (
(tag_loi_ope_f : Property_symbol_t.property_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Property_symbol_t.Property_set_body_operand_symbol
     (Property_set_body_operand_symbol_t.Property_set_fence_operand_external_symbol
       (Property_set_fence_operand_external_symbol_t.Property_set_fence_operand_external_constructor
         "Poi_a")))
);; 

let tag_loi_st = property_symbol_subtree_of_localinput_set_fence_variable_name_entity_tag tag_lve_top;;

test_number 15 (
(tag_loi_st : Property_symbol_t.property_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Property_symbol_t.Property_target_body_implicit_symbol
     (Property_target_body_implicit_symbol_t.Property_target_body_implicit_unit_symbol
       (Property_target_body_implicit_unit_symbol_t.Property_target_body_implicit_unit_constructor
         "Poi_h")),
   [Tree_t.Leaf
     (Property_symbol_t.Operator_fence_symbol
       (Operator_fence_symbol_t.Operator_fence_tounit_symbol
         (Operator_fence_tounit_symbol_t.Operator_fence_tounit_print_symbol
           (Operator_fence_tounit_print_symbol_t.Operator_fence_tounit_print_constructor
             "Poi_h"))));
    Tree_t.Inner
     (Property_symbol_t.Property_set_body_operand_symbol
       (Property_set_body_operand_symbol_t.Property_set_body_operand_target_symbol
         (Property_set_body_operand_target_symbol_t.Property_set_body_operand_target_created_symbol
           (Property_set_body_operand_target_created_symbol_t.Property_set_body_operand_target_created_constructor
             "Poi_h"))),
     [Tree_t.Leaf
       (Property_symbol_t.Operator_fence_symbol
         (Operator_fence_symbol_t.Operator_fence_creation_symbol
           (Operator_fence_creation_symbol_t.Operator_fence_creation_toentity_symbol
             (Operator_fence_creation_toentity_symbol_t.Operator_fence_creation_toentity_constructor
               "Hom_b_2"))));
      Tree_t.Leaf
       (Property_symbol_t.Property_set_body_operand_symbol
         (Property_set_body_operand_symbol_t.Property_set_fence_operand_external_symbol
           (Property_set_fence_operand_external_symbol_t.Property_set_fence_operand_external_constructor
             "Poi_a")))])])
);;

test_number 16 (
tag_loi_st = provide tag_lve_top
);;
