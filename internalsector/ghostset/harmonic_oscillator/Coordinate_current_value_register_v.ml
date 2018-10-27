(** {3 Coordinate_current_value_register_v} *)

(** {6 Documenting_for_db_tag} *)

let documentation () = 
  [
   "Needs: ";
   "Current : VHAR:Coordinate_current_value_register_v";
   "Needed-by: ";
   "What-is-it: ";
   "How-is-it-done: ";
   "Example: ";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Register} *)

let register : 
    (Coordinate_current_tag_t.coordinate_current_tag, 
     Coordinate_current_value_t.coordinate_current_value)
    Register_t.register = Register_v.make 137
;;

let name_of_key tag_ccu =
  Tag_v.name Coordinate_current_symbol_v.name tag_ccu
;;

let name_of_value val_ccu  =
  let flo = Coordinate_current_value_v.float_off_coordinate_current_value val_ccu in
  (Format.sprintf "%f" flo)
 ;;

let is_empty () =
  Register_v.is_empty register
;;

let is_stored tag_ccu =
  Register_v.is_stored register tag_ccu
;;

let dump () =
  let key_n_val_l = Register_v.entry_list register in
  Doublet_list_v.name name_of_key name_of_value key_n_val_l
;;

(** {6 Retrieving.} *)

let retrieve tag_ccu =
  try Register_v.retrieve register tag_ccu 
  with Failure ("Not_stored:Register_v.retrieve") ->
    failwith ("Not_stored:Coordinate_current_value_provider_v.retrieve")
;;  

(** {6 Storing.} *)

let store soi_ccu sym_ccu =
  let nam_fun = "store" in

  try Register_v.store register soi_ccu sym_ccu
  with Failure ("Already_stored:Register_v.ml:store") ->
    let sym_ccu_old = retrieve soi_ccu in
    if sym_ccu <> sym_ccu_old
    then 
      Error_messages_v.print_fatal_error nam_cod nam_fun
	(Format.sprintf "for key >%s< already stored value >%s< equal new one"
	   (name_of_key soi_ccu) 
	   (name_of_value sym_ccu_old) 

	)
	(Format.sprintf "for new one >%s<@.Register stores:@.    %s" 
	   (name_of_key soi_ccu) 
	   (dump ())
	)
	"Check or re-run if it is a test"
    else 
      ();
;;

