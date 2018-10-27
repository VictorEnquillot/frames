open Make_test_v;;

testing "Localinput_tag_subtree_by_input_body_handle_command_tag_provider_v with
    Localinput_tag_subtree_by_input_body_handle_command_tag_provider_u_point_homothety_n_translation.ml";;

(* Deleting Registers *)

















(* Tracing *)


(* toplevel 
   #use "Localinput_tag_subtree_by_input_body_handle_command_tag_provider_u_point_homothety_n_translation.ml";; 

*)

 (* Input File *)

 let nof_inp = "Print_homothety_n_translation_point_a.inp";;
 let dir_inp ="/keep/sources/ocaml_top/setup/frames/inputset/files/";;
 let fno_inp = dir_inp ^ nam_inp;;

let tag_inp_l = Localinput_tag_all_list_by_input_fullnameoffile_provider_v.provide fno_inp;;
let sub_inp_ll = List_v.burst_left_included_of_predicate_of_list (fun (e, s) -> Localinput_symbol_v.is_input_body_handle_command_tounit_print_constructor e) tag_inp_l;;
let sub_inp_l2 = List.nth sub_inp_ll 1;;

let tag_inp_t = Localinput_tag_tree_by_input_fullnameoffile_provider_v.provide fno_inp;;

let sym_inp_tag_t = Tree_v.map Tag_v.entity_off_tag tag_inp_t;;
let sym_inp_t = Localinput_symbol_subtree_by_input_fullnameoffile_provider_v.provide fno_inp;;

test_number 1 (
sym_inp_t
  =  
sym_inp_tag_t
);;

let tag_roo = Tree_v.root_off_tree tag_inp_t;;
 
test_number 2 (
tag_roo
(* : Localinput_symbol_t.input_symbol Tag_t.tag *)
=
   (Localinput_symbol_t.Localinput_file
      "/keep/sources/ocaml_top/setup/frames/inputset/files/Print_homothety_n_translation_point_a.inp",
    [27])
);; 

Localinput_tag_tree_by_input_fullnameoffile_register_v.dump ();;

Localinput_tag_subtree_by_input_as_root_tag_register_v.dump ();;

Localinput_creation_module_name_by_sole_index_register_v.dump ();;
 
Localinput_symbol_by_sole_index_register_v.dump ();;

