open Make_test_v;;

testing "String_off_by_target_input_variable_name_provider_v with
    String_off_by_target_input_variable_name_provider_u_point_homothety.ml";;
    
(* Deleting Registers *)

















(* Tracing *)


(* toplevel 
   #use "String_off_by_target_input_variable_name_provider_u_point_homothety.ml";; 

*)

(* Input File *)

let nof_inp = "Print_homothety_point_a.inp";;
let dir_inp ="/keep/sources/ocaml_top/setup/frames/inputset/files/";;
let fno_inp = dir_inp ^ nam_inp;;

let nam_ivn = "Poi_h";;
let sof_ivn = String_off_by_operator_input_variable_name_provider_v.provide nam_ivn;;

test_number 1 (
( sof_ivn : string ) = 
"Poi_h"
);;

  
