open Make_test_v;;

testing "Property_tag_subtree_by_property_tag_provider_v with
    Property_tag_subtree_by_property_tag_provider_u_point_print.ml";;

(* Deleting Registers *)


(* Tracing *)


(* toplevel 
   #use "Property_tag_subtree_by_property_tag_provider_u_point_print.ml";; 

*)

(* Input File *)

let nam_ibo = "Point_print";;
let dir_inp ="/keep/sources/ocaml_top/setup/frames/inputset/files/";;
let nam_ibo = dir_inp ^ nam_inp;;

let tag_pro_t = Property_tag_tree_by_basicname_inputbox_n_basicname_inputbase_provider_v.provide (nam_ibo, nam_iba);;

test_number 1 (
( tag_pro_t : Property_symbol_t.property_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Property_symbol_t.Property_context_symbol
      (Property_context_symbol_t.Property_domain "property"),
     [13]),
   [Tree_t.Inner
     ((Property_symbol_t.Property_context_symbol
        (Property_context_symbol_t.Property_localinput_file
          "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_print"),
       [29; 13]),
     [Tree_t.Inner
       ((Property_symbol_t.Property_body_symbol
          (Property_body_symbol_t.Property_set_body_operand_target_symbol
            (Property_set_body_operand_target_symbol_t.Property_target_body_implicit_unit_symbol
              (Property_target_body_implicit_unit_symbol_t.Property_target_body_implicit_unit_constructor
                "Poi_a"))),
         [1; 29; 13]),
       [Tree_t.Leaf
         (Property_symbol_t.Property_fence_symbol
           (Property_fence_symbol_t.Operator_fence_symbol
             (Operator_fence_symbol_t.Operator_fence_tounit
               (Operator_tounit_symbol_t.Operator_print "Poi_a", [1; 29; 12]))),
          [1; 1; 29; 13]);
        Tree_t.Leaf
         (Property_symbol_t.Property_fence_symbol
           (Property_fence_symbol_t.Property_set_fence_operand_external_symbol
             (Property_set_fence_operand_external_symbol_t.Property_set_body_operand_figure_tag
               (Figure_symbol_t.Figure_fence_symbol
                 (Figure_fence_symbol_t.Figure_point_symbol
                   (Figure_point_symbol_t.Figure_point_constructor "T_A")),
                [1; 1; 1; 6]))),
          [2; 1; 29; 13])])])])
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
       "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_print"),
    [29; 13]);
   (Property_symbol_t.Property_body_symbol
     (Property_body_symbol_t.Property_set_body_operand_target_symbol
       (Property_set_body_operand_target_symbol_t.Property_target_body_implicit_unit_symbol
         (Property_target_body_implicit_unit_symbol_t.Property_target_body_implicit_unit_constructor
           "Poi_a"))),
    [1; 29; 13]);
   (Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Operator_fence_symbol
       (Operator_fence_symbol_t.Operator_fence_tounit
         (Operator_tounit_symbol_t.Operator_print "Poi_a", [1; 29; 12]))),
    [1; 1; 29; 13]);
   (Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Property_set_fence_operand_external_symbol
       (Property_set_fence_operand_external_symbol_t.Property_set_body_operand_figure_tag
         (Figure_symbol_t.Figure_fence_symbol
           (Figure_fence_symbol_t.Figure_point_symbol
             (Figure_point_symbol_t.Figure_point_constructor "T_A")),
          [1; 1; 1; 6]))),
    [2; 1; 29; 13])]
);;

let tag_pro_ope = List.find (fun (s, i) -> Property_symbol_v.is_operator_fence_tounit s) tag_pro_l;;


test_number 4 (
( tag_pro_ope : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_fence_symbol
    (Property_fence_symbol_t.Operator_fence_symbol
      (Operator_fence_symbol_t.Operator_fence_tounit
        (Operator_tounit_symbol_t.Operator_print "Poi_a", [1; 29; 12]))),
   [1; 1; 29; 13])
);;

let tag_pro_st = Property_tag_subtree_by_property_tag_provider_v.provide tag_pro_ope;;

test_number 5 (
(tag_pro_st : Property_symbol_t.property_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Leaf
   (Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Operator_fence_symbol
       (Operator_fence_symbol_t.Operator_fence_tounit
         (Operator_tounit_symbol_t.Operator_print "Poi_a", [1; 29; 12]))),
    [1; 1; 29; 13])
);;  
