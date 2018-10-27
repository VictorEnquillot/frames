open Make_test_v;;

testing "Property_son_tag_list_by_property_father_tag_provider_v with
        Property_son_tag_list_by_property_father_tag_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Property_son_tag_list_by_property_father_tag_provider_u_any.ml";; 

*)

open Property_son_tag_list_by_property_father_tag_provider_v;;

let nam_ibo = "Print_homothety_point_a";;
let nam_iba = "local";;

let tag_pro_t = Property_tag_tree_by_basicname_inputbox_n_basicname_inputbase_provider_v.provide (nam_ibo, nam_iba);;

test_number 1 (
(tag_pro_t : Property_symbol_t.property_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Property_symbol_t.Property_context_symbol
      (Property_context_symbol_t.Property_context_sector_symbol
        (Property_context_sector_symbol_t.Property_context_sector_constructor
          "product")),
     [6]),
   [Tree_t.Inner
     ((Property_symbol_t.Property_context_symbol
        (Property_context_symbol_t.Property_context_domain_symbol
          (Property_context_domain_symbol_t.Property_context_domain_constructor
            "property")),
       [18; 6]),
     [Tree_t.Inner
       ((Property_symbol_t.Property_context_symbol
          (Property_context_symbol_t.Property_context_inputbase_symbol
            (Property_context_inputbase_symbol_t.Property_context_inputbase_constructor
              "local")),
         [1; 18; 6]),
       [Tree_t.Inner
         ((Property_symbol_t.Property_context_symbol
            (Property_context_symbol_t.Property_context_inputbox_symbol
              (Property_context_inputbox_symbol_t.Property_context_inputbox_constructor
                "Print_homothety_point_a")),
           [38; 1; 18; 6]),
         [Tree_t.Inner
           ((Property_symbol_t.Property_target_body_implicit_symbol
              (Property_target_body_implicit_symbol_t.Property_target_body_implicit_unit_symbol
                (Property_target_body_implicit_unit_symbol_t.Property_target_body_implicit_unit_constructor
                  "Poi_h")),
             [1; 38; 1; 18; 6]),
           [Tree_t.Leaf
             (Property_symbol_t.Operator_fence_symbol
               (Operator_fence_symbol_t.Operator_fence_tounit_symbol
                 (Operator_fence_tounit_symbol_t.Operator_fence_tounit_print_symbol
                   (Operator_fence_tounit_print_symbol_t.Operator_fence_tounit_print_constructor
                     "Poi_h"))),
              [1; 1; 38; 1; 18; 6]);
            Tree_t.Inner
             ((Property_symbol_t.Property_set_body_operand_symbol
                (Property_set_body_operand_symbol_t.Property_set_body_operand_target_symbol
                  (Property_set_body_operand_target_symbol_t.Property_set_body_operand_target_created_symbol
                    (Property_set_body_operand_target_created_symbol_t.Property_set_body_operand_target_created_constructor
                      "Poi_h"))),
               [2; 1; 38; 1; 18; 6]),
             [Tree_t.Leaf
               (Property_symbol_t.Operator_fence_symbol
                 (Operator_fence_symbol_t.Operator_fence_creation_symbol
                   (Operator_fence_creation_symbol_t.Operator_fence_creation_toentity_symbol
                     (Operator_fence_creation_toentity_symbol_t.Operator_fence_creation_toentity_constructor
                       "Hom_b_2"))),
                [1; 2; 1; 38; 1; 18; 6]);
              Tree_t.Leaf
               (Property_symbol_t.Property_set_body_operand_symbol
                 (Property_set_body_operand_symbol_t.Property_set_fence_operand_external_symbol
                   (Property_set_fence_operand_external_symbol_t.Property_set_fence_operand_external_constructor
                     "Poi_a")),
                [2; 2; 1; 38; 1; 18; 6])])])])])])])
);;

let pre_tag sof len ind (s, i) =  Property_symbol_v.string_off s = "Poi_h" && List.length i = len && List.hd i = ind;;

(* "Poi_h" 5 *)

let tag_pro = Tree_v.only_node_of_node_predicate_off_tree 
    (pre_tag "Poi_h" 5 1)
    tag_pro_t;;

test_number 2 (
(tag_pro : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_target_body_implicit_symbol
    (Property_target_body_implicit_symbol_t.Property_target_body_implicit_unit_symbol
      (Property_target_body_implicit_unit_symbol_t.Property_target_body_implicit_unit_constructor
        "Poi_h")),
   [1; 38; 1; 18; 6])
);;

let soi_pro = Tag_v.sole_index_off_tag tag_pro;;

test_number 3 (
(soi_pro : Sole_index_t.sole_index ) = 
[1; 38; 1; 18; 6]
);;

let tag_ibo = 
    Property_any_category_by_sole_index_extractor_v.property_context_inputbox_tag_off_sole_index
      soi_pro
;;

test_number 4 (
(tag_ibo :
  Property_context_inputbox_symbol_t.property_context_inputbox_symbol
  Tag_t.tag ) =
  (Property_context_inputbox_symbol_t.Property_context_inputbox_constructor
    "Print_homothety_point_a",
   [38; 1; 18; 6])
);;

let tag_pro_t = 
    Property_tag_tree_by_property_context_inputbox_tag_provider_v.provide  
      tag_ibo
;;

let tag_pro_st = 
	Tree_v.subtree_find_of_node_predicate_off_tree 
	  (fun t -> t = tag_pro) 
	  tag_pro_t;;

test_number 5 (
( tag_pro_st : Property_symbol_t.property_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Property_symbol_t.Property_target_body_implicit_symbol
      (Property_target_body_implicit_symbol_t.Property_target_body_implicit_unit_symbol
        (Property_target_body_implicit_unit_symbol_t.Property_target_body_implicit_unit_constructor
          "Poi_h")),
     [1; 38; 1; 18; 6]),
   [Tree_t.Leaf
     (Property_symbol_t.Operator_fence_symbol
       (Operator_fence_symbol_t.Operator_fence_tounit_symbol
         (Operator_fence_tounit_symbol_t.Operator_fence_tounit_print_symbol
           (Operator_fence_tounit_print_symbol_t.Operator_fence_tounit_print_constructor
             "Poi_h"))),
      [1; 1; 38; 1; 18; 6]);
    Tree_t.Inner
     ((Property_symbol_t.Property_set_body_operand_symbol
        (Property_set_body_operand_symbol_t.Property_set_body_operand_target_symbol
          (Property_set_body_operand_target_symbol_t.Property_set_body_operand_target_created_symbol
            (Property_set_body_operand_target_created_symbol_t.Property_set_body_operand_target_created_constructor
              "Poi_h"))),
       [2; 1; 38; 1; 18; 6]),
     [Tree_t.Leaf
       (Property_symbol_t.Operator_fence_symbol
         (Operator_fence_symbol_t.Operator_fence_creation_symbol
           (Operator_fence_creation_symbol_t.Operator_fence_creation_toentity_symbol
             (Operator_fence_creation_toentity_symbol_t.Operator_fence_creation_toentity_constructor
               "Hom_b_2"))),
        [1; 2; 1; 38; 1; 18; 6]);
      Tree_t.Leaf
       (Property_symbol_t.Property_set_body_operand_symbol
         (Property_set_body_operand_symbol_t.Property_set_fence_operand_external_symbol
           (Property_set_fence_operand_external_symbol_t.Property_set_fence_operand_external_constructor
             "Poi_a")),
        [2; 2; 1; 38; 1; 18; 6])])])
);;

let tag_pro_sl = Tree_v.topson_node_list_off_tree tag_pro_st;;

test_number 6 (
(tag_pro_sl : Property_symbol_t.property_symbol Tag_t.tag list ) = 
  [(Property_symbol_t.Operator_fence_symbol
     (Operator_fence_symbol_t.Operator_fence_tounit_symbol
       (Operator_fence_tounit_symbol_t.Operator_fence_tounit_print_symbol
         (Operator_fence_tounit_print_symbol_t.Operator_fence_tounit_print_constructor
           "Poi_h"))),
    [1; 1; 38; 1; 18; 6]);
   (Property_symbol_t.Property_set_body_operand_symbol
     (Property_set_body_operand_symbol_t.Property_set_body_operand_target_symbol
       (Property_set_body_operand_target_symbol_t.Property_set_body_operand_target_created_symbol
         (Property_set_body_operand_target_created_symbol_t.Property_set_body_operand_target_created_constructor
           "Poi_h"))),
    [2; 1; 38; 1; 18; 6])]
);;

(* "Poi_h" 6 *)

let tag_pro = Tree_v.only_node_of_node_predicate_off_tree 
    (pre_tag "Poi_h" 6 1)
    tag_pro_t;;

test_number 7 (
(tag_pro : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Operator_fence_symbol
    (Operator_fence_symbol_t.Operator_fence_tounit_symbol
      (Operator_fence_tounit_symbol_t.Operator_fence_tounit_print_symbol
        (Operator_fence_tounit_print_symbol_t.Operator_fence_tounit_print_constructor
          "Poi_h"))),
   [1; 1; 38; 1; 18; 6])
);;

let soi_pro = Tag_v.sole_index_off_tag tag_pro;;

test_number 8 (
(soi_pro : Sole_index_t.sole_index ) = 
[1; 1; 38; 1; 18; 6]
);;

let tag_ibo = 
    Property_any_category_by_sole_index_extractor_v.property_context_inputbox_tag_off_sole_index
      soi_pro
;;

test_number 9 (
(tag_ibo :
  Property_context_inputbox_symbol_t.property_context_inputbox_symbol
  Tag_t.tag ) =
  (Property_context_inputbox_symbol_t.Property_context_inputbox_constructor
    "Print_homothety_point_a",
   [38; 1; 18; 6])
);;

let tag_pro_t = 
    Property_tag_tree_by_property_context_inputbox_tag_provider_v.provide  
      tag_ibo
;;

let tag_pro_st = 
	Tree_v.subtree_find_of_node_predicate_off_tree 
	  (fun t -> t = tag_pro) 
	  tag_pro_t;;

test_number 10 (
( tag_pro_st : Property_symbol_t.property_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Leaf
   (Property_symbol_t.Operator_fence_symbol
     (Operator_fence_symbol_t.Operator_fence_tounit_symbol
       (Operator_fence_tounit_symbol_t.Operator_fence_tounit_print_symbol
         (Operator_fence_tounit_print_symbol_t.Operator_fence_tounit_print_constructor
           "Poi_h"))),
    [1; 1; 38; 1; 18; 6])
);;

let tag_pro_sl = Tree_v.topson_node_list_off_tree tag_pro_st;;

test_number 11 (
(tag_pro_sl : Property_symbol_t.property_symbol Tag_t.tag list ) = 
[]
);;
