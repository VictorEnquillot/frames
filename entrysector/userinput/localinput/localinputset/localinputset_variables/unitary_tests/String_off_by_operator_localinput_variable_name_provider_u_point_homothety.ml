open Make_test_v;;

testing "String_off_by_operator_localinput_variable_name_provider_v with
    String_off_by_operator_localinput_variable_name_provider_u_point_homothety.ml";;
    
(* Deleting Registers *)

















(* Tracing *)


(* toplevel 
   #use "String_off_by_operator_localinput_variable_name_provider_u_point_homothety.ml";; 

*)

(* Input File *)

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Print_homothety_point_a";;
let dir_inp ="/keep/sources/ocaml_top/setup/frames/inputset/files/";;
let fno_inp = dir_inp ^ nam_inp;;

let nam_ivn = "Hom_b_2";;

let sof_ivn = String_off_by_operator_localinput_variable_name_provider_v.provide nam_ivn;;
test_number 1 (
( sof_ivn : string ) = 
"Hom_b_2"
);;


  
