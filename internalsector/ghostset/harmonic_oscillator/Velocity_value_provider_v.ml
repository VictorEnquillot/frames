(** {3 Velocity_value_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : VHAR:Parameters_v";
   "Current : VHAR:Velocity_value_provider_v";
   "Needed-by : VHAR:";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** move to Formula *)

let builder_son_tag_doublet_off_velocity_tag tag_vel =
  let soi_vel = Tag_v.sole_index_off_tag tag_vel in

  let sym_x_n = Coordinate_current_symbol_v.current_x in

  let soi_x_n = Sole_index_v.make 1 soi_vel in
  let tag_x_n = Tag_v.make sym_x_n soi_x_n in

  let step_cur = List_v.ultimate_element_off_list soi_vel in
  let soi_x_2 = 
    List_v.replace_last_element_of_element_of_list (step_cur-2) soi_x_n
  in
  let tag_x_2 = Tag_v.make sym_x_n soi_x_2 in
  
  Doublet_v.make tag_x_n tag_x_2
;;

(** {6 Building.} *)

let build_and_store tag_vel =

  let (tag_x_n, tag_x_2) = builder_son_tag_doublet_off_velocity_tag tag_vel in

  let val_x_n = Coordinate_current_value_provider_v.provide tag_x_n in
  let val_x_2 = Coordinate_current_value_provider_v.provide tag_x_2 in

  let flo_x_n = Coordinate_current_value_v.float_off_coordinate_current_value val_x_n in
  let flo_x_2 = Coordinate_current_value_v.float_off_coordinate_current_value val_x_2 in

  let flo_vel = Constants_v.one_half *. flo_x_n +. flo_x_2 in
  let val_vel = Velocity_value_v.make flo_vel in

  Velocity_value_register_v.store tag_vel val_vel; 
  val_vel
;;

(** {6 Providing.} *)

let provide tag_vel =
  if Velocity_value_register_v.is_stored tag_vel
  then Velocity_value_register_v.retrieve tag_vel
  else build_and_store tag_vel
;;

let propagate () =
  let step_las = 
    Tools_har_v.last_done_step_of_register 
      Velocity_value_register_v.register
  in
  let tag_vel = 
    Tools_har_v.after_last_step_tag_of_register_of_any_symbol_of_any_sole_index 
      Velocity_value_register_v.register
      Velocity_symbol_t.Velocity_x
      [1; step_las +1] (* suppposed to be target *)
 in
  provide tag_vel
;;

