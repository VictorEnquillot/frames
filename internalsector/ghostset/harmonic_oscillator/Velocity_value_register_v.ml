(** {3 Velocity_value_register_v} *)

(** {6 Documenting_for_db_tag} *)

let documentation () = 
  [
   "Needs: ";
   "Current : VHAR:Velocity_value_register_v";
   "Needed-by: ";
   "What-is-it: ";
   "How-is-it-done: ";
   "Example: ";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Register} *)

let register : 
    (Velocity_tag_t.velocity_tag, 
     Velocity_value_t.velocity_value)
    Register_t.register = Register_v.make 137
;;

let name_of_key tag_vel =
  Tag_v.name Velocity_symbol_v.name tag_vel
;;

let name_of_value val_vel  =
  let flo = Velocity_value_v.float_off_velocity_value val_vel in
  (Format.sprintf "%f" flo)
 ;;

let is_empty () =
  Register_v.is_empty register
;;

let is_stored tag_vel =
  Register_v.is_stored register tag_vel
;;

let dump () =
  let key_n_val_l = Register_v.entry_list register in
  Doublet_list_v.name name_of_key name_of_value key_n_val_l
;;

(** {6 Retrieving.} *)

let retrieve tag_vel =
  try Register_v.retrieve register tag_vel 
  with Failure ("Not_stored:Register_v.retrieve") ->
    failwith ("Not_stored:Velocity_value_provider_v.retrieve")
;;  

(** {6 Storing.} *)

let store soi_vel sym_vel =
  let nam_fun = "store" in

  try Register_v.store register soi_vel sym_vel
  with Failure ("Already_stored:Register_v.ml:store") ->
    let sym_vel_old = retrieve soi_vel in
    if sym_vel <> sym_vel_old
    then 
      Error_messages_v.print_fatal_error nam_cod nam_fun
	(Format.sprintf "for key >%s< already stored value >%s< equal new one"
	   (name_of_key soi_vel) 
	   (name_of_value sym_vel_old) 

	)
	(Format.sprintf "for new one >%s<@.Register stores:@.    %s" 
	   (name_of_key soi_vel) 
	   (dump ())
	)
	"Check or re-run if it is a test"
    else 
      ();
;;

