open Make_test_v;;

testing "Top_target_list_by_basicname_inputbox_provider_v with
    Top_target_list_by_basicname_inputbox_provider_u_point_homothety_n_translation.ml";;

(* Deleting Registers *)

















(* Tracing *)


(* toplevel 
   #use "Top_target_list_by_basicname_inputbox_provider_u_point_homothety_n_translation.ml";; 

*)

(* Input File *)

let nof_inp = "Print_homothety_n_translation_point_a.inp";;
let fno_inp = Localinput_fullnameoffile_by_input_nameoffile_provider_v.provide nam_inp;;


open Top_target_list_by_basicname_inputbox_provider_v;;

let nam_opd_l = Operand_name_list_by_basicname_inputbox_provider_v.provide fno_inp;;
 
test_number 1 (
(nam_opd_l : string list ) = 
 ["Poi_a"; "Poi_h"]
);;

let nam_tar_l = Target_name_list_by_basicname_inputbox_provider_v.provide fno_inp;;

test_number 2 (
(nam_tar_l : string list ) = 
 ["Poi_h"; "Poi_t"]
);;

let top_tar_l = List.filter (fun n -> not (List.mem n nam_opd_l)) nam_tar_l ;;

test_number 3 (
(top_tar_l : string list ) = 
["Poi_t"]
);;

