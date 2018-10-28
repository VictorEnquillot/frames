(** {3 Skeleton_basicname_domain_by_unit_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BSKE:Skeleton_basicname_domain_by_unit_provider_v";
   "Needs : BSKE:Basicname_duo_by_fullnameofdirectory_provider_v";
   "Author : François Colonna 27 septembre 2016 at 16:07:01+02:00";
   "Author : François Colonna 29 septembre 2016 at 11:27:24+02:00 getcwd => getenv (\"BSKE\")";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build () =
  let fnd_cur = Unix.getenv ("BSKE") in
  let (nam_dom, _) = 
    Basicname_duo_by_fullnameofdirectory_provider_v.provide 
      fnd_cur 
  in
  nam_dom
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
(* done with do_provider_without_register.sh Skeleton_basicname_domain_by_unit_provider_v.ml force on mardi 11 octobre 2016, 15:02:10 (UTC+0200) *)