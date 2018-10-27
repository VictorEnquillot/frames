open Make_test_v;;

testing "Localinput_tag_tree_by_localinput_context_inputbox_tag_provider_v with
    Localinput_tag_tree_by_localinput_context_inputbox_tag_provider_u_any.ml";;

(* Deleting Registers *)



(* Tracing *)

(* toplevel 
   #use "Localinput_tag_tree_by_localinput_context_inputbox_tag_provider_u_any.ml";; 

*)

open Localinput_tag_tree_by_localinput_context_inputbox_tag_provider_v;;

let nam_ibo = "Point_a_print";;
let nam_mod = "Localinput_tag_tree_by_localinput_context_inputbox_tag_provider_u_any";;

let (tag_loc_ibo, tag_loc_iba, tag_loc_lcd, tag_loc_dcs) =
    Localinput_as_context_tag_quatuor_by_basicname_inputbox_provider_v.provide
      nam_ibo;;

let tag_loc_q = (tag_loc_ibo, tag_loc_iba, tag_loc_lcd, tag_loc_dcs);;

test_number 1 (
(tag_loc_q :
  Localinput_symbol_t.localinput_symbol Tag_t.tag *
  Localinput_symbol_t.localinput_symbol Tag_t.tag *
  Localinput_symbol_t.localinput_symbol Tag_t.tag *
  Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
  ((Localinput_symbol_t.Localinput_context_symbol
     (Localinput_context_symbol_t.Localinput_context_inputbox_symbol
       (Localinput_context_inputbox_symbol_t.Localinput_context_inputbox_constructor
         "Point_a_print")),
    [28; 1; 21; 1]),
   (Localinput_symbol_t.Localinput_context_symbol
     (Localinput_context_symbol_t.Localinput_context_inputbase_symbol
       (Localinput_context_inputbase_symbol_t.Localinput_context_inputbase_constructor
         "local")),
    [1; 21; 1]),
   (Localinput_symbol_t.Localinput_context_symbol
     (Localinput_context_symbol_t.Localinput_context_domain_symbol
       (Localinput_context_domain_symbol_t.Localinput_context_domain_constructor
         "user")),
    [21; 1]),
   (Localinput_symbol_t.Localinput_context_symbol
     (Localinput_context_symbol_t.Localinput_context_sector_symbol
       (Localinput_context_sector_symbol_t.Localinput_context_sector_constructor
         "entry")),
    [1]))
);;

let sym_loc_ibo_st =
  Localinput_symbol_subtree_by_basicname_inputbox_provider_v.provide
    nam_ibo;;

let sym_loc_rtl = Tree_v.root_topson_node_list_off_tree sym_loc_ibo_st;;

test_number 2 (
( sym_loc_rtl : Localinput_symbol_t.localinput_symbol list ) =
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

let soi_loc_ibo = Tag_v.sole_index_off_tag tag_loc_ibo;;

test_number 3 (
(soi_loc_ibo : Sole_index_t.sole_index ) = 
[28; 1; 21; 1]
);;

let soi_loc_ibo_st =
  Sole_index_v.sole_index_tree_of_tree_of_root_sole_index 
    sym_loc_ibo_st 
    soi_loc_ibo 
;;

let soi_loc_rtl = Tree_v.root_topson_node_list_off_tree soi_loc_ibo_st;;

test_number 4 (
(soi_loc_rtl : Sole_index_t.sole_index list ) =
  [[28; 1; 21; 1]; [1; 28; 1; 21; 1]; [2; 28; 1; 21; 1]; [3; 28; 1; 21; 1];
   [4; 28; 1; 21; 1]; [5; 28; 1; 21; 1]]
);;

let tag_loc_ibo_st = Tree_v.map2 Tag_v.make sym_loc_ibo_st soi_loc_ibo_st;;
  
let tag_loc_iba_st = Tree_v.make_of_node tag_loc_iba [tag_loc_ibo_st];;
  
let tag_loc_lcd_st = Tree_v.make_of_node tag_loc_lcd [tag_loc_iba_st];;
 
let tag_loc_t = Tree_v.make_of_node tag_loc_dcs [tag_loc_lcd_st];;

(* Analysis *)

let tag_loc_rtl = Tree_v.root_topson_node_list_off_tree tag_loc_t;;

test_number 5 (
(tag_loc_rtl : Localinput_symbol_t.localinput_symbol Tag_t.tag list ) =
  [(Localinput_symbol_t.Localinput_context_symbol
     (Localinput_context_symbol_t.Localinput_context_sector_symbol
       (Localinput_context_sector_symbol_t.Localinput_context_sector_constructor
         "entry")),
    [1]);
   (Localinput_symbol_t.Localinput_context_symbol
     (Localinput_context_symbol_t.Localinput_context_domain_symbol
       (Localinput_context_domain_symbol_t.Localinput_context_domain_constructor
         "user")),
    [21; 1])]
);;

let tag_loc_top_l = Tree_v.node_list_of_node_predicate_off_tree (fun (s, i) -> List.length i <= 5) tag_loc_t;;

test_number 6 (
(tag_loc_top_l : Localinput_symbol_t.localinput_symbol Tag_t.tag list ) =
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
(* let tag_lea_l = List.filter (fun (s, i) -> not ( *)
(*   (Localinput_symbol_v.is_localinput_comment_reference s)  *)
(* || (Localinput_symbol_v.is_localinput_body_keyword_symbol_off_localinput_symbol s)  *)
(* || (Localinput_symbol_v.is_localinput_comment_symbol_off_localinput_symbol s)  *)
(* ) ) tag_lea_l;; *)

let tag_clo_l = List.filter (fun (s, i) -> (Localinput_symbol_v.is_localinput_fence_symbol_off_localinput_symbol s) )  tag_lea_l;;

let soi_nfe = [2; 3; 1; 2; 28; 1; 21; 1] ;;

let tag_nfe = Localinput_any_category_by_sole_index_extractor_v.localinput_fence_tag_off_sole_index soi_nfe;;
let tag_loc_fen = Tag_v.map_entity Localinput_symbol_v.localinput_symbol_of_localinput_fence_symbol tag_nfe;;

test_number 7 (
(tag_loc_fen : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
  (Localinput_symbol_t.Localinput_fence_symbol
    (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
      (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_command_symbol
        (Localinput_fence_keyword_command_symbol_t.Localinput_fence_keyword_command_define_symbol
          (Localinput_fence_keyword_command_define_symbol_t.Localinput_fence_keyword_command_define_constructor
            "Uni_len")))),
   [1; 2; 28; 1; 21; 1])
);;

let tag_pat = List.rev (Tree_v.path_of_node_predicate_off_tree (fun t -> t = tag_loc_fen) tag_loc_t);;

test_number 8 (
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
               "Uni_len"))))),
    [2; 28; 1; 21; 1]);
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
       (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_command_symbol
         (Localinput_fence_keyword_command_symbol_t.Localinput_fence_keyword_command_define_symbol
           (Localinput_fence_keyword_command_define_symbol_t.Localinput_fence_keyword_command_define_constructor
             "Uni_len")))),
    [1; 2; 28; 1; 21; 1])]
);;
