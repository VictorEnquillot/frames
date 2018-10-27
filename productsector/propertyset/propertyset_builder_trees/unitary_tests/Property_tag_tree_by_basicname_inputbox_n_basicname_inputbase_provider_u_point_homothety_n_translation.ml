open Make_test_v;;

testing "Property_tag_tree_by_basicname_inputbox_n_basicname_inputbase_provider_v with
    Property_tag_tree_by_basicname_inputbox_n_basicname_inputbase_provider_u_point_homothety_n_translation.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Property_tag_tree_by_basicname_inputbox_n_basicname_inputbase_provider_u_point_homothety_n_translation.ml";; 

*)

open Property_tag_tree_by_basicname_inputbox_n_basicname_inputbase_provider_v;;


let nam_ibo = "Print_homothety_n_translation_point_a";;
let nam_iba = "local";;

let tag_qua =
  Property_as_context_tag_quatuor_by_basicname_inputbox_n_basicname_inputbase_provider_v.provide
    (nam_ibo, nam_iba)
;;

test_number 1 (
(tag_qua : Property_symbol_t.property_symbol Tag_t.tag Quatuor_t.quatuor ) =
  ((Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_context_inputbox_symbol
       (Property_context_inputbox_symbol_t.Property_context_inputbox_constructor
         "Print_homothety_n_translation_point_a")),
    [37; 1; 18; 6]),
   (Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_context_inputbase_symbol
       (Property_context_inputbase_symbol_t.Property_context_inputbase_constructor
         "local")),
    [1; 18; 6]),
   (Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_context_domain_symbol
       (Property_context_domain_symbol_t.Property_context_domain_constructor
         "property")),
    [18; 6]),
   (Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_context_sector_symbol
       (Property_context_sector_symbol_t.Property_context_sector_constructor
         "product")),
    [6]))
);;

let (tag_pro_ibo, tag_pro_iba, tag_pro_pcd, tag_pro_pcs) = tag_qua;;

let sym_pro_ibo_st =
  Property_symbol_subtree_by_basicname_inputbox_n_basicname_inputbase_provider_v.provide
    (nam_ibo, nam_iba)
;;

test_number 2 (
(sym_pro_ibo_st : Property_symbol_t.property_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_context_inputbox_symbol
       (Property_context_inputbox_symbol_t.Property_context_inputbox_constructor
         "Print_homothety_n_translation_point_a")),
   [Tree_t.Inner
     (Property_symbol_t.Property_target_body_implicit_symbol
       (Property_target_body_implicit_symbol_t.Property_target_body_implicit_unit_symbol
         (Property_target_body_implicit_unit_symbol_t.Property_target_body_implicit_unit_constructor
           "Poi_a")),
     [Tree_t.Leaf
       (Property_symbol_t.Operator_fence_symbol
         (Operator_fence_symbol_t.Operator_fence_tounit_symbol
           (Operator_fence_tounit_symbol_t.Operator_fence_tounit_print_symbol
             (Operator_fence_tounit_print_symbol_t.Operator_fence_tounit_print_constructor
               "Poi_a"))));
      Tree_t.Leaf
       (Property_symbol_t.Property_set_body_operand_symbol
         (Property_set_body_operand_symbol_t.Property_set_fence_operand_external_symbol
           (Property_set_fence_operand_external_symbol_t.Property_set_fence_operand_external_constructor
             "Poi_a")))]);
    Tree_t.Inner
     (Property_symbol_t.Property_target_body_implicit_symbol
       (Property_target_body_implicit_symbol_t.Property_target_body_implicit_unit_symbol
         (Property_target_body_implicit_unit_symbol_t.Property_target_body_implicit_unit_constructor
           "Poi_t")),
     [Tree_t.Leaf
       (Property_symbol_t.Operator_fence_symbol
         (Operator_fence_symbol_t.Operator_fence_tounit_symbol
           (Operator_fence_tounit_symbol_t.Operator_fence_tounit_print_symbol
             (Operator_fence_tounit_print_symbol_t.Operator_fence_tounit_print_constructor
               "Poi_t"))));
      Tree_t.Inner
       (Property_symbol_t.Property_set_body_operand_symbol
         (Property_set_body_operand_symbol_t.Property_set_body_operand_target_symbol
           (Property_set_body_operand_target_symbol_t.Property_set_body_operand_target_created_symbol
             (Property_set_body_operand_target_created_symbol_t.Property_set_body_operand_target_created_constructor
               "Poi_t"))),
       [Tree_t.Leaf
         (Property_symbol_t.Operator_fence_symbol
           (Operator_fence_symbol_t.Operator_fence_creation_symbol
             (Operator_fence_creation_symbol_t.Operator_fence_creation_toentity_symbol
               (Operator_fence_creation_toentity_symbol_t.Operator_fence_creation_toentity_constructor
                 "Tra_bc"))));
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
                 "Poi_a")))])])])])
);;

let soi_pro_ibo = Tag_v.sole_index_off_tag tag_pro_ibo;;

let soi_pro_ibo_st = 
  Sole_index_v.sole_index_tree_of_tree_of_root_sole_index 
    sym_pro_ibo_st 
    soi_pro_ibo 
;;

test_number 3 (
(soi_pro_ibo_st : Sole_index_t.sole_index Tree_t.tree ) =
Tree_t.Inner ([37; 1; 18; 6],
	      [Tree_t.Inner ([1; 37; 1; 18; 6],
			     [Tree_t.Leaf [1; 1; 37; 1; 18; 6]; Tree_t.Leaf [2; 1; 37; 1; 18; 6]]);
	       Tree_t.Inner ([2; 37; 1; 18; 6],
			     [Tree_t.Leaf [1; 2; 37; 1; 18; 6];
			      Tree_t.Inner ([2; 2; 37; 1; 18; 6],
					    [Tree_t.Leaf [1; 2; 2; 37; 1; 18; 6];
					     Tree_t.Inner ([2; 2; 2; 37; 1; 18; 6],
							   [Tree_t.Leaf [1; 2; 2; 2; 37; 1; 18; 6];
							    Tree_t.Leaf [2; 2; 2; 2; 37; 1; 18; 6]])])])])
);;

let tag_pro_ibo_st = Tree_v.map2 Tag_v.make sym_pro_ibo_st soi_pro_ibo_st;;
  
let tag_pro_iba_st = Tree_v.make_of_node tag_pro_iba [tag_pro_ibo_st];;
  
let tag_pro_pcd_st = Tree_v.make_of_node tag_pro_pcd [tag_pro_iba_st];;
  
let tag_pro_t = Tree_v.make_of_node tag_pro_pcs [tag_pro_pcd_st];;

test_number 4 (
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

test_number 5 (
tag_pro_t = provide (nam_ibo, nam_iba)
);;

let fen = Tree_v.leaf_node_list_off_tree tag_pro_t;;

test_number 6 (
(fen : Property_symbol_t.property_symbol Tag_t.tag list ) =
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
