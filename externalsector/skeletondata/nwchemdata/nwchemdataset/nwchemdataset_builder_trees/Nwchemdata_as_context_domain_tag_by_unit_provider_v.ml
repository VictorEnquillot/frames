(** {3 Nwchemdata_as_context_domain_tag_by_unit_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BNWC:Nwchemdata_as_context_domain_tag_by_unit_provider_v";
   "Needs : BNWC:Nwchemdata_basicname_trio_by_unit_provider_v Context_sole_index_by_basicname_domain_n_basicname_sector_provider_v";
   "Author : François Colonna 01 avril 2017 at 11:37:51+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build () =
  let (_, bna_dom, bna_sec) = 
    Nwchemdata_basicname_trio_by_unit_provider_v.provide () 
  in
  let soi_dom = 
    Context_sole_index_by_basicname_domain_n_basicname_sector_provider_v.provide 
      (bna_dom, bna_sec) 
  in
  let nam_dom = Basicname_v.string_off bna_dom in
  let sym_ncd = 
    Nwchemdata_symbol_v.nwchemdata_context_domain_constructor 
      nam_dom 
  in
  Tag_v.make sym_ncd soi_dom
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
(* done with do_provider_without_register.sh Nwchemdata_as_context_domain_tag_by_unit_provider_v.ml force on lundi 10 octobre 2016, 15:52:06 (UTC+0200) *)
