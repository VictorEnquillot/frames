(** {3 Factorial_value_register_v} *)

(** {6 Documenting_for_db_tag} *)

let documentation () = 
  [
   "Needs: ";
   "Current : DFIG:Factorial_value_register_v";
   "Needed-by: ";
   "What-is-it: ";
   "How-is-it-done: ";
   "Example: ";
   "Remark : starts at Triangle or Vector - i.e. Figureset_symbol level - NO domain";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Register} *)

let nam_reg = "Factorial_value_register_v.register";;

let register :
    (Sole_index_t.sole_index,
     Factorial_value_t.factorial_value)
    Register_t.register = 
  Format.fprintf Format.std_formatter "@. --- Creating  %s  --- @." nam_reg;
  Register_v.make 137
;;

let name_of_key soi_fac =
  Sole_index_v.name soi_fac
;;

let name_of_value val_fac  =
  Factorial_value_v.name val_fac
 ;;

 let is_empty () =
   Register_v.is_empty register
 ;;

 let compare_entry (k1, v1) (k2, v2) = 
   compare (List.length k1) (List.length k2)
 ;;

 let dump () = 
   let key_n_val_l = Register_v.entry_list register in 
   let srt_l = List.sort compare_entry key_n_val_l in
   Doublet_list_v.name name_of_key name_of_value srt_l
;;

(** {6 Retrieving_for_formula.} *)

let retrieve soi_fac =
  let nam_fun = "retrieve" in
  try Register_v.retrieve register soi_fac 
  with Failure ("Not_stored:register_v.ml:retrieve") ->
    Utilities_v.failwith_of_message_of_code_name_of_function_name
      "Not_stored:" nam_cod nam_fun
;;  

(** {6 Storing.} *)

let store soi_fac sym_fac =
  let nam_fun = "store" in

  try Register_v.store register soi_fac sym_fac
  with Failure ("Already_stored:Register_v.ml:store") ->
    let sym_fac_old = retrieve soi_fac in
    if sym_fac <> sym_fac_old
    then 
      Error_messages_v.print_fatal_error nam_cod nam_fun
	(Format.sprintf "for key >%s< already stored value >%s< equal new one"
	   (name_of_key soi_fac) 
	   (name_of_value sym_fac_old) 

	)
	(Format.sprintf "for new one >%s<@.Register stores:@.    %s" 
	   (name_of_key soi_fac) 
	   (dump ())
	)
	"Check or re-run if it is a test"
    else 
      ();
;;

let store_force soi_fac sym_fac =
  Register_v.store_force register soi_fac sym_fac
;;
