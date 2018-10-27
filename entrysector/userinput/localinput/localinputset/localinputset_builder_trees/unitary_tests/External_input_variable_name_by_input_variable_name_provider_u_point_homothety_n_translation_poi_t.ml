open Make_test_v;;

testing "External_input_variable_name_by_input_variable_name_provider_v with
    External_input_variable_name_by_input_variable_name_provider_u_point_homothety_n_translation_poi_t.ml";;

(* Deleting Registers *)

















(* Tracing *)


(* toplevel 
   #use "External_input_variable_name_by_input_variable_name_provider_u_point_homothety_n_translation_poi_t.ml";; 

*)

(* Input File *)

let nof_inp = "Print_homothety_n_translation_point_a.inp";;
let dir_inp ="/keep/sources/ocaml_top/setup/frames/inputset/files/";;
let fno_inp = dir_inp ^ nam_inp;;

open External_input_variable_name_by_input_variable_name_provider_v;;

let nam_ivn = "Poi_t";;

let sym_inp_kin = Localinput_variable_kind_by_input_variable_name_provider_v.provide nam_ivn;;

test_number 1 (
( sym_inp_kin : Localinput_symbol_t.input_symbol ) =
  Localinput_symbol_t.Localinput_keyword_symbol
   Localinput_keyword_symbol_t.Localinput_keyword_target
);;

let nam_ivn_opd = Operand_name_by_target_input_variable_name_provider_v.provide nam_ivn;;

test_number 2 (
(nam_ivn_opd : string ) =
 "Poi_h"
);;

let nam_ivn_ext = figure_input_variable_external_of_figure_input_variable_name nam_ivn_opd;;

test_number 3 (
(nam_ivn_ext : string ) =
 "Poi_a"
);;

let nam_ivn_ext = build nam_ivn ;;

test_number 4 (
(nam_ivn_ext : string ) =
 "Poi_a"
);;
