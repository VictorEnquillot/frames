open Make_test_v;;

testing "Localinput_symbol_subtree_by_localinput_context_inputbox_tag_provider_v with
    Localinput_symbol_subtree_by_localinput_context_inputbox_tag_provider_u_any.ml";;

(* Deleting Registers *)


(* Tracing *)

(* toplevel 
   #use "Localinput_symbol_subtree_by_localinput_context_inputbox_tag_provider_u_any.ml";; 

*)

open Localinput_symbol_subtree_by_localinput_context_inputbox_tag_provider_v;;

let nam_ibo = "Point_a_print";;
 
let tag_ibo = Localinput_context_inputbox_tag_by_basicname_inputbox_provider_v.provide nam_ibo;;

test_number 1 ( 
(tag_ibo :
  Localinput_context_inputbox_symbol_t.localinput_context_inputbox_symbol Tag_t.tag ) =
  (Localinput_context_inputbox_symbol_t.Localinput_context_inputbox_constructor
    "Point_a_print",
   [28; 1; 21; 1])
);;

test_number 2 (
nam_ibo = Localinput_context_inputbox_tag_v.string_off tag_ibo 
);;

let sym_loc_st = 
  Localinput_parser_v.localinput_symbol_tree_root_inputbox_of_basicname_inputbox 
    nam_ibo;;

let tag_loc_rtl = Tree_v.root_topson_node_list_off_tree sym_loc_st;;

test_number 3 (
(tag_loc_rtl : Localinput_symbol_t.localinput_symbol list ) =
  [Localinput_symbol_t.Localinput_context_symbol
    (Localinput_context_symbol_t.Localinput_context_inputbox_symbol
      (Localinput_context_inputbox_symbol_t.Localinput_context_inputbox_constructor
        "Point_a_print"));
   Localinput_symbol_t.Localinput_body_symbol
    (Localinput_body_symbol_t.Localinput_body_handle_symbol
      (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
        (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
          (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
            (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
              "Poi_a")))));
   Localinput_symbol_t.Localinput_body_symbol
    (Localinput_body_symbol_t.Localinput_body_handle_symbol
      (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
        (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
          (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
            (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
              "Uni_len")))));
   Localinput_symbol_t.Localinput_body_symbol
    (Localinput_body_symbol_t.Localinput_body_handle_symbol
      (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
        (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
          (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
            (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
              "Uni_ang")))));
   Localinput_symbol_t.Localinput_body_symbol
    (Localinput_body_symbol_t.Localinput_body_handle_symbol
      (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
        (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_tounit_symbol
          (Localinput_body_handle_command_tounit_symbol_t.Localinput_body_handle_command_tounit_print_symbol
            (Localinput_body_handle_command_tounit_print_symbol_t.Localinput_body_handle_command_tounit_print_constructor
              "Poi_a")))));
   Localinput_symbol_t.Localinput_fence_symbol
    (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
      (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
        (Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_stop_symbol
          (Localinput_fence_keyword_word_stop_symbol_t.Localinput_fence_keyword_word_stop_constructor
            "localinput"))))]
);;

test_number 4 (
sym_loc_st = provide tag_ibo
);;
