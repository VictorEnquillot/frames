(** {3 Check_consistency_by_basicname_database_n_basicname_domain_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Check_consistency_by_basicname_database_n_basicname_domain_provider_v";
   "Needs : CONS:Check_consistency_by_base_name_n_domain_name_provider_v";
   "Author : François Colonna 29 mars 2017 at 15:24:45+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (bna_dba, bna_dom) =
  let nam_bas = Basicname_v.string_off bna_dba in 
  let nam_dom = Basicname_v.string_off bna_dom in 
  Check_consistency_by_base_name_n_domain_name_provider_v.provide (nam_bas, nam_dom)
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
(* done with do_provider_without_register.sh Check_consistency_by_base_name_n_domain_name_provider_v.ml force on samedi 8 octobre 2016, 18:52:42 (UTC+0200) *)
