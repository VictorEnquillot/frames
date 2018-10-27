(** {3 Elementary_context_domain_sole_index_by_unit_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Elementary_context_domain_sole_index_by_unit_provider_v";
   "Needs : CON:Global_domainset_sole_index_by_domain_name_provider_v";
   "What-is-it : the Local Domain Sole_index";
   "Remark : Elementary domain has no specific database";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} **)

let build () =
  let nam_dom = String.lowercase (String_v.first_word_of_char_off_string '_' __FILE__ ) in
  Global_domainset_sole_index_by_domain_name_provider_v.provide nam_dom
;;


(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_without_register.sh Elementary_context_domain_sole_index_by_unit_provider_v.ml on mercredi 25 mai 2016, 10:04:04 (UTC+0200) *)
