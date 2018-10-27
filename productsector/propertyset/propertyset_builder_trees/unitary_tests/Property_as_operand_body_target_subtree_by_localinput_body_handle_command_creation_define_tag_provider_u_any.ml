open Make_test_v;;

testing "Property_as_operand_body_target_symbol_subtree_by_localinput_body_handle_command_creation_define_tag_provider_v with
    Property_as_operand_body_target_symbol_subtree_by_localinput_body_handle_command_creation_define_tag_provider_u_any.ml";;

(* Deleting Registers *)



(* Tracing *)


(* Debugging *)


(* toplevel 
   #use "Property_as_operand_body_target_symbol_subtree_by_localinput_body_handle_command_creation_define_tag_provider_u_any.ml";; 

*)

(* Input File *)

let nam_ibo = "Print_homothety_point_a";;
let nam_iba = "local";;

let tag_loi_l = Localinput_tag_all_list_by_basicname_inputbox_provider_v.provide nam_ibo;;
let tag_loi_t = Localinput_tag_tree_by_basicname_inputbox_provider_v.provide nam_ibo;;

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

let pre_tag_lcd_sof sof (s, i) = 
  (Localinput_symbol_v.is_localinput_body_handle_command_creation_define_symbol_off_localinput_symbol s)
    && (Localinput_symbol_v.string_off s = sof);; 

let tag_loi_lcd = List_v.only_element_of_predicate_off_list (pre_tag_lcd_sof "Poi_h") tag_loi_l;; 

test_number 2 (
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

(* Debugging *)

open Property_as_operand_body_target_symbol_subtree_by_localinput_body_handle_command_creation_define_tag_provider_v;;

(* Argument tag_lcd *)

let tag_lcd = Localinput_body_handle_command_creation_define_tag_v.localinput_body_handle_command_creation_define_tag_off_localinput_tag tag_loi_lcd;;

test_number 3 (
( tag_lcd :
  Localinput_body_handle_command_creation_define_symbol_t.localinput_body_handle_command_creation_define_symbol
  Tag_t.tag ) =
  (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
    "Poi_h",
   [6;  38; 11])
);;
  
let nam_ivn_lcd = Localinput_body_handle_command_creation_define_tag_v.string_off tag_lcd;;

test_number 4 (
( nam_ivn_lcd : string ) = "Poi_h"
);;

let tag_loi_lcd = 
    Localinput_body_handle_command_creation_define_tag_v.localinput_tag_of_localinput_body_handle_command_creation_define_tag  
      tag_lcd ;;

test_number 5 (
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

let tag_loi_lcd_st = Localinput_tag_subtree_by_localinput_tag_provider_v.provide tag_loi_lcd;;
let sym_loi_lcd_st = Tree_v.map Tag_v.entity_off_tag tag_loi_lcd_st;;

test_number 6 (
( sym_loi_lcd_st : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Poi_h"))))),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
         (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_command_symbol
           Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_define)));
    Tree_t.Inner
     (Localinput_symbol_t.Localinput_body_symbol
       (Localinput_body_symbol_t.Localinput_body_block_symbol
         (Localinput_body_block_symbol_t.Localinput_body_block_define_symbol
           (Localinput_body_block_define_symbol_t.Localinput_body_block_define_constructor
             "Poi_h"))),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
           (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
             (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_target_symbol
               (Localinput_set_fence_variable_name_entity_target_symbol_t.Localinput_set_fence_variable_name_entity_target_constructor
                 "Poi_h")))));
      Tree_t.Inner
       (Localinput_symbol_t.Localinput_body_symbol
         (Localinput_body_symbol_t.Localinput_body_handle_symbol
           (Localinput_body_handle_symbol_t.Localinput_body_handle_variable_kind_symbol
             (Localinput_body_handle_variable_kind_symbol_t.Localinput_body_handle_variable_target_symbol
               (Localinput_body_handle_variable_target_symbol_t.Localinput_body_handle_variable_target_constructor
                 "Poi_h")))),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
             (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_variable_kind_symbol
               Localinput_set_fence_keyword_variable_kind_symbol_t.Localinput_set_fence_keyword_variable_kind_target)));
        Tree_t.Inner
         (Localinput_symbol_t.Localinput_body_symbol
           (Localinput_body_symbol_t.Localinput_body_block_symbol
             (Localinput_body_block_symbol_t.Localinput_body_block_variable_target_symbol
               (Localinput_body_block_variable_target_symbol_t.Localinput_body_block_variable_target_constructor
                 "Poi_h"))),
         [Tree_t.Inner
           (Localinput_symbol_t.Localinput_body_symbol
             (Localinput_body_symbol_t.Localinput_body_box_symbol
               (Localinput_body_box_symbol_t.Localinput_body_box_type_symbol
                 (Localinput_body_box_type_symbol_t.Localinput_body_box_type_constructor
                   "Poi_h"))),
           [Tree_t.Leaf
             (Localinput_symbol_t.Localinput_set_fence_symbol
               (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
                 (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
                   Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_type)));
            Tree_t.Leaf
             (Localinput_symbol_t.Localinput_set_fence_symbol
               (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
                 (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
                   (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                     "property"))));
            Tree_t.Leaf
             (Localinput_symbol_t.Localinput_set_fence_symbol
               (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
                 (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
                   (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                     "body"))));
            Tree_t.Leaf
             (Localinput_symbol_t.Localinput_set_fence_symbol
               (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
                 (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
                   (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                     "target"))));
            Tree_t.Leaf
             (Localinput_symbol_t.Localinput_set_fence_symbol
               (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
                 (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
                   (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                     "explicit"))));
            Tree_t.Leaf
             (Localinput_symbol_t.Localinput_set_fence_symbol
               (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
                 (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
                   (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                     "created"))));
            Tree_t.Leaf
             (Localinput_symbol_t.Localinput_set_fence_symbol
               (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
                 (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
                   (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                     "constructor"))))]);
          Tree_t.Leaf
           (Localinput_symbol_t.Localinput_set_fence_symbol
             (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
               (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_target_operator_symbol
                 (Localinput_set_fence_cell_target_operator_symbol_t.Localinput_set_fence_cell_target_operator_constructor
                   "Hom_b_2"))));
          Tree_t.Leaf
           (Localinput_symbol_t.Localinput_set_fence_symbol
             (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
               (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_target_operand_symbol
                 (Localinput_set_fence_cell_target_operand_symbol_t.Localinput_set_fence_cell_target_operand_constructor
                   "Poi_a"))));
          Tree_t.Leaf
           (Localinput_symbol_t.Localinput_set_fence_symbol
             (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
               (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
                 Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end)))])]);
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
           (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
             Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end)))])])
);;


(* Target Symbol *)

  let sym_pro_pec = 
    property_as_operand_body_target_of_variable_name_of_localinput_command_creation_define_tag_subtree 
      nam_ivn_lcd 
      tag_loi_lcd_st;;


(* let operator_creation_leaf_of_localinput_command_creation_define_tag_subtree sym_loi_lcd_cur_st *)

let pre_sym_lto s = Localinput_symbol_v.is_localinput_set_fence_cell_target_operator_constructor s;;
let sym_loi_lto = Tree_v.only_node_of_node_predicate_off_tree pre_sym_lto sym_loi_lcd_st;;

test_number 7 (
( sym_loi_lto : Localinput_symbol_t.localinput_symbol ) =
  Localinput_symbol_t.Localinput_set_fence_symbol
   (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
     (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_target_operator_symbol
       (Localinput_set_fence_cell_target_operator_symbol_t.Localinput_set_fence_cell_target_operator_constructor
         "Hom_b_2")))
);;

let nam_ivn_lto = Localinput_symbol_v.string_off sym_loi_lto;;

test_number 8 (
(nam_ivn_lto : string ) = 
"Hom_b_2"
);;

let sym_pro_pct =
    Property_symbol_v.operator_fence_creation_toentity_constructor 
      nam_ivn_lto;;

test_number 9 (
( sym_pro_pct : Property_symbol_t.property_symbol ) =
  Property_symbol_t.Property_fence_symbol
   (Property_fence_symbol_t.Operator_fence_symbol
     (Operator_fence_symbol_t.Operator_fence_creation_symbol
       (Operator_fence_creation_symbol_t.Operator_fence_creation_toentity_constructor
         "Hom_b_2")))
);;

let sym_pro_pct_f =  Tree_v.make_of_leaf sym_pro_pct;;

test_number 10 (
(sym_pro_pct_f : Property_symbol_t.property_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Operator_fence_symbol
       (Operator_fence_symbol_t.Operator_fence_creation_symbol
         (Operator_fence_creation_symbol_t.Operator_fence_creation_toentity_constructor
           "Hom_b_2"))))
);;

(* Operand Subtree *)

(* let localinput_variable_name_of_localinput_command_creation_define_symbol_subtree sym_loi_lcd_st *)

let pre_sym_lto s = Localinput_symbol_v.is_localinput_set_fence_cell_target_operand_constructor s;;

let sym_loi_lto = Tree_v.only_node_of_node_predicate_off_tree pre_sym_lto sym_loi_lcd_st;;

test_number 11 (
(sym_loi_lto : Localinput_symbol_t.localinput_symbol ) =
  Localinput_symbol_t.Localinput_set_fence_symbol
   (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
     (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_target_operand_symbol
       (Localinput_set_fence_cell_target_operand_symbol_t.Localinput_set_fence_cell_target_operand_constructor
         "Poi_a")))
);;

let nam_ivn_lto = Localinput_symbol_v.string_off sym_loi_lto;;

test_number 12 (
(nam_ivn_lto : string ) = "Poi_a"
);;

test_number 13 (
nam_ivn_lto = localinput_variable_name_of_localinput_command_creation_define_symbol_subtree sym_loi_lcd_st 
);;

(* localinput_as_body_handle_command_creation_define_tag_of_localinput_variable_name_of_localinput_tag_tree *)

let tag_loi_lcd = 
  localinput_as_body_handle_command_creation_define_tag_of_localinput_variable_name_of_localinput_tag_tree
    nam_ivn_lto 
    tag_loi_t;;

test_number 14 (
(tag_loi_lcd : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
  (Localinput_symbol_t.Localinput_body_symbol
    (Localinput_body_symbol_t.Localinput_body_handle_symbol
      (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
        (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
          (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
            (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
              "Poi_a"))))),
   [4;  38; 11])
);;

let tag_loi_lcd_st = 
      Localinput_tag_subtree_by_localinput_tag_provider_v.provide 
	tag_loi_lcd ;;

let sym_loi_lto_st = Tree_v.map Tag_v.entity_off_tag tag_loi_lcd_st;;

test_number 15 (
(sym_loi_lto_st : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Poi_a"))))),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
         (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_command_symbol
           Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_define)));
    Tree_t.Inner
     (Localinput_symbol_t.Localinput_body_symbol
       (Localinput_body_symbol_t.Localinput_body_block_symbol
         (Localinput_body_block_symbol_t.Localinput_body_block_define_symbol
           (Localinput_body_block_define_symbol_t.Localinput_body_block_define_constructor
             "Poi_a"))),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
           (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
             (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol
               (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
                 "Poi_a")))));
      Tree_t.Inner
       (Localinput_symbol_t.Localinput_body_symbol
         (Localinput_body_symbol_t.Localinput_body_handle_symbol
           (Localinput_body_handle_symbol_t.Localinput_body_handle_variable_kind_symbol
             (Localinput_body_handle_variable_kind_symbol_t.Localinput_body_handle_variable_external_symbol
               (Localinput_body_handle_variable_external_symbol_t.Localinput_body_handle_variable_external_constructor
                 "Poi_a")))),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
             (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_variable_kind_symbol
               Localinput_set_fence_keyword_variable_kind_symbol_t.Localinput_set_fence_keyword_variable_kind_external)));
        Tree_t.Inner
         (Localinput_symbol_t.Localinput_body_symbol
           (Localinput_body_symbol_t.Localinput_body_block_symbol
             (Localinput_body_block_symbol_t.Localinput_body_block_variable_external_symbol
               (Localinput_body_block_variable_external_symbol_t.Localinput_body_block_variable_external_constructor
                 "Poi_a"))),
         [Tree_t.Inner
           (Localinput_symbol_t.Localinput_body_symbol
             (Localinput_body_symbol_t.Localinput_body_box_symbol
               (Localinput_body_box_symbol_t.Localinput_body_box_type_symbol
                 (Localinput_body_box_type_symbol_t.Localinput_body_box_type_constructor
                   "Poi_a"))),
           [Tree_t.Leaf
             (Localinput_symbol_t.Localinput_set_fence_symbol
               (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
                 (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
                   Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_type)));
            Tree_t.Leaf
             (Localinput_symbol_t.Localinput_set_fence_symbol
               (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
                 (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
                   (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                     "figure"))));
            Tree_t.Leaf
             (Localinput_symbol_t.Localinput_set_fence_symbol
               (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
                 (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
                   (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                     "fence"))));
            Tree_t.Leaf
             (Localinput_symbol_t.Localinput_set_fence_symbol
               (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
                 (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
                   (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                     "point"))));
            Tree_t.Leaf
             (Localinput_symbol_t.Localinput_set_fence_symbol
               (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
                 (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
                   (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                     "constructor"))))]);
          Tree_t.Leaf
           (Localinput_symbol_t.Localinput_set_fence_symbol
             (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
               (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_name_symbol
                 (Localinput_set_fence_cell_name_symbol_t.Localinput_set_fence_cell_name_constructor
                   "T_A"))));
          Tree_t.Leaf
           (Localinput_symbol_t.Localinput_set_fence_symbol
             (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
               (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_external_context_symbol
                 (Localinput_set_fence_cell_external_context_symbol_t.Localinput_set_fence_cell_external_context_constructor
                   "Con_db1"))));
          Tree_t.Leaf
           (Localinput_symbol_t.Localinput_set_fence_symbol
             (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
               (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
                 Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end)))])]);
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
           (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
             Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end)))])])
);;

(* let operand_symbol_subtree_of_apply_of_variable_name_of_localinput_tag_of_localinput_tag_subtree apply nam_ivn_lto tag_loi_lcd tag_loi_lcd_st = *)

let sym_loi_lto_lve = (* Localinput_set_fence_variable_name_entity_symbol *)
    localinput_as_variable_name_symbol_of_localinput_command_creation_define_symbol_subtree
      sym_loi_lto_st;;

test_number 16 (
(sym_loi_lto_lve : Localinput_symbol_t.localinput_symbol ) =
  Localinput_symbol_t.Localinput_set_fence_symbol
   (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
     (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
       (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol
         (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
           "Poi_a"))))
);;

let sym_pro_lto_st =
  operand_symbol_subtree_of_apply_of_variable_name_of_localinput_tag_of_localinput_tag_subtree 
    (property_symbol_subtree_of_localinput_tag_tree_of_localinput_as_comand_define_tag tag_loi_t)
    nam_ivn_lto 
    tag_loi_lcd 
    tag_loi_lcd_st;;

test_number 17 (
(sym_pro_lto_st : Property_symbol_t.property_symbol Tree_t.tree) =
  Tree_t.Leaf
   (Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Property_set_fence_operand_external_symbol
       (Property_set_fence_operand_external_symbol_t.Property_fence_operand_constructor
         "Poi_a")))
);;

(* Store Target Subtree *)


(* Target Subtree *)

let sym_pro_pec_st = Tree_v.make_of_node sym_pro_pec [sym_pro_pct_f; sym_pro_lto_st];;

test_number 18 (
(sym_pro_pec_st : Property_symbol_t.property_symbol Tree_t.tree ) =
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
           (Operator_fence_creation_symbol_t.Operator_fence_creation_toentity_constructor
             "Hom_b_2"))));
    Tree_t.Leaf
     (Property_symbol_t.Property_fence_symbol
       (Property_fence_symbol_t.Property_set_fence_operand_external_symbol
         (Property_set_fence_operand_external_symbol_t.Property_fence_operand_constructor
           "Poi_a")))])
);;

test_number 19 (
sym_pro_pec_st = provide tag_lcd
);;
