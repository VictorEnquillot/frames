open Make_test_v;;

testing "Velocity_value_provider_v with
   Velocity_value_provider_u_any.ml";;

(* toplevel 
   #use "Velocity_value_provider_u_any.ml";; 

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

let sym_x = Coordinate_current_symbol_t.Current_x;;
let sym_vel = Velocity_symbol_t.Velocity_x;;

(** Step 1 *)

let soi_vel = [1; 199];;
let tag_vel = Tools_har_v.after_last_step_tag_of_register_of_any_symbol_of_any_sole_index reg_vel sym_vel soi_vel;;

test_number 8 (
tag_vel
(* : Velocity_symbol_t.velocity_symbol Tag_t.tag *)
=
  (Velocity_symbol_t.Velocity_x, [1; 1])
);;

Register_v.delete reg_x;;

let (tag_x_n, tag_x_2) = Velocity_value_provider_v.builder_son_tag_doublet_off_velocity_tag tag_vel;;

test_number 9 (
tag_x_n 
(* : Coordinate_current_symbol_t.coordinate_current_symbol Tag_t.tag *)
=
  (Coordinate_current_symbol_t.Current_x, [1; 1; 1])
);;

test_number 10 (
tag_x_2 
(* : Coordinate_current_symbol_t.coordinate_current_symbol Tag_t.tag *)
  =
(Coordinate_current_symbol_t.Current_x, [1; 1; -1])
);;

let val_x_n = Coordinate_current_value_provider_v.provide tag_x_n ;;
let f_x_n = Coordinate_current_value_v.float_off_coordinate_current_value val_x_n;;

test_number 11 (
  Constants_v.are_equal_at_epsilon 1.e-12 f_x_n 0.199
);;

let val_x_2 = Coordinate_current_value_provider_v.provide tag_x_2 ;;
let f_x_2 = Coordinate_current_value_v.float_off_coordinate_current_value val_x_2;;

test_number 12 (
  Constants_v.are_equal_at_epsilon 1.e-12 f_x_2 0.
);;

(** Velocity Step Current 1 *)

Register_v.delete reg_x;;

let val_vel = Velocity_value_provider_v.provide tag_vel ;;
let f_vel = Velocity_value_v.float_off_velocity_value val_vel;;

test_number 13 (
  Constants_v.are_equal_at_epsilon 1.e-12 f_vel 0.0995
);;

(** Step Current 2 *)

let val_vel = Velocity_value_provider_v.propagate ();;
let f_vel = Velocity_value_v.float_off_velocity_value val_vel;;

test_number 14 (
  Constants_v.are_equal_at_epsilon 1.e-12 f_vel 0.24800500000000
);;

let val_vel = Velocity_value_provider_v.propagate ();;
let val_vel = Velocity_value_provider_v.propagate ();;

(** Step Current 5 *)

let val_vel = Velocity_value_provider_v.propagate ();;
let f_vel = Velocity_value_v.float_off_velocity_value val_vel;;

test_number 15 (
  Constants_v.are_equal_at_epsilon 1.e-12 f_vel 0.6728381049950
);;

let tag_vel_l = Register_v.key_list Velocity_value_register_v.register;;

test_number 16 (
tag_vel_l 
(* : Velocity_tag_t.velocity_tag list *)
=
  [(Velocity_symbol_t.Velocity_x, [1; 3]);
   (Velocity_symbol_t.Velocity_x, [1; 2]);
   (Velocity_symbol_t.Velocity_x, [1; 5]);
   (Velocity_symbol_t.Velocity_x, [1; 1]);
   (Velocity_symbol_t.Velocity_x, [1; 4])]
);;

let key_n_val_l = Register_v.entry_list Velocity_value_register_v.register;;

test_number 17 (
key_n_val_l 
(* :
  (Velocity_tag_t.velocity_tag *
   Velocity_value_t.velocity_value)
  list *)
  =
[((Velocity_symbol_t.Velocity_x, [1; 3]),
  Velocity_value_t.Velocity 0.394029950000000073);
 ((Velocity_symbol_t.Velocity_x, [1; 2]),
  Velocity_value_t.Velocity 0.248005000000000031);
 ((Velocity_symbol_t.Velocity_x, [1; 5]),
  Velocity_value_t.Velocity 0.672838104995000075);
 ((Velocity_symbol_t.Velocity_x, [1; 1]), 
  Velocity_value_t.Velocity 0.0995);
 ((Velocity_symbol_t.Velocity_x, [1; 4]),
  Velocity_value_t.Velocity 0.536114600500000149)]
);;

while 
  ( Tools_har_v.last_done_step_of_register reg_vel < target_step )
do
  let val_vel = Velocity_value_provider_v.propagate () in
  let f_vel = Velocity_value_v.float_off_velocity_value val_vel in
  Format.fprintf 
    Format.std_formatter 
    "  step %i value %f@." 
    (Tools_har_v.last_done_step_of_register reg_vel)
    f_vel;
done

let f_vel = Velocity_value_v.float_off_velocity_value val_vel;;

test_number 18 (
  Constants_v.are_equal_at_epsilon 1.e-12 f_vel 0.672838104995000
);;

let reg = Velocity_value_register_v.register;;
let sym_any = Velocity_symbol_t.Velocity_x;;
let soi_any = [1; 55];;

let tag_cst = Tools_har_v.after_last_step_tag_of_register_of_any_symbol_of_any_sole_index reg sym_any soi_any;;

test_number 19 (
tag_cst 
(* : Velocity_symbol_t.velocity_symbol Tag_t.tag *)
=
  (Velocity_symbol_t.Velocity_x, [1; 6])
);;

Velocity_value_register_v.dump ();; 

