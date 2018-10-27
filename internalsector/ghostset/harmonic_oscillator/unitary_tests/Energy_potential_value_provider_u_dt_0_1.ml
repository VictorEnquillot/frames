open Make_test_v;;

testing "Energy_potential_value_provider_v with
   Energy_potential_value_provider_u_any.ml";;

(* toplevel 
   #use "Energy_potential_value_provider_u_any.ml";; 

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

let sym_epo = Energy_potential_symbol_t.Energy_potential;;

(** Step 1 *)

let soi_epo = [1; 199];;
let tag_epo = Tools_har_v.after_last_step_tag_of_register_of_any_symbol_of_any_sole_index reg_epo sym_epo soi_epo;;

(** Coordinate_current Step 1 *)
let tag_x = Energy_potential_value_provider_v.builder_son_tag_off_energy_potential_tag tag_epo;;

test_number 8 (
tag_x
(* : Coordinate_current_symbol_t.velocity_symbol Tag_t.tag *)
  =
(Coordinate_current_symbol_t.Current_x, [1; 1; 1])
);;

let val_x = Coordinate_current_value_provider_v.provide tag_x ;;
let f_x = Coordinate_current_value_v.float_off_coordinate_current_value val_x;;

test_number 9 (
  Constants_v.are_equal_at_epsilon 1.e-12 f_x 0.199
);;

let val_epo = Energy_potential_value_provider_v.provide tag_epo ;;
let f_epo = Energy_potential_value_v.float_off_energy_potential_value val_epo;;

test_number 10 (
  Constants_v.are_equal_at_epsilon 1.e-12 f_epo 0.019800500
);;

let e_pot = 0.5 *. k *. f_x *. f_x;;

test_number 11 (
  Constants_v.are_equal_at_epsilon 1.e-12 f_epo e_pot
);;

(** Step Current 1 *)

let val_epo = Energy_potential_value_provider_v.provide tag_epo ;;
let f_epo = Energy_potential_value_v.float_off_energy_potential_value val_epo;;

test_number 12 (
  Constants_v.are_equal_at_epsilon 1.e-12 f_epo 0.0198005000000000
);;

Energy_potential_value_register_v.dump ();;

(** Step Current 2 *)

let val_epo = Energy_potential_value_provider_v.propagate ();;
let f_epo = Energy_potential_value_v.float_off_energy_potential_value val_epo;;

test_number 13 (
  Constants_v.are_equal_at_epsilon 1.e-12 f_epo 0.04381096005000
);;

let tag_epo_l = Register_v.key_list Energy_potential_value_register_v.register;;

test_number 14 (
tag_epo_l 
(* : Energy_potential_tag_t.energy_potential_tag list *)
=
[(Energy_potential_symbol_t.Energy_potential, [1; 2]);
 (Energy_potential_symbol_t.Energy_potential, [1; 1])]
);;

let key_n_val_l = Register_v.entry_list Energy_potential_value_register_v.register;;

test_number 15 (
key_n_val_l 
(* :
  (Energy_potential_tag_t.energy_potential_tag *
   Energy_potential_value_t.energy_potential_value)
  list *)
  =
  [((Energy_potential_symbol_t.Energy_potential, [1; 2]),
    Energy_potential_value_t.Energy_potential 0.043810960050000014);
   ((Energy_potential_symbol_t.Energy_potential, [1; 1]),
    Energy_potential_value_t.Energy_potential 0.0198005000000000021)]
);;

while 
  ( Tools_har_v.last_done_step_of_register reg_epo < target_step )
do
  let val_epo = Energy_potential_value_provider_v.propagate () in
  let f_epo = Energy_potential_value_v.float_off_energy_potential_value val_epo in
  Format.fprintf 
    Format.std_formatter 
    "  step %i value %f@." 
    (Tools_har_v.last_done_step_of_register reg_epo) 
    f_epo;
done

let f_epo = Energy_potential_value_v.float_off_energy_potential_value val_epo;;

test_number 16 (
  Constants_v.are_equal_at_epsilon 1.e-12 f_epo 0.04381096005000
);;

let sym_any = Energy_potential_symbol_t.Energy_potential;;
let soi_any = [1; 55];;
let tag_epo = Tools_har_v.after_last_step_tag_of_register_of_any_symbol_of_any_sole_index reg_epo sym_any soi_any;;

test_number 17 (
tag_epo 
(* : Energy_potential_symbol_t.energy_potential_symbol Tag_t.tag *)
=
  (Energy_potential_symbol_t.Energy_potential, [1; 6])
);;

Energy_potential_value_register_v.dump ();; 

let tag_l = Register_v.key_list Coordinate_current_value_register_v.register;;
let val_l = Register_v.value_list Coordinate_current_value_register_v.register;;
let tag_n_val = Register_v.entry_list Coordinate_current_value_register_v.register;;


test_number 18 (
tag_n_val 
(* : (Coordinate_current_tag_t.coordinate_current_tag *
   Coordinate_current_value_t.coordinate_current_value) list *)
  =
  [((Coordinate_current_symbol_t.Current_x, [1; 1; 5]),
    Coordinate_current_value_t.Current_x 0.56555640999000012);
   ((Coordinate_current_symbol_t.Current_x, [1; 1; 0]),
    Coordinate_current_value_t.Current_x 0.1);
   ((Coordinate_current_symbol_t.Current_x, [1; 1; -1]),
    Coordinate_current_value_t.Current_x 0.);
   ((Coordinate_current_symbol_t.Current_x, [1; 1; 1]),
    Coordinate_current_value_t.Current_x 0.199);
   ((Coordinate_current_symbol_t.Current_x, [1; 1; 2]),
    Coordinate_current_value_t.Current_x 0.296010000000000051);
   ((Coordinate_current_symbol_t.Current_x, [1; 1; 4]),
    Coordinate_current_value_t.Current_x 0.480209201000000085);
   ((Coordinate_current_symbol_t.Current_x, [1; 1; 3]),
    Coordinate_current_value_t.Current_x 0.39005990000000007)]
);;

