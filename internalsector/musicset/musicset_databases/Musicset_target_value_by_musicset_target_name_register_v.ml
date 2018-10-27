(** {3 Musicset_target_value_by_musicset_target_name_register_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : DFIG:";
   "Current : PFIG:Musicset_target_value_by_musicset_target_name_register_v";
   "Needed-by :"; 
   "What-is-it :";
   "Invariant :";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "Target_value_by_musicset_target_name_register_v.register";;

let register : 
    (string, 
     Musicset_target_value_t.target_value) 
    Register_t.register = 
  Format.fprintf Format.std_formatter "@. --- Creating  %s --- @." nam_reg;
  Register_v.make 137
;;

let name_of_key nam_tar =
  nam_tar
;;

let name_of_value val_tar =
  Musicset_target_value_v.string_of_target_value val_tar
;;

let dump () = 
  Register_v.string_of_register 
    name_of_key
    name_of_value
    ";\n   "
    register
;;

(** {6 Retrieving.} *)

let retrieve nam_tar =
  try Register_v.retrieve register nam_tar 
  with Failure ("Not_stored:Register_v.retrieve") ->
    failwith ("Not_stored:Ivp_v.retrieve")
;;  

(** {6 Storing.} *)

let error_message_already_stored_value_of_key_of_value nam_tar val_tar =
  let nam_fun = "already_stored_message" in
  
  let val_tar_old = retrieve nam_tar in
  if val_tar <> val_tar_old
  then 
    Error_messages_v.print_fatal_error nam_cod nam_fun
      (Format.sprintf "for key >%s<@.    already stored value :@.   %s@.    equal new one :"
         (name_of_key nam_tar) 
         (name_of_value val_tar_old)
      )
      (Format.sprintf "for new one :@.   %s@.Register stores:@.  %s" 
         (name_of_value val_tar)
         (dump ())
      )
      "Check or re-run if it is a test"
  else 
    Error_messages_v.print_warning nam_cod nam_fun
      (Format.sprintf "for key >%s<@.    the same value has already been stored:@.   %s@."
         (name_of_key nam_tar) 
         (name_of_value val_tar_old)
      )
;;

let store nam_tar val_tar =
  try Register_v.store register nam_tar val_tar
  with Failure ("Already_stored:Register_v.ml:store") ->
    error_message_already_stored_value_of_key_of_value nam_tar val_tar
;;

let store_force nam_tar val_tar =
  Register_v.store_force register nam_tar val_tar
;;

