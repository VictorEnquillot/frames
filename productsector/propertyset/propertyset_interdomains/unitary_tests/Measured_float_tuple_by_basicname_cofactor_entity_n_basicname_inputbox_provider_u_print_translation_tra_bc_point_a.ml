open Make_test_v;;

testing "Measured_float_tuple_by_basicname_cofactor_entity_n_basicname_inputbox_provider_v with
        Measured_float_tuple_by_basicname_cofactor_entity_n_basicname_inputbox_provider_u_print_translation_tra_bc_point_a.ml";;

(* Deleting Registers *)

(* Tracing *)

(* coordinates_units_length  bohr *)
(* coordinates_units_angle   radian *)
(* coordinates_kind          spherical  *)
(* figure_kind point *)
(* figure_name A *)
(* vertex A_A       1. 0.785398163397448279 0.785398163397448279 *)

(* toplevel 
   #use "Measured_float_tuple_by_basicname_cofactor_entity_n_basicname_inputbox_provider_u_print_translation_tra_bc_point_a.ml";;

*)

open Measured_float_tuple_by_basicname_cofactor_entity_n_basicname_inputbox_provider_v;;

let nam_ibo = "Print_translation_tra_bc_point_a";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;

test_number 1 (
(bna_ibo : Basicname_t.basicname ) =
Basicname_t.Inputbox "Print_translation_tra_bc_point_a"
);;

let nam_cof_ent = "Poi_a";;
let bna_cof_ent = Basicname_v.basicname_cofactor_entity_of_string nam_cof_ent;;

test_number 2 (
(bna_cof_ent : Basicname_t.basicname ) =
  Basicname_t.Cofactor_entity "Poi_a"
);;

(* Argument (bna_var_ext, bna_ibo) *)

let bna_var_ext = 
    let nam_cof_ent = Basicname_v.string_off bna_cof_ent in
    Basicname_v.basicname_variable_external_of_string nam_cof_ent;;

test_number 3 (
(bna_var_ext : Basicname_t.basicname ) =
  Basicname_t.Variable_external "Poi_a"
);;

let flo_mtl = 
    Measured_float_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide 
      (bna_var_ext, bna_ibo);;

test_number 4 (
(flo_mtl :
  (float Uno_t.uno Tuple_t.tuple, Units_t.units) Doublet_t.doublet list ) =
  [(Tuple_t.Trio (0.5, 0.499999999999999889, 0.707106781186547573),
    Units_t.Units_actual
     (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr))]
);;

let flo_mt = List_v.element_off_one_element_list flo_mtl;;

test_number 5 (
(flo_mt : (float Uno_t.uno Tuple_t.tuple, Units_t.units) Doublet_t.doublet ) =
  (Tuple_t.Trio (0.5, 0.499999999999999889, 0.707106781186547573),
   Units_t.Units_actual
    (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr))
);;

test_number 6 (
flo_mt = provide (bna_cof_ent, bna_ibo)
);;
