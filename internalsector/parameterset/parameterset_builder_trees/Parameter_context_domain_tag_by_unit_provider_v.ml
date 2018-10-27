(** {3 Parameter_context_domain_tag_by_unit_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPAR:Parameter_context_domain_tag_by_unit_provider_v";
   "Needs : BPAR:Basicname_duo_by_fullnameofdirectory_provider_v";
   "Needs : CONS:Context_sole_index_by_basicname_domain_n_basicname_sector_provider_v";
   "Author : François Colonna 01 avril 2017 at 18:36:02+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build () =
  let fnd_cur = Unix.getenv ("BPAR") in
  let (bna_dom, bna_sec) = 
    Basicname_duo_by_fullnameofdirectory_provider_v.provide 
      fnd_cur
  in
  let soi_dom = 
    Context_sole_index_by_basicname_domain_n_basicname_sector_provider_v.provide 
      (bna_dom, bna_sec) 
  in
  let nam_dom = Basicname_v.string_off bna_dom in
  let sym_pcd = 
    Parameter_context_domain_symbol_v.parameter_context_domain_constructor 
      nam_dom 
  in
  Tag_v.make sym_pcd soi_dom
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
(* done with do_provider_without_register.sh Parameter_context_domain_tag_by_unit_provider_v.ml force on lundi 10 octobre 2016, 09:13:01 (UTC+0200) *)
