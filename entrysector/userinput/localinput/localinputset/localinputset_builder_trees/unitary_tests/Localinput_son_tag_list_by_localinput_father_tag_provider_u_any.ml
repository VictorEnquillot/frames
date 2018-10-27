open Make_test_v;;

testing "Localinput_son_tag_list_by_localinput_father_tag_provider_v with
    Localinput_son_tag_list_by_localinput_father_tag_provider_u_any.ml";;

(* Deleting Registers *)



(* Tracing *)

(* toplevel 
   #use "Localinput_son_tag_list_by_localinput_father_tag_provider_u_any.ml";; 

*)

open Localinput_son_tag_list_by_localinput_father_tag_provider_v;;

let nam_ibo = "Point_a_print";;

let tag_loc_l = Localinput_tag_all_list_by_basicname_inputbox_provider_v.provide nam_ibo;;

let tag_loc = List_v.only_element_of_predicate_off_list
    (fun (s, i) -> 
      (Localinput_symbol_v.is_localinput_fence_cell_external_name_constructor s)
    )
    tag_loc_l;;

test_number 1 (
(tag_loc : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
(Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
       (Localinput_fence_cell_symbol_t.Localinput_fence_cell_external_name_symbol
         (Localinput_fence_cell_external_name_symbol_t.Localinput_fence_cell_external_name_constructor
           "T_A"))),
    [2; 2; 2; 2; 1; 28; 1; 21; 1])
);;

let soi_any = Tag_v.sole_index_off_tag tag_loc;;

let tag_ibo = Localinput_any_category_by_sole_index_extractor_v.localinput_context_inputbox_tag_off_sole_index soi_any;;
let tag_loc_ibo = Localinput_context_inputbox_tag_v.localinput_tag_of_localinput_context_inputbox_tag tag_ibo;;

test_number 2 (
(tag_loc_ibo : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
  (Localinput_symbol_t.Localinput_context_symbol
    (Localinput_context_symbol_t.Localinput_context_inputbox_symbol
      (Localinput_context_inputbox_symbol_t.Localinput_context_inputbox_constructor
        "Point_a_print")),
   [28; 1; 21; 1])
);;

let soi_loc_ibo = Tag_v.sole_index_off_tag tag_loc_ibo;;

test_number 3 (
(soi_loc_ibo : Sole_index_t.sole_index ) = 
[28; 1; 21; 1]
);;

let tag_ibo = 
    Localinput_any_category_by_sole_index_extractor_v.localinput_context_inputbox_tag_off_sole_index
      soi_loc_ibo;;

test_number 4 (
( tag_ibo :
  Localinput_context_inputbox_symbol_t.localinput_context_inputbox_symbol
  Tag_t.tag) =
  (Localinput_context_inputbox_symbol_t.Localinput_context_inputbox_constructor
    "Point_a_print", 
   [28; 1; 21; 1])
);;

let tag_loc_ibo_t = 
    Localinput_tag_tree_by_localinput_context_inputbox_tag_provider_v.provide  
      tag_ibo;;

let boo = Tree_v.is_leaf_of_node_off_tree tag_loc_ibo tag_loc_ibo_t;;

test_number 5 (
boo = false
);;

let tag_loc_ibo_st = 
	Tree_v.subtree_find_of_node_predicate_off_tree 
	  (fun t -> t = tag_loc_ibo) 
	  tag_loc_ibo_t;;

let tag_loc_ibo_tsn_l = Tree_v.topson_node_list_off_tree tag_loc_ibo_st;;

test_number 6 (
(tag_loc_ibo_tsn_l : Localinput_symbol_t.localinput_symbol Tag_t.tag list ) =
  [(Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Poi_a"))))),
    [1; 28; 1; 21; 1]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Uni_len"))))),
    [2; 28; 1; 21; 1]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Uni_ang"))))),
    [3; 28; 1; 21; 1]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_tounit_symbol
           (Localinput_body_handle_command_tounit_symbol_t.Localinput_body_handle_command_tounit_print_symbol
             (Localinput_body_handle_command_tounit_print_symbol_t.Localinput_body_handle_command_tounit_print_constructor
               "Poi_a"))))),
    [4; 28; 1; 21; 1]);
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
       (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
         (Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_stop_symbol
           (Localinput_fence_keyword_word_stop_symbol_t.Localinput_fence_keyword_word_stop_constructor
             "localinput")))),
    [5; 28; 1; 21; 1])]
);;

test_number 7 (
tag_loc_ibo_tsn_l = provide tag_loc_ibo
);;
