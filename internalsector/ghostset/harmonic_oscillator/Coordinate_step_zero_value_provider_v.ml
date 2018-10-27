(** {3 Coordinate_step_zero_value_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : VHAR:Coordinate_step_zeroformula_v";
   "Current : VHAR:Coordinate_step_zero_value_provider_v";
   "Needed-by : VHAR:";
   "What-is-it : It computes Value from Formula and builders Values";
   "Remark : Coordinate_step_zerobasic of int is NOT a datastructure";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

let step_minusone_x_value_of_coordinate_step_zero_tag tag_csz =
  let tag_cur_apr = 
    Coordinate_step_zero_tag_v.previous_step_tag_of_coordinate_step_zero_tag 
      tag_csz 
  in 
  Coordinate_step_minusone_value_provider_v.provide tag_cur_apr
;;

(** {6 Building.} *)

let build_n_store tag_csz =
  let vx_0 = Parameters_value_provider_v.provide_float "initial_velocity_x" in
  let dt = Parameters_value_provider_v.provide_float "time_step" in

  let val_step_minusone_x = step_minusone_x_value_of_coordinate_step_zero_tag tag_csz in
  let step_minusone_x = 
    Coordinate_current_value_v.float_off_coordinate_current_value 
      val_step_minusone_x
  in
  let step_zero_x = step_minusone_x +. (vx_0 *. dt) in

  let val_csz = Coordinate_current_value_v.make step_zero_x in
  Coordinate_current_value_register_v.store tag_csz val_csz;
  val_csz
;;

(** {6 Providing.} *)

let provide tag_csz =
  if Coordinate_current_value_register_v.is_stored tag_csz
  then Coordinate_current_value_register_v.retrieve tag_csz
  else build_n_store tag_csz
;;

