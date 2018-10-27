open Make_test_v;;

testing "Localinput_tag_subtree_by_localinput_as_root_tag_provider_v with
    Localinput_tag_subtree_by_localinput_as_root_tag_provider_u_point_homothety_n_translation.ml";;

(* Deleting Registers *)

(* Tracing *)

(* Debuging *)

(* toplevel 
   #use "Localinput_tag_subtree_by_localinput_as_root_tag_provider_u_point_homothety_n_translation.ml";; 

*)

(* Input File *)

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Print_coordinate_tuple_point_t_a";;
let fno_inp = Localinputbox_name_by_localinput_nameoffile_provider_v.provide nam_ibo;;

let tag_loi_l = Localinput_tag_all_list_by_basicname_inputbox_provider_v.provide fno_inp;;

open Localinput_tag_subtree_by_localinput_as_root_tag_provider_v;;

let pre_tag_bty (s, i) = Localinput_symbol_v.is_localinput_body_box_type_constructor s;;

let tag_loi_bty_l = List.filter pre_tag_bty tag_loi_l;;

test_number 1 (
(tag_loi_bty_l : Localinput_symbol_t.localinput_symbol Tag_t.tag list ) =
 [(Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_box_symbol
       (Localinput_body_box_symbol_t.Localinput_body_box_type_symbol
         (Localinput_body_box_type_symbol_t.Localinput_body_box_type_constructor
           "Ctc_a"))),
    [1; 2; 2; 2; 2; 31; 12]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_box_symbol
       (Localinput_body_box_symbol_t.Localinput_body_box_type_symbol
         (Localinput_body_box_type_symbol_t.Localinput_body_box_type_constructor
           "Uni_len"))),
    [1; 2; 2; 2; 3; 31; 12])]
);;

(* Box_type "Ctc_a" *)

let pre_tag_bty_sof sof (s, i) = (Localinput_symbol_v.localinput_body_box_type_constructor sof = s);;

let tag_loi_bty_ctc_a = List_v.only_element_of_predicate_off_list (pre_tag_bty_sof "Ctc_a") tag_loi_l;;
let tag_loi_bty_ctc_a_st = provide tag_loi_bty_ctc_a;;
  
test_number 2 (
(tag_loi_bty_ctc_a_st : Localinput_symbol_t.localinput_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Localinput_symbol_t.Localinput_body_symbol
      (Localinput_body_symbol_t.Localinput_body_box_symbol
        (Localinput_body_box_symbol_t.Localinput_body_box_type_symbol
          (Localinput_body_box_type_symbol_t.Localinput_body_box_type_constructor
            "Ctc_a"))),
     [1; 2; 2; 2; 2; 31; 12]),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
         (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
           (Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_type_symbol
             (Localinput_fence_keyword_word_type_symbol_t.Localinput_fence_keyword_word_type_constructor
               "Ctc_a")))),
      [1; 1; 2; 2; 2; 2; 31; 12]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
         (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
           (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
             "elementary"))),
      [2; 1; 2; 2; 2; 2; 31; 12]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
         (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
           (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
             "coordinate_tuple"))),
      [3; 1; 2; 2; 2; 2; 31; 12]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
         (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
           (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
             "cartesian"))),
      [4; 1; 2; 2; 2; 2; 31; 12]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
         (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
           (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
             "constructor"))),
      [5; 1; 2; 2; 2; 2; 31; 12])])
);;

(* input_fence_variable_name_entity_external *)

let pre_tag_nee (s, i) = Localinput_symbol_v.is_localinput_fence_variable_name_entity_external_constructor s;;

let tag_loi_nee_l = List.filter pre_tag_nee tag_loi_l;;

test_number 3 (
(tag_loi_nee_l : Localinput_symbol_t.localinput_symbol Tag_t.tag list ) =
  [(Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
       (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
         (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
           (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
             "Ctc_a")))),
    [1; 2; 2; 31; 12]);
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
       (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
         (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
           (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
             "Uni_len")))),
    [1; 2; 3; 31; 12]);
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
       (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
         (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
           (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
             "Uni_len")))),
    [2; 2; 2; 4; 31; 12])]
);;

(* input_fence_variable_name_entity_external "Ctc_a" *)

let pre_tag_nee_sof sof (s, i) = (Localinput_symbol_v.localinput_fence_variable_name_entity_external_constructor sof = s);;

let tag_loi_nee_ctc_a = List_v.only_element_of_predicate_off_list (pre_tag_nee_sof "Ctc_a") tag_loi_l;;
let tag_loi_nee_ctc_a_st = provide tag_loi_nee_ctc_a;;
  
test_number 4 (
(tag_loi_nee_ctc_a_st : Localinput_symbol_t.localinput_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Leaf
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
       (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
         (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
           (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
             "Ctc_a")))),
    [1; 2; 2; 31; 12])
);;
