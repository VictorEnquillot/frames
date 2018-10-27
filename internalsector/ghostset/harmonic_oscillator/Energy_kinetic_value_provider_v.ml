(** {3 Energy_kinetic_value_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : VHAR:Parameters_v";
   "Current : VHAR:Energy_kinetic_value_provider_v";
   "Needed-by : VHAR:";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

let register = Energy_kinetic_value_register_v.register;;

(** move to Formula *)

let builder_son_tag_off_energy_kinetic_tag tag_eki =
  let soi_eki = Tag_v.sole_index_off_tag tag_eki in
  let sym_vel = Velocity_symbol_t.Velocity_x in
  let soi_vel = Sole_index_v.make 1 soi_eki in
  Tag_v.make sym_vel soi_vel
;;

(** {6 Building.} *)

let build_and_store tag_eki =
  let m = Parameters_value_provider_v.provide_float "mass" in

  let tag_vel = builder_son_tag_off_energy_kinetic_tag tag_eki in 

  let val_vel = Velocity_value_provider_v.provide tag_vel in
  let flo_vel = Velocity_value_v.float_off_velocity_value val_vel in

  let flo_eki = Constants_v.one_half *. m *. flo_vel *. flo_vel in
  let val_eki = Energy_kinetic_value_v.make flo_eki in

  Energy_kinetic_value_register_v.store tag_eki val_eki; 
  val_eki
;;

(** {6 Providing.} *)

let provide tag_eki =
  if Energy_kinetic_value_register_v.is_stored tag_eki
  then Energy_kinetic_value_register_v.retrieve tag_eki
  else build_and_store tag_eki
;;

let propagate () =
  let step_las = Tools_har_v.last_done_step_of_register register in
  let tag_eki = 
    Tools_har_v.after_last_step_tag_of_register_of_any_symbol_of_any_sole_index 
      register
      Energy_kinetic_symbol_t.Energy_kinetic
      [1; step_las +1] (* suppposed to be target *)
 in
  provide tag_eki
;;


