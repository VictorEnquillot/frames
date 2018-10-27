open Make_test_v;;

testing "Target_dependency_name_list_list_by_basicname_inputbox_provider_v with
    Target_dependency_name_list_list_by_basicname_inputbox_provider_u_point_homothety_n_translation.ml";;

(* Deleting Registers *)

















(* Tracing *)


(* toplevel 
   #use "Target_dependency_name_list_list_by_basicname_inputbox_provider_u_point_homothety_n_translation.ml";; 

*)

(* Input File *)

let nof_inp = "Print_homothety_n_translation_point_a.inp";;
let fno_inp = Localinput_fullnameoffile_by_input_nameoffile_provider_v.provide nam_inp;;


open Target_dependency_name_list_list_by_basicname_inputbox_provider_v;;

let nam_opd_l = Operand_name_list_by_basicname_inputbox_provider_v.provide fno_inp;;

let nam_tri_l = 
    Target_n_operator_n_operand_triplet_name_list_by_basicname_inputbox_provider_v.provide
      fno_inp;;

test_number 1 (
(nam_tri_l : (string * string * string) list ) =
  [("Poi_h", "Hom_b_2", "Poi_a"); 
   ("Poi_t", "Tra_bc", "Poi_h")]
);;

let nam_tta_l = Top_target_list_by_basicname_inputbox_provider_v.provide fno_inp;;

test_number 2 (
(nam_tta_l : string list ) = 
["Poi_t"]
);;

let nam_dep_ll = List.map (dependency_name_list_of_triplet_list_of_target_name nam_tri_l) nam_tta_l;;

test_number 3 (
(nam_dep_ll : string list list ) = 
[["Poi_t"; "Poi_h"; "Poi_a"]]
);;

let nam_dep_ll = Target_dependency_name_list_list_by_basicname_inputbox_provider_v.provide fno_inp;;

test_number 4 (
(nam_dep_ll : string list list ) = 
[["Poi_t"; "Poi_h"; "Poi_a"]]
);;

