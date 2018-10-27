(** {3 Db1figure_symbol_by_elementary_context_domain_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Db1figure_tag_by_elementary_context_domain_tag_translator_v";
   "Needed-by :"; 
  ]
;;

(** {6 Translating} *)

let translate_without_trace tag_edo =
  let soi_edo = Tag_v.sole_index_off_tag tag_edo in
  let sym_dom = Db1figure_symbol_v.domain_symbol in
  let sym_ddo = Db1figure_symbol_v.db1figure_symbol_of_domain_symbol sym_dom in
  Tag_v.make sym_ddo soi_edo
;;

let translate_with_trace tag_edo =
  let nam_mod = Management_v.current_module_name (documentation ()) in
  Management_v.entering_of_current_module_name nam_mod;

  let result = translate_without_trace tag_edo in

  Management_v.exiting_of_current_module_name nam_mod;
  result
;;

let translate tag_edo =
  if Parameters_general_provider_v.provide "trace-provide" = "true"
  then translate_with_trace tag_edo
  else translate_without_trace tag_edo
;;


