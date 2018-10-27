(** {3 Elementary_as_context_domain_by_unit_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Elementary_as_context_domain_tag_by_unit_provider_v";
   "Needs : DELE:Elementary_context_domain_sole_index_by_unit_provider_v";
   "Needs : DELE:Elementary_symbol_v"; 
   "What-is-it : the Local Domain Tag .i.e Elementary";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} **)

let build () =
  let nam_dom = String.lowercase (String_v.first_word_of_char_off_string '_' __FILE__ ) in
  let soi_dom = Elementary_context_domain_sole_index_by_unit_provider_v.provide () in
  let sym_ele_dom = Elementary_symbol_v.elementary_context_domain_constructor nam_dom in
  Tag_v.make sym_ele_dom soi_dom
;;


(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_without_register.sh Elementary_as_context_domain_tag_by_unit_provider_v.ml on mercredi 25 mai 2016, 10:04:03 (UTC+0200) *)
