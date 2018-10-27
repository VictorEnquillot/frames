(** {3 Coordinate_as_context_domain_tag_by_unit_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BCOO:Coordinate_as_context_domain_tag_by_unit_provider_v";
   "Needs : BCOO:Domain_name_n_sector_name_by_fullnameofdirectory_provider_v";
   "Needs : CONS:Context_sole_index_by_domain_name_n_sector_name_provider_v";
   "Author : François Colonna 27 septembre 2016 at 16:13:51+02:00";
   "Author : François Colonna 29 septembre 2016 at 11:27:24+02:00 getcwd => getenv (\"BCOO\")";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build () =
  let fnd_cur = Unix.getenv ("BCOO") in
  let (nam_dom, nam_sec) = 
    Domain_name_n_sector_name_by_fullnameofdirectory_provider_v.provide 
      fnd_cur
  in
  let soi_dom = 
    Context_sole_index_by_domain_name_n_sector_name_provider_v.provide 
      (nam_dom, nam_sec) 
  in
  let sym_coo_ecd = 
    Coordinate_symbol_v.coordinate_context_domain_constructor 
      nam_dom 
  in
  Tag_v.make sym_coo_ecd soi_dom
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
(* done with do_provider_without_register.sh Coordinate_as_context_domain_tag_by_unit_provider_v.ml force on lundi 10 octobre 2016, 09:13:00 (UTC+0200) *)
