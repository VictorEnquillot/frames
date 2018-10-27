(** {3 Basicname_duo_by_fullnameofdirectory_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Basicname_duo_by_fullnameofdirectory_provider_v";
   "Needs : CONS:Context_name_duo_by_fullnameofdirectory_provider_v";
   "Definition : a Context duo has the same order as a Sole_index : (Domain, Sector)";
   "Author : François Colonna 01 avril 2017 at 18:26:53+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build fnd =
  let (nam_dom, nam_sec) = 
    Context_name_duo_by_fullnameofdirectory_provider_v.provide 
      fnd 
  in
  Duo_v.make
    (Basicname_v.basicname_domain_of_string nam_dom)
    (Basicname_v.basicname_sector_of_string nam_sec)
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
(* done with do_provider_without_register.sh Context_name_duo_by_fullnameofdirectory_provider_v.ml force on samedi 8 octobre 2016, 18:52:46 (UTC+0200) *)
