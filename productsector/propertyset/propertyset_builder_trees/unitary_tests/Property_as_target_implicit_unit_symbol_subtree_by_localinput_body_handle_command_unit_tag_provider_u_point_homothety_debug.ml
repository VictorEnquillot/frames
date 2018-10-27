open Make_test_v;;

(* Deleting Registers *)


(* Tracing *)


(* Debugging *)


(* toplevel 
   #use "Property_as_target_implicit_unit_symbol_subtree_by_localinput_body_handle_command_unit_tag_provider_u_point_homothety_debug.ml";; 

*)

(* Input File *)

let nam_ibo = "Print_homothety_point_a";;

let tag_loi_l = Localinput_tag_all_list_by_basicname_inputbox_provider_v.provide nam_ibo;;

let pre_tag_lhc (s, i) = Localinput_symbol_v.is_localinput_body_handle_command_symbol_off_localinput_symbol s;;
let tag_loi_lhc_l = List.filter pre_tag_lhc tag_loi_l;;

test_number 1 (
(tag_loi_lhc_l : Localinput_symbol_t.localinput_symbol Tag_t.tag list ) =
 [(Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Con_db1"))))),
    [1;  38; 11]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Con_hom"))))),
    [2;  38; 11]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Cen_b"))))),
    [3;  38; 11]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Poi_a"))))),
    [4;  38; 11]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Hom_b_2"))))),
    [5;  38; 11]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Poi_h"))))),
    [6;  38; 11]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Uni_len"))))),
    [7;  38; 11]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Uni_ang"))))),
    [8;  38; 11]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_unit_symbol
           (Localinput_body_handle_command_unit_symbol_t.Localinput_body_handle_command_unit_print_symbol
             (Localinput_body_handle_command_unit_print_symbol_t.Localinput_body_handle_command_unit_print_constructor
               "Poi_h"))))),
    [9;  38; 11])]
);;

let pre_tag_lup_sof sof (s, i) = 
  (Localinput_symbol_v.is_localinput_body_handle_command_unit_print_symbol_off_localinput_symbol s)
    && (Localinput_symbol_v.string_off s = sof);; 

let tag_loi_Poi_h = List_v.only_element_of_predicate_off_list (pre_tag_lup_sof "Poi_h") tag_loi_l;; 

test_number 2 (
(tag_loi_Poi_h : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
 (Localinput_symbol_t.Localinput_body_symbol
    (Localinput_body_symbol_t.Localinput_body_handle_symbol
      (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
        (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_unit_symbol
          (Localinput_body_handle_command_unit_symbol_t.Localinput_body_handle_command_unit_print_symbol
            (Localinput_body_handle_command_unit_print_symbol_t.Localinput_body_handle_command_unit_print_constructor
              "Poi_h"))))),
   [9;  38; 11])
);;

let tag_loi_t = Localinput_tag_tree_by_basicname_inputbox_provider_v.provide nam_ibo;;
let tag_loi_lup_st = Tree_v.subtree_of_node_predicate_off_tree (pre_tag_lup_sof "Poi_h") tag_loi_t;;

test_number 3 (
(tag_loi_lup_st : Localinput_symbol_t.localinput_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Localinput_symbol_t.Localinput_body_symbol
      (Localinput_body_symbol_t.Localinput_body_handle_symbol
        (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
          (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_unit_symbol
            (Localinput_body_handle_command_unit_symbol_t.Localinput_body_handle_command_unit_print_symbol
              (Localinput_body_handle_command_unit_print_symbol_t.Localinput_body_handle_command_unit_print_constructor
                "Poi_h"))))),
     [9;  38; 11]),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
         (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_command_symbol
           Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_print)),
      [1; 9;  38; 11]);
    Tree_t.Inner
     ((Localinput_symbol_t.Localinput_body_symbol
        (Localinput_body_symbol_t.Localinput_body_block_symbol
          (Localinput_body_block_symbol_t.Localinput_body_block_print_symbol
            (Localinput_body_block_print_symbol_t.Localinput_body_block_print_constructor
              "Poi_h"))),
       [2; 9;  38; 11]),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
           (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
             (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_implicit_symbol
               (Localinput_set_fence_variable_name_entity_implicit_symbol_t.Localinput_set_fence_variable_name_entity_implicit_constructor
                 "Poi_h")))),
        [1; 2; 9;  38; 11]);
      Tree_t.Inner
       ((Localinput_symbol_t.Localinput_body_symbol
          (Localinput_body_symbol_t.Localinput_body_box_symbol
            (Localinput_body_box_symbol_t.Localinput_body_box_units_symbol
              (Localinput_body_box_units_symbol_t.Localinput_body_box_units_constructor
                "Poi_h"))),
         [2; 2; 9;  38; 11]),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
             (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
               Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_units)),
          [1; 2; 2; 9;  38; 11]);
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
             (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
               (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol
                 (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
                   "Uni_len")))),
          [2; 2; 2; 9;  38; 11]);
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
             (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
               (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol
                 (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
                   "Uni_ang")))),
          [3; 2; 2; 9;  38; 11])]);
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
           (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
             Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end)),
        [3; 2; 9;  38; 11])])])
);;

(* Debugging *)

open Property_as_target_implicit_unit_symbol_subtree_by_localinput_body_handle_command_unit_tag_provider_v;;

(* Argument tag_lcu *)

let tag_lcu = Localinput_body_handle_command_unit_tag_v.localinput_body_handle_command_unit_tag_off_localinput_tag tag_loi_Poi_h;;

test_number 4 (
(tag_lcu : 
  Localinput_body_handle_command_unit_symbol_t.localinput_body_handle_command_unit_symbol
  Tag_t.tag ) =
  (Localinput_body_handle_command_unit_symbol_t.Localinput_body_handle_command_unit_print_symbol
    (Localinput_body_handle_command_unit_print_symbol_t.Localinput_body_handle_command_unit_print_constructor
      "Poi_h"),
   [9;  38; 11])
);;
  
let sof_lcu = Localinput_body_handle_command_unit_tag_v.string_off tag_lcu;;

test_number 5 (
( sof_lcu : string ) = "Poi_h"
);;

(* print Poi_h *)
(*       units [ Uni_len Uni_ang ] *)
(*       end -- print *)

(* Operator_tounit Leaf Subtree *)

let sym_pro_ptp = Property_symbol_v.operator_fence_tounit_constructor sof_lcu;;

test_number 6 (
( sym_pro_ptp : Property_symbol_t.property_symbol ) =
Property_symbol_t.Property_fence_symbol
  (Property_fence_symbol_t.Operator_fence_symbol
     (Operator_fence_symbol_t.Operator_fence_tounit_symbol
	(Operator_fence_tounit_symbol_t.Operator_fence_tounit_constructor
	   "Poi_h")))
);;

let sym_pro_ptp_f =  Tree_v.make_of_leaf sym_pro_ptp;;

test_number 7 (
(sym_pro_ptp_f : Property_symbol_t.property_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Operator_fence_symbol
       (Operator_fence_symbol_t.Operator_fence_tounit_symbol
         (Operator_fence_tounit_symbol_t.Operator_fence_tounit_constructor
           "Poi_h"))))
);;

(* Operand Subtree *)

let tag_loi_lcd = 
    Property_as_operand_body_target_symbol_subtree_by_localinput_body_handle_command_creation_define_tag_provider_v.localinput_as_body_handle_command_creation_define_tag_of_localinput_variable_name_of_localinput_tag_tree
      sof_lcu 
      tag_loi_t;;

test_number 8 (
(tag_loi_lcd : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
(Localinput_symbol_t.Localinput_body_symbol
   (Localinput_body_symbol_t.Localinput_body_handle_symbol
      (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
            (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
               (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
		  "Poi_h"))))),
 [6;  38; 11])
);;

let tag_lto = (* Coerce Down *)
  Localinput_body_handle_command_creation_define_tag_v.localinput_body_handle_command_creation_define_tag_off_localinput_tag
    tag_loi_lcd;;

test_number 9 (
(tag_lto :
  Localinput_body_handle_command_creation_define_symbol_t.localinput_body_handle_command_creation_define_symbol
  Tag_t.tag ) =
  (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
    "Poi_h",
   [6;  38; 11])
);;

let sym_pro_lto_st =
  Property_as_operand_body_target_symbol_subtree_by_localinput_body_handle_command_creation_define_tag_provider_v.provide
    tag_lto;;

test_number 10 (
(sym_pro_lto_st : Property_symbol_t.property_symbol Tree_t.tree) =
  Tree_t.Inner
   (Property_symbol_t.Property_body_symbol
     (Property_body_symbol_t.Property_set_body_operand_target_symbol
       (Property_set_body_operand_target_symbol_t.Property_set_body_operand_target
         (Property_set_body_operand_target_t.Property_body_target_explicit_created_symbol
           (Property_body_target_explicit_created_symbol_t.Property_body_target_explicit_created_constructor
             "Poi_h")))),
   [Tree_t.Leaf
     (Property_symbol_t.Property_fence_symbol
       (Property_fence_symbol_t.Operator_fence_symbol
         (Operator_fence_symbol_t.Operator_fence_creation_symbol
           (Operator_fence_creation_symbol_t.Operator_fence_creation_constructor
             "Hom_b_2"))));
    Tree_t.Leaf
     (Property_symbol_t.Property_fence_symbol
       (Property_fence_symbol_t.Property_set_fence_operand_external_symbol
         (Property_set_fence_operand_external_symbol_t.Property_fence_operand_constructor
           "Poi_a")))])
);;

(* Target Subtree *)

let sym_pro_pec =
    Property_symbol_v.property_target_body_implicit_unit_constructor
      sof_lcu;;

test_number 11 (
(sym_pro_pec : Property_symbol_t.property_symbol ) =
  Property_symbol_t.Property_body_symbol
   (Property_body_symbol_t.Property_set_body_operand_target_symbol
     (Property_set_body_operand_target_symbol_t.Property_body_target_implicit_symbol
       (Property_body_target_implicit_symbol_t.Property_target_body_implicit_unit_symbol
         (Property_target_body_implicit_unit_symbol_t.Property_target_body_implicit_unit_constructor
           "Poi_h"))))
);;

let sym_pro_pec_st = Tree_v.make_of_node sym_pro_pec [sym_pro_ptp_f; sym_pro_lto_st];;

test_number 12 (
(sym_pro_pec_st : Property_symbol_t.property_symbol Tree_t.tree ) =
  Tree_t.Inner
  (Property_symbol_t.Property_body_symbol
     (Property_body_symbol_t.Property_set_body_operand_target_symbol
	(Property_set_body_operand_target_symbol_t.Property_body_target_implicit_symbol
           (Property_body_target_implicit_symbol_t.Property_target_body_implicit_unit_symbol
              (Property_target_body_implicit_unit_symbol_t.Property_target_body_implicit_unit_constructor
		 "Poi_h")))),
   [Tree_t.Leaf
      (Property_symbol_t.Property_fence_symbol
	 (Property_fence_symbol_t.Operator_fence_symbol
            (Operator_fence_symbol_t.Operator_fence_tounit_symbol
	       (Operator_fence_tounit_symbol_t.Operator_fence_tounit_constructor
		  "Poi_h"))));
    Tree_t.Inner
      (Property_symbol_t.Property_body_symbol
	 (Property_body_symbol_t.Property_set_body_operand_target_symbol
	    (Property_set_body_operand_target_symbol_t.Property_set_body_operand_target
	       (Property_set_body_operand_target_t.Property_body_target_explicit_created_symbol
		  (Property_body_target_explicit_created_symbol_t.Property_body_target_explicit_created_constructor
		     "Poi_h")))),
       [Tree_t.Leaf
	  (Property_symbol_t.Property_fence_symbol
	     (Property_fence_symbol_t.Operator_fence_symbol
		(Operator_fence_symbol_t.Operator_fence_creation_symbol
		   (Operator_fence_creation_symbol_t.Operator_fence_creation_constructor
		      "Hom_b_2"))));
	Tree_t.Leaf
	  (Property_symbol_t.Property_fence_symbol
	     (Property_fence_symbol_t.Property_set_fence_operand_external_symbol
		(Property_set_fence_operand_external_symbol_t.Property_fence_operand_constructor
		   "Poi_a")))]) ])
);;

test_number 13 (
sym_pro_pec_st = provide tag_lcu
);;
