open Make_test_v;;

testing "Property_as_target_implicit_unit_symbol_subtree_by_target_localinput_set_fence_variable_name_entity_tag_provider_v with
    Property_as_target_implicit_unit_symbol_subtree_by_target_localinput_set_fence_variable_name_entity_tag_provider_u_any.ml";;

(* Deleting Registers *)







(* Tracing *)


(* toplevel 
   #use "Property_as_target_implicit_unit_symbol_subtree_by_target_localinput_set_fence_variable_name_entity_tag_provider_u_any.ml";; 

*)

(* Input File *)

let nam_ibo = "Print_homothety_point_a";;
let nam_iba = "local";;
let dir_inp ="/keep/sources/ocaml_top/setup/frames/inputset/files/";;
let nam_ibo = dir_inp ^ nam_inp;;
let nam_iba = "local";;

let sym_loi_t = Localinput_symbol_subtree_by_basicname_inputbox_provider_v.provide nam_ibo;;

let sym_roo = Tree_v.root_off_tree sym_loi_t;;

test_number 1 (
(sym_roo : Localinput_symbol_t.localinput_symbol)
=
Localinput_symbol_t.Localinput_file
  "/keep/sources/ocaml_top/setup/frames/inputset/files/Print_homothety_point_a"
);;

(* open Property_as_target_implicit_unit_symbol_subtree_by_target_localinput_set_fence_variable_name_entity_tag_provider_v;; *)
let nam_n_kin_l = 
    Localinput_variable_name_n_kind_list_by_basicname_inputbox_provider_v.provide
      nam_ibo ;;

let tag_loi_pow_l =
    Localinput_as_command_print_or_write_tag_list_by_basicname_inputbox_provider_v.provide 
      nam_ibo ;;

test_number 2 (
(tag_loi_pow_l : Localinput_symbol_t.localinput_symbol Tag_t.tag list ) =
  [(Localinput_symbol_t.Localinput_command_symbol
     Localinput_command_symbol_t.Localinput_command_print,
    [7; 27])]
);;

let tag_ico = List_v.only_element_of_predicate_off_list (fun (s, i) -> Localinput_symbol_v.is_localinput_command_print s) tag_loi_pow_l ;;

test_number 3 (
(tag_ico : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
  (Localinput_symbol_t.Localinput_command_symbol
    Localinput_command_symbol_t.Localinput_command_print,
   [7; 27])
);;

let nam_ivn_tar = "Poi_h";;

let str_arg =
    Make_argument_by_target_localinput_set_fence_variable_name_entity_tag_provider_v.provide
      nam_ivn_tar;;

test_number 4 ( 
(str_arg : string ) = 
"property_body_target_explicit_created_figure_tag"
);;

let sym_pro_tar = Property_symbol_v.make str_arg nam_ivn_tar;;

test_number 5 (
(sym_pro_tar : Property_symbol_t.property_symbol ) =
  Property_symbol_t.Property_body_symbol
   (Property_body_symbol_t.Property_set_body_operand_target_symbol
     (Property_set_body_operand_target_symbol_t.Property_body_target_explicit_created_symbol
       (Property_body_target_explicit_created_symbol_t.Property_body_target_explicit_created_figure_tag
         "Poi_h")))
);; 

let sym_pro_cre = (* Coercion Down *)
    Property_symbol_v.property_body_target_explicit_created_symbol_off_property_symbol 
    sym_pro_tar ;;

test_number 6 (
(sym_pro_cre : Property_body_target_explicit_created_symbol_t.property_body_target_explicit_created_symbol ) =
  Property_body_target_explicit_created_symbol_t.Property_body_target_explicit_created_figure_tag "Poi_h"
);;

(* Operator *)
let nam_ivn_tar = Property_body_target_explicit_created_symbol_v.string_off sym_pro_cre;;
let nam_ope = 
	Operator_name_by_target_localinput_set_fence_variable_name_entity_tag_provider_v.provide 
	  nam_ivn_tar;;

test_number 7 (
(nam_ope : string ) =
 "Hom_b_2"
);;

let tag_ope = 
	Operator_tag_by_operator_localinput_set_fence_variable_name_entity_tag_provider_v.provide
	  nam_ope;;

test_number 8 (
(tag_ope : Operator_tag_t.operator_tag ) =
  (Operator_symbol_t.Operator_body_symbol
    (Operator_body_symbol_t.Operator_creation_symbol
      (Operator_creation_symbol_t.Operator_endomorphism_symbol
        (Operator_endomorphism_symbol_t.Operator_transformation_symbol
          (Operator_transformation_symbol_t.Operator_transformation_homothety
            "Hom_b_2")))),
   [2; 27; 12])
);;

let tag_ocr = Tag_v.map_entity (* Coerce Down *)
    Operator_symbol_v.operator_creation_symbol_off_operator_symbol
    tag_ope;;

let sym_pro_ocr = Property_symbol_v.operator_fence_creation tag_ocr;;
let sym_pro_ocr_st = Tree_v.make_of_leaf sym_pro_ocr;;

test_number 9 (
(sym_pro_ocr_st : Property_symbol_t.property_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Operator_fence_symbol
       (Operator_fence_symbol_t.Operator_fence_creation
         (Operator_creation_symbol_t.Operator_endomorphism_symbol
           (Operator_endomorphism_symbol_t.Operator_transformation_symbol
             (Operator_transformation_symbol_t.Operator_transformation_homothety
               "Hom_b_2")),
          [2; 27; 12]))))
);;

(* Operand *)

let nam_lto = 
	Operand_name_by_target_localinput_set_fence_variable_name_entity_tag_provider_v.provide 
	  nam_ivn_tar;;

test_number 10 (
( nam_lto : string ) = 
"Poi_a"
);;

let tag_lto = 
  Figure_tag_by_localinput_set_fence_variable_name_entity_tag_provider_v.provide
    nam_lto;;

test_number 11 ( 
(tag_lto : Figure_tag_t.figure_tag ) =
  (Figure_symbol_t.Figure_fence_symbol
    (Figure_fence_symbol_t.Figure_point_symbol
      (Figure_point_symbol_t.Figure_point_constructor "T_A")),
   [1; 1; 1; 6])
);;

let sym_pro_lto = Property_symbol_v.property_set_body_operand_figure_tag tag_lto;;

test_number 12 (
( sym_pro_lto : Property_symbol_t.property_symbol ) =
  Property_symbol_t.Property_fence_symbol
   (Property_fence_symbol_t.Property_set_fence_operand_external_symbol
     (Property_set_fence_operand_external_symbol_t.Property_set_body_operand_figure_tag
       (Figure_symbol_t.Figure_fence_symbol
         (Figure_fence_symbol_t.Figure_point_symbol
           (Figure_point_symbol_t.Figure_point_constructor "T_A")),
        [1; 1; 1; 6])))
);;

let sym_pro_lto_st = Tree_v.make_of_leaf sym_pro_lto;;

test_number 13 (
(sym_pro_lto_st : Property_symbol_t.property_symbol Tree_t.tree ) =
Tree_t.Leaf
  (Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Property_set_fence_operand_external_symbol
	(Property_set_fence_operand_external_symbol_t.Property_set_body_operand_figure_tag
	   (Figure_symbol_t.Figure_fence_symbol
              (Figure_fence_symbol_t.Figure_point_symbol
		 (Figure_point_symbol_t.Figure_point_constructor "T_A")),
            [1; 1; 1; 6]))))
);;

let sym_pro_t = Property_as_target_implicit_unit_symbol_subtree_by_localinput_body_handle_command_unit_tag_provider_v.provide tag_ico;;

test_number 14 (
(sym_pro_t : Property_symbol_t.property_symbol Tree_t.tree ) =
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
            [1; 1; 1; 6]))))])
);;
