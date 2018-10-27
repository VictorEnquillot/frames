open Make_test_v;;

testing "Energy_total_value_provider_v with
   Energy_total_value_provider_u_any.ml";;

(* toplevel 
   #use "Energy_total_value_provider_u_any.ml";; 

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
Parameters_value_register_v.store "target_step" (Parameters_value_v.make"target_step" "5000");;
Parameters_value_register_v.store "initial_velocity_x" (Parameters_value_v.make "initial_velocity_x" "1.");;
Parameters_value_register_v.store "mass" (Parameters_value_v.make "mass" "1.");;
Parameters_value_register_v.store "force_constant" (Parameters_value_v.make "force_constant" "1.");;
Parameters_value_register_v.store "time_step" (Parameters_value_v.make "time_step" "0.0005");;
Parameters_value_register_v.store "initial_x" (Parameters_value_v.make "initial_x" "0.0");;

Parameters_value_register_v.dump ();;

let target_step = Parameters_value_provider_v.provide_integer "target_step";;
let first_step = Parameters_value_provider_v.provide_integer "first_step";;
let c0_x = Parameters_value_provider_v.provide_float "initial_x";;
let v0_x = Parameters_value_provider_v.provide_float "initial_velocity_x";;
let dt = Parameters_value_provider_v.provide_float "time_step";;

let omega = Parameters_value_provider_v.provide_float "omega";;

let period = Constants_v.two_pi /. omega;;
let time = (float_of_int target_step) *. dt;;

test_number 1 (target_step (* : int *) = 5000);;
test_number 2 (first_step (* : int *) = 1);;
test_number 3 (c0_x (* : float *) = 0.0);;
test_number 4 (v0_x (* : float *) = 1.0);;
test_number 5 (dt (* : float *) = 0.0005);;
test_number 6 (omega (* : float *) = 1.);;


let step_last = Tools_har_v.last_done_step_of_register reg_epo;;

test_number 7 (step_last (* : int *)  = 0);;

let sym_eto = Energy_total_symbol_t.Energy_total;;

(** Step 1 *)

let soi_eto = [1; 199];;
let tag_eto = Tools_har_v.after_last_step_tag_of_register_of_any_symbol_of_any_sole_index reg_eto sym_eto soi_eto;;

let val_eto = Energy_total_value_provider_v.provide tag_eto ;;
let f_eto = Energy_total_value_v.float_off_energy_total_value val_eto;;

while 
  ( Tools_har_v.last_done_step_of_register reg_eto < target_step )
do
  let val_eto = Energy_total_value_provider_v.propagate () in
  let f_eto = Energy_total_value_v.float_off_energy_total_value val_eto in
  let step = Tools_har_v.last_done_step_of_register reg_eto in
  if ((1000 * (step /1000)) = step)
  then Format.fprintf Format.std_formatter "@.  step %i value %f" step f_eto;
done;;

print_newline ();;

let val_eto_l = Register_v.value_list reg_eto;;
let flo_eto_l = List.map Energy_total_value_v.float_off_energy_total_value val_eto_l;;

let ave_eto = (List_v.sigma_of_list_float flo_eto_l) /. (float_of_int (List.length flo_eto_l));;

let ave_eto2 = (List_v.sigma_of_function_of_list_float (fun e -> e *. e) flo_eto_l) /. (float_of_int (List.length flo_eto_l));;

let flu_eto = sqrt (ave_eto2 -. (ave_eto *. ave_eto ));;

