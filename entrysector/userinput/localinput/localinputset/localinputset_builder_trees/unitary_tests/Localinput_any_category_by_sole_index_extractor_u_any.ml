open Make_test_v;;

testing "Localinput_any_category_by_sole_index_extractor_v with
    Localinput_any_category_by_sole_index_extractor_u_any.ml";;

(* Deleting Registers *)



(* Tracing *)

(* toplevel 
   #use "Localinput_any_category_by_sole_index_extractor_u_any.ml";; 

*)

open Localinput_any_category_by_sole_index_extractor_v;;

let nam_ibo = "Point_a_print";;
 
let tag_loc_l = Localinput_tag_all_list_by_basicname_inputbox_provider_v.provide nam_ibo;;
let soi_loc_l = Doublet_list_v.right_list_off_doublet_list tag_loc_l;;

let soi_top_l = List.filter (fun i -> List.length i <= 5) soi_loc_l;;
test_number 1 (
(soi_top_l : Sole_index_t.sole_index list ) =
  [[1]; [21; 1]; [1; 21; 1]; [28; 1; 21; 1]; [1; 28; 1; 21; 1];
   [2; 28; 1; 21; 1]; [3; 28; 1; 21; 1]; [4; 28; 1; 21; 1];
   [5; 28; 1; 21; 1]]
);;

let soi_any = List.nth soi_loc_l 7;;

test_number 2 (
(soi_any : int list ) = 
[1; 2; 1; 28; 1; 21; 1]
);;

let tag_loc_t = 
    Localinput_tag_tree_by_basicname_inputbox_provider_v.provide
    nam_ibo;;

let tag_top_l = List.filter (fun (s, i) -> List.length i <= 5) tag_loc_l;;

test_number 3 (
( tag_top_l : Localinput_symbol_t.localinput_symbol Tag_t.tag list ) =
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

let tag_lea_l = Tree_v.leaf_node_list_off_tree tag_loc_t;;

let tag_clo_l = List.filter (fun (s, i) -> (Localinput_symbol_v.is_localinput_fence_keyword_word_stop_constructor s) )  tag_lea_l;;

test_number 4 (
(tag_clo_l : Localinput_symbol_t.localinput_symbol Tag_t.tag list ) =
  [(Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
       (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
         (Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_stop_symbol
           (Localinput_fence_keyword_word_stop_symbol_t.Localinput_fence_keyword_word_stop_constructor
             "localinput")))),
    [5; 28; 1; 21; 1])]
);;

let tag_loc_fen = List_v.only_element_of_predicate_off_list (fun (s, i) -> i = soi_any) tag_loc_l ;; 

test_number 5 (
(tag_loc_fen : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
  (Localinput_symbol_t.Localinput_fence_symbol
    (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
      (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
        (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
          (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
            "Poi_a")))),
   [1; 2; 1; 28; 1; 21; 1])
);;

let tag_pat_fen = List.rev (Tree_v.path_of_node_predicate_off_tree (fun t -> t = tag_loc_fen) tag_loc_t);;

test_number 6 (
(tag_pat_fen : Localinput_symbol_t.localinput_symbol Tag_t.tag list ) =
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
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_block_symbol
       (Localinput_body_block_symbol_t.Localinput_body_block_define_symbol
         (Localinput_body_block_define_symbol_t.Localinput_body_block_define_constructor
           "Poi_a"))),
    [2; 1; 28; 1; 21; 1]);
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
       (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
         (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
           (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
             "Poi_a")))),
    [1; 2; 1; 28; 1; 21; 1])]
);;

let not_only_one_l = List.filter  
    (fun (s, i) -> Localinput_symbol_v.is_localinput_fence_symbol_off_localinput_symbol s)
    tag_pat_fen;; 

test_number 7 (
( not_only_one_l :
  Localinput_symbol_t.localinput_symbol Tag_t.tag list ) =
  [(Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
       (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
         (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
           (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
             "Poi_a")))),
    [1; 2; 1; 28; 1; 21; 1])]
);;

let nam_ibo = localinput_context_inputbox_string_off_off_sole_index soi_any;;

test_number 8 (
(nam_ibo : string ) = 
"Point_a_print"
);;

let nam_dba = localinput_context_inputbase_string_off_off_sole_index soi_any;;

test_number 9 (
(nam_dba : string ) = 
"local"
);;

let nam_dcd = localinput_context_domain_string_off_off_sole_index soi_any;;

test_number 10 (
(nam_dcd : string ) = 
"user"
);;

let nam_ncs = localinput_context_sector_string_off_off_sole_index soi_any;;

test_number 11 (
(nam_ncs : string ) = 
"entry"
);;
