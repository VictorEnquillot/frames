(** {3 Localinput_context_domain_tag_by_unit_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BLOI:Localinput_context_domain_tag_by_unit_provider_v";
   "Needs : BLOI:Localinput_basicname_trio_by_unit_provider_v";
   "Needs : CONS:Context_sole_index_by_basicname_domain_n_basicname_sector_provider_v";
   "Author : François Colonna 04 avril 2017 at 11:30:08+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build () =
  let (_, bna_dom, bna_sec) = 
    Localinput_basicname_trio_by_unit_provider_v.provide () 
  in
  let soi_dom = 
    Context_sole_index_by_basicname_domain_n_basicname_sector_provider_v.provide 
      (bna_dom, bna_sec) 
  in
  let nam_dom = Basicname_v.string_off bna_dom in
  let sym_lcd = 
    Localinput_context_domain_symbol_v.localinput_context_domain_constructor 
      nam_dom 
  in
  Tag_v.make sym_lcd soi_dom
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
(* done with do_provider_without_register.sh Localinput_context_domain_tag_by_unit_provider_v.ml force on lundi 31 octobre 2016, 14:54:06 (UTC+0100) *)
