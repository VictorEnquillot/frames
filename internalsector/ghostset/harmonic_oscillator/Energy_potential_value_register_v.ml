(** {3 Energy_potential_value_register_v} *)

(** {6 Documenting_for_db_tag} *)

let documentation () = 
  [
   "Needs: ";
   "Current : VHAR:Energy_potential_value_register_v";
   "Needed-by: ";
   "What-is-it: ";
   "How-is-it-done: ";
   "Example: ";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Register} *)

let register : 
    (Energy_potential_tag_t.energy_potential_tag, 
     Energy_potential_value_t.energy_potential_value)
    Register_t.register = Register_v.make 137
;;

let name_of_key tag_eto =
  Tag_v.name Energy_potential_symbol_v.name tag_eto
;;

let name_of_value val_eto  =
  let flo = Energy_potential_value_v.float_off_energy_potential_value val_eto in
  (Format.sprintf "%f" flo)
 ;;

let is_empty () =
  Register_v.is_empty register
;;

let is_stored tag_eto =
  Register_v.is_stored register tag_eto
;;

let dump () =
  let key_n_val_l = Register_v.entry_list register in
  Doublet_list_v.name name_of_key name_of_value key_n_val_l
;;

(** {6 Retrieving.} *)

let retrieve tag_eto =
  try Register_v.retrieve register tag_eto 
  with Failure ("Not_stored:Register_v.retrieve") ->
    failwith ("Not_stored:Energy_potential_value_provider_v.retrieve")
;;  

(** {6 Storing.} *)

let store soi_eto sym_eto =
  let nam_fun = "store" in

  try Register_v.store register soi_eto sym_eto
  with Failure ("Already_stored:Register_v.ml:store") ->
    let sym_eto_old = retrieve soi_eto in
    if sym_eto <> sym_eto_old
    then 
      Error_messages_v.print_fatal_error nam_cod nam_fun
	(Format.sprintf "for key >%s< already stored value >%s< equal new one"
	   (name_of_key soi_eto) 
	   (name_of_value sym_eto_old) 

	)
	(Format.sprintf "for new one >%s<@.Register stores:@.    %s" 
	   (name_of_key soi_eto) 
	   (dump ())
	)
	"Check or re-run if it is a test"
    else 
      ();
;;

