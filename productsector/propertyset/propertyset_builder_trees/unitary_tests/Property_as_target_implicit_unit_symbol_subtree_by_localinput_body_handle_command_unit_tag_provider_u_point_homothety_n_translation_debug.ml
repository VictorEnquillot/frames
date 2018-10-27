open Make_test_v;;

testing "Property_as_target_implicit_unit_symbol_subtree_by_localinput_body_handle_command_unit_tag_provider_v with
    Property_as_target_implicit_unit_symbol_subtree_by_localinput_body_handle_command_unit_tag_provider_u_point_homothety_n_translation_debug.ml";;

(* Deleting Registers *)


(* Tracing *)


(* Debugging *)


(* toplevel 
   #use "Property_as_target_implicit_unit_symbol_subtree_by_localinput_body_handle_command_unit_tag_provider_u_point_homothety_n_translation_debug.ml";; 

*)

(* Input File *)

let nam_ibo = "Print_homothety_n_translation_point_a";;

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
  [1; 39; 11]);
 (Localinput_symbol_t.Localinput_body_symbol
    (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
          (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
             (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
		(Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
		   "Con_hom"))))),
  [2; 39; 11]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Hom_b_2"))))),
    [3; 39; 11]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Tra_bc"))))),
    [4; 39; 11]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Seg_bc"))))),
    [5; 39; 11]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Cen_b"))))),
    [6; 39; 11]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Poi_a"))))),
    [7; 39; 11]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Poi_h"))))),
    [8; 39; 11]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Poi_t"))))),
    [9; 39; 1; 22; 1]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Uni_len"))))),
    [10; 39; 11]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Uni_ang"))))),
    [11; 39; 11]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_unit_symbol
           (Localinput_body_handle_command_unit_symbol_t.Localinput_body_handle_command_unit_print_symbol
             (Localinput_body_handle_command_unit_print_symbol_t.Localinput_body_handle_command_unit_print_constructor
               "Poi_a"))))),
    [12; 39; 11]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_unit_symbol
           (Localinput_body_handle_command_unit_symbol_t.Localinput_body_handle_command_unit_print_symbol
             (Localinput_body_handle_command_unit_print_symbol_t.Localinput_body_handle_command_unit_print_constructor
               "Poi_t"))))),
    [13; 39; 11])]
);;

let pre_tag_lup_sof sof (s, i) = 
  (Localinput_symbol_v.is_localinput_body_handle_command_unit_print_symbol_off_localinput_symbol s)
    && (Localinput_symbol_v.string_off s = sof);; 

(* Debugging *)

open Property_as_target_implicit_unit_symbol_subtree_by_localinput_body_handle_command_unit_tag_provider_v;;

(* Argument tag_lcu Poi_a *)

let nam_ivn_lup = "Poi_a";;
let tag_loi_lup_Poi_a = List_v.only_element_of_predicate_off_list (pre_tag_lup_sof nam_ivn_lup) tag_loi_l;; 

test_number 2 (
(tag_loi_lup_Poi_a : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
 (Localinput_symbol_t.Localinput_body_symbol
    (Localinput_body_symbol_t.Localinput_body_handle_symbol
      (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
        (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_unit_symbol
          (Localinput_body_handle_command_unit_symbol_t.Localinput_body_handle_command_unit_print_symbol
            (Localinput_body_handle_command_unit_print_symbol_t.Localinput_body_handle_command_unit_print_constructor
              "Poi_a"))))),
   [12; 39; 11])
);;

(* Argument tag_lcu Poi_a *)

let tag_lcu = Localinput_body_handle_command_unit_tag_v.localinput_body_handle_command_unit_tag_off_localinput_tag tag_loi_lup_Poi_a;;

test_number 3 (
(tag_lcu : 
  Localinput_body_handle_command_unit_symbol_t.localinput_body_handle_command_unit_symbol
  Tag_t.tag ) =
  (Localinput_body_handle_command_unit_symbol_t.Localinput_body_handle_command_unit_print_symbol
    (Localinput_body_handle_command_unit_print_symbol_t.Localinput_body_handle_command_unit_print_constructor
      "Poi_a"),
   [12; 39; 11])
);;
  
let sof_lcu = Localinput_body_handle_command_unit_tag_v.string_off tag_lcu;;

test_number 4 (
( sof_lcu : string ) = "Poi_a"
);;

let sym_pro_t = provide tag_lcu;;

test_number 5 (
( sym_pro_t : Property_symbol_t.property_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Property_symbol_t.Property_body_symbol
     (Property_body_symbol_t.Property_set_body_operand_target_symbol
       (Property_set_body_operand_target_symbol_t.Property_body_target_implicit_symbol
         (Property_body_target_implicit_symbol_t.Property_target_body_implicit_unit_symbol
           (Property_target_body_implicit_unit_symbol_t.Property_target_body_implicit_unit_constructor
             "Poi_a")))),
   [Tree_t.Leaf
     (Property_symbol_t.Property_fence_symbol
       (Property_fence_symbol_t.Operator_fence_symbol
         (Operator_fence_symbol_t.Operator_fence_tounit_symbol
           (Operator_fence_tounit_symbol_t.Operator_fence_tounit_constructor
             "Poi_a"))));
    Tree_t.Leaf
     (Property_symbol_t.Property_fence_symbol
       (Property_fence_symbol_t.Property_set_fence_operand_external_symbol
         (Property_set_fence_operand_external_symbol_t.Property_fence_operand_constructor
           "Poi_a")))])
);;

let tag_lcu = Localinput_body_handle_command_unit_tag_v.localinput_body_handle_command_unit_tag_off_localinput_tag tag_loi_lup_Poi_a;;

test_number 6 (
(tag_lcu : 
  Localinput_body_handle_command_unit_symbol_t.localinput_body_handle_command_unit_symbol
  Tag_t.tag ) =
  (Localinput_body_handle_command_unit_symbol_t.Localinput_body_handle_command_unit_print_symbol
    (Localinput_body_handle_command_unit_print_symbol_t.Localinput_body_handle_command_unit_print_constructor
      "Poi_a"),
   [12; 39; 11])
);;
  
let sof_lcu = Localinput_body_handle_command_unit_tag_v.string_off tag_lcu;;

test_number 7 (
( sof_lcu : string ) = "Poi_a"
);;

let sym_pro_t = provide tag_lcu;;

test_number 8 (
( sym_pro_t : Property_symbol_t.property_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Property_symbol_t.Property_body_symbol
     (Property_body_symbol_t.Property_set_body_operand_target_symbol
       (Property_set_body_operand_target_symbol_t.Property_body_target_implicit_symbol
         (Property_body_target_implicit_symbol_t.Property_target_body_implicit_unit_symbol
           (Property_target_body_implicit_unit_symbol_t.Property_target_body_implicit_unit_constructor
             "Poi_a")))),
   [Tree_t.Leaf
     (Property_symbol_t.Property_fence_symbol
       (Property_fence_symbol_t.Operator_fence_symbol
         (Operator_fence_symbol_t.Operator_fence_tounit_symbol
           (Operator_fence_tounit_symbol_t.Operator_fence_tounit_constructor
             "Poi_a"))));
    Tree_t.Leaf
     (Property_symbol_t.Property_fence_symbol
       (Property_fence_symbol_t.Property_set_fence_operand_external_symbol
         (Property_set_fence_operand_external_symbol_t.Property_fence_operand_constructor
           "Poi_a")))])
);;

(* Argument tag_lcu Poi_t *)

let nam_ivn_lup_poi_t = "Poi_t";;
let tag_loi_lup_poi_t = List_v.only_element_of_predicate_off_list (pre_tag_lup_sof nam_ivn_lup_poi_t) tag_loi_l;; 

test_number 9 (
(tag_loi_lup_poi_t : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
 (Localinput_symbol_t.Localinput_body_symbol
    (Localinput_body_symbol_t.Localinput_body_handle_symbol
      (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
        (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_unit_symbol
          (Localinput_body_handle_command_unit_symbol_t.Localinput_body_handle_command_unit_print_symbol
            (Localinput_body_handle_command_unit_print_symbol_t.Localinput_body_handle_command_unit_print_constructor
              "Poi_t"))))),
   [13; 39; 11])
);;

(* Argument tag_lcu_poi_t Poi_t *)

let tag_lcu_poi_t = Localinput_body_handle_command_unit_tag_v.localinput_body_handle_command_unit_tag_off_localinput_tag tag_loi_lup_poi_t;;

test_number 10 (
(tag_lcu_poi_t : 
  Localinput_body_handle_command_unit_symbol_t.localinput_body_handle_command_unit_symbol
  Tag_t.tag ) =
  (Localinput_body_handle_command_unit_symbol_t.Localinput_body_handle_command_unit_print_symbol
    (Localinput_body_handle_command_unit_print_symbol_t.Localinput_body_handle_command_unit_print_constructor
      "Poi_t"),
   [13; 39; 11])
);;
  
let nam_ivn_lcu_poi_t = Localinput_body_handle_command_unit_tag_v.string_off tag_lcu_poi_t;;

test_number 11 (
( nam_ivn_lcu_poi_t : string ) = "Poi_t"
);;

let sym_pro_t = provide tag_lcu_poi_t;;

test_number 12 (
( sym_pro_t : Property_symbol_t.property_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Property_symbol_t.Property_body_symbol
     (Property_body_symbol_t.Property_set_body_operand_target_symbol
       (Property_set_body_operand_target_symbol_t.Property_body_target_implicit_symbol
         (Property_body_target_implicit_symbol_t.Property_target_body_implicit_unit_symbol
           (Property_target_body_implicit_unit_symbol_t.Property_target_body_implicit_unit_constructor
             "Poi_t")))),
   [Tree_t.Leaf
     (Property_symbol_t.Property_fence_symbol
       (Property_fence_symbol_t.Operator_fence_symbol
         (Operator_fence_symbol_t.Operator_fence_tounit_symbol
           (Operator_fence_tounit_symbol_t.Operator_fence_tounit_constructor
             "Poi_t"))));
    Tree_t.Inner
     (Property_symbol_t.Property_body_symbol
       (Property_body_symbol_t.Property_set_body_operand_target_symbol
         (Property_set_body_operand_target_symbol_t.Property_set_body_operand_target
           (Property_set_body_operand_target_t.Property_body_target_explicit_created_symbol
             (Property_body_target_explicit_created_symbol_t.Property_body_target_explicit_created_constructor
               "Poi_t")))),
     [Tree_t.Leaf
       (Property_symbol_t.Property_fence_symbol
         (Property_fence_symbol_t.Operator_fence_symbol
           (Operator_fence_symbol_t.Operator_fence_creation_symbol
             (Operator_fence_creation_symbol_t.Operator_fence_creation_constructor
               "Tra_bc"))));
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
               "Poi_a")))])])])
);;

