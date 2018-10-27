open Make_test_v;;

testing "Property_symbol_subtree_by_basicname_inputbox_provider_v with
    Property_symbol_subtree_by_basicname_inputbox_provider_u_elementary_body_parameter_tuple_aopef_hes11_print_debug.ml";;

(* Deleting Registers *)


(* Tracing *)


(* Debugging *)


(* toplevel 
   #use "Property_symbol_subtree_by_basicname_inputbox_provider_u_elementary_body_parameter_tuple_aopef_hes11_print_debug.ml";; 

*)

let nam_ibo = "Skeleton_fence_centered_aopef_hes11_print";;

(* Argument Input File *)


open Property_symbol_subtree_by_basicname_inputbox_provider_v;;

let tag_lei_l =
    Localinput_set_fence_variable_name_entity_implicit_tag_list_by_basicname_inputbox_provider_v.provide 
      nam_ibo;;

test_number 1 (
(tag_lei_l : Localinput_set_fence_variable_name_entity_implicit_symbol_t.localinput_set_fence_variable_name_entity_implicit_symbol
   Tag_t.tag list ) =
[(Localinput_set_fence_variable_name_entity_implicit_symbol_t.Localinput_set_fence_variable_name_entity_implicit_constructor
    "Aopef_hes11",
  [1; 2; 4; 33; 11])]
);;

let tag_lve_l = List.map 
      (Tag_v.map_entity (* Coerce Up *)
	 Localinput_set_fence_variable_name_entity_symbol_v.localinput_set_fence_variable_name_entity_symbol_of_localinput_set_fence_variable_name_entity_implicit_symbol)
      tag_lei_l;;

test_number 2 (
(tag_lve_l :
  Localinput_set_fence_variable_name_entity_symbol_t.localinput_set_fence_variable_name_entity_symbol
  Tag_t.tag list ) =
  [(Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_implicit_symbol
     (Localinput_set_fence_variable_name_entity_implicit_symbol_t.Localinput_set_fence_variable_name_entity_implicit_constructor
       "Aopef_hes11"),
    [1; 2; 4; 33; 11])]
);;

let sym_pro_stl = List.map 
    Property_symbol_subtree_by_localinput_set_fence_variable_name_entity_tag_provider_v.provide
      tag_lve_l ;;

test_number 3 (
(sym_pro_stl : Property_symbol_t.property_symbol Tree_t.tree list ) =
  [Tree_t.Inner
    (Property_symbol_t.Property_target_body_implicit_symbol
      (Property_target_body_implicit_symbol_t.Property_target_body_implicit_unit_symbol
        (Property_target_body_implicit_unit_symbol_t.Property_target_body_implicit_unit_constructor
          "Aopef_hes11")),
    [Tree_t.Leaf
      (Property_symbol_t.Operator_fence_symbol
        (Operator_fence_symbol_t.Operator_fence_tounit_symbol
          (Operator_fence_tounit_symbol_t.Operator_fence_tounit_print_symbol
            (Operator_fence_tounit_print_symbol_t.Operator_fence_tounit_print_constructor
              "Aopef_hes11"))));
     Tree_t.Leaf
      (Property_symbol_t.Property_set_body_operand_symbol
        (Property_set_body_operand_symbol_t.Property_set_fence_operand_external_symbol
          (Property_set_fence_operand_external_symbol_t.Property_set_fence_operand_external_constructor
            "Aopef_hes11")))])]
);;

let sym_pro_ifi = Property_symbol_v.property_context_inputfile_constructor nam_ibo;; 

test_number 4 (
(sym_pro_ifi : Property_symbol_t.property_symbol) =
  Property_symbol_t.Property_context_symbol
   (Property_context_symbol_t.Property_context_inputfile_symbol
     (Property_context_inputfile_symbol_t.Property_context_inputfile_constructor
       "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Skeleton_fence_centered_aopef_hes11_print"))
);;

let sym_loi_st = Tree_v.make_of_node sym_pro_ifi sym_pro_stl;;

test_number 5 (
(sym_loi_st : Property_symbol_t.property_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_context_inputfile_symbol
       (Property_context_inputfile_symbol_t.Property_context_inputfile_constructor
         "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Skeleton_fence_centered_aopef_hes11_print")),
   [Tree_t.Inner
     (Property_symbol_t.Property_target_body_implicit_symbol
       (Property_target_body_implicit_symbol_t.Property_target_body_implicit_unit_symbol
         (Property_target_body_implicit_unit_symbol_t.Property_target_body_implicit_unit_constructor
           "Aopef_hes11")),
     [Tree_t.Leaf
       (Property_symbol_t.Operator_fence_symbol
         (Operator_fence_symbol_t.Operator_fence_tounit_symbol
           (Operator_fence_tounit_symbol_t.Operator_fence_tounit_print_symbol
             (Operator_fence_tounit_print_symbol_t.Operator_fence_tounit_print_constructor
               "Aopef_hes11"))));
      Tree_t.Leaf
       (Property_symbol_t.Property_set_body_operand_symbol
         (Property_set_body_operand_symbol_t.Property_set_fence_operand_external_symbol
           (Property_set_fence_operand_external_symbol_t.Property_set_fence_operand_external_constructor
             "Aopef_hes11")))])])
);;

test_number 6 (
sym_loi_st = provide nam_ibo
);;
