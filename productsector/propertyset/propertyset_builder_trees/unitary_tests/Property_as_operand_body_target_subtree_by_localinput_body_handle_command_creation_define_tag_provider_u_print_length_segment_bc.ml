open Make_test_v;;

testing "Property_as_operand_body_target_symbol_subtree_by_localinput_body_handle_command_creation_define_tag_provider_v with
    Property_as_body_target_explicit_subtree_by_localinput_body_handle_command_creation_define_tag_provider_u_print_length_segment_bc.ml";;

(* Deleting Registers *)



(* Tracing *)


(* toplevel 
   #use "Property_as_operand_body_target_symbol_subtree_by_localinput_body_handle_command_creation_define_tag_provider_u_print_length_segment_bc.ml";; 

*)

(* Input File *)

let nam_ibo = "Segment_length";;

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
    [1; 48; 11]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Len"))))),
    [2; 48; 11]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Seg_bc"))))),
    [3; 48; 11]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Len_bc"))))),
    [4; 48; 11])]
);;

let pre_tag_lcd_sof sof (s, i) = 
  (Localinput_symbol_v.is_localinput_body_handle_command_creation_define_symbol_off_localinput_symbol s)
    && (Localinput_symbol_v.string_off s = sof);; 

let nam_ivn_lcd = "Len_bc";;
let tag_loi_len_bc = List_v.only_element_of_predicate_off_list (pre_tag_lcd_sof nam_ivn_lcd) tag_loi_l;; 

test_number 2 (
(tag_loi_len_bc : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
  (Localinput_symbol_t.Localinput_body_symbol
    (Localinput_body_symbol_t.Localinput_body_handle_symbol
      (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
        (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
          (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
            (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
              "Len_bc"))))),
   [4; 48; 11])
);;

(* Debugging *)

open Property_as_operand_body_target_symbol_subtree_by_localinput_body_handle_command_creation_define_tag_provider_v;;

(* Argument tag_lcd *)

let tag_lcd = Localinput_body_handle_command_creation_define_tag_v.localinput_body_handle_command_creation_define_tag_off_localinput_tag tag_loi_len_bc;;

test_number 3 (
( tag_lcd :
  Localinput_body_handle_command_creation_define_symbol_t.localinput_body_handle_command_creation_define_symbol
  Tag_t.tag ) =
 (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
    "Len_bc",
   [4; 48; 11])
);;
  
let nam_ivn_lcd = Localinput_body_handle_command_creation_define_tag_v.string_off tag_lcd;;

test_number 4 (
( nam_ivn_lcd : string ) = "Len_bc"
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
              "Len_bc"))))),
   [4; 48; 11])
);;

(* define Len_bc *)
(*        target  *)
(*          type [ "property" "target" "explicit" "measured" "constructor"] *)
(* 	    target_operator Len *)
(*          target_operand Len_bc *)
(* 	    end -- target *)
(*        end -- define *)

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
               "Len_bc"))))),
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
             "Len_bc"))),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
           (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
             (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_target_symbol
               (Localinput_set_fence_variable_name_entity_target_symbol_t.Localinput_set_fence_variable_name_entity_target_constructor
                 "Len_bc")))));
      Tree_t.Inner
       (Localinput_symbol_t.Localinput_body_symbol
         (Localinput_body_symbol_t.Localinput_body_handle_symbol
           (Localinput_body_handle_symbol_t.Localinput_body_handle_variable_kind_symbol
             (Localinput_body_handle_variable_kind_symbol_t.Localinput_body_handle_variable_target_symbol
               (Localinput_body_handle_variable_target_symbol_t.Localinput_body_handle_variable_target_constructor
                 "Len_bc")))),
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
                 "Len_bc"))),
         [Tree_t.Inner
           (Localinput_symbol_t.Localinput_body_symbol
             (Localinput_body_symbol_t.Localinput_body_box_symbol
               (Localinput_body_box_symbol_t.Localinput_body_box_type_symbol
                 (Localinput_body_box_type_symbol_t.Localinput_body_box_type_constructor
                   "Len_bc"))),
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
                     "measured"))));
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
                   "Len"))));
          Tree_t.Leaf
           (Localinput_symbol_t.Localinput_set_fence_symbol
             (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
               (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_target_operand_symbol
                 (Localinput_set_fence_cell_target_operand_symbol_t.Localinput_set_fence_cell_target_operand_constructor
                   "Seg_bc"))));
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

let pre_tag_bty_sof sof (s, i) = (Localinput_symbol_v.localinput_body_box_type_constructor sof = s);;
let tag_loi_bty = Tree_v.only_node_of_node_predicate_off_tree (pre_tag_bty_sof nam_ivn_lcd) tag_loi_lcd_st;;

test_number 7 (
(tag_loi_bty : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
  (Localinput_symbol_t.Localinput_body_symbol
    (Localinput_body_symbol_t.Localinput_body_box_symbol
      (Localinput_body_box_symbol_t.Localinput_body_box_type_symbol
        (Localinput_body_box_type_symbol_t.Localinput_body_box_type_constructor
          "Len_bc"))),
   [1; 2; 2; 2; 4; 48; 11])
);;

let tag_bty = Localinput_body_box_type_tag_v.localinput_body_box_type_tag_off_localinput_tag tag_loi_bty;;

test_number 8 (
(tag_bty :
  Localinput_body_box_type_symbol_t.localinput_body_box_type_symbol Tag_t.tag ) =
  (Localinput_body_box_type_symbol_t.Localinput_body_box_type_constructor "Len_bc",
   [1; 2; 2; 2; 4; 48; 11])
);;

let str_mak = Make_argument_by_localinput_body_box_type_tag_provider_v.provide tag_bty;;

test_number 9 (
(str_mak : string ) = 
"property_body_target_explicit_measured_constructor"
);;

let sym_pro_pec = Property_symbol_v.make str_mak nam_ivn_lcd;;

test_number 10 (
(sym_pro_pec : Property_symbol_t.property_symbol ) =
  Property_symbol_t.Property_body_symbol
   (Property_body_symbol_t.Property_set_body_operand_target_symbol
     (Property_set_body_operand_target_symbol_t.Property_set_body_operand_target
       (Property_set_body_operand_target_t.Property_body_target_explicit_measured_symbol
         (Property_body_target_explicit_measured_symbol_t.Property_body_target_explicit_measured_constructor
           "Len_bc"))))
);;

(* Target Symbol *)

test_number 11 (
sym_pro_pec =
property_as_operand_body_target_of_variable_name_of_localinput_command_creation_define_tag_subtree
    nam_ivn_lcd 
    tag_loi_lcd_st
);;

(* Operator_creation Leaf Subtree *)

let pre_sym_lto s = Localinput_symbol_v.is_localinput_set_fence_cell_target_operator_constructor s;;
let sym_loi_lto = Tree_v.only_node_of_node_predicate_off_tree pre_sym_lto sym_loi_lcd_st;;

test_number 12 (
( sym_loi_lto : Localinput_symbol_t.localinput_symbol ) =
  Localinput_symbol_t.Localinput_set_fence_symbol
   (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
     (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_target_operator_symbol
       (Localinput_set_fence_cell_target_operator_symbol_t.Localinput_set_fence_cell_target_operator_constructor
         "Len")))
);;

let nam_ivn_lto = Localinput_symbol_v.string_off sym_loi_lto;;

test_number 13 (
(nam_ivn_lto : string ) = 
"Len"
);;

let sym_pro_pct =
    Property_symbol_v.operator_fence_creation_constructor 
      nam_ivn_lto;;

test_number 14 (
( sym_pro_pct : Property_symbol_t.property_symbol ) =
  Property_symbol_t.Property_fence_symbol
   (Property_fence_symbol_t.Operator_fence_symbol
     (Operator_fence_symbol_t.Operator_fence_creation_symbol
       (Operator_fence_creation_symbol_t.Operator_fence_creation_constructor
         "Len")))
);;

let sym_pro_pct_f =  Tree_v.make_of_leaf sym_pro_pct;;

test_number 15 (
(sym_pro_pct_f : Property_symbol_t.property_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Operator_fence_symbol
       (Operator_fence_symbol_t.Operator_fence_creation_symbol
         (Operator_fence_creation_symbol_t.Operator_fence_creation_constructor
           "Len"))))
);;

(* Operand Subtree *)

let pre_sym_ctd s = Localinput_symbol_v.is_localinput_set_fence_cell_target_operand_constructor s;;

let sym_loi_ctd = Tree_v.only_node_of_node_predicate_off_tree pre_sym_ctd sym_loi_lcd_st;;

test_number 16 (
(sym_loi_ctd : Localinput_symbol_t.localinput_symbol ) =
  Localinput_symbol_t.Localinput_set_fence_symbol
   (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
     (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_target_operand_symbol
       (Localinput_set_fence_cell_target_operand_symbol_t.Localinput_set_fence_cell_target_operand_constructor
         "Seg_bc")))
);;

let nam_ivn_ctd = Localinput_symbol_v.string_off sym_loi_ctd;;

test_number 17 (
(nam_ivn_ctd : string ) = "Seg_bc"
);;

let sym_pro_fop =
  Property_symbol_v.property_set_fence_operand_external_constructor 
    nam_ivn_ctd
;;

test_number 18 (
(sym_pro_fop : Property_symbol_t.property_symbol ) =
  Property_symbol_t.Property_fence_symbol
   (Property_fence_symbol_t.Property_set_fence_operand_external_symbol
     (Property_set_fence_operand_external_symbol_t.Property_fence_operand_constructor
       "Seg_bc"))
);;

let sym_pro_fop_f = Tree_v.make_of_leaf sym_pro_fop;;

test_number 19 (
(sym_pro_fop_f : Property_symbol_t.property_symbol Tree_t.tree) =
Tree_t.Leaf
  (Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Property_set_fence_operand_external_symbol
	(Property_set_fence_operand_external_symbol_t.Property_fence_operand_constructor
           "Seg_bc")))
);;

(* Target Subtree *)

let sym_pro_pec_st = Tree_v.make_of_node sym_pro_pec [sym_pro_pct_f; sym_pro_fop_f];;

test_number 20 (
(sym_pro_pec_st : Property_symbol_t.property_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Property_symbol_t.Property_body_symbol
     (Property_body_symbol_t.Property_set_body_operand_target_symbol
       (Property_set_body_operand_target_symbol_t.Property_set_body_operand_target
         (Property_set_body_operand_target_t.Property_body_target_explicit_measured_symbol
           (Property_body_target_explicit_measured_symbol_t.Property_body_target_explicit_measured_constructor
             "Len_bc")))),
   [Tree_t.Leaf
     (Property_symbol_t.Property_fence_symbol
       (Property_fence_symbol_t.Operator_fence_symbol
         (Operator_fence_symbol_t.Operator_fence_creation_symbol
           (Operator_fence_creation_symbol_t.Operator_fence_creation_constructor
             "Len"))));
    Tree_t.Leaf
     (Property_symbol_t.Property_fence_symbol
       (Property_fence_symbol_t.Property_set_fence_operand_external_symbol
         (Property_set_fence_operand_external_symbol_t.Property_fence_operand_constructor
           "Seg_bc")))])
);;

test_number 21 (
sym_pro_pec_st = provide tag_lcd
);;
