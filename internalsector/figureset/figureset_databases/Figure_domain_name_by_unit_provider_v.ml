(** {3 Figure_domain_name_by_unit_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BDB1:Figure_domain_name_by_unit_provider_v";
   "How-is-it-done : by using the fact that Module name starts with Domain name in a Domainset";
   "Author : François Colonna 07 mai 2016 at 11:47:22+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build () =
  let nam_mod = __FILE__ in
  String.lowercase (String_v.first_word_of_char_off_string '_' nam_mod) 
;;


(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_without_register.sh Figure_domain_name_by_unit_provider_v.ml on jeudi 19 mai 2016, 18:35:57 (UTC+0200) *)
