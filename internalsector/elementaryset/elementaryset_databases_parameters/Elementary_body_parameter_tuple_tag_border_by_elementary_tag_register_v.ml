(** {3 Elementary_body_parameter_tuple_tag_border_by_elementary_tag_register_v} *)

(** {6 Documenting} *)

let documentation () = 
[
  "Needs: ";
   "Current : DELE:Elementary_body_parameter_tuple_tag_border_by_elementary_tag_register_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_reg = Management_v.current_module_name (documentation ());;

(** {6 Register} *)

let register : 
    (Elementary_tag_t.elementary_tag,
     Elementary_body_parameter_tuple_tag_t.elementary_body_parameter_tuple_tag list
    ) 
    Register_t.register = 
  Format.fprintf Format.std_formatter "@. --- Creating  %s --- @." nam_reg;
  Register_v.make 137
;;

let name_of_key key =
  Elementary_tag_v.name key
;;

let name_of_value val_ =
  List_v.name
    Elementary_body_parameter_tuple_tag_v.name
    val_
;;

let is_empty () =
  Register_v.is_empty register
;;

(** {6 Retrieving_for_formula.} *)

let retrieve key =
  let nam_fun = "retrieve" in
  try Register_v.retrieve register key 
  with Failure ("Not_stored:register_v.retrieve") ->
    Utilities_v.failwith_of_message_of_code_name_of_function_name
      "Not_stored:" nam_reg nam_fun
;;  


let dump () = Register_v.dump name_of_key name_of_value register;;

(** {6 Storing.} *)

let error_message_already_stored_value_of_key_of_value key val_ =
  let nam_fun = "already_stored_message" in
  
  let val__old = retrieve key in
  if val_ <> val__old
  then 
    Error_messages_v.print_fatal_error nam_reg nam_fun
      (Format.sprintf "for key >%s<@.    already stored value :@.   %s@.    equal new one :"
         (name_of_key key) 
         (name_of_value val__old)
      )
      (Format.sprintf "for new one :@.   %s@.Register stores:@.  %s" 
         (name_of_value val_)
         (dump ())
      )
      "Check or re-run if it is a test"
  else 
    Error_messages_v.print_warning nam_reg nam_fun
      (Format.sprintf "for key >%s<@.    the same value has already been stored:@.   %s@."
         (name_of_key key) 
         (name_of_value val__old)
      )
;;

let store key val_ =
  try 
    if Parameters_general_provider_v.provide "trace-store" = "true"
    then Register_v.store_verbose register key val_ nam_reg name_of_key name_of_value
    else Register_v.store register key val_
  with Failure ("Already_stored:Register_v.store") ->
    error_message_already_stored_value_of_key_of_value key val_
;;

let store_force key val_ =
  Register_v.store_force register key val_
;;

let is_stored key =
  Register_v.is_stored register key
;;


