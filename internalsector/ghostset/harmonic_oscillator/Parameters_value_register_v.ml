(** {3 Parameters_value_register_v} *)

(** {6 Documenting_for_db_tag} *)

let documentation () = 
  [
   "Needs: ";
   "Current : VHAR:Parameters_value_register_v";
   "Needed-by: ";
   "What-is-it: ";
   "How-is-it-done: ";
   "Example: ";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Register} *)

let register : 
    (string, 
    Parameters_value_t.parameters_value)
    Register_t.register = Register_v.make 137
;;

let name_of_key nam_par =
  nam_par
;;

let name_of_value val_par  =
  Parameters_value_v.name val_par
;;

let key_list () =
  Register_v.key_list register
;;

let is_empty () =
  Register_v.is_empty register
;;

let is_stored nam_par =
  Register_v.is_stored register nam_par
;;

let dump () =
  let key_n_val_l = Register_v.entry_list register in
  Doublet_list_v.name name_of_key name_of_value key_n_val_l
;;

(** {6 Retrieving.} *)

let retrieve nam_par =
  try Register_v.retrieve register nam_par 
  with Failure ("Not_stored:Register_v.retrieve") ->
    failwith ("Not_stored:Parameters_value_provider_v.retrieve")
;;  

(** {6 Storing.} *)

let store nam_par val_par =
  let nam_fun = "store" in

  try Register_v.store register nam_par val_par
  with Failure ("Already_stored:Register_v.ml:store") ->
    let val_par_old = retrieve nam_par in
    if val_par <> val_par_old
    then 
      Error_messages_v.print_fatal_error nam_cod nam_fun
	(Format.sprintf "for key >%s< already stored value >%s< equal new one"
	   (name_of_key nam_par) 
	   (name_of_value val_par_old) 
	)
	(Format.sprintf "for new one >%s<@.Register stores:@.    %s" 
	   (name_of_key nam_par) 
	   (dump ())
	)
	"Check or re-run if it is a test"
    else 
      ();
;;

