open Make_test_v;;

testing "Localinput_body_box_type_string_list_by_input_body_box_type_tag_provider_v with
    Localinput_body_box_type_string_list_by_input_body_box_type_tag_provider_u_point_homothety.ml";;

(* Deleting Registers *)




(* Tracing *)


(* Debuging *)


(* toplevel 
   #use "Localinput_body_box_type_string_list_by_input_body_box_type_tag_provider_u_point_homothety.ml";; 

*)

(* Input File *)

let nof_inp = "Print_homothety_point_a.inp";;
let fno_inp = Localinput_fullnameoffile_by_input_nameoffile_provider_v.provide nof_inp;;

open Localinput_body_box_type_string_list_by_input_body_box_type_tag_provider_v;;

let tag_inp_l = Localinput_tag_all_list_by_input_fullnameoffile_provider_v.provide fno_inp;;

let pre_tag_bbt (s, i) = Localinput_symbol_v.is_input_body_box_type_constructor s;;
let pre_tag_bbt_sof sof (s, i) = (Localinput_symbol_v.input_body_box_type_constructor sof = s);;

let tag_inp_bbt = List_v.only_element_of_predicate_off_list (pre_tag_bbt_sof "Hom_b_2") tag_inp_l;;

test_number 1 (
(tag_inp_bbt : Localinput_symbol_t.input_symbol Tag_t.tag ) =
  (Localinput_symbol_t.Localinput_body_symbol
    (Localinput_body_symbol_t.Localinput_body_box_symbol
      (Localinput_body_box_symbol_t.Localinput_body_box_type_symbol
        (Localinput_body_box_type_symbol_t.Localinput_body_box_type_constructor
          "Hom_b_2"))),
   [1; 2; 2; 2; 5; 38; 11])
);;

(* Argument *)
let tag_bbt = Localinput_body_box_type_tag_v.input_body_box_type_tag_off_input_tag tag_inp_bbt;;

let tag_inp_bbt_st = Localinput_tag_subtree_by_input_as_root_tag_provider_v.provide tag_inp_bbt;;

test_number 2 (
(tag_inp_bbt_st : Localinput_symbol_t.input_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Localinput_symbol_t.Localinput_body_symbol
      (Localinput_body_symbol_t.Localinput_body_box_symbol
        (Localinput_body_box_symbol_t.Localinput_body_box_type_symbol
          (Localinput_body_box_type_symbol_t.Localinput_body_box_type_constructor
            "Hom_b_2"))),
     [1; 2; 2; 2; 5; 38; 11]),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
         (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
           Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_type)),
      [1; 1; 2; 2; 2; 5; 38; 11]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
         (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
           (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
             "operator"))),
      [2; 1; 2; 2; 2; 5; 38; 11]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
         (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
           (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
             "body"))),
      [3; 1; 2; 2; 2; 5; 38; 11]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
         (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
           (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
             "creation"))),
      [4; 1; 2; 2; 2; 5; 38; 11]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
         (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
           (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
             "transformation"))),
      [5; 1; 2; 2; 2; 5; 38; 11]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
         (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
           (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
             "constructor"))),
      [6; 1; 2; 2; 2; 5; 38; 11])])
);;

let pre_tag_bwl (s, i) = Localinput_symbol_v.is_input_fence_basic_word_lowercase_constructor s ;;

let tag_inp_bwl_l = 
    Tree_v.node_list_of_node_predicate_off_tree  
      pre_tag_bwl 
      tag_inp_bbt_st ;;

test_number 3 (
( tag_inp_bwl_l : Localinput_symbol_t.input_symbol Tag_t.tag list ) =
  [(Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
       (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
         (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
           "operator"))),
    [2; 1; 2; 2; 2; 5; 38; 11]);
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
       (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
         (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
           "body"))),
    [3; 1; 2; 2; 2; 5; 38; 11]);
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
       (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
         (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
           "creation"))),
    [4; 1; 2; 2; 2; 5; 38; 11]);
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
       (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
         (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
           "transformation"))),
    [5; 1; 2; 2; 2; 5; 38; 11]);
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
       (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
         (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
           "constructor"))),
    [6; 1; 2; 2; 2; 5; 38; 11])]
);;

let str_l = List.map Localinput_tag_v.string_off tag_inp_bwl_l ;;

test_number 4 (
(str_l : string list ) = 
  ["operator"; "body"; "creation"; "transformation"; "constructor"]
);; 

test_number 5 (
str_l = provide tag_bbt
);;
