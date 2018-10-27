(** {3 Check_consistency_by_context_name_trio_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Check_consistency_by_context_name_trio_provider_v";
   "Needs : CONS:Domain_name_by_base_name_provider_v";
   "Needs : CONS:Check_consistency_by_domain_name_n_sector_name_provider_v";
   "Needs : CONS:Domaindata_nameofdirectory_list_by_unit_provider_v";
   "Needs : CONS:Domaininput_nameofdirectory_list_by_unit_provider_v";
   "Definition : a Context trior has the same order as a Sole_index : (Base, Domain, Sector)";
   "Author : François Colonna 23 septembre 2016 at 12:36:33+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build bna_tri =
  let nam_tri = Trio_v.map Basicname_v.string_off bna_tri in
  Check_consistency_by_context_name_trio_provider_v.provide nam_tri
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
(* done with do_provider_without_register.sh Check_consistency_by_context_name_trio_provider_v.ml force on samedi 8 octobre 2016, 18:52:42 (UTC+0200) *)
