open Make_test_v;;

testing "Property_tag_subtree_by_property_tag_provider_v with
    Property_tag_subtree_by_property_tag_provider_u_point_homothety_n_translation.ml";;

(* Deleting Registers *)









(* Tracing *)


(* toplevel 
   #use "Property_tag_subtree_by_property_tag_provider_u_point_homothety_n_translation.ml";; 

*)

(* Input File *)

let nam_ibo = "Print_homothety_n_translation_point_a";;
let dir_inp ="/keep/sources/ocaml_top/setup/frames/inputset/files/";;
let nam_ibo = dir_inp ^ nam_inp;;

let sym_loi_t = Localinput_symbol_subtree_by_basicname_inputbox_provider_v.provide nam_ibo;;

let tag_pro_t = Property_tag_tree_by_basicname_inputbox_n_basicname_inputbase_provider_v.provide (nam_ibo, nam_iba);;
let tag_roo = Tree_v.root_off_tree tag_loi_t;;

test_number 1 (
(tag_roo : Localinput_symbol_t.localinput_symbol Tag_t.tag)
=
Localinput_symbol_t.Localinput_file
  "/keep/sources/ocaml_top/setup/frames/inputset/files/Print_homothety_n_translation_point_a"
);;

let sym_pro_t = Property_symbol_subtree_by_basicname_inputbox_provider_v.provide nam_ibo;;
