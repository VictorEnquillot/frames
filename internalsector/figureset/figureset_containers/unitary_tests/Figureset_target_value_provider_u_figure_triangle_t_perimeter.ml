open Make_test_v;;

testing "Figureset_target_value_provider_v with
   Figureset_target_value_provider_u_figure_triangle_t_perimeter.ml";;

(* toplevel 
   #use "Figureset_target_value_provider_u_figure_triangle_t_perimeter.ml";;

*)

let nam_cod = "Figureset_target_value_provider_u_figure_triangle_t_perimeter.ml";;

let nam_dos = "figureset";;

let nam_adb = "db_1";;
let wha_fig = "figure_triangle";;
let nam_fig = "T";; 
let wha_coo = "cartesian";;
let uni_coo = "angstroms";;
let nam_pro_l = ["perimeter"];;

let val_tar = Figureset_target_value_v.make nam_adb wha_fig nam_fig wha_coo uni_coo nam_pro_l;;
Figureset_target_value_by_figureset_target_name_provider_v.store "current" val_tar;;

test_number 1 (
val_tar 
(* : Figureset_target_value_t.target_value *)
=
{Figureset_target_value_t.alien_db_name = "db_1";
 Figureset_target_value_t.figure_triangle_name = "T";
 Figureset_target_value_t.property_name_list = ["perimeter"]}
);;


let val_pro_l = Figureset_target_value_provider_v.provide val_tar
