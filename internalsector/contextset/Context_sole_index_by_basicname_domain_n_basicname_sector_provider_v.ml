(** {3 Context_sole_index_by_basicanme_domain_n_basicname_sector_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Context_sole_index_by_domain_name_n_sector_name_provider_v";
   "Needz : CONS:Context_sole_index_by_domain_name_n_sector_name_provider_v";
   "What-is-it : the Sole_index for any consistent couple Sector and Domain";
   "Author : François Colonna 31 mars 2017 at 11:54:47+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build (bna_dom, bna_sec) =
  let nam_sec = Basicname_v.string_off bna_sec in
  let nam_dom = Basicname_v.string_off bna_dom in
  Context_sole_index_by_domain_name_n_sector_name_provider_v.provide (nam_dom, nam_sec)
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
(* done with do_provider_without_register.sh Context_sole_index_by_domain_name_n_sector_name_provider_v.ml force on samedi 8 octobre 2016, 18:52:47 (UTC+0200) *)
