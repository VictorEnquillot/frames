open Make_test_v;;

testing "Property_tag_subtree_by_localinput_set_fence_variable_name_entity_tag_provider_v with
    Property_tag_subtree_by_localinput_set_fence_variable_name_entity_tag_provider_u_any.ml";;

(* Deleting Registers *)


(* Tracing *)


(* Debugging *)


(* toplevel 
   #use "Property_tag_subtree_by_localinput_set_fence_variable_name_entity_tag_provider_u_any.ml";; 

*)

(* Input File *)

let nam_ibo = "Print_homothety_point_a";;
let nam_iba = "local";;

let tag_loi_t = Localinput_tag_tree_by_basicname_inputbox_provider_v.provide nam_ibo;;
let tag_loi_l = Localinput_tag_all_list_by_basicname_inputbox_provider_v.provide nam_ibo;;
let tag_loi_lcd_stl = 
    Localinput_as_body_handle_command_creation_define_tag_subtree_list_by_basicname_inputbox_provider_v.provide
      nam_ibo;;

open Property_tag_subtree_by_localinput_set_fence_variable_name_entity_tag_provider_v;; 

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
    [1; 2; 6;  38; 11]);
   (Localinput_symbol_t.Localinput_set_fence_symbol
     (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
       (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
         (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_implicit_symbol
           (Localinput_set_fence_variable_name_entity_implicit_symbol_t.Localinput_set_fence_variable_name_entity_implicit_constructor
             "Poi_h")))),
    [1; 2; 9;  38; 11])]
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
   [1; 2; 9;  38; 11])
);;

let tag_lei_cur = Tag_v.map_entity Localinput_symbol_v.localinput_set_fence_variable_name_entity_implicit_symbol_off_localinput_symbol tag_loi_lei_Poi_h;;
let soi_lei_cur =  Tag_v.sole_index_off_tag tag_lei_cur ;;

let tag_lve = Tag_v.map_entity Localinput_symbol_v.localinput_set_fence_variable_name_entity_symbol_off_localinput_symbol tag_loi_lei_Poi_h;;

test_number 3 (
(tag_lve :
  Localinput_set_fence_variable_name_entity_symbol_t.localinput_set_fence_variable_name_entity_symbol
  Tag_t.tag ) =
  (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_implicit_symbol
    (Localinput_set_fence_variable_name_entity_implicit_symbol_t.Localinput_set_fence_variable_name_entity_implicit_constructor
      "Poi_h"),
   [1; 2; 9;  38; 11])
);;

let sym_pro_pve_st = 
    Property_symbol_subtree_by_localinput_set_fence_variable_name_entity_tag_provider_v.provide
      tag_lve;;

test_number 4 (
(sym_pro_pve_st : Property_symbol_t.property_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Property_symbol_t.Property_target_body_implicit_symbol
     (Property_target_body_implicit_symbol_t.Property_target_body_implicit_unit_symbol
       (Property_target_body_implicit_unit_symbol_t.Property_target_body_implicit_unit_constructor
         "Poi_h")),
   [Tree_t.Leaf
     (Property_symbol_t.Operator_fence_symbol
       (Operator_fence_symbol_t.Operator_fence_tounit_symbol
         (Operator_fence_tounit_symbol_t.Operator_fence_tounit_constructor
           "Poi_h")));
    Tree_t.Inner
     (Property_symbol_t.Property_set_body_operand_symbol
       (Property_set_body_operand_symbol_t.Property_set_body_operand_target_symbol
         (Property_set_body_operand_target_symbol_t.Property_set_body_operand_target_created_symbol
           (Property_set_body_operand_target_created_symbol_t.Property_set_body_operand_target_created_constructor
             "Poi_h"))),
     [Tree_t.Leaf
       (Property_symbol_t.Operator_fence_symbol
         (Operator_fence_symbol_t.Operator_fence_creation_symbol
           (Operator_fence_creation_symbol_t.Operator_fence_creation_constructor
             "Hom_b_2")));
      Tree_t.Leaf
       (Property_symbol_t.Property_set_body_operand_symbol
         (Property_set_body_operand_symbol_t.Property_set_fence_operand_external_symbol
           (Property_set_fence_operand_external_symbol_t.Property_set_fence_operand_external_constructor
             "Poi_a")))])])
);;
  
let soi_lve = Tag_v.sole_index_off_tag tag_lve;;
  
test_number 5 (
  nam_ibo = 
  Localinput_any_category_by_sole_index_extractor_v.localinput_context_inputbox_string_off_off_sole_index 
    soi_lve 
);;
  

let tag_pro_ibo =
    Property_context_inputfile_tag_by_basicname_inputbox_provider_v.provide
      nam_ibo
  ;;
  
test_number 6 (
(tag_pro_ibo : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_context_symbol
    (Property_context_symbol_t.Property_context_inputfile_symbol
      (Property_context_inputfile_symbol_t.Property_context_inputfile_constructor
        "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Print_homothety_point_a")),
   [38; 18])
);;

let soi_pro_ibo = Tag_v.sole_index_off_tag tag_pro_ibo;;

let soi_pro_pve_st = 
    Sole_index_v.sole_index_tree_of_tree_of_root_sole_index 
      sym_pro_pve_st soi_pro_ibo
;;

let tag_pro_pve_st = 
  Tree_v.map2 Tag_v.make 
    sym_pro_pve_st 
    soi_pro_pve_st ;;

test_number 7 (
( tag_pro_pve_st : Property_symbol_t.property_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Property_symbol_t.Property_target_body_implicit_symbol
      (Property_target_body_implicit_symbol_t.Property_target_body_implicit_unit_symbol
        (Property_target_body_implicit_unit_symbol_t.Property_target_body_implicit_unit_constructor
          "Poi_h")),
     [38; 18]),
   [Tree_t.Leaf
     (Property_symbol_t.Operator_fence_symbol
       (Operator_fence_symbol_t.Operator_fence_tounit_symbol
         (Operator_fence_tounit_symbol_t.Operator_fence_tounit_constructor
           "Poi_h")),
      [1; 38; 18]);
    Tree_t.Inner
     ((Property_symbol_t.Property_set_body_operand_symbol
        (Property_set_body_operand_symbol_t.Property_set_body_operand_target_symbol
          (Property_set_body_operand_target_symbol_t.Property_set_body_operand_target_created_symbol
            (Property_set_body_operand_target_created_symbol_t.Property_set_body_operand_target_created_constructor
              "Poi_h"))),
       [2; 38; 18]),
     [Tree_t.Leaf
       (Property_symbol_t.Operator_fence_symbol
         (Operator_fence_symbol_t.Operator_fence_creation_symbol
           (Operator_fence_creation_symbol_t.Operator_fence_creation_constructor
             "Hom_b_2")),
        [1; 2; 38; 18]);
      Tree_t.Leaf
       (Property_symbol_t.Property_set_body_operand_symbol
         (Property_set_body_operand_symbol_t.Property_set_fence_operand_external_symbol
           (Property_set_fence_operand_external_symbol_t.Property_set_fence_operand_external_constructor
             "Poi_a")),
        [2; 2; 38; 18])])])
);;
