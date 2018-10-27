open Make_test_v;;

testing "Localinput_variable_name_list_by_basicname_inputbox_provider_v with
    Localinput_variable_name_list_by_basicname_inputbox_provider_u_point_homothety.ml";;

(* Deleting Registers *)

















(* Tracing *)


(* toplevel 
   #use "Localinput_variable_name_list_by_basicname_inputbox_provider_u_point_homothety.ml";; 

*)

(* Input File *)

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Print_homothety_point_a";;
let dir_inp ="/keep/sources/ocaml_top/setup/frames/inputset/files/";;
let nam_ibo = dir_inp ^ nam_inp;;

let nam_var_l = Localinput_variable_name_list_by_basicname_inputbox_provider_v.provide nam_ibo;;

test_number 1 (
nam_var_l 
(* : string list *)
  =
["Con_loc"; "Con_hom"; "Cen_b"; "Poi_a"; "Hom_b_2"; "Poi_h"]
);;
