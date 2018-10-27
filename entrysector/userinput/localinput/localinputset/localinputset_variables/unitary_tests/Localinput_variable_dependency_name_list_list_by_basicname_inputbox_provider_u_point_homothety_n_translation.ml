open Make_test_v;;

testing "Localinput_variable_dependency_name_list_list_by_basicname_inputbox_provider_v with
    Localinput_variable_dependency_name_list_list_by_basicname_inputbox_provider_u_point_homothety_n_translation.ml";;

(* Deleting Registers *)

















(* Tracing *)


(* toplevel 
   #use "Localinput_variable_dependency_name_list_list_by_basicname_inputbox_provider_u_point_homothety_n_translation.ml";; 

*)

(* Input File *)

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Print_homothety_n_translation_point_a";;
let nam_ibo = Localinputbox_name_by_localinput_nameoffile_provider_v.provide nam_inp;;

open Localinput_variable_dependency_name_list_list_by_basicname_inputbox_provider_v;;

let nam_dep_tar_ll = Target_dependency_name_list_list_by_basicname_inputbox_provider_v.provide nam_ibo;;

test_number 1 (
(nam_dep_tar_ll : string list list ) = 
[["Poi_t"; "Poi_h"; "Poi_a"]]
);;

 let nam_top_ext_l = 
    Top_external_list_by_basicname_inputbox_provider_v.provide
      nam_ibo;;

test_number 2 (
(nam_top_ext_l : string list ) = 
["Vec_bc"; "Cen_b"]
);;

let nam_dep_ext_ll = List.map (fun e -> [e]) nam_top_ext_l;;

test_number 3 (
(nam_dep_ext_ll : string list list ) = 
[["Vec_bc"]; ["Cen_b"]]
);;

