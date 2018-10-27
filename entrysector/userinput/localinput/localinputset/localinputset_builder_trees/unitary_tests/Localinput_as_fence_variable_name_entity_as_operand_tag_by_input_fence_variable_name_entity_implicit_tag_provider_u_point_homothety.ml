open Make_test_v;;

testing "Localinput_as_fence_variable_name_entity_as_operand_tag_by_input_fence_variable_name_entity_implicit_tag_provider_v with
    Localinput_as_fence_variable_name_entity_as_operand_tag_by_input_fence_variable_name_entity_implicit_tag_provider_u_point_homothety.ml";;

(* Deleting Registers *)




(* Tracing *)


(* Debuging *)


(* toplevel 
   #use "Localinput_as_fence_variable_name_entity_as_operand_tag_by_input_fence_variable_name_entity_implicit_tag_provider_u_point_homothety.ml";; 

*)

(* Input File *)

let nof_inp = "Print_homothety_point_a.inp";;
let fno_inp = Localinput_fullnameoffile_by_input_nameoffile_provider_v.provide nof_inp;;

let tag_vne_l = 
    Localinput_fence_variable_name_entity_tag_list_by_input_fullnameoffile_provider_v.provide
      fno_inp;;

let cou = List.length tag_vne_l;;

test_number 1 (
(cou : int ) = 
8
);;

(* Argument tag_vne Poi_h Target *)

let nam_var = "Poi_h";;
let pre_tag_nei_sof sof (s, i) = Localinput_symbol_v.input_fence_variable_name_entity_implicit_constructor sof = s;;

let tag_inp_nei_poi_h = List_v.only_element_of_predicate_off_list (pre_tag_nei_sof nam_var) tag_inp_vne_l;;

test_number 2 (
(tag_inp_nei_poi_h : Localinput_symbol_t.input_symbol Tag_t.tag ) =
  (Localinput_symbol_t.Localinput_fence_symbol
    (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
      (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
        (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_implicit_symbol
          (Localinput_fence_variable_name_entity_implicit_symbol_t.Localinput_fence_variable_name_entity_implicit_constructor
            "Poi_h")))),
   [1; 2; 9; 38; 11])
);;

let tag_nei = Tag_v.map_entity 
    Localinput_symbol_v.input_fence_variable_name_entity_implicit_symbol_off_input_symbol
    tag_inp_nei_poi_h
;;

open Localinput_as_fence_variable_name_entity_as_operand_tag_by_input_fence_variable_name_entity_implicit_tag_provider_v;;

let soi_nei = Tag_v.sole_index_off_tag tag_nei;;

test_number 3 (  
fno_inp = 
  Localinput_any_category_by_sole_index_extractor_v.input_context_file_string_off_off_sole_index 
    soi_nei 
);;

test_number 4 (  
 tag_inp_vne_l = 
    Localinput_fence_variable_name_entity_tag_list_by_input_fullnameoffile_provider_v.provide
      fno_inp
);;

let nam_nei = Localinput_fence_variable_name_entity_implicit_tag_v.string_off tag_nei;;

let pre_tag_opd_sof sof (s, i) = 
    ( (Localinput_symbol_v.is_input_fence_variable_name_entity_external_symbol_off_input_symbol s) 
    || (Localinput_symbol_v.is_input_fence_variable_name_entity_target_symbol_off_input_symbol s)) 
      && (Localinput_symbol_v.string_off s = sof) 
;;

let tag_inp_opd = List_v.only_element_of_predicate_off_list (pre_tag_opd_sof nam_nei) tag_inp_vne_l;;

test_number 5 (
(tag_inp_opd : Localinput_symbol_t.input_symbol Tag_t.tag ) =
  (Localinput_symbol_t.Localinput_fence_symbol
    (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
      (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
        (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_target_symbol
          (Localinput_fence_variable_name_entity_target_symbol_t.Localinput_fence_variable_name_entity_target_constructor
            "Poi_h")))),
   [1; 2; 6; 38; 11])
);;

test_number 6 (
tag_inp_opd = provide tag_nei
);;
