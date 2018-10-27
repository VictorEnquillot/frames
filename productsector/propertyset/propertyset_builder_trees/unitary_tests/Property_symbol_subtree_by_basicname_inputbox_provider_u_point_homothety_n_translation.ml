open Make_test_v;;

testing "Property_symbol_subtree_by_basicname_inputbox_provider_v with
    Property_symbol_subtree_by_basicname_inputbox_provider_u_point_homothety_n_translation.ml";;

(* Deleting Registers *)





(* Tracing *)


(* toplevel 
   #use "Property_symbol_subtree_by_basicname_inputbox_provider_u_point_homothety_n_translation.ml";; 

*)

(* Input File *)

let nam_ibo = "Print_homothety_n_translation_point_a";;

let sym_loi_t = Localinput_symbol_subtree_by_basicname_inputbox_provider_v.provide nam_ibo;;

let sym_roo = Tree_v.root_off_tree sym_loi_t;;

test_number 1 (
(sym_roo : Localinput_symbol_t.localinput_symbol)
=
Localinput_symbol_t.Localinput_file
  "/keep/sources/ocaml_top/setup/frames/inputset/files/Print_homothety_n_translation_point_a"
);;

let sym_pro_t = Property_symbol_subtree_by_basicname_inputbox_provider_v.provide nam_ibo;;

test_number 2 (
(sym_pro_t : Property_symbol_t.property_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_domain "property"),
   [Tree_t.Inner
     (Property_symbol_t.Property_context_symbol
       (Property_context_symbol_t.Property_localinput_file
         "/keep/sources/ocaml_top/setup/frames/inputset/files/Print_homothety_n_translation_point_a"),
     [Tree_t.Inner
       (Property_symbol_t.Property_body_symbol
         (Property_body_symbol_t.Property_set_body_operand_target_symbol
           (Property_set_body_operand_target_symbol_t.Property_target_body_implicit_unit_symbol
             (Property_target_body_implicit_unit_symbol_t.Property_target_body_implicit_unit_constructor
               "Poi_a"))),
       [Tree_t.Leaf
         (Property_symbol_t.Property_fence_symbol
           (Property_fence_symbol_t.Operator_fence_symbol
             (Operator_fence_symbol_t.Operator_fence_tounit
               (Operator_tounit_symbol_t.Operator_print "Poi_a", [1; 28; 12]))));
        Tree_t.Leaf
         (Property_symbol_t.Property_fence_symbol
           (Property_fence_symbol_t.Property_set_fence_operand_external_symbol
             (Property_set_fence_operand_external_symbol_t.Property_set_body_operand_figure_tag
               (Figure_symbol_t.Figure_field_symbol
                 (Figure_field_symbol_t.Figure_fence_symbol
                   (Figure_fence_symbol_t.Figure_point_symbol
                     (Figure_point_symbol_t.Figure_point_constructor "Poi_a"))),
                [1; 1; 1; 28; 6]))))]);
      Tree_t.Inner
       (Property_symbol_t.Property_body_symbol
         (Property_body_symbol_t.Property_set_body_operand_target_symbol
           (Property_set_body_operand_target_symbol_t.Property_target_body_implicit_unit_symbol
             (Property_target_body_implicit_unit_symbol_t.Property_target_body_implicit_unit_constructor
               "Poi_t"))),
       [Tree_t.Leaf
         (Property_symbol_t.Property_fence_symbol
           (Property_fence_symbol_t.Operator_fence_symbol
             (Operator_fence_symbol_t.Operator_fence_tounit
               (Operator_tounit_symbol_t.Operator_print "Poi_t", [2; 28; 12]))));
        Tree_t.Inner
         (Property_symbol_t.Property_body_symbol
           (Property_body_symbol_t.Property_set_body_operand_target_symbol
             (Property_set_body_operand_target_symbol_t.Property_body_target_explicit_created_symbol
               (Property_body_target_explicit_created_symbol_t.Property_body_target_explicit_created_figure_tag
                 "Poi_t"))),
         [Tree_t.Leaf
           (Property_symbol_t.Property_fence_symbol
             (Property_fence_symbol_t.Operator_fence_symbol
               (Operator_fence_symbol_t.Operator_fence_creation
                 (Operator_creation_symbol_t.Operator_endomorphism_symbol
                   (Operator_endomorphism_symbol_t.Operator_transformation_symbol
                     (Operator_transformation_symbol_t.Operator_transformation_translation
                       "Tra_bc")),
                  [4; 28; 12]))));
          Tree_t.Inner
           (Property_symbol_t.Property_body_symbol
             (Property_body_symbol_t.Property_set_body_operand_target_symbol
               (Property_set_body_operand_target_symbol_t.Property_body_target_explicit_created_symbol
                 (Property_body_target_explicit_created_symbol_t.Property_body_target_explicit_created_figure_tag
                   "Poi_h"))),
           [Tree_t.Leaf
             (Property_symbol_t.Property_fence_symbol
               (Property_fence_symbol_t.Operator_fence_symbol
                 (Operator_fence_symbol_t.Operator_fence_creation
                   (Operator_creation_symbol_t.Operator_endomorphism_symbol
                     (Operator_endomorphism_symbol_t.Operator_transformation_symbol
                       (Operator_transformation_symbol_t.Operator_transformation_homothety
                         "Hom_b_2")),
                    [3; 28; 12]))));
            Tree_t.Leaf
             (Property_symbol_t.Property_fence_symbol
               (Property_fence_symbol_t.Property_set_fence_operand_external_symbol
                 (Property_set_fence_operand_external_symbol_t.Property_set_body_operand_figure_tag
                   (Figure_symbol_t.Figure_field_symbol
                     (Figure_field_symbol_t.Figure_fence_symbol
                       (Figure_fence_symbol_t.Figure_point_symbol
                         (Figure_point_symbol_t.Figure_point_constructor
                           "Poi_a"))),
                    [1; 1; 1; 28; 6]))))])])])])])
);;
