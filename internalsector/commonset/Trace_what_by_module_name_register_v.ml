(** {3 Trace_what_by_module_name_register_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : COM:Trace_what_by_module_name_register_v";
   "Needs : COM:";
   "Needed-by :"; 
   "What-is-it : provides what to trace for a module name";
   "Example : \"cpu provide store retrieve\" <= (\"module\"";
   "Author : François Colonna 02 mai 2016 at 07:06:35+02:00";
 ]
;;

let nam_reg = "Trace_what_by_module_name_register_v";;

(** {6 Registering} *)

let register : 
    (string,
     string)
    Register_t.register = 
  Format.fprintf Format.std_formatter "@. --- Creating  %s --- @." nam_reg;
  Register_v.make 137
;;

let name_of_key key =
  key
;;

let name_of_value val_ =
  val_
;;

let key_list () =
  Register_v.key_list register
;;

(** {6 Retrieving.} *)

let retrieve key =
  try Register_v.retrieve register key 
  with Failure s ->
    match s with
    | "Not_stored:Register_v.retrieve" ->
	failwith ("Not_stored:Trace_what_by_module_name_register_v.retrieve")
    | _ -> failwith s
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
      (Format.sprintf "for key >%s<@.   the same value has already been stored:@.   %s@."
         (name_of_key key) 
         (name_of_value val__old)
      )
;;

let store key val_ =
  let nam_fun = "store" in
  let len = String.length key in
  let end_2 = String.sub key (len-2) 2 in 
  let end_3 = String.sub key (len-3) 3 in 
  if (end_2 = "_v" || key = "any")
  then
    begin
      try Register_v.store register key val_
      with Failure s ->
	match s with
	| "Already_stored:Register_v.store" ->
	    error_message_already_stored_value_of_key_of_value key val_
	| _ -> failwith s
    end
  else 
    begin
      if end_3 = ".ml" 
      then 
	begin
	  let nam_mod = String.sub key 0 (len-3) in 
	  Error_messages_v.print_fatal_error __LOC__ nam_fun
	    "module_name ends with \"_v\""
	    (Format.sprintf "module_name is %s" key)
	    (Format.sprintf "Probable entry :@.  Trace_what_by_module_name_register_v.store \"%s\" \"...\";;" nam_mod)
	end
      else
	Error_messages_v.print_fatal_error __LOC__ nam_fun
	  "module_name ends with \"_v\""
	  (Format.sprintf "module_name is %s" key)
	  "Please enter a correct module name"
    end
;;

let store_verbose nam_reg key val_ =
  try Register_v.store_verbose register key val_ nam_reg nam_reg name_of_key name_of_value
  with Failure s ->
	match s with
	| "Already_stored:Register_v.store_verbose" ->
	    error_message_already_stored_value_of_key_of_value key val_
	| _ -> failwith s
;;

let store_force key val_ =
  Register_v.store_force register key val_
;;

let is_stored key =
  Register_v.is_stored register key
;;

(* done by hand on lundi 2 mai 2016 *)
