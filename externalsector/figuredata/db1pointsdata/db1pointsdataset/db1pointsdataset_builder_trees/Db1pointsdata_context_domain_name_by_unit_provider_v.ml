(** {3 Db1pointsdata_context_domain_name_by_unit_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BDB1:Db1pointsdata_context_domain_name_by_unit_provider_v";
   "Needs : BDB1:Db1pointsdata_basicname_trio_by_unit_provider_v";
   "What-is-it : the domain_name (e.g: figure, skeleton, ...)";
   "Author : François Colonna 24 septembre 2016 at 13:27:55+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build () =
  let (_, nam_dom, _) = Db1pointsdata_basicname_trio_by_unit_provider_v.provide () in
  nam_dom
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
(* done with do_provider_without_register.sh Db1pointsdata_context_domain_name_by_unit_provider_v.ml force on lundi 26 septembre 2016, 07:27:04 (UTC+0200) *)
