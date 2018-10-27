(** {3 String_symbol_list_by_onetied_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs :";
   "Current : DFIG:String_symbol_list_by_onetied_tag_provider_v";
   "Needed-by :"; 
   "What-is-it : for a given Domain it provides the content of a float file as a key list";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Building} *)

let build tag_fak =
  let sym_str = String_symbol_v.string_constructor in
  [sym_str]
;;

let build_n_store tag_fak =
  let sym_str_l = build tag_fak in
  String_symbol_list_by_onetied_tag_register_v.store tag_fak sym_str_l; 
  sym_str_l 
;;

let provide tag_fak =
  if String_symbol_list_by_onetied_tag_register_v.is_stored tag_fak 
  then String_symbol_list_by_onetied_tag_register_v.retrieve tag_fak
  else build_n_store tag_fak 
;;
