open Make_test_v;;

testing "Property_tag_tree_by_basicname_inputbox_n_basicname_inputbase_provider_v with
    Property_tag_tree_by_basicname_inputbox_n_basicname_inputbase_provider_u_point_homothety_n_translation_debug.ml";;

(* Deleting Registers *)


(* Tracing *)


(* Debugging *)



(* toplevel 
   #use "Property_tag_tree_by_basicname_inputbox_n_basicname_inputbase_provider_u_point_homothety_n_translation_debug.ml";; 

*)

(* Input File *)

let nam_ibo = "Print_homothety_n_translation_point_a";;

open Property_tag_tree_by_basicname_inputbox_n_basicname_inputbase_provider_v;;

let sym_pro_ibo_st = 
    Property_symbol_subtree_by_basicname_inputbox_provider_v.provide
      nam_ibo;;

let sym_pro_rts_l = Tree_v.root_topson_node_list_off_tree sym_pro_ibo_st;;

test_number 1 (
(sym_pro_rts_l : Property_symbol_t.property_symbol list ) =
  [Property_symbol_t.Property_context_symbol
    (Property_context_symbol_t.Property_context_inputfile_symbol
      (Property_context_inputfile_symbol_t.Property_context_inputfile_constructor
        "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Print_homothety_n_translation_point_a"));
   Property_symbol_t.Property_target_body_implicit_symbol
    (Property_target_body_implicit_symbol_t.Property_target_body_implicit_unit_symbol
      (Property_target_body_implicit_unit_symbol_t.Property_target_body_implicit_unit_constructor
        "Poi_a"));
   Property_symbol_t.Property_target_body_implicit_symbol
    (Property_target_body_implicit_symbol_t.Property_target_body_implicit_unit_symbol
      (Property_target_body_implicit_unit_symbol_t.Property_target_body_implicit_unit_constructor
        "Poi_t"))]
);;

let tag_pro_ibo =
    Property_context_inputfile_tag_by_basicname_inputbox_provider_v.provide
      nam_ibo;;

test_number 2 (
(tag_pro_ibo : Property_symbol_t.property_symbol Tag_t.tag ) =
(Property_symbol_t.Property_context_symbol
   (Property_context_symbol_t.Property_context_inputfile_symbol
      (Property_context_inputfile_symbol_t.Property_context_inputfile_constructor
         "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Print_homothety_n_translation_point_a")),
 [39; 18])
);;

let soi_pro_ibo = Tag_v.sole_index_off_tag tag_pro_ibo;;

test_number 3 (
(soi_pro_ibo : Sole_index_t.sole_index ) = 
[39; 18]
);;

let soi_pro_ibo_st = 
    Sole_index_v.sole_index_tree_of_tree_of_root_sole_index 
      sym_pro_ibo_st soi_pro_ibo;;

test_number 4 (
( soi_pro_ibo_st : Sole_index_t.sole_index Tree_t.tree ) =
  Tree_t.Inner ([39; 18],
   [Tree_t.Inner ([1; 39; 18],
     [Tree_t.Leaf [1; 1; 39; 18]; Tree_t.Leaf [2; 1; 39; 18]]);
    Tree_t.Inner ([2; 39; 18],
     [Tree_t.Leaf [1; 2; 39; 18];
      Tree_t.Inner ([2; 2; 39; 18],
       [Tree_t.Leaf [1; 2; 2; 39; 18];
        Tree_t.Inner ([2; 2; 2; 39; 18],
         [Tree_t.Leaf [1; 2; 2; 2; 39; 18]; Tree_t.Leaf [2; 2; 2; 2; 39; 18]])])])])
);;

let tag_pro_ibo_st = 
    Tree_v.map2 Tag_v.make 
      sym_pro_ibo_st 
      soi_pro_ibo_st;;

let tag_pdo = Property_context_domain_tag_by_unit_provider_v.provide ();;
 
test_number 5 (
(tag_pdo :
   Property_context_domain_symbol_t.property_context_domain_symbol Tag_t.tag ) =
 (Property_context_domain_symbol_t.Property_context_domain_constructor
    "property",
  [18])
);;

let tag_pro_dom = 
      Property_context_domain_tag_v.property_tag_of_property_context_domain_tag 
      tag_pdo;;

test_number 6 (
(tag_pro_dom : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_context_symbol
    (Property_context_symbol_t.Property_context_domain_symbol
      (Property_context_domain_symbol_t.Property_context_domain_constructor
        "property")),
   [18])
);;

let tag_pro_t = Tree_v.make_of_node tag_pro_dom [tag_pro_ibo_st];;

test_number 7 (
(tag_pro_t : Property_symbol_t.property_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Property_symbol_t.Property_context_symbol
      (Property_context_symbol_t.Property_context_domain_symbol
        (Property_context_domain_symbol_t.Property_context_domain_constructor
          "property")),
     [18]),
   [Tree_t.Inner
     ((Property_symbol_t.Property_context_symbol
        (Property_context_symbol_t.Property_context_inputfile_symbol
          (Property_context_inputfile_symbol_t.Property_context_inputfile_constructor
            "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Print_homothety_n_translation_point_a")),
       [39; 18]),
     [Tree_t.Inner
       ((Property_symbol_t.Property_target_body_implicit_symbol
          (Property_target_body_implicit_symbol_t.Property_target_body_implicit_unit_symbol
            (Property_target_body_implicit_unit_symbol_t.Property_target_body_implicit_unit_constructor
              "Poi_a")),
         [1; 39; 18]),
       [Tree_t.Leaf
         (Property_symbol_t.Operator_fence_symbol
           (Operator_fence_symbol_t.Operator_fence_tounit_symbol
             (Operator_fence_tounit_symbol_t.Operator_fence_tounit_print_symbol
               (Operator_fence_tounit_print_symbol_t.Operator_fence_tounit_print_constructor
                 "Poi_a"))),
          [1; 1; 39; 18]);
        Tree_t.Leaf
         (Property_symbol_t.Property_set_body_operand_symbol
           (Property_set_body_operand_symbol_t.Property_set_fence_operand_external_symbol
             (Property_set_fence_operand_external_symbol_t.Property_set_fence_operand_external_constructor
               "Poi_a")),
          [2; 1; 39; 18])]);
      Tree_t.Inner
       ((Property_symbol_t.Property_target_body_implicit_symbol
          (Property_target_body_implicit_symbol_t.Property_target_body_implicit_unit_symbol
            (Property_target_body_implicit_unit_symbol_t.Property_target_body_implicit_unit_constructor
              "Poi_t")),
         [2; 39; 18]),
       [Tree_t.Leaf
         (Property_symbol_t.Operator_fence_symbol
           (Operator_fence_symbol_t.Operator_fence_tounit_symbol
             (Operator_fence_tounit_symbol_t.Operator_fence_tounit_print_symbol
               (Operator_fence_tounit_print_symbol_t.Operator_fence_tounit_print_constructor
                 "Poi_t"))),
          [1; 2; 39; 18]);
        Tree_t.Inner
         ((Property_symbol_t.Property_set_body_operand_symbol
            (Property_set_body_operand_symbol_t.Property_set_body_operand_target_symbol
              (Property_set_body_operand_target_symbol_t.Property_set_body_operand_target_created_symbol
                (Property_set_body_operand_target_created_symbol_t.Property_set_body_operand_target_created_constructor
                  "Poi_t"))),
           [2; 2; 39; 18]),
         [Tree_t.Leaf
           (Property_symbol_t.Operator_fence_symbol
             (Operator_fence_symbol_t.Operator_fence_creation_symbol
               (Operator_fence_creation_symbol_t.Operator_fence_creation_toentity_symbol
                 (Operator_fence_creation_toentity_symbol_t.Operator_fence_creation_toentity_constructor
                   "Tra_bc"))),
            [1; 2; 2; 39; 18]);
          Tree_t.Inner
           ((Property_symbol_t.Property_set_body_operand_symbol
              (Property_set_body_operand_symbol_t.Property_set_body_operand_target_symbol
                (Property_set_body_operand_target_symbol_t.Property_set_body_operand_target_created_symbol
                  (Property_set_body_operand_target_created_symbol_t.Property_set_body_operand_target_created_constructor
                    "Poi_h"))),
             [2; 2; 2; 39; 18]),
           [Tree_t.Leaf
             (Property_symbol_t.Operator_fence_symbol
               (Operator_fence_symbol_t.Operator_fence_creation_symbol
                 (Operator_fence_creation_symbol_t.Operator_fence_creation_toentity_symbol
                   (Operator_fence_creation_toentity_symbol_t.Operator_fence_creation_toentity_constructor
                     "Hom_b_2"))),
              [1; 2; 2; 2; 39; 18]);
            Tree_t.Leaf
             (Property_symbol_t.Property_set_body_operand_symbol
               (Property_set_body_operand_symbol_t.Property_set_fence_operand_external_symbol
                 (Property_set_fence_operand_external_symbol_t.Property_set_fence_operand_external_constructor
                   "Poi_a")),
              [2; 2; 2; 2; 39; 18])])])])])])
);;

test_number 8 (
tag_pro_t = provide nam_ibo
);;

Property_tag_tree_by_basicname_inputbox_register_v.dump ();;

