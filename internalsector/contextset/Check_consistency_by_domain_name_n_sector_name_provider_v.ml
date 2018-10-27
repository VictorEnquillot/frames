(** {3 Check_consistency_by_domain_name_n_sector_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Check_consistency_by_domain_name_n_sector_name_provider_v";
   "Needs : CONS:Check_is_sector_name_by_name_provider_v";
   "Needs : CONS:Check_is_domain_name_by_name_provider_v";
   "Needs : CONS:Sector_name_list_by_unit_provider_v";
   "Needs : CONS:Domain_name_list_by_unit_provider_v";
   "Needs : CONS:Domain_name_list_by_sector_name_provider_v";
   "Author : François Colonna 06 avril 2017 at 11:03:51+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (nam_dom, nam_sec) =

  Check_is_sector_name_by_name_provider_v.provide nam_sec;
  Check_is_domain_name_by_name_provider_v.provide nam_dom;

  let nam_dom_l = 
    Domain_name_list_by_sector_name_provider_v.provide 
      nam_sec 
  in
  if List.mem nam_dom nam_dom_l
  then 
	()
  else 
    Error_messages_v.print_fatal_error nam_mod "build"
      (Format.sprintf "Sector name >%s< had Domain name >%s< in its Domain name list" nam_sec nam_dom)
      (Format.sprintf "Domain name list is:@.      %s" 
	 (List_v.name_in_column (fun s->s ) nam_dom_l)
      )
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
(* done with do_provider_without_register.sh Check_consistency_by_domain_name_n_sector_name_provider_v.ml force on samedi 8 octobre 2016, 18:52:42 (UTC+0200) *)
