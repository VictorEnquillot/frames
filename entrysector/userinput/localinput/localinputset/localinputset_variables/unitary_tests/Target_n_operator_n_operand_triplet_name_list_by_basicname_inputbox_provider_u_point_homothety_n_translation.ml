open Make_test_v;;

testing "Target_n_operator_n_operand_triplet_name_list_by_basicname_inputbox_provider_v with
    Target_n_operator_n_operand_triplet_name_list_by_basicname_inputbox_provider_u_point_homothety_n_translation.ml";;

(* Deleting Registers *)

















(* Tracing *)


(* toplevel 
   #use "Target_n_operator_n_operand_triplet_name_list_by_basicname_inputbox_provider_u_point_homothety_n_translation.ml";; 

*)

(* Input File *)

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Print_homothety_n_translation_point_a";;
let nam_ibo = Localinputbox_name_by_localinput_nameoffile_provider_v.provide nam_inp;;


open Target_n_operator_n_operand_triplet_name_list_by_basicname_inputbox_provider_v;;

let nam_tar_l = Target_name_list_by_basicname_inputbox_provider_v.provide nam_ibo;;

test_number 1 (
(nam_tar_l : string list ) = 
["Poi_h"; "Poi_t"]
);;

let nam_opr_l = List.map Operator_name_by_target_localinput_variable_name_provider_v.provide nam_tar_l;;

test_number 2 (
(nam_opr_l : string list ) = 
["Hom_b_2"; "Tra_bc"]
);;

let nam_opd_l = List.map Operand_name_by_target_localinput_variable_name_provider_v.provide nam_tar_l;;

test_number 3 (
(nam_opd_l : string list ) = 
["Poi_a"; "Poi_h"]
);;

let nam_tri_l = provide nam_ibo;;

test_number 4 (
(nam_tri_l : (string * string * string) list ) =
  [("Poi_h", "Hom_b_2", "Poi_a"); 
   ("Poi_t", "Tra_bc", "Poi_h")]
);;

let nam_tri_l = 
    Target_n_operator_n_operand_triplet_name_list_by_basicname_inputbox_provider_v.provide
      nam_ibo;;

test_number 5 (
(nam_tri_l : (string * string * string) list ) =
  [("Poi_h", "Hom_b_2", "Poi_a"); 
   ("Poi_t", "Tra_bc", "Poi_h")]
);;
