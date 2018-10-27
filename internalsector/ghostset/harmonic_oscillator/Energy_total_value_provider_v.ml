(** {3 Energy_total_value_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : VHAR:Parameters_v";
   "Current : VHAR:Energy_total_value_provider_v";
   "Needed-by : VHAR:";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** move to Formula *)

let builder_son_tag_doublet_off_energy_total_tag tag_eto =
  let soi_eto = Tag_v.sole_index_off_tag tag_eto in
  let sym_eki = Energy_kinetic_symbol_t.Energy_kinetic in
  let soi_eki = Sole_index_v.make 1 soi_eto in
  let tag_eki = Tag_v.make sym_eki soi_eki in

  let sym_epo = Energy_potential_symbol_t.Energy_potential in
  let soi_epo = Sole_index_v.make 2 soi_eto in
  let tag_epo = Tag_v.make sym_epo soi_epo in
  
  Doublet_v.make tag_eki tag_epo
;;

(** {6 Building.} *)

let build_and_store tag_eto =

  let (tag_eki, tag_epo) = builder_son_tag_doublet_off_energy_total_tag tag_eto in

  let val_eki = Energy_kinetic_value_provider_v.provide tag_eki in
  let val_epo = Energy_potential_value_provider_v.provide tag_epo in

  let flo_epo = Energy_potential_value_v.float_off_energy_potential_value val_epo in
  let flo_eki = Energy_kinetic_value_v.float_off_energy_kinetic_value val_eki in

  let flo_eto = flo_eki +. flo_epo in
  let val_eto = Energy_total_value_v.make flo_eto in

  Energy_total_value_register_v.store tag_eto val_eto; 
  val_eto
;;

(** {6 Providing.} *)

let provide tag_eto =
  if Energy_total_value_register_v.is_stored tag_eto
  then Energy_total_value_register_v.retrieve tag_eto
  else build_and_store tag_eto
;;

let propagate () =
  let step_cur = 
    Tools_har_v.last_done_step_of_register 
      Energy_total_value_register_v.register
  in
  let tag_eto = 
    Tools_har_v.after_last_step_tag_of_register_of_any_symbol_of_any_sole_index 
      Energy_total_value_register_v.register
      Energy_total_symbol_t.Energy_total
      [1; step_cur] (* suppposed to be target *)
 in
  provide tag_eto
;;

