(** {3 Energy_potential_value_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : VHAR:Energy_kinetic_value_register_v";
   "Current : VHAR:Energy_potential_value_provider_v";
   "Needed-by : VHAR:";
   "How-is-it-done: X are not recomputed if present"
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

let register = Energy_potential_value_register_v.register;;

let path_of_register reg = 
  let tag_vel_l = Register_v.key_list reg in
  let soi_l = List.map Tag_v.sole_index_off_tag tag_vel_l in
  let pat_l = List.map List_v.drop_last_element_off_list soi_l in
  List_v.only_element_of_repeated_list pat_l
;;

let velocity_sole_index_of_current_step step =
(* velocity [1; 1; 1] no step *)
(* potential [1; 1] *)
  let pat_vel = path_of_register Velocity_value_register_v.register in 
  pat_vel @ [step]
;;

let x_tag_in_velocity_of_energy_potential_tag tag_epo =
  let soi_epo = Tag_v.sole_index_off_tag tag_epo in
  let step = List_v.ultimate_element_off_list soi_epo in
  let sym_x = Coordinate_current_symbol_t.Current_x in
  let soi_vel = velocity_sole_index_of_current_step step in
  let soi_x = Sole_index_v.make 1 soi_vel in
  Tag_v.make sym_x soi_x
;;

let is_x_tag_in_velocity_stored_of_energy_potential_tag tag_epo =
  if not (Register_v.is_empty Velocity_value_register_v.register)
  then
    begin
      let tag_x_in_vel = x_tag_in_velocity_of_energy_potential_tag tag_epo in
      Coordinate_current_value_register_v.is_stored tag_x_in_vel 
    end
  else 
    false
;;

(** move to Formula *)

let builder_son_tag_off_energy_potential_tag tag_epo =
  let soi_epo = Tag_v.sole_index_off_tag tag_epo in
  let sym_x = Coordinate_current_symbol_t.Current_x in
  let soi_x = Sole_index_v.make 1 soi_epo in
  Tag_v.make sym_x soi_x
;;

(** {6 Building.} *)

let build_and_store tag_epo =
  let k = Parameters_value_provider_v.provide_float "force_constant" in

  let tag_x =
    if is_x_tag_in_velocity_stored_of_energy_potential_tag tag_epo
    then
      x_tag_in_velocity_of_energy_potential_tag tag_epo
    else 
      builder_son_tag_off_energy_potential_tag tag_epo 
  in 

  let val_x = Coordinate_current_value_provider_v.provide tag_x in
  let flo_x = Coordinate_current_value_v.float_off_coordinate_current_value val_x in

  let flo_epo = Constants_v.one_half *. k *. flo_x *. flo_x in
  let val_epo = Energy_potential_value_v.make flo_epo in

  Energy_potential_value_register_v.store tag_epo val_epo; 
  val_epo
;;

(** {6 Providing.} *)

let provide tag_epo =
  if Energy_potential_value_register_v.is_stored tag_epo
  then Energy_potential_value_register_v.retrieve tag_epo
  else build_and_store tag_epo
;;

let propagate () =
  let step_las = Tools_har_v.last_done_step_of_register register in
  let tag_eki = 
    Tools_har_v.after_last_step_tag_of_register_of_any_symbol_of_any_sole_index 
      register
      Energy_potential_symbol_t.Energy_potential
      [1; step_las +1] (* suppposed to be target *)
 in
  provide tag_eki
;;



