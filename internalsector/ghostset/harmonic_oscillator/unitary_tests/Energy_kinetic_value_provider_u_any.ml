open Make_test_v;;

testing "Energy_kinetic_value_provider_v with
   Energy_kinetic_value_provider_u_any.ml";;

(* toplevel 
   #use "Energy_kinetic_value_provider_u_any.ml";; 

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
let m = Parameters_value_provider_v.provide_float "mass";;

test_number 1 (target_step (* : int *) = 5);;
test_number 2 (first_step (* : int *) = 1);;
test_number 3 (c0_x (* : float *) = 0.0);;
test_number 4 (v0_x (* : float *) = 1.0);;
test_number 5 (dt (* : float *) = 0.1);;
test_number 6 (omega (* : float *) = 1.);;
test_number 7 (m (* : float *) = 1.);;

let step_last = Tools_har_v.last_done_step_of_register reg_epo;;

test_number 8 (step_last (* : int *)  = 0);;


let sym_eki = Energy_kinetic_symbol_t.Energy_kinetic;;

(** Step 1 *)

let soi_eki = [1; 199];;
let tag_eki = Tools_har_v.after_last_step_tag_of_register_of_any_symbol_of_any_sole_index reg_eki sym_eki soi_eki;;

(** Velocity Step 1 *)
let tag_vel = Energy_kinetic_value_provider_v.builder_son_tag_off_energy_kinetic_tag tag_eki;;

test_number 9 (
tag_vel
(* : Velocity_symbol_t.velocity_symbol Tag_t.tag *)
  =
(Velocity_symbol_t.Velocity_x, [1; 1; 1])
);;

let val_vel = Velocity_value_provider_v.provide tag_vel ;;
let f_vel = Velocity_value_v.float_off_velocity_value val_vel;;

test_number 10 (
  Constants_v.are_equal_at_epsilon 1.e-12 f_vel 0.0995
);;

let val_eki = Energy_kinetic_value_provider_v.provide tag_eki ;;
let f_eki = Energy_kinetic_value_v.float_off_energy_kinetic_value val_eki;;

test_number 11 (
  Constants_v.are_equal_at_epsilon 1.e-12 f_eki 0.004950125
);;

let e_kin = 0.5 *. m *. f_vel *. f_vel;;

test_number 12 (
  Constants_v.are_equal_at_epsilon 1.e-12 f_eki e_kin
);;

(** Step Current 1 *)

let val_eki = Energy_kinetic_value_provider_v.provide tag_eki ;;
let f_eki = Energy_kinetic_value_v.float_off_energy_kinetic_value val_eki;;

test_number 13 (
  Constants_v.are_equal_at_epsilon 1.e-12 f_eki 0.00495012500
);;

Energy_kinetic_value_register_v.dump ();;

(** Step Current 2 *)

let val_eki = Energy_kinetic_value_provider_v.propagate ();;
let f_eki = Energy_kinetic_value_v.float_off_energy_kinetic_value val_eki;;

test_number 14 (
  Constants_v.are_equal_at_epsilon 1.e-12 f_eki 0.0307532400125000
);;

let tag_eki_l = Register_v.key_list Energy_kinetic_value_register_v.register;;

test_number 15 (
tag_eki_l 
(* : Energy_kinetic_tag_t.energy_kinetic_tag list *)
=
  [(Energy_kinetic_symbol_t.Energy_kinetic, [1; 2]);
   (Energy_kinetic_symbol_t.Energy_kinetic, [1; 1])]
);;

let key_n_val_l = Register_v.entry_list Energy_kinetic_value_register_v.register;;

test_number 16 (
key_n_val_l 
(* :
  (Energy_kinetic_tag_t.energy_kinetic_tag *
   Energy_kinetic_value_t.energy_kinetic_value)
  list *)
  =
  [((Energy_kinetic_symbol_t.Energy_kinetic, [1; 2]),
    Energy_kinetic_value_t.Energy_kinetic 0.0307532400125000091);
   ((Energy_kinetic_symbol_t.Energy_kinetic, [1; 1]),
    Energy_kinetic_value_t.Energy_kinetic 0.00495012500000000053)]
);;

while 
  ( Tools_har_v.last_done_step_of_register reg_eki < target_step )
do
  let val_eki = Energy_kinetic_value_provider_v.propagate () in
  let f_eki = Energy_kinetic_value_v.float_off_energy_kinetic_value val_eki in
  Format.fprintf 
    Format.std_formatter 
    "@.  step %i value %f" (Tools_har_v.last_done_step_of_register reg_eki) 
    f_eki;
done;;
print_newline ();;

let f_eki = Energy_kinetic_value_v.float_off_energy_kinetic_value val_eki;;

test_number 17 (
  Constants_v.are_equal_at_epsilon 1.e-12 f_eki 0.0307532400125000
);;

let sym_any = Energy_kinetic_symbol_t.Energy_kinetic;;
let soi_any = [1; 55];;
let tag_eki = Tools_har_v.after_last_step_tag_of_register_of_any_symbol_of_any_sole_index reg_eki sym_any soi_any;;

test_number 18 (
tag_eki 
(* : Energy_kinetic_symbol_t.energy_kinetic_symbol Tag_t.tag *)
=
  (Energy_kinetic_symbol_t.Energy_kinetic, [1; 6])
);;

Energy_kinetic_value_register_v.dump ();; 

