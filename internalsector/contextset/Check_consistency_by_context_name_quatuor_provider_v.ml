(** {3 Check_consistency_by_context_name_quatuor_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Check_consistency_by_context_name_quatuor_provider_v";
   "Needs : CONS:Check_consistency_by_box_name_n_base_name_provider_v";
   "Needs : CONS:Domaindata_nameofdirectory_list_by_unit_provider_v";
   "Needs : CONS:Check_consistency_by_base_name_n_domain_name_provider_v";
   "Needs : CONS:Domaininput_nameofdirectory_list_by_unit_provider_v";
   "Definition : a Context quatuor has the same order as a Sole_index : (Box, Base, Domain, Sector)";
   "Needs : CONS:Check_consistency_by_base_name_n_domain_name_provider_v";
   "Author : François Colonna 24 août 2016 at 11:54:31+02:00";
   "Author : François Colonna 24 avril 2017 at 11:24:25+02:00 Pb with Local";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build nam_qua =
  let nam_fun = "build" in
  Management_v.debug_what_string "(nam_box, nam_bas, nam_dom, nam_sec)" nam_mod nam_fun (Quatuor_v.name (fun s->s) nam_qua);

  let (nam_box, nam_bas, nam_dom, nam_sec) = nam_qua in 

  Check_consistency_by_box_name_n_base_name_provider_v.provide (nam_box, nam_bas);
  Check_consistency_by_base_name_n_domain_name_provider_v.provide (nam_bas, nam_dom);
  Check_consistency_by_domain_name_n_sector_name_provider_v.provide (nam_dom, nam_sec);
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
(* done with do_provider_without_register.sh Check_consistency_by_context_name_quatuor_provider_v.ml force on samedi 8 octobre 2016, 18:52:42 (UTC+0200) *)
