open Make_test_v;;

testing "Coordinate_current_value_provider_v with
   Coordinate_current_value_provider_u_any.ml";;

(* toplevel 
   #use "Coordinate_current_value_provider_u_any.ml";; 

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

let ste_lst = Coordinate_current_value_provider_v.last_done_step ();;
let tag_mst = Coordinate_current_value_provider_v.minusone_step_tag ();;
let tag_zst = Coordinate_current_value_provider_v.zero_step_tag ();;
let tag_fst = Coordinate_current_value_provider_v.first_step_tag ();;
let tag_cst = Coordinate_current_value_provider_v.current_step_tag ();;

test_number 9 (
ste_lst 
(* : int *)
  = 
0
);;

test_number 10 (
tag_mst
(* : Coordinate_current_symbol_t.coordinate_current_symbol Tag_t.tag *)
=
  (Coordinate_current_symbol_t.Current_x, [1; -1])
);;

test_number 11 (
tag_zst 
(* : Coordinate_current_symbol_t.coordinate_current_symbol Tag_t.tag *)
=
  (Coordinate_current_symbol_t.Current_x, [1; 0])
);;

test_number 12 (
tag_fst 
(* : Coordinate_current_symbol_t.coordinate_current_symbol Tag_t.tag *)
=
  (Coordinate_current_symbol_t.Current_x, [1; 1])
);;

test_number 13 (
tag_cst 
(* : Coordinate_current_symbol_t.coordinate_current_symbol Tag_t.tag *)
=
  (Coordinate_current_symbol_t.Current_x, [1; 1])
);;

(** Step -1 *)

let tag_cur_apr = Coordinate_step_zero_tag_v.previous_step_tag_of_coordinate_step_zero_tag tag_zst;;
let val_cur_apr = Coordinate_step_minusone_value_provider_v.provide tag_cur_apr;;
let f_cur_apr = Coordinate_current_value_v.float_off_coordinate_current_value val_cur_apr;;

test_number 14 (
  Constants_v.are_equal_at_epsilon 1.e-12 f_cur_apr 0.0
);;

(** Step 0 *)

let val_csz = Coordinate_step_zero_value_provider_v.provide tag_zst ;;
let f_csz = Coordinate_current_value_v.float_off_coordinate_current_value val_csz;;

test_number 15 (
  Constants_v.are_equal_at_epsilon 1.e-12 f_csz 0.1
);;

(** Step Current 1 *)

let val_cst = Coordinate_current_value_provider_v.provide tag_cst ;;
let f_cst = Coordinate_current_value_v.float_off_coordinate_current_value val_cst;;

test_number 16 (
  Constants_v.are_equal_at_epsilon 1.e-12 f_cst 0.199
);;

Coordinate_current_value_register_v.dump ();;

(** Step Current 2 *)

let val_ccu = Coordinate_current_value_provider_v.propagate ();;
let f_ccu = Coordinate_current_value_v.float_off_coordinate_current_value val_ccu;;

test_number 17 (
  Constants_v.are_equal_at_epsilon 1.e-12 f_ccu 0.2960100000000000
);;

let val_ccu = Coordinate_current_value_provider_v.propagate ();;
let val_ccu = Coordinate_current_value_provider_v.propagate ();;

(** Step Current 5 *)

let val_ccu = Coordinate_current_value_provider_v.propagate ();;
let f_ccu = Coordinate_current_value_v.float_off_coordinate_current_value val_ccu;;

test_number 18 (
  Constants_v.are_equal_at_epsilon 1.e-12 f_ccu 0.565556409990000
);;

let tag_ccu_l = Register_v.key_list Coordinate_current_value_register_v.register;;

test_number 19 (
tag_ccu_l 
(* : Coordinate_current_tag_t.coordinate_current_tag list *)
=
   [(Coordinate_current_symbol_t.Current_x, [1; 3]);
   (Coordinate_current_symbol_t.Current_x, [1; -1]);
   (Coordinate_current_symbol_t.Current_x, [1; 0]);
   (Coordinate_current_symbol_t.Current_x, [1; 2]);
   (Coordinate_current_symbol_t.Current_x, [1; 5]);
   (Coordinate_current_symbol_t.Current_x, [1; 1]);
   (Coordinate_current_symbol_t.Current_x, [1; 4])]
);;

let key_n_val_l = Register_v.entry_list Coordinate_current_value_register_v.register;;

test_number 20 (
key_n_val_l 
(* :
  (Coordinate_current_tag_t.coordinate_current_tag *
   Coordinate_current_value_t.coordinate_current_value)
  list *)
  =
  [((Coordinate_current_symbol_t.Current_x, [1; 3]),
    Coordinate_current_value_t.Current_x 0.39005990000000007);
   ((Coordinate_current_symbol_t.Current_x, [1; -1]),
    Coordinate_current_value_t.Current_x 0.);
   ((Coordinate_current_symbol_t.Current_x, [1; 0]),
    Coordinate_current_value_t.Current_x 0.1);
   ((Coordinate_current_symbol_t.Current_x, [1; 2]),
    Coordinate_current_value_t.Current_x 0.296010000000000051);
   ((Coordinate_current_symbol_t.Current_x, [1; 5]),
    Coordinate_current_value_t.Current_x 0.56555640999000012);
   ((Coordinate_current_symbol_t.Current_x, [1; 1]),
    Coordinate_current_value_t.Current_x 0.199);
   ((Coordinate_current_symbol_t.Current_x, [1; 4]),
    Coordinate_current_value_t.Current_x 0.480209201000000085)]
);;

while 
  ( Coordinate_current_value_provider_v.last_done_step () < target_step )
do
  let val_ccu = Coordinate_current_value_provider_v.propagate () in
  let f_ccu = Coordinate_current_value_v.float_off_coordinate_current_value val_ccu in
  Format.fprintf 
    Format.std_formatter 
    "  step %i value %f@." 
    (Coordinate_current_value_provider_v.last_done_step ()) 
    f_ccu;
done

let f_ccu = Coordinate_current_value_v.float_off_coordinate_current_value val_ccu;;

test_number 21 (
  Constants_v.are_equal_at_epsilon 1.e-12 f_ccu (0.56555640999000012)
);;

let reg = Coordinate_current_value_register_v.register;;
let sym_any = Coordinate_current_symbol_t.Current_x;;
let soi_any = [1; 55];;

let tag_cst = Tools_har_v.after_last_step_tag_of_register_of_any_symbol_of_any_sole_index reg sym_any soi_any;;

test_number 22 (
tag_cst 
(* : Coordinate_current_symbol_t.coordinate_current_symbol Tag_t.tag *)
=
  (Coordinate_current_symbol_t.Current_x, [1; 6])
);;

Coordinate_current_value_register_v.dump ();; 

