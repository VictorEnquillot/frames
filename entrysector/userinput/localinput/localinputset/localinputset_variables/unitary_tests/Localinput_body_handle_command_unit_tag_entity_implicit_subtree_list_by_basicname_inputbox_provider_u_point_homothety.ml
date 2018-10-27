open Make_test_v;;

testing "Localinput_body_handle_command_unit_tag_entity_implicit_subtree_list_by_basicname_inputbox_provider_v with
    Localinput_body_handle_command_unit_tag_entity_implicit_subtree_list_by_basicname_inputbox_provider_u_point_homothety.ml";;

(* Deleting Registers *)








(* Tracing *)


(* Debuging *)


(* toplevel 
   #use "Localinput_body_handle_command_unit_tag_entity_implicit_subtree_list_by_basicname_inputbox_provider_u_point_homothety.ml";; 

*)

(* Input File *)

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Print_homothety_point_a";;
let nam_ibo = Localinputbox_name_by_localinput_nameoffile_provider_v.provide nam_ibo;;

open Localinput_body_handle_command_unit_tag_entity_implicit_subtree_list_by_basicname_inputbox_provider_v;; 

let tag_loi_lcu_stl =
    Localinput_body_handle_command_unit_tag_subtree_list_by_basicname_inputbox_provider_v.provide 
      nam_ibo;;

let pre_tag_lcu (s, i) = Localinput_symbol_v.is_localinput_body_handle_command_unit_symbol_off_localinput_symbol s;;
let pre_tag_lcu_roo t = pre_tag_lcu (Tree_v.root_node_off_tree t);;

let cou = List.length tag_loi_lcu_stl;;

test_number 1 (
(cou : int ) = 
1
);;

(* all Root Tags *)

let tag_loi_lcu_roo_l = List.map Tree_v.root_node_off_tree tag_loi_lcu_stl;;

test_number 2 (
( tag_loi_lcu_roo_l : Localinput_symbol_t.localinput_symbol Tag_t.tag list ) =
 [(Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_unit_symbol
           (Localinput_body_handle_command_unit_symbol_t.Localinput_body_handle_command_unit_print_symbol
             (Localinput_body_handle_command_unit_print_symbol_t.Localinput_body_handle_command_unit_print_constructor
               "Poi_h"))))),
    [9; 38; 11])]
);;

(* Subtree for Command_unit Implicit *)

let pre_tag_nei (s, i) = Localinput_symbol_v.is_localinput_fence_variable_name_entity_implicit_constructor s;;
let pre_tag_nei_nod = Tree_v.has_node_of_node_predicate_off_tree pre_tag_nei;;

let tag_loi_nei_stl = List.filter pre_tag_nei_nod tag_loi_lcu_stl;;

test_number 3 (
(tag_loi_nei_stl : Localinput_symbol_t.localinput_symbol Tag_t.tag Tree_t.tree list ) =
[Tree_t.Inner
   ((Localinput_symbol_t.Localinput_body_symbol
       (Localinput_body_symbol_t.Localinput_body_handle_symbol
          (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
             (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_unit_symbol
		(Localinput_body_handle_command_unit_symbol_t.Localinput_body_handle_command_unit_print_symbol
		   (Localinput_body_handle_command_unit_print_symbol_t.Localinput_body_handle_command_unit_print_constructor
                      "Poi_h"))))),
     [9; 38; 11]),
    [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_fence_symbol
          (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
             (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_command_symbol
		Localinput_fence_keyword_command_symbol_t.Localinput_fence_keyword_command_print)),
	[1; 9; 38; 11]);
     Tree_t.Inner
       ((Localinput_symbol_t.Localinput_body_symbol
           (Localinput_body_symbol_t.Localinput_body_block_symbol
              (Localinput_body_block_symbol_t.Localinput_body_block_print_symbol
             (Localinput_body_block_print_symbol_t.Localinput_body_block_print_constructor
		"Poi_h"))),
         [2; 9; 38; 11]),
	[Tree_t.Leaf
           (Localinput_symbol_t.Localinput_fence_symbol
              (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
		 (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
		    (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_implicit_symbol
                       (Localinput_fence_variable_name_entity_implicit_symbol_t.Localinput_fence_variable_name_entity_implicit_constructor
			  "Poi_h")))),
            [1; 2; 9; 38; 11]);
	 Tree_t.Inner
           ((Localinput_symbol_t.Localinput_body_symbol
               (Localinput_body_symbol_t.Localinput_body_box_symbol
             (Localinput_body_box_symbol_t.Localinput_body_box_units_symbol
               (Localinput_body_box_units_symbol_t.Localinput_body_box_units_constructor
                 "Poi_h"))),
          [2; 2; 9; 38; 11]),
        [Tree_t.Leaf
          (Localinput_symbol_t.Localinput_fence_symbol
            (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
              (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
                Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_units)),
           [1; 2; 2; 9; 38; 11]);
         Tree_t.Leaf
          (Localinput_symbol_t.Localinput_fence_symbol
            (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
              (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
                (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
                  (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
                    "Uni_len")))),
           [2; 2; 2; 9; 38; 11]);
         Tree_t.Leaf
          (Localinput_symbol_t.Localinput_fence_symbol
            (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
              (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
                (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
                  (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
                    "Uni_ang")))),
           [3; 2; 2; 9; 38; 11])]);
       Tree_t.Leaf
        (Localinput_symbol_t.Localinput_fence_symbol
          (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
            (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
              Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_end)),
         [3; 2; 9; 38; 11])])])]
);;

let tag_loi_nei_roo_l = List.map Tree_v.root_node_off_tree tag_loi_nei_stl;;

test_number 4 (
(tag_loi_nei_roo_l : Localinput_symbol_t.localinput_symbol Tag_t.tag list ) =
  [(Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_unit_symbol
           (Localinput_body_handle_command_unit_symbol_t.Localinput_body_handle_command_unit_print_symbol
             (Localinput_body_handle_command_unit_print_symbol_t.Localinput_body_handle_command_unit_print_constructor
               "Poi_h"))))),
    [9; 38; 11])]
);;

test_number 5 (
tag_loi_nei_stl = provide nam_ibo
);;
