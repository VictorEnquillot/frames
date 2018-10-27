(** {3 Coordinate_step_minusone_value_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : VHAR:Coordinate_step_minusoneformula_v";
   "Current : VHAR:Coordinate_step_minusone_value_provider_v";
   "Needed-by : VHAR:";
   "What-is-it : It computes Value from Formula and builders Values";
   "Remark : Coordinate_step_minusonebasic of int is NOT a datastructure";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Building.} *)

let build_n_store tag_csm =
  let step_minusone_x = Parameters_value_provider_v.provide_float "initial_x" in

  let val_csm = Coordinate_current_value_v.make step_minusone_x in
  Coordinate_current_value_register_v.store tag_csm val_csm;
  val_csm
;;

(** {6 Providing.} *)

let provide tag_csm =
  if Coordinate_current_value_register_v.is_stored tag_csm
  then Coordinate_current_value_register_v.retrieve tag_csm
  else build_n_store tag_csm
;;

