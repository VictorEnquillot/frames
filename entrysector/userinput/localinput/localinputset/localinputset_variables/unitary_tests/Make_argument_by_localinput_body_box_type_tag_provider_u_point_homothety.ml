open Make_test_v;;

testing "Make_argument_by_localinput_body_box_type_tag_provider_v with
    Make_argument_by_localinput_body_box_type_tag_provider_u_point_homothety.ml";;

(* Deleting Registers *)




(* Tracing *)


(* Debuging *)


(* toplevel 
   #use "Make_argument_by_localinput_body_box_type_tag_provider_u_point_homothety.ml";; 

*)

(* Input File *)

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Print_homothety_point_a";;
let fno_inp = Localinputbox_name_by_localinput_nameoffile_provider_v.provide nam_ibo;;

open Make_argument_by_localinput_body_box_type_tag_provider_v;;

let tag_loi_l = Localinput_tag_all_list_by_basicname_inputbox_provider_v.provide fno_inp;;

let pre_tag_bty (s, i) = Localinput_symbol_v.is_localinput_body_box_type_constructor s;;
let pre_tag_bty_sof sof (s, i) = (Localinput_symbol_v.localinput_body_box_type_constructor sof = s);;

let tag_loi_bty = List_v.only_element_of_predicate_off_list (pre_tag_bty_sof "Hom_b_2") tag_loi_l;;

test_number 1 (
(tag_loi_bty : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
  (Localinput_symbol_t.Localinput_body_symbol
    (Localinput_body_symbol_t.Localinput_body_box_symbol
      (Localinput_body_box_symbol_t.Localinput_body_box_type_symbol
        (Localinput_body_box_type_symbol_t.Localinput_body_box_type_constructor
          "Hom_b_2"))),
   [1; 2; 2; 2; 5; 38; 11])
);;

let tag_loi_bty_st = Localinput_tag_subtree_by_localinput_as_root_tag_provider_v.provide tag_loi_bty;;

test_number 2 (
(tag_loi_bty_st : Localinput_symbol_t.localinput_symbol Tag_t.tag Tree_t.tree ) =
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

let pre_tag_bwl (s, i) = Localinput_symbol_v.is_localinput_fence_basic_word_lowercase_constructor s ;;

let tag_loi_bwl_l = 
    Tree_v.node_list_of_node_predicate_off_tree  
      pre_tag_bwl 
      tag_loi_bty_st ;;

test_number 3 (
( tag_loi_bwl_l : Localinput_symbol_t.localinput_symbol Tag_t.tag list ) =
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

let wor_bty_l = List.map Localinput_tag_v.string_off tag_loi_bwl_l ;;

test_number 4 (
(wor_bty_l : string list ) = 
  ["operator"; "body"; "creation"; "transformation"; "constructor"]
);; 

let arg_mak = List_v.name_underscored_off_string_list wor_bty_l;;

test_number 5 (
(arg_mak : string ) = 
"operator_body_creation_transformation_constructor"
);; 
