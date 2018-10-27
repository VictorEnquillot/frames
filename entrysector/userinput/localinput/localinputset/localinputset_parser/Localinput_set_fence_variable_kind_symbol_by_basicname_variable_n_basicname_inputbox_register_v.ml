(** {3 Localinput_set_fence_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_register} *)

let documentation () = 
  [
   "Current : PARLOI:Localinput_set_fence_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_register_v";
   "Needed-by :"; 
   "What-is-it : a kind of Localinput_entity Formula";
 ]
;;

let nam_reg = Management_v.current_module_name (documentation ());;

(** {6 Register} *)

let register : 
    (Basicname_t.basicname Duo_t.duo, 
     Localinput_set_fence_variable_kind_symbol_t.localinput_set_fence_variable_kind_symbol)
    Register_t.register
    = 
  Format.fprintf Format.std_formatter "@. --- Creating  %s --- @." nam_reg;
  Register_v.make 137
;;

let name_of_key key =
  Duo_v.name Basicname_v.name key
;;

let name_of_value val_ =
  Localinput_set_fence_variable_kind_symbol_v.fullname val_
;;

let is_empty () =
  Register_v.is_empty register
;;

(** {6 Retrieving} *)

let retrieve key =
  let nam_fun = "retrieve" in
  try Register_v.retrieve register key 
  with Failure ("Not_stored:register_v.retrieve") ->
    Utilities_v.failwith_of_message_of_code_name_of_function_name
      "Not_stored:" nam_reg nam_fun
;;  

(** {6 Retrieving verbose} *)

let retrieve_with_trace key =
  let val_ = retrieve key in
  Format.fprintf Format.std_formatter "in register %s for key %s retrieved value is:@. %s" nam_reg (name_of_key key) (name_of_value val_);
  val_		  
;;  

(** {6 Dumping} *)

let dump () = Register_v.dump name_of_key name_of_value register;;

let key_list () = Register_v.key_list register;;

(** {6 Storing Error} *)

let error_message_already_stored_value_of_key_of_value key val_ =
  let nam_fun = "already_stored_message" in
  
  let val__old = retrieve key in
  if val_ <> val__old
  then 
    Error_messages_v.print_fatal_error nam_reg nam_fun
      (Format.sprintf "for key >%s<@.   already stored value :@.   %s@.    equal new one :"
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
      (Format.sprintf "for key >%s<@.   the same value has already been stored:@.   %s@."
         (name_of_key key) 
         (name_of_value val__old)
      )
;;

(** {6 Storing without Trace} *)

let store_without_trace key val_ =
  try Register_v.store register key val_
  with Failure ("Already_stored:Register_v.store") ->
    error_message_already_stored_value_of_key_of_value key val_
;;

(** {6 Storing with Trace} *)

let store_with_trace nam_mod key val_ =
  try Register_v.store_verbose register key val_ nam_mod nam_reg name_of_key name_of_value
  with Failure ("Already_stored:Register_v.store") ->
    error_message_already_stored_value_of_key_of_value key val_
;;

(** {6 Storing} *)

let store nam_mod key val_ =
  let nam_fun = "store" in 
  if (Management_v.is_set_trace_of_module_name_of_function_name nam_mod nam_fun) 
  then store_with_trace nam_mod key val_ 
  else store_without_trace key val_
;;

(** {6 Storing Forced} *)

let store_force key val_ =
  Register_v.store_force register key val_
;;

(** {6 Boolean} *)

let is_stored key =
  Register_v.is_stored register key
;;

let is_empty () =
  Register_v.is_empty register
;;

(* done with do_register_from_retrieving.sh on lundi 25 avril 2016, 07:00:40 (UTC+0200) *)
