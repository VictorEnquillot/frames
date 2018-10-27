open Make_test_v;;

testing "Localinput_as_son_tag_list_by_input_as_father_tag_provider_v with
    Localinput_as_son_tag_list_by_input_as_father_tag_provider_u_coordinate_tuple_print.ml";;

(* Deleting Registers *)








(* Tracing *)


(* Debuging *)


(* toplevel 
   #use "Localinput_as_son_tag_list_by_input_as_father_tag_provider_u_coordinate_tuple_print.ml";; 

*)

 (* Input File *)

let nof_inp = "Print_coordinate_tuple_point_t_a.inp";;
let fno_inp = Localinput_fullnameoffile_by_input_nameoffile_provider_v.provide nof_inp;;

let tag_inp_l = Localinput_tag_all_list_by_input_fullnameoffile_provider_v.provide fno_inp;;

let pre_tag_cup_sof sof (s, i) = (Localinput_symbol_v.input_body_handle_command_tounit_print_constructor sof = s);;

let tag_inp_cpr = List_v.only_element_of_predicate_off_list (pre_tag_cup_sof "Ctc_a")tag_inp_l;;

test_number 1 (
(tag_inp_cpr : Localinput_symbol_t.input_symbol Tag_t.tag ) =
  (Localinput_symbol_t.Localinput_body_symbol
    (Localinput_body_symbol_t.Localinput_body_handle_symbol
      (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
        (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_tounit_symbol
          (Localinput_body_handle_command_tounit_symbol_t.Localinput_body_handle_command_tounit_print_symbol
            (Localinput_body_handle_command_tounit_print_symbol_t.Localinput_body_handle_command_tounit_print_constructor
              "Ctc_a"))))),
   [4; 6; 11])
);;

open Localinput_as_son_tag_list_by_input_as_father_tag_provider_v;;

let tag_inp_fat = tag_inp_cpr;;

let tag_inp_t = 
  Localinput_tag_tree_by_input_fullnameoffile_provider_v.provide
    fno_inp;;

let tag_inp_fat_st = 
  Tree_v.subtree_find_of_node_predicate_off_tree 
    (fun t -> t = tag_inp_fat) 
    tag_inp_t;;

let tag_inp_tso_l = Tree_v.topson_node_list_off_tree tag_inp_fat_st;;

test_number 2 (
(tag_inp_tso_l : Localinput_symbol_t.input_symbol Tag_t.tag list ) =
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

let boo = tag_inp_tso_l = provide tag_inp_fat;;

test_number 3 (
(boo : bool) = true
);;
