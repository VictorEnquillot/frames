open Make_test_v;;

testing "Localinput_variable_type_string_list_by_localinput_set_body_list_variable_type_tag_provider_v
        Localinput_variable_type_string_list_by_localinput_set_body_list_variable_type_tag_provider_u_print_aopef_he2p1.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Localinput_variable_type_string_list_by_localinput_set_body_list_variable_type_tag_provider_u_print_aopef_he2p1.ml";;

*)

open Localinput_variable_type_string_list_by_localinput_set_body_list_variable_type_tag_provider_v;;

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Print_length_segment_bc";;
let bna_ibo = Basicname_v.basicname_inputbase_of_string "local";;
let sof_ope = "Len";;
  
let tag_loi_l = Localinput_tag_all_list_by_basicname_inputbox_provider_v.provide nam_ibo;;

let pre_tag_loi_sof_lvt sof (s, i) = 
(Localinput_symbol_v.is_localinput_set_body_list_variable_type_constructor s)
&&
  (Localinput_symbol_v.string_off s = sof)
;;

let tag_loi_lvt = List_v.only_element_of_predicate_off_list (pre_tag_loi_sof_lvt sof_ope) tag_loi_l;;

test_number 1 (
( tag_loi_lvt : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
  (Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_body_symbol
      (Localinput_set_body_symbol_t.Localinput_set_body_list_symbol
        (Localinput_set_body_list_symbol_t.Localinput_set_body_list_variable_type_symbol
          (Localinput_set_body_list_variable_type_symbol_t.Localinput_set_body_list_variable_type_constructor
            "Len")))),
   [2; 1; 2; 2; 2; 6; 42; 1; 22; 1])
);;

let tag_lvt = (* Coerce Down *)
    Localinput_set_body_list_variable_type_tag_v.localinput_set_body_list_variable_type_tag_off_localinput_tag
      tag_loi_lvt;;

test_number 2 (
( tag_lvt :
    Localinput_set_body_list_variable_type_symbol_t.localinput_set_body_list_variable_type_symbol
    Tag_t.tag ) =
(Localinput_set_body_list_variable_type_symbol_t.Localinput_set_body_list_variable_type_constructor
   "Len",
  [2; 1; 2; 2; 2; 6; 42; 1; 22; 1])
);;

let tag_loi_lvt_st = Localinput_tag_subtree_by_localinput_tag_provider_v.provide tag_loi_lvt;;

test_number 3 (
(tag_loi_lvt_st :
  Localinput_symbol_t.localinput_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Localinput_symbol_t.Localinput_set_symbol
      (Localinput_set_symbol_t.Localinput_set_body_symbol
        (Localinput_set_body_symbol_t.Localinput_set_body_list_symbol
          (Localinput_set_body_list_symbol_t.Localinput_set_body_list_variable_type_symbol
            (Localinput_set_body_list_variable_type_symbol_t.Localinput_set_body_list_variable_type_constructor
              "Len")))),
     [2; 1; 2; 2; 2; 6; 42; 1; 22; 1]),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
           (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
             (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
               "operator")))),
      [1; 2; 1; 2; 2; 2; 6; 42; 1; 22; 1]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
           (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
             (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
               "set")))),
      [2; 2; 1; 2; 2; 2; 6; 42; 1; 22; 1]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
           (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
             (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
               "body")))),
      [3; 2; 1; 2; 2; 2; 6; 42; 1; 22; 1]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
           (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
             (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
               "creation")))),
      [4; 2; 1; 2; 2; 2; 6; 42; 1; 22; 1]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
           (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
             (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
               "measure")))),
      [5; 2; 1; 2; 2; 2; 6; 42; 1; 22; 1]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
           (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
             (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
               "constructor")))),
      [6; 2; 1; 2; 2; 2; 6; 42; 1; 22; 1])])
);;

let pre_tag_bwl (s, i) = Localinput_symbol_v.is_localinput_set_fence_basic_word_lowercase_constructor s;;
let tag_loi_bwl_l = 
    Tree_v.node_list_of_node_predicate_off_tree  
      pre_tag_bwl 
      tag_loi_lvt_st ;;

let str_l = List.map Localinput_tag_v.string_off tag_loi_bwl_l;;

test_number 4 (
(str_l : string list) =
  ["operator"; "set"; "body"; "creation"; "measure"; "constructor"]
);;

test_number 5 (
str_l = provide tag_lvt
);;
