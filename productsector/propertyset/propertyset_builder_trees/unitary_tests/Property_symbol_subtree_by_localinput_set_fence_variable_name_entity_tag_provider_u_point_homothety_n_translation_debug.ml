open Make_test_v;;

testing "Property_symbol_subtree_by_localinput_set_fence_variable_name_entity_tag_provider_v with
    Property_symbol_subtree_by_localinput_set_fence_variable_name_entity_tag_provider_u_point_homothety_n_translation_debug.ml";;

(* Deleting Registers *)


(* Tracing *)


(* Debugging *)


(* toplevel 
   #use "Property_symbol_subtree_by_localinput_set_fence_variable_name_entity_tag_provider_u_point_homothety_n_translation_debug.ml";; 

*)

(* Input File *)

let nam_ibo = "Print_homothety_n_translation_point_a";;

(* open Property_symbol_subtree_by_localinput_set_fence_variable_name_entity_tag_provider_v;; *)

(** {6 Building.} *)
 
let sym_pro_ifi = Property_symbol_v.property_context_inputfile_constructor nam_ibo;; 

test_number 1 (
(sym_pro_ifi : Property_symbol_t.property_symbol) =
  Property_symbol_t.Property_context_symbol
   (Property_context_symbol_t.Property_context_inputfile_symbol
     (Property_context_inputfile_symbol_t.Property_context_inputfile_constructor
       "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Print_homothety_n_translation_point_a"))
);;

let tag_loi_l = Localinput_tag_all_list_by_basicname_inputbox_provider_v.provide nam_ibo;;
  
let pre_tag_fvn (s, i) = Localinput_symbol_v.is_localinput_set_fence_variable_name_symbol_off_localinput_symbol s;;

let tag_net_l = List.filter pre_tag_fvn tag_loi_l;;

let str_arg =
    Make_argument_by_target_localinput_set_fence_variable_name_entity_tag_provider_v.provide
      nam_ivn;;

test_number 2 (
(str_arg : string ) = 
"property_body_target_explicit_created_figure_tag"
);;

let sym_pro_tar =
  Property_symbol_v.make str_arg nam_ivn;;

test_number 3 (
(sym_pro_tar : Property_symbol_t.property_symbol ) =
  Property_symbol_t.Property_body_symbol
   (Property_body_symbol_t.Property_set_body_operand_target_symbol
     (Property_set_body_operand_target_symbol_t.Property_body_target_explicit_created_symbol
       (Property_body_target_explicit_created_symbol_t.Property_body_target_explicit_created_figure_tag
         "Poi_t")))
);;

(* let property_as_operator_creation_symbol_subtree_of_target_symbol sym_pro_tar = *)
 
let sym_pro_cre = (* Coercion Down *)
    Property_symbol_v.property_body_target_explicit_created_symbol_off_property_symbol 
      sym_pro_tar;;

test_number 4 (
(sym_pro_cre :
  Property_body_target_explicit_created_symbol_t.property_body_target_explicit_created_symbol ) =
  Property_body_target_explicit_created_symbol_t.Property_body_target_explicit_created_figure_tag "Poi_t"
);;

(* let operator_creation_tag_of_target_localinput_variable_name nam_ivn = *)

let nam_opr_cre = 
  Operator_name_by_target_localinput_set_fence_variable_name_entity_tag_provider_v.provide 
    nam_ivn;;

test_number 5 (
(nam_opr_cre : string ) = 
"Tra_bc"
);;

(* IOPE *)

let tag_opr_cre = 
  Operator_tag_by_operator_localinput_set_fence_variable_name_entity_tag_provider_v.provide
    nam_opr_cre
;;

test_number 6 (
(tag_opr_cre : Operator_tag_t.operator_tag ) =
  (Operator_symbol_t.Operator_body_symbol
    (Operator_body_symbol_t.Operator_creation_symbol
      (Operator_creation_symbol_t.Operator_endomorphism_symbol
        (Operator_endomorphism_symbol_t.Operator_transformation_symbol
          (Operator_transformation_symbol_t.Operator_transformation_translation
            "Tra_bc")))),
   [4; 28; 12])
);;

let tag_ocr = operator_creation_tag_of_target_localinput_variable_name nam_ivn;;

test_number 7 (
(tag_ocr :
  Operator_creation_symbol_t.operator_creation_symbol Tag_t.tag ) =
  (Operator_creation_symbol_t.Operator_endomorphism_symbol
    (Operator_endomorphism_symbol_t.Operator_transformation_symbol
      (Operator_transformation_symbol_t.Operator_transformation_translation
        "Tra_bc")),
   [4; 28; 12])
);;

let sym_pro_ocr = Property_symbol_v.operator_fence_creation tag_ocr;;

test_number 8 (
(sym_pro_ocr : Property_symbol_t.property_symbol ) =
  Property_symbol_t.Property_fence_symbol
   (Property_fence_symbol_t.Operator_fence_symbol
     (Operator_fence_symbol_t.Operator_fence_creation
       (Operator_creation_symbol_t.Operator_endomorphism_symbol
         (Operator_endomorphism_symbol_t.Operator_transformation_symbol
           (Operator_transformation_symbol_t.Operator_transformation_translation
             "Tra_bc")),
        [4; 28; 12])))
);;

let sym_pro_ocr_st = Tree_v.make_of_leaf sym_pro_ocr;;

test_number 9 (
(sym_pro_ocr_st : Property_symbol_t.property_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Operator_fence_symbol
       (Operator_fence_symbol_t.Operator_fence_creation
         (Operator_creation_symbol_t.Operator_endomorphism_symbol
           (Operator_endomorphism_symbol_t.Operator_transformation_symbol
             (Operator_transformation_symbol_t.Operator_transformation_translation
               "Tra_bc")),
          [4; 28; 12]))))
);;

let sym_pro_ocr_st =
    property_as_operator_creation_symbol_subtree_of_target_symbol
      sym_pro_tar;;

test_number 10 (
(sym_pro_ocr_st : Property_symbol_t.property_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Operator_fence_symbol
       (Operator_fence_symbol_t.Operator_fence_creation
         (Operator_creation_symbol_t.Operator_endomorphism_symbol
           (Operator_endomorphism_symbol_t.Operator_transformation_symbol
             (Operator_transformation_symbol_t.Operator_transformation_translation
               "Tra_bc")),
          [4; 28; 12]))))
);;

(* let property_as_operand_symbol_subtree_of_target_symbol *)

 let sym_pro_tcr = (* Coercion Down *)
    Property_symbol_v.property_body_target_explicit_created_symbol_off_property_symbol 
      sym_pro_tar ;;

test_number 11 (
(sym_pro_tcr :
  Property_body_target_explicit_created_symbol_t.property_body_target_explicit_created_symbol ) =
  Property_body_target_explicit_created_symbol_t.Property_body_target_explicit_created_figure_tag "Poi_t"
);;

let nam_ivn_lto = 
	Operand_name_by_target_localinput_set_fence_variable_name_entity_tag_provider_v.provide 
	  nam_ivn;;

test_number 12 (
( nam_ivn_lto : string ) = 
"Poi_h"
);;

let tag_fig_lto = 
	Figure_tag_by_localinput_set_fence_variable_name_entity_tag_provider_v.provide 
	  nam_ivn_lto;;

test_number 13 (
(tag_fig_lto : Figure_symbol_t.figure_symbol Tag_t.tag ) =
  (Figure_symbol_t.Figure_field_symbol
    (Figure_field_symbol_t.Figure_fence_symbol
      (Figure_fence_symbol_t.Figure_point_symbol
        (Figure_point_symbol_t.Figure_point_constructor "Poi_h"))),
   [1; 1; 28; 6])
);;

let sym_pro_lto = Property_symbol_v.property_set_body_operand_figure_tag tag_fig_lto;;

test_number 14 (
(sym_pro_lto : Property_symbol_t.property_symbol ) =
  Property_symbol_t.Property_fence_symbol
   (Property_fence_symbol_t.Property_set_fence_operand_external_symbol
     (Property_set_fence_operand_external_symbol_t.Property_set_body_operand_figure_tag
       (Figure_symbol_t.Figure_field_symbol
         (Figure_field_symbol_t.Figure_fence_symbol
           (Figure_fence_symbol_t.Figure_point_symbol
             (Figure_point_symbol_t.Figure_point_constructor "Poi_h"))),
        [1; 1; 28; 6])))
);;

let sym_pro_lto_st = Tree_v.make_of_leaf sym_pro_lto;;

test_number 15 (
(sym_pro_lto_st : Property_symbol_t.property_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Property_set_fence_operand_external_symbol
       (Property_set_fence_operand_external_symbol_t.Property_set_body_operand_figure_tag
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_fence_symbol
             (Figure_fence_symbol_t.Figure_point_symbol
               (Figure_point_symbol_t.Figure_point_constructor "Poi_h"))),
          [1; 1; 28; 6]))))
);;

let sym_pro_lto_st =
    property_as_operand_symbol_subtree_of_target_symbol
      sym_pro_tar;;

test_number 16 (
(sym_pro_lto_st : Property_symbol_t.property_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Property_set_fence_operand_external_symbol
       (Property_set_fence_operand_external_symbol_t.Property_set_body_operand_figure_tag
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_fence_symbol
             (Figure_fence_symbol_t.Figure_point_symbol
               (Figure_point_symbol_t.Figure_point_constructor "Poi_h"))),
          [1; 1; 28; 6]))))
);;

let sym_pro_st = Tree_v.make_of_node sym_pro_tar [sym_pro_ocr_st; sym_pro_lto_st];;

test_number 17 (
(sym_pro_st : Property_symbol_t.property_symbol Tree_t.tree ) =
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
    Tree_t.Leaf
     (Property_symbol_t.Property_fence_symbol
       (Property_fence_symbol_t.Property_set_fence_operand_external_symbol
         (Property_set_fence_operand_external_symbol_t.Property_set_body_operand_figure_tag
           (Figure_symbol_t.Figure_field_symbol
             (Figure_field_symbol_t.Figure_fence_symbol
               (Figure_fence_symbol_t.Figure_point_symbol
                 (Figure_point_symbol_t.Figure_point_constructor "Poi_h"))),
            [1; 1; 28; 6]))))])
);;

let sym_pro_st = Property_symbol_subtree_by_localinput_set_fence_variable_name_entity_tag_provider_v.provide nam_ivn;;

test_number 18 (
(sym_pro_st : Property_symbol_t.property_symbol Tree_t.tree ) =
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
                   (Figure_point_symbol_t.Figure_point_constructor "Poi_a"))),
              [1; 1; 1; 28; 6]))))])])
);;

(* Homothety Poi_h *)

let nam_ivn = "Poi_h";;
let sym_pro_st = Property_symbol_subtree_by_localinput_set_fence_variable_name_entity_tag_provider_v.provide nam_ivn;;

test_number 19 (
( sym_pro_st : Property_symbol_t.property_symbol Tree_t.tree ) =
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
                 (Figure_point_symbol_t.Figure_point_constructor "Poi_a"))),
            [1; 1; 1; 28; 6]))))])
);;

