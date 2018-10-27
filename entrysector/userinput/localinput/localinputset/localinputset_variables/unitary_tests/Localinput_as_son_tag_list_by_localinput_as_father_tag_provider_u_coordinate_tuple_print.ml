open Make_test_v;;

testing "Localinput_as_son_tag_list_by_localinput_as_father_tag_provider_v with
    Localinput_as_son_tag_list_by_localinput_as_father_tag_provider_u_coordinate_tuple_print.ml";;

(* Deleting Registers *)








(* Tracing *)


(* Debuging *)


(* toplevel 
   #use "Localinput_as_son_tag_list_by_localinput_as_father_tag_provider_u_coordinate_tuple_print.ml";; 

*)

 (* Input File *)

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Print_coordinate_tuple_point_t_a";;
let fno_inp = Localinputbox_name_by_localinput_nameoffile_provider_v.provide nam_ibo;;

let tag_loi_l = Localinput_tag_all_list_by_basicname_inputbox_provider_v.provide fno_inp;;

let pre_tag_cup_sof sof (s, i) = (Localinput_symbol_v.localinput_body_handle_command_unit_print_constructor sof = s);;

let tag_loi_cpr = List_v.only_element_of_predicate_off_list (pre_tag_cup_sof "Ctc_a")tag_loi_l;;

test_number 1 (
(tag_loi_cpr : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
  (Localinput_symbol_t.Localinput_body_symbol
    (Localinput_body_symbol_t.Localinput_body_handle_symbol
      (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
        (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_unit_symbol
          (Localinput_body_handle_command_unit_symbol_t.Localinput_body_handle_command_unit_print_symbol
            (Localinput_body_handle_command_unit_print_symbol_t.Localinput_body_handle_command_unit_print_constructor
              "Ctc_a"))))),
   [4; 6; 11])
);;

open Localinput_as_son_tag_list_by_localinput_as_father_tag_provider_v;;

let tag_loi_fat = tag_loi_cpr;;

let tag_loi_t = 
  Localinput_tag_tree_by_basicname_inputbox_provider_v.provide
    fno_inp;;

let tag_loi_fat_st = 
  Tree_v.subtree_find_of_node_predicate_off_tree 
    (fun t -> t = tag_loi_fat) 
    tag_loi_t;;

let tag_loi_tso_l = Tree_v.topson_node_list_off_tree tag_loi_fat_st;;

test_number 2 (
(tag_loi_tso_l : Localinput_symbol_t.localinput_symbol Tag_t.tag list ) =
[   (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
	  (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_command_symbol
             Localinput_fence_keyword_command_symbol_t.Localinput_fence_keyword_command_print)),
     [1; 4; 6; 11]);
    (Localinput_symbol_t.Localinput_body_symbol
       (Localinput_body_symbol_t.Localinput_body_block_symbol
	  (Localinput_body_block_symbol_t.Localinput_body_block_print_symbol
             (Localinput_body_block_print_symbol_t.Localinput_body_block_print_constructor
		"Ctc_a"))),
     [2; 4; 6; 11])]
);;

let boo = tag_loi_tso_l = provide tag_loi_fat;;

test_number 3 (
(boo : bool) = true
);;
