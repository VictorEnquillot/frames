open Make_test_v;;

testing "Property_fence_by_property_tag_provider_v with
        Property_fence_by_property_tag_provider_u_print_homothety_n_translation_point_a.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Property_fence_by_property_tag_provider_u_print_homothety_n_translation_point_a.ml";; 

*)

open Property_fence_by_property_tag_provider_v;;

let nam_ibo = "Print_homothety_n_translation_point_a";;
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
                "Print_homothety_n_translation_point_a")),
           [37; 1; 18; 6]),
         [Tree_t.Inner
           ((Property_symbol_t.Property_target_body_implicit_symbol
              (Property_target_body_implicit_symbol_t.Property_target_body_implicit_unit_symbol
                (Property_target_body_implicit_unit_symbol_t.Property_target_body_implicit_unit_constructor
                  "Poi_a")),
             [1; 37; 1; 18; 6]),
           [Tree_t.Leaf
             (Property_symbol_t.Operator_fence_symbol
               (Operator_fence_symbol_t.Operator_fence_tounit_symbol
                 (Operator_fence_tounit_symbol_t.Operator_fence_tounit_print_symbol
                   (Operator_fence_tounit_print_symbol_t.Operator_fence_tounit_print_constructor
                     "Poi_a"))),
              [1; 1; 37; 1; 18; 6]);
            Tree_t.Leaf
             (Property_symbol_t.Property_set_body_operand_symbol
               (Property_set_body_operand_symbol_t.Property_set_fence_operand_external_symbol
                 (Property_set_fence_operand_external_symbol_t.Property_set_fence_operand_external_constructor
                   "Poi_a")),
              [2; 1; 37; 1; 18; 6])]);
          Tree_t.Inner
           ((Property_symbol_t.Property_target_body_implicit_symbol
              (Property_target_body_implicit_symbol_t.Property_target_body_implicit_unit_symbol
                (Property_target_body_implicit_unit_symbol_t.Property_target_body_implicit_unit_constructor
                  "Poi_t")),
             [2; 37; 1; 18; 6]),
           [Tree_t.Leaf
             (Property_symbol_t.Operator_fence_symbol
               (Operator_fence_symbol_t.Operator_fence_tounit_symbol
                 (Operator_fence_tounit_symbol_t.Operator_fence_tounit_print_symbol
                   (Operator_fence_tounit_print_symbol_t.Operator_fence_tounit_print_constructor
                     "Poi_t"))),
              [1; 2; 37; 1; 18; 6]);
            Tree_t.Inner
             ((Property_symbol_t.Property_set_body_operand_symbol
                (Property_set_body_operand_symbol_t.Property_set_body_operand_target_symbol
                  (Property_set_body_operand_target_symbol_t.Property_set_body_operand_target_created_symbol
                    (Property_set_body_operand_target_created_symbol_t.Property_set_body_operand_target_created_constructor
                      "Poi_t"))),
               [2; 2; 37; 1; 18; 6]),
             [Tree_t.Leaf
               (Property_symbol_t.Operator_fence_symbol
                 (Operator_fence_symbol_t.Operator_fence_creation_symbol
                   (Operator_fence_creation_symbol_t.Operator_fence_creation_toentity_symbol
                     (Operator_fence_creation_toentity_symbol_t.Operator_fence_creation_toentity_constructor
                       "Tra_bc"))),
                [1; 2; 2; 37; 1; 18; 6]);
              Tree_t.Inner
               ((Property_symbol_t.Property_set_body_operand_symbol
                  (Property_set_body_operand_symbol_t.Property_set_body_operand_target_symbol
                    (Property_set_body_operand_target_symbol_t.Property_set_body_operand_target_created_symbol
                      (Property_set_body_operand_target_created_symbol_t.Property_set_body_operand_target_created_constructor
                        "Poi_h"))),
                 [2; 2; 2; 37; 1; 18; 6]),
               [Tree_t.Leaf
                 (Property_symbol_t.Operator_fence_symbol
                   (Operator_fence_symbol_t.Operator_fence_creation_symbol
                     (Operator_fence_creation_symbol_t.Operator_fence_creation_toentity_symbol
                       (Operator_fence_creation_toentity_symbol_t.Operator_fence_creation_toentity_constructor
                         "Hom_b_2"))),
                  [1; 2; 2; 2; 37; 1; 18; 6]);
                Tree_t.Leaf
                 (Property_symbol_t.Property_set_body_operand_symbol
                   (Property_set_body_operand_symbol_t.Property_set_fence_operand_external_symbol
                     (Property_set_fence_operand_external_symbol_t.Property_set_fence_operand_external_constructor
                       "Poi_a")),
                  [2; 2; 2; 2; 37; 1; 18; 6])])])])])])])])
);;

let inn_pro_l = Tree_v.inner_node_list_off_tree tag_pro_t;;

test_number 2 (
(inn_pro_l : Property_symbol_t.property_symbol Tag_t.tag list ) =
  [(Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_context_sector_symbol
       (Property_context_sector_symbol_t.Property_context_sector_constructor
         "product")),
    [6]);
   (Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_context_domain_symbol
       (Property_context_domain_symbol_t.Property_context_domain_constructor
         "property")),
    [18; 6]);
   (Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_context_inputbase_symbol
       (Property_context_inputbase_symbol_t.Property_context_inputbase_constructor
         "local")),
    [1; 18; 6]);
   (Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_context_inputbox_symbol
       (Property_context_inputbox_symbol_t.Property_context_inputbox_constructor
         "Print_homothety_n_translation_point_a")),
    [37; 1; 18; 6]);
   (Property_symbol_t.Property_target_body_implicit_symbol
     (Property_target_body_implicit_symbol_t.Property_target_body_implicit_unit_symbol
       (Property_target_body_implicit_unit_symbol_t.Property_target_body_implicit_unit_constructor
         "Poi_a")),
    [1; 37; 1; 18; 6]);
   (Property_symbol_t.Property_target_body_implicit_symbol
     (Property_target_body_implicit_symbol_t.Property_target_body_implicit_unit_symbol
       (Property_target_body_implicit_unit_symbol_t.Property_target_body_implicit_unit_constructor
         "Poi_t")),
    [2; 37; 1; 18; 6]);
   (Property_symbol_t.Property_set_body_operand_symbol
     (Property_set_body_operand_symbol_t.Property_set_body_operand_target_symbol
       (Property_set_body_operand_target_symbol_t.Property_set_body_operand_target_created_symbol
         (Property_set_body_operand_target_created_symbol_t.Property_set_body_operand_target_created_constructor
           "Poi_t"))),
    [2; 2; 37; 1; 18; 6]);
   (Property_symbol_t.Property_set_body_operand_symbol
     (Property_set_body_operand_symbol_t.Property_set_body_operand_target_symbol
       (Property_set_body_operand_target_symbol_t.Property_set_body_operand_target_created_symbol
         (Property_set_body_operand_target_created_symbol_t.Property_set_body_operand_target_created_constructor
           "Poi_h"))),
    [2; 2; 2; 37; 1; 18; 6])]
);;

let fen_pro = Tree_v.leaf_node_list_off_tree tag_pro_t;;

test_number 3 (
(fen_pro : Property_symbol_t.property_symbol Tag_t.tag list ) =
 [(Property_symbol_t.Operator_fence_symbol
     (Operator_fence_symbol_t.Operator_fence_tounit_symbol
       (Operator_fence_tounit_symbol_t.Operator_fence_tounit_print_symbol
         (Operator_fence_tounit_print_symbol_t.Operator_fence_tounit_print_constructor
           "Poi_a"))),
    [1; 1; 37; 1; 18; 6]);
   (Property_symbol_t.Property_set_body_operand_symbol
     (Property_set_body_operand_symbol_t.Property_set_fence_operand_external_symbol
       (Property_set_fence_operand_external_symbol_t.Property_set_fence_operand_external_constructor
         "Poi_a")),
    [2; 1; 37; 1; 18; 6]);
   (Property_symbol_t.Operator_fence_symbol
     (Operator_fence_symbol_t.Operator_fence_tounit_symbol
       (Operator_fence_tounit_symbol_t.Operator_fence_tounit_print_symbol
         (Operator_fence_tounit_print_symbol_t.Operator_fence_tounit_print_constructor
           "Poi_t"))),
    [1; 2; 37; 1; 18; 6]);
   (Property_symbol_t.Operator_fence_symbol
     (Operator_fence_symbol_t.Operator_fence_creation_symbol
       (Operator_fence_creation_symbol_t.Operator_fence_creation_toentity_symbol
         (Operator_fence_creation_toentity_symbol_t.Operator_fence_creation_toentity_constructor
           "Tra_bc"))),
    [1; 2; 2; 37; 1; 18; 6]);
   (Property_symbol_t.Operator_fence_symbol
     (Operator_fence_symbol_t.Operator_fence_creation_symbol
       (Operator_fence_creation_symbol_t.Operator_fence_creation_toentity_symbol
         (Operator_fence_creation_toentity_symbol_t.Operator_fence_creation_toentity_constructor
           "Hom_b_2"))),
    [1; 2; 2; 2; 37; 1; 18; 6]);
   (Property_symbol_t.Property_set_body_operand_symbol
     (Property_set_body_operand_symbol_t.Property_set_fence_operand_external_symbol
       (Property_set_fence_operand_external_symbol_t.Property_set_fence_operand_external_constructor
         "Poi_a")),
    [2; 2; 2; 2; 37; 1; 18; 6])]
);;

