open Make_test_v;;

testing "Property_tag_subtree_by_property_tag_provider_v with
    Property_tag_subtree_by_property_tag_provider_u_coordinate_tuple_print.ml";;

(* Deleting Registers *)








(* Tracing *)


(* toplevel 
   #use "Property_tag_subtree_by_property_tag_provider_u_coordinate_tuple_print.ml";; 

*)

(* Input File *)

let nam_ibo = "Coordinate_tuple_print";;
let dir_inp ="/keep/sources/ocaml_top/setup/frames/inputset/files/";;
let nam_ibo = dir_inp ^ nam_inp;;

let tag_pro_t = Property_tag_tree_by_basicname_inputbox_n_basicname_inputbase_provider_v.provide (nam_ibo, nam_iba);;

test_number 1 (
(tag_pro_t : Property_symbol_t.property_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Property_symbol_t.Property_context_symbol
      (Property_context_symbol_t.Property_domain "property"),
     [13]),
   [Tree_t.Inner
     ((Property_symbol_t.Property_context_symbol
        (Property_context_symbol_t.Property_localinput_file
          "/keep/sources/ocaml_top/setup/frames/inputset/files/Coordinate_tuple_print"),
       [1; 13]),
     [Tree_t.Inner
       ((Property_symbol_t.Property_body_symbol
          (Property_body_symbol_t.Property_set_body_operand_target_symbol
            (Property_set_body_operand_target_symbol_t.Property_target_body_implicit_unit_symbol
              (Property_target_body_implicit_unit_symbol_t.Property_target_body_implicit_unit_constructor
                "Ctc_a"))),
         [1; 1; 13]),
       [Tree_t.Leaf
         (Property_symbol_t.Property_fence_symbol
           (Property_fence_symbol_t.Operator_fence_symbol
             (Operator_fence_symbol_t.Operator_fence_tounit
               (Operator_tounit_symbol_t.Operator_print "Ctc_a", [1; 3; 12]))),
          [1; 1; 1; 13]);
        Tree_t.Leaf
         (Property_symbol_t.Property_fence_symbol
           (Property_fence_symbol_t.Property_set_fence_operand_external_symbol
             (Property_set_fence_operand_external_symbol_t.Property_set_body_operand_elementary_tag
               (Elementary_symbol_t.Elementary_body_symbol
                 (Elementary_body_symbol_t.Elementary_coordinate_tuple_symbol
                   (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
                     (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
                       (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
                         "T_A")))),
                [1; 1; 4]))),
          [2; 1; 1; 13])])])])
);;

let tag_roo = Tree_v.root_off_tree tag_pro_t;;

test_number 2 (
(tag_roo : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_context_symbol
    (Property_context_symbol_t.Property_domain "property"),
   [13])
);;

let tag_pro_l = Property_tag_all_list_by_basicname_inputbox_n_basicname_inputbase_provider_v.provide (nam_ibo, nam_iba);;

test_number 3 (
(tag_pro_l : Property_symbol_t.property_symbol Tag_t.tag list ) =
 [(Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_domain "property"),
    [13]);
   (Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_localinput_file
       "/keep/sources/ocaml_top/setup/frames/inputset/files/Coordinate_tuple_print"),
    [1; 13]);
   (Property_symbol_t.Property_body_symbol
     (Property_body_symbol_t.Property_set_body_operand_target_symbol
       (Property_set_body_operand_target_symbol_t.Property_target_body_implicit_unit_symbol
         (Property_target_body_implicit_unit_symbol_t.Property_target_body_implicit_unit_constructor
           "Ctc_a"))),
    [1; 1; 13]);
   (Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Operator_fence_symbol
       (Operator_fence_symbol_t.Operator_fence_tounit
         (Operator_tounit_symbol_t.Operator_print "Ctc_a", [1; 3; 12]))),
    [1; 1; 1; 13]);
   (Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Property_set_fence_operand_external_symbol
       (Property_set_fence_operand_external_symbol_t.Property_set_body_operand_elementary_tag
         (Elementary_symbol_t.Elementary_body_symbol
           (Elementary_body_symbol_t.Elementary_coordinate_tuple_symbol
             (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
               (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
                 (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
                   "T_A")))),
          [1; 1; 4]))),
    [2; 1; 1; 13])]
);;

let tag_pro_oex = List.find (fun (s, i) -> Property_symbol_v.is_property_set_fence_operand_external_symbol_off_property_symbol s) tag_pro_l;;

test_number 4 (
( tag_pro_oex : Property_symbol_t.property_symbol Tag_t.tag ) =
(Property_symbol_t.Property_fence_symbol
    (Property_fence_symbol_t.Property_set_fence_operand_external_symbol
      (Property_set_fence_operand_external_symbol_t.Property_set_body_operand_elementary_tag
        (Elementary_symbol_t.Elementary_body_symbol
          (Elementary_body_symbol_t.Elementary_coordinate_tuple_symbol
            (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
              (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
                (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
                  "T_A")))),
         [1; 1; 4]))),
   [2; 1; 1; 13])
);;

let tag_pro_st = Property_tag_subtree_by_property_tag_provider_v.provide tag_pro_oex;;

test_number 5 (
(tag_pro_st : Property_symbol_t.property_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Leaf
   (Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Property_set_fence_operand_external_symbol
       (Property_set_fence_operand_external_symbol_t.Property_set_body_operand_elementary_tag
         (Elementary_symbol_t.Elementary_body_symbol
           (Elementary_body_symbol_t.Elementary_coordinate_tuple_symbol
             (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
               (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
                 (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
                   "T_A")))),
          [1; 1; 4]))),
    [2; 1; 1; 13])
);;  


let tag_pro_oex = List.find (fun (s, i) -> Property_symbol_v.is_property_set_fence_operand_external_symbol_off_property_symbol s) tag_pro_l;;

test_number 6 (
( tag_pro_oex : Property_symbol_t.property_symbol Tag_t.tag ) =
 (Property_symbol_t.Property_fence_symbol
    (Property_fence_symbol_t.Property_set_fence_operand_external_symbol
      (Property_set_fence_operand_external_symbol_t.Property_set_body_operand_elementary_tag
        (Elementary_symbol_t.Elementary_body_symbol
          (Elementary_body_symbol_t.Elementary_coordinate_tuple_symbol
            (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
              (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
                (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
                  "T_A")))),
         [1; 1; 4]))),
   [2; 1; 1; 13])
);;

let tag_pro_st = Property_tag_subtree_by_property_tag_provider_v.provide tag_pro_oex;;

test_number 7 (
(tag_pro_st : Property_symbol_t.property_symbol Tag_t.tag Tree_t.tree ) =
 Tree_t.Leaf
   (Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Property_set_fence_operand_external_symbol
       (Property_set_fence_operand_external_symbol_t.Property_set_body_operand_elementary_tag
         (Elementary_symbol_t.Elementary_body_symbol
           (Elementary_body_symbol_t.Elementary_coordinate_tuple_symbol
             (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
               (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
                 (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
                   "T_A")))),
          [1; 1; 4]))),
    [2; 1; 1; 13])
);;  
