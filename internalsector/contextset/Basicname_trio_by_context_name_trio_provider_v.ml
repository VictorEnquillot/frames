(** {3 Basicname_trio_by_context_name_trio_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Basicname_trio_by_context_name_trio_provider_v";
   "Definition : a Context trio has the same order as a Sole_index : (Base, Domain, Sector)";
   "Author : François Colonna 06 avril 2017 at 16:07:02+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build (nam_bas, nam_dom, nam_sec) = 
  match nam_sec with
  | "entry"
  | "product" ->
      
      Trio_v.make
	(Basicname_v.basicname_inputbase_of_string nam_bas)
	(Basicname_v.basicname_domain_of_string nam_dom)
	(Basicname_v.basicname_sector_of_string nam_sec)
        
  | "internal"
  | "external" ->
      
      Trio_v.make
	(Basicname_v.basicname_database_of_string nam_bas)
	(Basicname_v.basicname_domain_of_string nam_dom)
	(Basicname_v.basicname_sector_of_string nam_sec)
        
  | _ ->
      Error_messages_v.print_fatal_error __LOC__ "build"
        "Sector were \"entry\" | \"product\" | \"external\" | \"internal\""
        (Format.sprintf "Sector is : \"%s\"" nam_sec)
        "Check"
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
(* done with do_provider_without_register.sh Context_name_trio_by_fullnameofdirectory_provider_v.ml force on samedi 8 octobre 2016, 18:52:46 (UTC+0200) *)
