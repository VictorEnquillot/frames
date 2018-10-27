(** {3 Factorial_value_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Factorial_value_provider_v";
   "Needed-by : VGNR:Coordinate_cartesian_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a BT-leaf type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Register.} *)

let nam_reg = "factorial_value_register";;

let factorial_value_register : 
    (Factorial_tag_t.factorial_tag, 
     Factorial_value_t.factorial_value)
    Register_t.register = Register_v.make 137
;;

(** {6 Storing.} *)

let store tag_fac val_fac =
  try Register_v.store factorial_value_register tag_fac val_fac
  with Failure ("Already_stored:Register_v.store") ->
    failwith ("Already_stored:Gsp_v.store")
;;

let store_force tag_fac val_fac =
  Register_v.store_force factorial_value_register tag_fac val_fac
;;

(** {6 Building.} *)

let build tag_fac =
  Factorial_value_v.retrieve tag_fac
;;

let build_and_store tag_fac =
  let val_tri = build tag_fac in
  store tag_fac val_tri; 
  val_tri
;;

(** {6 Retrieving.} *)

let retrieve tag_fac =
  try Register_v.retrieve factorial_value_register tag_fac 
  with Failure ("Not_stored:Register_v.retrieve") ->
    failwith ("Not_stored:Gsp_v.retrieve")
;;  

(** {6 Building.} *)

(** {6 Providing.} *)

let provide tag_fac =
  if Register_v.is_stored factorial_value_register tag_fac 
  then retrieve tag_fac
  else build_and_store tag_fac
;;
