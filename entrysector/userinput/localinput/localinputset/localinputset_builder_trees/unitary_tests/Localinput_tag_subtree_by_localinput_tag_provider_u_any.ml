open Make_test_v;;

testing "Localinput_tag_subtree_by_localinput_tag_provider_v with
        Localinput_tag_subtree_by_localinput_tag_provider_u_any.ml";;

(* Deleting Registers *)



(* Tracing *)

(* toplevel 
   #use "Localinput_tag_subtree_by_localinput_tag_provider_u_any.ml";; 

*)

open Localinput_tag_subtree_by_localinput_tag_provider_v;;

let nam_ibo = "Point_a_print";;
let tag_loc_l = Localinput_tag_all_list_by_basicname_inputbox_provider_v.provide nam_ibo;;

let tag_loc_BAsl = List.filter 
    (fun (s, i) -> (Localinput_symbol_v.string_off s = "Poi_a") 
	&& (Localinput_symbol_v.is_localinput_body_symbol_off_localinput_symbol s)
    )
    tag_loc_l;;

test_number 1 (
(tag_loc_BAsl : Localinput_symbol_t.localinput_symbol Tag_t.tag list ) =
  [(Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Poi_a"))))),
    [1; 28; 1; 21; 1]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_block_symbol
       (Localinput_body_block_symbol_t.Localinput_body_block_define_symbol
         (Localinput_body_block_define_symbol_t.Localinput_body_block_define_constructor
           "Poi_a"))),
    [2; 1; 28; 1; 21; 1]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_variable_kind_symbol
         (Localinput_body_handle_variable_kind_symbol_t.Localinput_body_handle_variable_external_symbol
           (Localinput_body_handle_variable_external_symbol_t.Localinput_body_handle_variable_external_constructor
             "Poi_a")))),
    [2; 2; 1; 28; 1; 21; 1]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_block_symbol
       (Localinput_body_block_symbol_t.Localinput_body_block_variable_external_symbol
         (Localinput_body_block_variable_external_symbol_t.Localinput_body_block_variable_external_constructor
           "Poi_a"))),
    [2; 2; 2; 1; 28; 1; 21; 1]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_box_symbol
       (Localinput_body_box_symbol_t.Localinput_body_box_type_symbol
         (Localinput_body_box_type_symbol_t.Localinput_body_box_type_constructor
           "Poi_a"))),
    [1; 2; 2; 2; 1; 28; 1; 21; 1]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_tounit_symbol
           (Localinput_body_handle_command_tounit_symbol_t.Localinput_body_handle_command_tounit_print_symbol
             (Localinput_body_handle_command_tounit_print_symbol_t.Localinput_body_handle_command_tounit_print_constructor
               "Poi_a"))))),
    [4; 28; 1; 21; 1]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_block_symbol
       (Localinput_body_block_symbol_t.Localinput_body_block_print_symbol
         (Localinput_body_block_print_symbol_t.Localinput_body_block_print_constructor
           "Poi_a"))),
    [2; 4; 28; 1; 21; 1]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_box_symbol
       (Localinput_body_box_symbol_t.Localinput_body_box_units_symbol
         (Localinput_body_box_units_symbol_t.Localinput_body_box_units_constructor
           "Poi_a"))),
    [2; 2; 4; 28; 1; 21; 1])]
);;

let tag_loc_FAsl = List.filter 
    (fun (s, i) -> (Localinput_symbol_v.string_off s = "Poi_a") 
	&& (Localinput_symbol_v.is_localinput_fence_symbol_off_localinput_symbol s)
    )
    tag_loc_l;;

test_number 2 (
(tag_loc_FAsl : Localinput_symbol_t.localinput_symbol Tag_t.tag list ) =
  [(Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
       (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_command_symbol
         (Localinput_fence_keyword_command_symbol_t.Localinput_fence_keyword_command_define_symbol
           (Localinput_fence_keyword_command_define_symbol_t.Localinput_fence_keyword_command_define_constructor
             "Poi_a")))),
    [1; 1; 28; 1; 21; 1]);
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
       (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
         (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
           (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
             "Poi_a")))),
    [1; 2; 1; 28; 1; 21; 1]);
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
       (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_variable_kind_symbol
         (Localinput_fence_keyword_variable_kind_symbol_t.Localinput_fence_keyword_variable_kind_external_symbol
           (Localinput_fence_keyword_variable_kind_external_symbol_t.Localinput_fence_keyword_variable_kind_external_constructor
             "Poi_a")))),
    [1; 2; 2; 1; 28; 1; 21; 1]);
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
       (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
         (Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_type_symbol
           (Localinput_fence_keyword_word_type_symbol_t.Localinput_fence_keyword_word_type_constructor
             "Poi_a")))),
    [1; 1; 2; 2; 2; 1; 28; 1; 21; 1]);
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
       (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_command_symbol
         (Localinput_fence_keyword_command_symbol_t.Localinput_fence_keyword_command_print_symbol
           (Localinput_fence_keyword_command_print_symbol_t.Localinput_fence_keyword_command_print_constructor
             "Poi_a")))),
    [1; 4; 28; 1; 21; 1]);
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
       (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
         (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_implicit_symbol
           (Localinput_fence_variable_name_entity_implicit_symbol_t.Localinput_fence_variable_name_entity_implicit_constructor
             "Poi_a")))),
    [1; 2; 4; 28; 1; 21; 1]);
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
       (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
         (Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_units_symbol
           (Localinput_fence_keyword_word_units_symbol_t.Localinput_fence_keyword_word_units_constructor
             "Poi_a")))),
    [1; 2; 2; 4; 28; 1; 21; 1])]
);;

let tag_loc = List.hd tag_loc_BAsl;;

test_number 3 (
(tag_loc : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
  (Localinput_symbol_t.Localinput_body_symbol
    (Localinput_body_symbol_t.Localinput_body_handle_symbol
      (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
        (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
          (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
            (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
              "Poi_a"))))),
   [1; 28; 1; 21; 1])
);;

let soi_loc = Tag_v.sole_index_off_tag tag_loc ;;

test_number 4 (
(soi_loc : Sole_index_t.sole_index ) = 
[1; 28; 1; 21; 1]
);;

let tag_ibo = Localinput_context_inputbox_tag_by_basicname_inputbox_provider_v.provide nam_ibo;;

test_number 5 (
(tag_ibo :
  Localinput_context_inputbox_symbol_t.localinput_context_inputbox_symbol
  Tag_t.tag ) =
  (Localinput_context_inputbox_symbol_t.Localinput_context_inputbox_constructor
    "Point_a_print",
   [28; 1; 21; 1])
);;

let tag_loc_t = Localinput_tag_tree_by_localinput_context_inputbox_tag_provider_v.provide tag_ibo;;

let tag_loc_st = Tree_v.subtree_of_node_predicate_off_tree (fun t -> t = tag_loc) tag_loc_t;;
let tag_lea_l = Tree_v.leaf_node_list_off_tree tag_loc_st;;

let tag_clo_l = List.filter 
    (fun (s, i) -> (Localinput_symbol_v.is_localinput_fence_symbol_off_localinput_symbol s) )  
    tag_lea_l;;

let tag_loc_fen = List.hd tag_clo_l;;

test_number 6 (
(tag_loc_fen : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
 (Localinput_symbol_t.Localinput_fence_symbol
    (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
      (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_command_symbol
        (Localinput_fence_keyword_command_symbol_t.Localinput_fence_keyword_command_define_symbol
          (Localinput_fence_keyword_command_define_symbol_t.Localinput_fence_keyword_command_define_constructor
            "Poi_a")))),
   [1; 1; 28; 1; 21; 1])
);;

let tag_pat = List.rev (Tree_v.path_of_node_predicate_off_tree (fun t -> t = tag_loc_fen) tag_loc_t);;

test_number 7 (
( tag_pat : Localinput_symbol_t.localinput_symbol Tag_t.tag list ) =
 [(Localinput_symbol_t.Localinput_context_symbol
     (Localinput_context_symbol_t.Localinput_context_sector_symbol
       (Localinput_context_sector_symbol_t.Localinput_context_sector_constructor
         "entry")),
    [1]);
   (Localinput_symbol_t.Localinput_context_symbol
     (Localinput_context_symbol_t.Localinput_context_domain_symbol
       (Localinput_context_domain_symbol_t.Localinput_context_domain_constructor
         "user")),
    [21; 1]);
   (Localinput_symbol_t.Localinput_context_symbol
     (Localinput_context_symbol_t.Localinput_context_inputbase_symbol
       (Localinput_context_inputbase_symbol_t.Localinput_context_inputbase_constructor
         "local")),
    [1; 21; 1]);
   (Localinput_symbol_t.Localinput_context_symbol
     (Localinput_context_symbol_t.Localinput_context_inputbox_symbol
       (Localinput_context_inputbox_symbol_t.Localinput_context_inputbox_constructor
         "Point_a_print")),
    [28; 1; 21; 1]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Poi_a"))))),
    [1; 28; 1; 21; 1]);
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
       (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_command_symbol
         (Localinput_fence_keyword_command_symbol_t.Localinput_fence_keyword_command_define_symbol
           (Localinput_fence_keyword_command_define_symbol_t.Localinput_fence_keyword_command_define_constructor
             "Poi_a")))),
    [1; 1; 28; 1; 21; 1])]
);;
