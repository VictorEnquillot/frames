open Make_test_v;;

testing "Property_symbol_subtree_by_basicname_inputbox_provider_v with
    Property_symbol_subtree_by_basicname_inputbox_provider_u_any.ml";;

(* Deleting Registers *)


(* Tracing *)


(* Debugging *)



(* toplevel 
   #use "Property_symbol_subtree_by_basicname_inputbox_provider_u_any.ml";; 

*)

(* Input File *)

let nam_ibo = "Print_homothety_point_a";;
let nam_iba = "local";;

open Property_symbol_subtree_by_basicname_inputbox_provider_v;;

(* List of Localinput_body_handle_command_unit_tag *)

let tag_lcu_l = 
  Localinput_body_handle_command_unit_tag_list_by_basicname_inputbox_provider_v.provide
    nam_ibo;;

test_number 1 (
(tag_lcu_l :
  Localinput_body_handle_command_unit_symbol_t.localinput_body_handle_command_unit_symbol
  Tag_t.tag list ) =
  [(Localinput_body_handle_command_unit_symbol_t.Localinput_body_handle_command_unit_print_symbol
     (Localinput_body_handle_command_unit_print_symbol_t.Localinput_body_handle_command_unit_print_constructor
       "Poi_h"),
    [9;  38; 11])]
);;

let tag_lei_l = List.map
    Localinput_set_fence_variable_name_entity_implicit_tag_by_localinput_body_handle_command_unit_tag_provider_v.provide 
    tag_lcu_l;;

test_number 2 (
(tag_lei_l :
  Localinput_set_fence_variable_name_entity_implicit_symbol_t.localinput_set_fence_variable_name_entity_implicit_symbol
  Tag_t.tag list ) =
  [(Localinput_set_fence_variable_name_entity_implicit_symbol_t.Localinput_set_fence_variable_name_entity_implicit_constructor
     "Poi_h",
    [1; 2; 9;  38; 11])]
);;

let tag_lve_l = List.map 
    (Tag_v.map_entity (* Coerce Up *)
       Localinput_set_fence_variable_name_entity_symbol_v.localinput_set_fence_variable_name_entity_symbol_of_localinput_set_fence_variable_name_entity_implicit_symbol)
    tag_lei_l;;

test_number 3 (
(tag_lve_l :
   Localinput_set_fence_variable_name_entity_symbol_t.localinput_set_fence_variable_name_entity_symbol
   Tag_t.tag list ) =
[(Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_implicit_symbol
    (Localinput_set_fence_variable_name_entity_implicit_symbol_t.Localinput_set_fence_variable_name_entity_implicit_constructor
       "Poi_h"),
  [1; 2; 9;  38; 11])]
);;

let tag_lve = List.hd tag_lve_l;;

let sym_pro_st =
  Property_symbol_subtree_by_localinput_set_fence_variable_name_entity_tag_provider_v.provide
    tag_lve;;

let sym_pro_stl = List.map 
    Property_symbol_subtree_by_localinput_set_fence_variable_name_entity_tag_provider_v.provide
      tag_lve_l;;

let sym_pro_ifi = Property_symbol_v.property_context_inputfile_constructor nam_ibo ;;

test_number 4 (
(sym_pro_ifi : Property_symbol_t.property_symbol ) =
  Property_symbol_t.Property_context_symbol
   (Property_context_symbol_t.Property_context_inputfile_symbol
     (Property_context_inputfile_symbol_t.Property_context_inputfile_constructor
       "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Print_homothety_point_a"))
);;

let sym_pro_st = Tree_v.make_of_node sym_pro_ifi sym_pro_stl;;

test_number 5 (
sym_pro_st = provide nam_ibo
);;

