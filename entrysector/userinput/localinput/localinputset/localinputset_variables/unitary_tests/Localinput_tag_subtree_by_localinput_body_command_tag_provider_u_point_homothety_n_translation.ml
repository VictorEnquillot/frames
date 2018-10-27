open Make_test_v;;

testing "Localinput_tag_subtree_by_localinput_body_handle_command_tag_provider_v with
    Localinput_tag_subtree_by_localinput_body_handle_command_tag_provider_u_point_homothety_n_translation.ml";;

(* Deleting Registers *)








(* Tracing *)


(* Debuging *)


(* toplevel 
   #use "Localinput_tag_subtree_by_localinput_body_handle_command_tag_provider_u_point_homothety_n_translation.ml";; 

*)

 (* Input File *)

 let bna_ibo = Basicname_v.basicname_inputbox_of_string "Print_homothety_n_translation_point_a";;
 let dir_inp ="/keep/sources/ocaml_top/setup/frames/inputset/files/";;
 let fno_inp = dir_inp ^ nam_inp;;

let tag_loi_l = Localinput_tag_all_list_by_basicname_inputbox_provider_v.provide fno_inp;;
let tag_loi_ll = List_v.burst_left_included_of_predicate_of_list (fun (e, s) -> Localinput_symbol_v.is_localinput_body_handle_command_unit_print_constructor e) tag_loi_l;;
let tag_loi_poa_l = List.nth tag_loi_ll 1;;
let tag_loi_com = List.hd tag_loi_poa_l;;

test_number 1 (
(tag_loi_com : Localinput_symbol_t.localinput_symbol Tag_t.tag )
=
(Localinput_symbol_t.Localinput_body_handle_command_symbol
  Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_unit_print_constructor,
 [10; 28])
);;

let tag_ico = Tag_v.map_entity Localinput_symbol_v.localinput_body_handle_command_symbol_off_localinput_symbol tag_loi_com;;

test_number 2 (
(tag_ico : Localinput_body_handle_command_symbol_t.localinput_body_handle_command_symbol Tag_t.tag )
  =
(Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_unit_print_constructor, [10; 28])
);;


let tag_loi_st = Localinput_tag_subtree_by_localinput_body_handle_command_tag_provider_v.provide tag_ico;;
  
test_number 3 (
(tag_loi_st : Localinput_symbol_t.localinput_symbol Tag_t.tag Tree_t.tree )
=
  Tree_t.Inner
   ((Localinput_symbol_t.Localinput_body_handle_command_symbol
      Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_unit_print_constructor,
     [10; 28]),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_variable_symbol
       (Localinput_variable_symbol_t.Localinput_variable_name_constructor "Poi_a"),
      [1; 10; 28]);
    Tree_t.Inner
     ((Localinput_symbol_t.Localinput_keyword_symbol
        (Localinput_keyword_symbol_t.Localinput_keyword_units_symbol
          Localinput_keyword_units_symbol_t.Localinput_keyword_units_constructor),
       [2; 10; 28]),
     [Tree_t.Inner
       ((Localinput_symbol_t.Localinput_keyword_symbol
          Localinput_keyword_symbol_t.Localinput_keyword_units_item,
         [1; 2; 10; 28]),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_basic_symbol
           (Localinput_basic_symbol_t.Localinput_basic_string "length"),
          [1; 1; 2; 10; 28]);
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_basic_symbol
           (Localinput_basic_symbol_t.Localinput_basic_string "meter"),
          [2; 1; 2; 10; 28])]);
      Tree_t.Inner
       ((Localinput_symbol_t.Localinput_keyword_symbol
          Localinput_keyword_symbol_t.Localinput_keyword_units_item,
         [2; 2; 10; 28]),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_basic_symbol
           (Localinput_basic_symbol_t.Localinput_basic_string "angle"),
          [1; 2; 2; 10; 28]);
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_basic_symbol
           (Localinput_basic_symbol_t.Localinput_basic_string "radian"),
          [2; 2; 2; 10; 28])]);
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_keyword_symbol
         Localinput_keyword_symbol_t.Localinput_keyword_end,
        [3; 2; 10; 28])]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_keyword_symbol
       Localinput_keyword_symbol_t.Localinput_keyword_end,
      [3; 10; 28])])
);;
