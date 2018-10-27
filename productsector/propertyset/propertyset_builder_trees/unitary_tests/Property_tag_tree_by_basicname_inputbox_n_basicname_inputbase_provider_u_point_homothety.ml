open Make_test_v;;

testing "Property_tag_tree_by_basicname_inputbox_n_basicname_inputbase_provider_v with
    Property_tag_tree_by_basicname_inputbox_n_basicname_inputbase_provider_u_point_homothety.ml";;

(* Deleting Registers *)







(* Tracing *)


(* toplevel 
   #use "Property_tag_tree_by_basicname_inputbox_n_basicname_inputbase_provider_u_point_homothety.ml";; 

*)

(* Input File *)

let nam_ibo = "Print_homothety_point_a";;
let dir_inp ="/keep/sources/ocaml_top/setup/frames/inputset/files/";;
let nam_ibo = dir_inp ^ nam_inp;;

let sym_loi_t = Localinput_symbol_subtree_by_basicname_inputbox_provider_v.provide nam_ibo;;

let tag_loi_l = Localinput_tag_all_list_by_basicname_inputbox_provider_v.provide nam_ibo;;

let sym_roo = Tree_v.root_off_tree sym_loi_t;;

test_number 1 (
(sym_roo : Localinput_symbol_t.localinput_symbol)
=
Localinput_symbol_t.Localinput_file
  "/keep/sources/ocaml_top/setup/frames/inputset/files/Print_homothety_point_a"
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
         "/keep/sources/ocaml_top/setup/frames/inputset/files/Print_homothety_point_a"),
     [Tree_t.Inner
       (Property_symbol_t.Property_body_symbol
         (Property_body_symbol_t.Property_set_body_operand_target_symbol
           (Property_set_body_operand_target_symbol_t.Property_target_body_implicit_unit_symbol
             (Property_target_body_implicit_unit_symbol_t.Property_target_body_implicit_unit_constructor
               "Poi_h"))),
       [Tree_t.Leaf
         (Property_symbol_t.Property_fence_symbol
           (Property_fence_symbol_t.Operator_fence_symbol
             (Operator_fence_symbol_t.Operator_fence_tounit
               (Operator_tounit_symbol_t.Operator_print "Poi_h", [1; 27; 12]))));
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
                  [2; 27; 12]))));
          Tree_t.Leaf
           (Property_symbol_t.Property_fence_symbol
             (Property_fence_symbol_t.Property_set_fence_operand_external_symbol
               (Property_set_fence_operand_external_symbol_t.Property_set_body_operand_figure_tag
                 (Figure_symbol_t.Figure_fence_symbol
                   (Figure_fence_symbol_t.Figure_point_symbol
                     (Figure_point_symbol_t.Figure_point_constructor "T_A")),
                  [1; 1; 1; 6]))))])])])])
);;

let soi_dom = Domain_tag_v.domain_sole_index_of_domain_name_of_string_of_sole_index_up "property" "" [];;
let nam_ibo = Filename.basename nam_ibo;;
  let idx_nof = Localinput_file_index_by_localinput_file_nameoffile_provider_v.provide nam_ibo;;
  let soi_pro_ifi = Sole_index_v.make idx_nof soi_dom ;;

let sym_pro_ifi_st =
    Tree_v.subtree_of_node_predicate_off_tree
      Property_symbol_v.is_property_localinput_file
      sym_pro_t;;

test_number 3 (
( sym_pro_ifi_st : Property_symbol_t.property_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_localinput_file
       "/keep/sources/ocaml_top/setup/frames/inputset/files/Print_homothety_point_a"),
   [Tree_t.Inner
     (Property_symbol_t.Property_body_symbol
       (Property_body_symbol_t.Property_set_body_operand_target_symbol
         (Property_set_body_operand_target_symbol_t.Property_target_body_implicit_unit_symbol
           (Property_target_body_implicit_unit_symbol_t.Property_target_body_implicit_unit_constructor
             "Poi_h"))),
     [Tree_t.Leaf
       (Property_symbol_t.Property_fence_symbol
         (Property_fence_symbol_t.Operator_fence_symbol
           (Operator_fence_symbol_t.Operator_fence_tounit
             (Operator_tounit_symbol_t.Operator_print "Poi_h", [1; 27; 12]))));
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
                [2; 27; 12]))));
        Tree_t.Leaf
         (Property_symbol_t.Property_fence_symbol
           (Property_fence_symbol_t.Property_set_fence_operand_external_symbol
             (Property_set_fence_operand_external_symbol_t.Property_set_body_operand_figure_tag
               (Figure_symbol_t.Figure_fence_symbol
                 (Figure_fence_symbol_t.Figure_point_symbol
                   (Figure_point_symbol_t.Figure_point_constructor "T_A")),
                [1; 1; 1; 6]))))])])])
);;

let soi_pro_ifi_st =
    Sole_index_v.sole_index_tree_of_tree_of_root_sole_index
      sym_pro_ifi_st
      soi_pro_ifi;;

test_number 4 (
(soi_pro_ifi_st : Sole_index_t.sole_index Tree_t.tree ) =
  Tree_t.Inner ([27; 13],
   [Tree_t.Inner ([1; 27; 13],
     [Tree_t.Leaf [1; 1; 27; 13];
      Tree_t.Inner ([2; 1; 27; 13],
       [Tree_t.Leaf [1; 2; 1; 27; 13]; Tree_t.Leaf [2; 2; 1; 27; 13]])])])
);;

let soi_pro_t = Tree_v.make_of_node soi_dom [soi_pro_ifi_st] ;;
 
test_number 5 (
(soi_pro_t : Sole_index_t.sole_index Tree_t.tree ) =
  Tree_t.Inner ([13],
   [Tree_t.Inner ([27; 13],
     [Tree_t.Inner ([1; 27; 13],
       [Tree_t.Leaf [1; 1; 27; 13];
        Tree_t.Inner ([2; 1; 27; 13],
         [Tree_t.Leaf [1; 2; 1; 27; 13]; Tree_t.Leaf [2; 2; 1; 27; 13]])])])])
);;

let tag_pro_t = Property_tag_tree_by_basicname_inputbox_n_basicname_inputbase_provider_v.provide (nam_ibo, nam_iba);;

test_number 6 (
( tag_pro_t : Property_symbol_t.property_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Property_symbol_t.Property_context_symbol
      (Property_context_symbol_t.Property_domain "property"),
     [13]),
   [Tree_t.Inner
     ((Property_symbol_t.Property_context_symbol
        (Property_context_symbol_t.Property_localinput_file
          "/keep/sources/ocaml_top/setup/frames/inputset/files/Print_homothety_point_a"),
       [27; 13]),
     [Tree_t.Inner
       ((Property_symbol_t.Property_body_symbol
          (Property_body_symbol_t.Property_set_body_operand_target_symbol
            (Property_set_body_operand_target_symbol_t.Property_target_body_implicit_unit_symbol
              (Property_target_body_implicit_unit_symbol_t.Property_target_body_implicit_unit_constructor
                "Poi_h"))),
         [1; 27; 13]),
       [Tree_t.Leaf
         (Property_symbol_t.Property_fence_symbol
           (Property_fence_symbol_t.Operator_fence_symbol
             (Operator_fence_symbol_t.Operator_fence_tounit
               (Operator_tounit_symbol_t.Operator_print "Poi_h", [1; 27; 12]))),
          [1; 1; 27; 13]);
        Tree_t.Inner
         ((Property_symbol_t.Property_body_symbol
            (Property_body_symbol_t.Property_set_body_operand_target_symbol
              (Property_set_body_operand_target_symbol_t.Property_body_target_explicit_created_symbol
                (Property_body_target_explicit_created_symbol_t.Property_body_target_explicit_created_figure_tag
                  "Poi_h"))),
           [2; 1; 27; 13]),
         [Tree_t.Leaf
           (Property_symbol_t.Property_fence_symbol
             (Property_fence_symbol_t.Operator_fence_symbol
               (Operator_fence_symbol_t.Operator_fence_creation
                 (Operator_creation_symbol_t.Operator_endomorphism_symbol
                   (Operator_endomorphism_symbol_t.Operator_transformation_symbol
                     (Operator_transformation_symbol_t.Operator_transformation_homothety
                       "Hom_b_2")),
                  [2; 27; 12]))),
            [1; 2; 1; 27; 13]);
          Tree_t.Leaf
           (Property_symbol_t.Property_fence_symbol
             (Property_fence_symbol_t.Property_set_fence_operand_external_symbol
               (Property_set_fence_operand_external_symbol_t.Property_set_body_operand_figure_tag
                 (Figure_symbol_t.Figure_fence_symbol
                   (Figure_fence_symbol_t.Figure_point_symbol
                     (Figure_point_symbol_t.Figure_point_constructor "T_A")),
                  [1; 1; 1; 6]))),
            [2; 2; 1; 27; 13])])])])])
);;
