open Make_test_v;;

testing "Localinput_tag_subtree_by_localinput_body_handle_command_tag_provider_v with
    Localinput_tag_subtree_by_localinput_body_handle_command_tag_provider_u_point_homothety_n_translation.ml";;

(* Deleting Registers *)

















(* Tracing *)


(* toplevel 
   #use "Localinput_tag_subtree_by_localinput_body_handle_command_tag_provider_u_point_homothety_n_translation.ml";; 

*)

 (* Input File *)

 let bna_ibo = Basicname_v.basicname_inputbox_of_string "Print_homothety_n_translation_point_a";;
 let dir_inp ="/keep/sources/ocaml_top/setup/frames/inputset/files/";;
 let fno_inp = dir_inp ^ nam_inp;;

let tag_loi_l = Localinput_tag_all_list_by_basicname_inputbox_provider_v.provide fno_inp;;
let sub_inp_ll = List_v.burst_left_included_of_predicate_of_list (fun (e, s) -> Localinput_symbol_v.is_localinput_body_handle_command_unit_print_constructor e) tag_loi_l;;
let sub_inp_l2 = List.nth sub_inp_ll 1;;

let tag_loi_t = Localinput_tag_tree_by_basicname_inputbox_provider_v.provide fno_inp;;

let sym_inp_tag_t = Tree_v.map Tag_v.entity_off_tag tag_loi_t;;
let sym_inp_t = Localinput_symbol_subtree_by_basicname_inputbox_provider_v.provide fno_inp;;

test_number 1 (
sym_inp_t
  =  
sym_inp_tag_t
);;

let tag_roo = Tree_v.root_off_tree tag_loi_t;;
 
test_number 2 (
tag_roo
(* : Localinput_symbol_t.localinput_symbol Tag_t.tag *)
=
   (Localinput_symbol_t.Localinput_file
      "/keep/sources/ocaml_top/setup/frames/inputset/files/Print_homothety_n_translation_point_a",
    [27])
);; 

Localinput_tag_tree_by_basicname_inputbox_register_v.dump ();;

Localinput_tag_subtree_by_localinput_as_root_tag_register_v.dump ();;

Localinput_creation_module_name_by_sole_index_register_v.dump ();;
 
Localinput_symbol_by_sole_index_register_v.dump ();;

