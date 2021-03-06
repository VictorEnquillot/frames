(** {3 Context_name_quatuor_by_context_ordinal_quatuor_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Context_name_quatuor_by_context_ordinal_quatuor_provider_v";
   "Needs : CONS:Sector_name_by_ordinal_provider_v";
   "Needs : CONS:Domain_name_by_ordinal_provider_v";
   "Needs : CONS:Inputbox_name_by_ordinal_provider_v";
   "Needs : CONS:Inputbase_name_by_ordinal_provider_v";
   "Needs : CONS:Databox_name_by_ordinal_provider_v";
   "Needs : CONS:Database_name_by_ordinal_provider_v";
   "Needs : CONS:Check_consistency_by_context_name_quatuor_provider_v";
   "Needed-by :"; 
   "Definition : a Context quatuor has the same order as a Sole_index : (Box, Base, Domain, Sector)";
   "Author : François Colonna 22 septembre 2016 at 10:39:48+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build ord_qua =
  let (ord_box, ord_bas, ord_dom, ord_sec) = ord_qua in

  let nam_sec = Sector_name_by_ordinal_provider_v.provide ord_sec in
  let nam_dom = Domain_name_by_ordinal_provider_v.provide ord_dom in

  let nam_qua =
    match nam_sec with
    | "entry"
    | "product" ->
	
	let nam_box = Inputbox_name_by_ordinal_provider_v.provide ord_box  in
	let nam_bas = Inputbase_name_by_ordinal_provider_v.provide ord_bas in
	Quatuor_v.make nam_box nam_bas nam_dom nam_sec 
	  
    | "internal"
    | "external" ->
	
	let nam_box = Databox_name_by_ordinal_provider_v.provide ord_box in
	let nam_bas = Database_name_by_ordinal_provider_v.provide ord_bas in
	Quatuor_v.make nam_box nam_bas nam_dom nam_sec 
	  
    | _ ->
      Error_messages_v.print_fatal_error __LOC__ "build"
	"Sector were \"entry\" | \"product\" | \"external\" | \"internal\""
	(Format.sprintf "Sector is : \"%s\"" nam_sec)
	"Check"
  in
  
  Check_consistency_by_context_name_quatuor_provider_v.provide nam_qua;
  nam_qua
;;


(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_without_register_v.ml *)
(* done with do_provider_without_register.sh Context_name_quatuor_by_context_ordinal_quatuor_provider_v.ml force on samedi 8 octobre 2016, 18:52:45 (UTC+0200) *)
