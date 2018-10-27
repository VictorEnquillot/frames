open Make_test_v;;

testing "Localinput_fence_variable_name_entity_tag_by_input_fence_cell_target_operand_tag_provider_v with
    Localinput_fence_variable_name_entity_tag_by_input_fence_cell_target_operand_tag_provider_u_point_homothety.ml";;

(* Deleting Registers *)




(* Tracing *)


(* Debuging *)


(* toplevel 
   #use "Localinput_fence_variable_name_entity_tag_by_input_fence_cell_target_operand_tag_provider_u_point_homothety.ml";; 

*)

(* Input File *)

let nof_inp = "Print_homothety_point_a.inp";;
let fno_inp = Localinput_fullnameoffile_by_input_nameoffile_provider_v.provide nof_inp;;

let tag_cto_l = 
  Localinput_fence_cell_target_operand_tag_list_by_input_fullnameoffile_provider_v.provide
      fno_inp;;

test_number 1 (
(tag_cto_l :
  Localinput_fence_cell_target_operand_symbol_t.input_fence_cell_target_operand_symbol
  Tag_t.tag list ) =
  [(Localinput_fence_cell_target_operand_symbol_t.Localinput_fence_cell_target_operand_constructor
     "Poi_a",
    [3; 2; 2; 2; 6; 38; 11])]
);;

(* Argument tag_cto Poi_a Target_operand *)

let nam_var = "Poi_a";;
let pre_tag_cto_sof sof (s, i) = Localinput_fence_cell_target_operand_symbol_v.input_fence_cell_target_operand_constructor sof = s;;

let tag_cto_poi_a = List_v.only_element_of_predicate_off_list (pre_tag_cto_sof nam_var) tag_cto_l;;

test_number 2 (
( tag_cto_poi_a :
  Localinput_fence_cell_target_operand_symbol_t.input_fence_cell_target_operand_symbol
  Tag_t.tag ) =
  (Localinput_fence_cell_target_operand_symbol_t.Localinput_fence_cell_target_operand_constructor
    "Poi_a",
   [3; 2; 2; 2; 6; 38; 11])
);;

open Localinput_fence_variable_name_entity_tag_by_input_fence_cell_target_operand_tag_provider_v;;

let tag_cto = tag_cto_poi_a;;
let soi_cto = Tag_v.sole_index_off_tag tag_cto;;

test_number 3 (  
fno_inp = 
  Localinput_any_category_by_sole_index_extractor_v.input_context_file_string_off_off_sole_index 
    soi_cto 
);;

let tag_vne_l = 
    Localinput_fence_variable_name_entity_tag_list_by_input_fullnameoffile_provider_v.provide
      fno_inp;;

test_number 4 (  
(tag_vne_l : 
   Localinput_fence_variable_name_entity_symbol_t.input_fence_variable_name_entity_symbol
   Tag_t.tag list ) =
[(Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
    (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
       "Cen_b"),
    [1; 2; 3; 38; 11]);
   (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
     (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
       "Poi_a"),
    [1; 2; 4; 38; 11]);
   (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_target_symbol
     (Localinput_fence_variable_name_entity_target_symbol_t.Localinput_fence_variable_name_entity_target_constructor
       "Poi_h"),
    [1; 2; 6; 38; 11]);
   (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
     (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
       "Uni_len"),
    [1; 2; 7; 38; 11]);
   (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
     (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
       "Uni_ang"),
    [1; 2; 8; 38; 11]);
   (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_implicit_symbol
     (Localinput_fence_variable_name_entity_implicit_symbol_t.Localinput_fence_variable_name_entity_implicit_constructor
       "Poi_h"),
    [1; 2; 9; 38; 11]);
   (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
     (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
       "Uni_len"),
    [2; 2; 2; 9; 38; 11]);
   (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
     (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
       "Uni_ang"),
    [3; 2; 2; 9; 38; 11])]
);;

let sof_cto = Localinput_fence_cell_target_operand_tag_v.string_off tag_cto;;

let pre_tag_vne_sof sof (s, i) = 
    (Localinput_fence_variable_name_entity_symbol_v.input_fence_variable_name_entity_external_constructor sof = s) 
  ||
    (Localinput_fence_variable_name_entity_symbol_v.input_fence_variable_name_entity_target_constructor sof = s) 
;;

let tag_vne = List_v.only_element_of_predicate_off_list (pre_tag_vne_sof sof_cto) tag_vne_l;;

test_number 5 (
(tag_vne : Localinput_fence_variable_name_entity_symbol_t.input_fence_variable_name_entity_symbol
   Tag_t.tag )
  =
(Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
   (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
      "Poi_a"),
 [1; 2; 4; 38; 11])
);;

test_number 6 (
tag_vne = provide tag_cto
);;
