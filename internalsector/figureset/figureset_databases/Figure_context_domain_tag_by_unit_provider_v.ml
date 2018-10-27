(** {3 Figure_context_domain_tag_by_unit_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DFIG:Figure_context_domain_tag_by_unit_provider_v";
   "Needs : DFIG:Figure_as_context_domain_tag_by_unit_provider_v";
   "Needed-by :"; 
   "What-is-it : Figure_context_domain_tag from Unit (__FILE__)";
   "Author : François Colonna 31 mai 2016 at 12:56:04+02:00";
  ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build () =
  let nam_dom = String.lowercase (String_v.first_word_of_char_off_string '_' __FILE__ ) in
  let soi_dom = Global_domainset_sole_index_by_domain_name_provider_v.provide nam_dom in
  let sym_fcd = Figure_context_domain_symbol_v.figure_context_domain_constructor nam_dom in
  Tag_v.make sym_fcd soi_dom 
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_without_register.sh Figure_context_domain_tag_by_unit_provider_v.ml on jeudi 19 mai 2016, 18:35:57 (UTC+0200) *)
