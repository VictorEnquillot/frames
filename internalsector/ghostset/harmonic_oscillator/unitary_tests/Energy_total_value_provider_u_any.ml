open Make_test_v;;

testing "Energy_total_value_provider_v with
   Energy_total_value_provider_u_dt_0_1.ml";;

(* toplevel 
   #use "Energy_total_value_provider_u_dt_0_1.ml";; 

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
  Constants_v.are_equal_at_epsilon 1.e-12 f_eki 0.0049501250
);;

let val_epo = Energy_potential_value_provider_v.provide tag_epo ;;
let f_epo = Energy_potential_value_v.float_off_energy_potential_value val_epo;;

test_number 11 (
  Constants_v.are_equal_at_epsilon 1.e-12 f_epo 0.01980050000
);;

let val_eto = Energy_total_value_provider_v.provide tag_eto ;;
let f_eto = Energy_total_value_v.float_off_energy_total_value val_eto;;

test_number 12 (
  Constants_v.are_equal_at_epsilon 1.e-12 f_eto 0.024750625000
);;

let e_tot = f_eki +. f_epo;;

test_number 13 (
  Constants_v.are_equal_at_epsilon 1.e-12 f_eto e_tot
);;

(** Step Current 1 *)

let val_eto = Energy_total_value_provider_v.provide tag_eto ;;
let f_eto = Energy_total_value_v.float_off_energy_total_value val_eto;;

test_number 14 (
  Constants_v.are_equal_at_epsilon 1.e-12 f_eto 0.024750625000
);;

Energy_total_value_register_v.dump ();;

(** Step Current 2 *)

let val_eto = Energy_total_value_provider_v.propagate ();;
let f_eto = Energy_total_value_v.float_off_energy_total_value val_eto;;

test_number 15 (
  Constants_v.are_equal_at_epsilon 1.e-12 f_eto 0.0745642000625000
);;

let tag_eto_l = Register_v.key_list Energy_total_value_register_v.register;;

test_number 16 (
tag_eto_l 
(* : Energy_total_tag_t.energy_total_tag list *)
=
[(Energy_total_symbol_t.Energy_total, [1; 2]);
 (Energy_total_symbol_t.Energy_total, [1; 1])]
);;

let key_n_val_l = Register_v.entry_list Energy_total_value_register_v.register;;

test_number 17 (
key_n_val_l 
(* :
  (Energy_total_tag_t.energy_total_tag *
   Energy_total_value_t.energy_total_value)
  list *)
  =
 [((Energy_total_symbol_t.Energy_total, [1; 2]),
    Energy_total_value_t.Energy_total 0.0745642000625000301);
   ((Energy_total_symbol_t.Energy_total, [1; 1]),
    Energy_total_value_t.Energy_total 0.0247506250000000018)]
);;

while 
  ( Tools_har_v.last_done_step_of_register reg_eto < target_step )
do
  let val_eto = Energy_total_value_provider_v.propagate () in
  let f_eto = Energy_total_value_v.float_off_energy_total_value val_eto in
  Format.fprintf Format.std_formatter "@.  step %i value %f" 
    (Tools_har_v.last_done_step_of_register reg_eto) 
    f_eto;
done
;;

Format.fprintf Format.std_formatter "@.";; 

let f_eto = Energy_total_value_v.float_off_energy_total_value val_eto;;

test_number 18 (
  Constants_v.are_equal_at_epsilon 1.e-12 f_eto 0.0745642000625000301
);;

let sym_any = Energy_total_symbol_t.Energy_total;;
let soi_any = [1; 55];;
let tag_eto = Tools_har_v.after_last_step_tag_of_register_of_any_symbol_of_any_sole_index reg_eto sym_any soi_any;;

test_number 19 (
tag_eto 
(* : Energy_total_symbol_t.energy_total_symbol Tag_t.tag *)
=
  (Energy_total_symbol_t.Energy_total, [1; 6])
);;


let val_eto_l = Register_v.value_list reg_eto;;
let flo_eto_l = List.map Energy_total_value_v.float_off_energy_total_value val_eto_l;;

let ave_eto = (List_v.sigma_of_list_float flo_eto_l) /. (float_of_int (List.length flo_eto_l));;

test_number 20 (
ave_eto 
(* : float *)
= 
0.179662088721838586
);;

let ave_eto2 = (List_v.sigma_of_function_of_list_float (fun e -> e *. e) flo_eto_l) /. (float_of_int (List.length flo_eto_l));;

test_number 21 (
ave_eto2 
(* : float *)
= 
0.0492194847767688098
);;

let flu_eto = sqrt (ave_eto2 -. (ave_eto *. ave_eto ));;
test_number 22 (
flu_eto 
(* : float *)
= 
0.1301576684366888
);;


Energy_total_value_register_v.dump ();; 

Coordinate_current_value_register_v.dump ();; 

let tag_l = Register_v.key_list Coordinate_current_value_register_v.register;;
let val_l = Register_v.value_list Coordinate_current_value_register_v.register;;
let tag_n_val = Register_v.entry_list Coordinate_current_value_register_v.register;;


test_number 23(
tag_n_val 
(* : (Coordinate_current_tag_t.coordinate_current_tag *
   Coordinate_current_value_t.coordinate_current_value) list *)
  =
  [((Coordinate_current_symbol_t.Current_x, [1; 1; 1; 1; -1]),
    Coordinate_current_value_t.Current_x 0.);
   ((Coordinate_current_symbol_t.Current_x, [1; 1; 1; 1; 2]),
    Coordinate_current_value_t.Current_x 0.296010000000000051);
   ((Coordinate_current_symbol_t.Current_x, [1; 1; 1; 1; 1]),
    Coordinate_current_value_t.Current_x 0.199);
   ((Coordinate_current_symbol_t.Current_x, [1; 1; 1; 1; 5]),
    Coordinate_current_value_t.Current_x 0.56555640999000012);
   ((Coordinate_current_symbol_t.Current_x, [1; 1; 1; 1; 4]),
    Coordinate_current_value_t.Current_x 0.480209201000000085);
   ((Coordinate_current_symbol_t.Current_x, [1; 1; 1; 1; 0]),
    Coordinate_current_value_t.Current_x 0.1);
   ((Coordinate_current_symbol_t.Current_x, [1; 1; 1; 1; 3]),
    Coordinate_current_value_t.Current_x 0.39005990000000007)]
);;
