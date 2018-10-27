(** {3 Domain_name_list_by_sector_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Domain_name_list_by_sector_name_provider_v";
   "Needs : CONS:Domaininput_nameofdirectory_list_in_entrysector_by_unit_provider_v";
   "Needs : CONS:Context_name_by_context_nameofdirectory_provider_v";
   "Needs : CONS:Domaindata_nameofdirectory_list_in_externalsector_by_unit_provider_v";
   "Needs : CONS:Context_name_by_context_nameofdirectory_provider_v";
   "Needs : CONS:Domainset_nameofdirectory_list_in_internalsector_by_unit_provider_v";
   "Needs : CONS:Context_name_by_context_nameofdirectory_provider_v";
   "Needs : CONS:Domainset_nameofdirectory_list_in_productsector_by_unit_provider_v";
   "Needs : CONS:Context_name_by_context_nameofdirectory_provider_v";
   "What-is-it : the list of all Domain i.e. of Domainset of sector entry, internal and product";
   "Definition : Domainset_name is the name without its path of a Set directory son of Sector Directories";
   "Example : userinput, propertyset, figureset but NO Databaseset";
   "Author : François Colonna 20 juillet 2016 at 15:54:22+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build nam_sec =
  match nam_sec with 
  | "entry" ->
      let nod_din_l = 
	Domaininput_nameofdirectory_list_in_entrysector_by_unit_provider_v.provide () 
      in
      List.map
	Context_name_by_context_nameofdirectory_provider_v.provide 
	nod_din_l

  | "external" -> 
      let nod_dda_l = 
	Domaindata_nameofdirectory_list_in_externalsector_by_unit_provider_v.provide () 
      in
      List.map
	Context_name_by_context_nameofdirectory_provider_v.provide 
	nod_dda_l

  | "internal" ->
      let nod_dse_l = 
	Domainset_nameofdirectory_list_in_internalsector_by_unit_provider_v.provide () 
      in
      List.map
	Context_name_by_context_nameofdirectory_provider_v.provide 
	nod_dse_l

  | "product" -> 
      let nod_dpr_l = 
	Domainset_nameofdirectory_list_in_productsector_by_unit_provider_v.provide () 
      in
      List.map
	Context_name_by_context_nameofdirectory_provider_v.provide 
	nod_dpr_l

  | _ ->
      Error_messages_v.print_fatal_error nam_mod "build"
	"Sector name were entry | external | internal | product"
	nam_sec
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
(* done with do_provider_without_register.sh Domain_name_list_by_sector_name_provider_v.ml force on samedi 8 octobre 2016, 18:52:57 (UTC+0200) *)
