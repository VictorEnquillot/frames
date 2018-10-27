open Make_test_v;;

testing "Parameters_value_provider_v with
   Parameters_value_provider_u_any.ml";;

(* toplevel 
   #use "Parameters_value_provider_u_any.ml";; 

*)

let reg_x = Coordinate_current_value_register_v.register;;
let reg_vel = Velocity_value_register_v.register;;
let reg_eki = Energy_kinetic_value_register_v.register;;
let reg_epo = Energy_potential_value_register_v.register;;
let reg_eto = Energy_total_value_register_v.register;;
let reg_par = Parameters_value_register_v.register;;

Register_v.delete reg_x;;
Register_v.delete reg_vel;;
Register_v.delete reg_eki;;
Register_v.delete reg_eto;;
Register_v.delete reg_epo;;
Register_v.delete reg_par;;

Parameters_value_register_v.store "first_step" (Parameters_value_v.make "first_step" "1");;
Parameters_value_register_v.store "target_step" (Parameters_value_v.make"target_step" "5");;
Parameters_value_register_v.store "initial_velocity_x" (Parameters_value_v.make "initial_velocity_x" "1.");;
Parameters_value_register_v.store "mass" (Parameters_value_v.make "mass" "1.");;
Parameters_value_register_v.store "force_constant" (Parameters_value_v.make "force_constant" "1.");;
Parameters_value_register_v.store "time_step" (Parameters_value_v.make "time_step" "0.1");;
Parameters_value_register_v.store "initial_x" (Parameters_value_v.make "initial_x" "0.0");;

Parameters_value_register_v.dump ();;

let target_step = Parameters_value_provider_v.provide_integer "target_step";;
let first_step = Parameters_value_provider_v.provide_integer "first_step";;
let c0_x = Parameters_value_provider_v.provide_float "initial_x";;
let v0_x = Parameters_value_provider_v.provide_float "initial_velocity_x";;
let dt = Parameters_value_provider_v.provide_float "time_step";;
let k = Parameters_value_provider_v.provide_float "force_constant";;
let omega = Parameters_value_provider_v.provide_float "omega";;

test_number 1 (target_step (* : int *) = 5);;
test_number 2 (first_step (* : int *) = 1);;
test_number 3 (c0_x (* : float *) = 0.0);;
test_number 4 (v0_x (* : float *) = 1.0);;
test_number 5 (dt (* : float *) = 0.1);;
test_number 6 (omega (* : float *) = 1.);;

let step_last = Tools_har_v.last_done_step_of_register reg_epo;;

test_number 7 (step_last (* : int *)  = 0);;

let sym_eto = Energy_total_symbol_t.Energy_total;;

(** Step 1 *)

let soi_eto = [1; 199];;
let tag_eto = Tools_har_v.after_last_step_tag_of_register_of_any_symbol_of_any_sole_index reg_eto sym_eto soi_eto;;

(** Coordinate_current Step 1 *)

let (tag_eki, tag_epo) = Energy_total_value_provider_v.builder_son_tag_doublet_off_energy_total_tag tag_eto;;

test_number 8 (
tag_eki
(* : Coordinate_current_symbol_t.velocity_symbol Tag_t.tag *)
  =
(Energy_kinetic_symbol_t.Energy_kinetic, [1; 1; 1])
);;

test_number 9 (
tag_epo
(* : Coordinate_current_symbol_t.velocity_symbol Tag_t.tag *)
  =
(Energy_potential_symbol_t.Energy_potential, [2; 1; 1])
);;

let val_eki = Energy_kinetic_value_provider_v.provide tag_eki ;;
let f_eki = Energy_kinetic_value_v.float_off_energy_kinetic_value val_eki;;

test_number 10 (
  Constants_v.are_equal_at_epsilon 1.e-12 f_eki 0.00495012500000000
);;

let val_epo = Energy_potential_value_provider_v.provide tag_epo ;;
let f_epo = Energy_potential_value_v.float_off_energy_potential_value val_epo;;

test_number 11 (
  Constants_v.are_equal_at_epsilon 1.e-12 f_epo 0.019800500000000
);;

let val_eto = Energy_total_value_provider_v.provide tag_eto ;;
let f_eto = Energy_total_value_v.float_off_energy_total_value val_eto;;

test_number 12 (
  Constants_v.are_equal_at_epsilon 1.e-12 f_eto 0.0247506250000000018
);;

let e_tot = f_eki +. f_epo;;

test_number 13 (
  Constants_v.are_equal_at_epsilon 1.e-12 f_eto e_tot
);;

