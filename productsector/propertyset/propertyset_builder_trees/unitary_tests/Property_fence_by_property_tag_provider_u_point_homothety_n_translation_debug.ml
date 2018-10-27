open Make_test_v;;

testing "Property_fence_by_property_tag_provider_v with
    Property_fence_by_property_tag_provider_u_point_homothety_n_translation_debug.ml";;

(* Deleting Registers *)


(* Tracing *)


(* Debugging *)


(* toplevel 
   #use "Property_fence_by_property_tag_provider_u_point_homothety_n_translation_debug.ml";; 

*)

(* Input File *)

let nam_ibo = "Print_homothety_n_translation_point_a";;

open Property_fence_by_property_tag_provider_v;;

let tag_pro_l = Property_tag_all_list_by_basicname_inputbox_n_basicname_inputbase_provider_v.provide (nam_ibo, nam_iba);;

(* Property_context_inputbox_tag *)

let pre_tag_cfi (s, i) = Property_symbol_v.is_property_context_inputfile_constructor s;;
let tag_pro_cfi = List_v.only_element_of_predicate_off_list pre_tag_cfi tag_pro_l;; 

test_number 1 (
(tag_pro_cfi : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_context_symbol
    (Property_context_symbol_t.Property_context_inputfile_symbol
      (Property_context_inputfile_symbol_t.Property_context_inputfile_constructor
        "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Print_homothety_n_translation_point_a")),
   [39; 18])
);;

let fen_cfi = provide tag_pro_cfi;;

test_number 2 ( 
(fen_cfi : Property_symbol_t.property_symbol Tag_t.tag list ) =
  [(Property_symbol_t.Operator_fence_symbol
     (Operator_fence_symbol_t.Operator_fence_tounit_symbol
       (Operator_fence_tounit_symbol_t.Operator_fence_tounit_print_symbol
         (Operator_fence_tounit_print_symbol_t.Operator_fence_tounit_print_constructor
           "Poi_a"))),
    [1; 1; 39; 18]);
   (Property_symbol_t.Property_set_body_operand_symbol
     (Property_set_body_operand_symbol_t.Property_set_fence_operand_external_symbol
       (Property_set_fence_operand_external_symbol_t.Property_set_fence_operand_external_constructor
         "Poi_a")),
    [2; 1; 39; 18]);
   (Property_symbol_t.Operator_fence_symbol
     (Operator_fence_symbol_t.Operator_fence_tounit_symbol
       (Operator_fence_tounit_symbol_t.Operator_fence_tounit_print_symbol
         (Operator_fence_tounit_print_symbol_t.Operator_fence_tounit_print_constructor
           "Poi_t"))),
    [1; 2; 39; 18]);
   (Property_symbol_t.Operator_fence_symbol
     (Operator_fence_symbol_t.Operator_fence_creation_symbol
       (Operator_fence_creation_symbol_t.Operator_fence_creation_toentity_symbol
         (Operator_fence_creation_toentity_symbol_t.Operator_fence_creation_toentity_constructor
           "Tra_bc"))),
    [1; 2; 2; 39; 18]);
   (Property_symbol_t.Operator_fence_symbol
     (Operator_fence_symbol_t.Operator_fence_creation_symbol
       (Operator_fence_creation_symbol_t.Operator_fence_creation_toentity_symbol
         (Operator_fence_creation_toentity_symbol_t.Operator_fence_creation_toentity_constructor
           "Hom_b_2"))),
    [1; 2; 2; 2; 39; 18]);
   (Property_symbol_t.Property_set_body_operand_symbol
     (Property_set_body_operand_symbol_t.Property_set_fence_operand_external_symbol
       (Property_set_fence_operand_external_symbol_t.Property_set_fence_operand_external_constructor
         "Poi_a")),
    [2; 2; 2; 2; 39; 18])]
);; 
