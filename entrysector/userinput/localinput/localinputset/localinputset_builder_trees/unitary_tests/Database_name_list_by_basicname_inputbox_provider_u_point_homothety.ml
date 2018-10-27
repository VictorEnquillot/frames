open Make_test_v;;

testing "Database_name_list_by_basicname_inputbox_provider_v with
    Database_name_list_by_basicname_inputbox_provider_u_point_homothety.ml";;

(* Deleting Registers *)

















(* Tracing *)


(* toplevel 
   #use "Database_name_list_by_basicname_inputbox_provider_u_point_homothety.ml";; 

*)

(* Input File *)

let nof_inp = "Print_homothety_point_a.inp";;
let dir_inp ="/keep/sources/ocaml_top/setup/frames/inputset/files/";;
let fno_inp = dir_inp ^ nam_inp;;

let nam_con_l = Context_name_list_by_basicname_inputbox_provider_v.provide fno_inp;;

test_number 1 (
(nam_con_l : string list ) = 
["Con_loc"; "Con_hom"]
);;

let nam_con_ok_l =
    List.filter 
     Database_name_by_context_input_variable_name_provider_v.has_database_of_context_input_variable_name 
      nam_con_l;;

test_number 2 (
(nam_con_ok_l : string list ) = 
["Con_loc"]
);;

let nam_iba_l = List.map
    Database_name_by_context_input_variable_name_provider_v.provide
    nam_con_ok_l;;

test_number 3 (
(nam_iba_l : string list ) = 
["db1"]
);;

let nam_iba_l = Database_name_list_by_basicname_inputbox_provider_v.provide fno_inp;;

test_number 4 (
(nam_iba_l : string list ) = 
["db1"]
);;
