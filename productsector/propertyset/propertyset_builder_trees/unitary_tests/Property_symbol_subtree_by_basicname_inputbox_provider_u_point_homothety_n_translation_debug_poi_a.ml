open Make_test_v;;

testing "Property_symbol_subtree_by_basicname_inputbox_provider_v with
    Property_symbol_subtree_by_basicname_inputbox_provider_u_point_homothety_n_translation.ml";;

(* Deleting Registers *)



(* Tracing *)


(* toplevel 
   #use "Property_symbol_subtree_by_basicname_inputbox_provider_u_point_homothety_n_translation_debug.ml";; 

*)

(* Input File *)

let nam_ibo = "Print_homothety_n_translation_point_a";;

let sym_loi_t = Localinput_symbol_subtree_by_basicname_inputbox_provider_v.provide nam_ibo;;

let sym_roo = Tree_v.root_off_tree sym_loi_t;;

test_number 1 (
(sym_roo : Localinput_symbol_t.localinput_symbol)
=
Localinput_symbol_t.Localinput_file
  "/keep/sources/ocaml_top/setup/frames/inputset/files/Print_homothety_n_translation_point_a"
);;

let sym_pro_ifi = Property_symbol_v.property_localinput_file_constructor nam_ibo;;

test_number 2 (
( sym_pro_ifi : Property_symbol_t.property_symbol )
  =
Property_symbol_t.Property_environment_symbol
  (Property_environment_symbol_t.Property_localinput_file_symbol
     (Property_localinput_file_symbol_t.Property_localinput_file_constructor
	"/keep/sources/ocaml_top/setup/frames/inputset/files/Print_homothety_n_translation_point_a"))
);;

let tag_loi_pow_stl = Localinput_as_command_print_or_write_tag_subtree_list_by_basicname_inputbox_provider_v.provide
      nam_ibo;;

let sym_loi_pow_stl = List.map (Tree_v.map Tag_v.entity_off_tag) tag_loi_pow_stl;;

let len_pow_stl = List.length sym_loi_pow_stl;;

test_number 3 (
( len_pow_stl : int )
  = 
2
);;

let sym_loi_pow_t = List.nth sym_loi_pow_stl 0;;

let sym_loi_t = sym_loi_pow_t;;
let sym_roo = Tree_v.root_off_tree sym_loi_t ;;

test_number 4 (
 sym_roo 
(* : Localinput_symbol_t.localinput_symbol *)
=
  Localinput_symbol_t.Localinput_command_symbol
   Localinput_command_symbol_t.Localinput_command_print
);;

let sym_loi_lts_l = Tree_v.topson_leaf_node_list_off_tree sym_loi_t;;
let sym_loi_var_l = List.filter Localinput_symbol_v.is_localinput_variable_name sym_loi_lts_l;;
let sym_loi_var = List_v.element_off_one_element_list sym_loi_var_l;;

test_number 5 (
sym_loi_var 
(* : Localinput_symbol_t.localinput_symbol *)
  =
Localinput_symbol_t.Localinput_variable_symbol
  (Localinput_variable_symbol_t.Localinput_variable_name "Poi_a")
);;

let topson_localinput_variable_symbol_of_localinput_symbol_tree sym_loi_t =
  let sym_loi_lts_l = Tree_v.topson_leaf_node_list_off_tree sym_loi_t in
  let sym_loi_var_l = List.filter Localinput_symbol_v.is_localinput_variable_name sym_loi_lts_l in
  List_v.element_off_one_element_list sym_loi_var_l
;;

let sym_loi_var_l = List.map
      topson_localinput_variable_symbol_of_localinput_symbol_tree 
      sym_loi_pow_stl;;

test_number 6 (
sym_loi_var_l 
(* : Localinput_symbol_t.localinput_symbol list *)
=
  [Localinput_symbol_t.Localinput_variable_symbol
    (Localinput_variable_symbol_t.Localinput_variable_name "Poi_a");
   Localinput_symbol_t.Localinput_variable_symbol
    (Localinput_variable_symbol_t.Localinput_variable_name "Poi_t")]
);;

open Property_symbol_subtree_by_basicname_inputbox_provider_v;;

let sym_loi_pow_stl =
    localinput_as_command_print_or_write_symbol_subtree_list_of_localinput_fullnameoffile 
      nam_ibo;;

let sym_loi_pow_l = localinput_as_command_print_or_write_symbol_list_of_localinput_fullnameoffile nam_ibo;;

test_number 7 (
(sym_loi_pow_l : Localinput_symbol_t.localinput_symbol list)
  =
[Localinput_symbol_t.Localinput_command_symbol
   Localinput_command_symbol_t.Localinput_command_print;
 Localinput_symbol_t.Localinput_command_symbol
   Localinput_command_symbol_t.Localinput_command_print]
);;

let nam_var_l = localinput_variable_name_name_list_of_localinput_fullnameoffile nam_ibo ;;

test_number 8 (
(nam_var_l : string list)
= 
["Poi_a"; "Poi_t"]
);;

let kin_var_l = List.map Localinput_variable_kind_by_localinput_set_fence_variable_name_entity_tag_provider_v.provide nam_var_l;;

test_number 9 (
(kin_var_l : Localinput_symbol_t.localinput_symbol list)
 =
  [Localinput_symbol_t.Localinput_keyword_symbol
    Localinput_keyword_symbol_t.Localinput_keyword_external;
   Localinput_symbol_t.Localinput_keyword_symbol
    Localinput_keyword_symbol_t.Localinput_keyword_target]
);;

let nam_n_kin_var_l = localinput_variable_name_name_n_kind_list_of_localinput_fullnameoffile nam_ibo;;

test_number 10 (
(nam_n_kin_var_l :
   (string, Localinput_symbol_t.localinput_symbol) Doublet_list_t.doublet_list )
  =
[("Poi_a",
  Localinput_symbol_t.Localinput_keyword_symbol
    Localinput_keyword_symbol_t.Localinput_keyword_external);
 ("Poi_t",
  Localinput_symbol_t.Localinput_keyword_symbol
    Localinput_keyword_symbol_t.Localinput_keyword_target)]
);;


let sym_ext_var_l = localinput_as_variable_external_symbol_list_of_localinput_fullnameoffile nam_ibo;;

test_number 11 (
( sym_ext_var_l :
  (string, Localinput_symbol_t.localinput_symbol) Doublet_t.doublet list)
 =
  [("Poi_a",
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_external)]
);;

let sym_tar_var_l = localinput_as_variable_target_symbol_list_of_localinput_fullnameoffile nam_ibo;;

test_number 12 (
( sym_tar_var_l :
  (string, Localinput_symbol_t.localinput_symbol) Doublet_t.doublet list )
=
  [("Poi_t",
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_target)]
);;

let nam_iva = "Poi_a";;
let sym_loi = Localinput_as_variable_external_symbol_by_localinput_set_fence_variable_name_entity_tag_provider_v.provide nam_iva;;

test_number 13 (
sym_loi 
(* : Localinput_symbol_t.localinput_symbol *)
=
  Localinput_symbol_t.Localinput_variable_symbol
   (Localinput_variable_symbol_t.Localinput_variable_external_symbol
     (Localinput_variable_external_symbol_t.Localinput_variable_external_figure_symbol
       "figure_point_constructor T_A"))
);;

