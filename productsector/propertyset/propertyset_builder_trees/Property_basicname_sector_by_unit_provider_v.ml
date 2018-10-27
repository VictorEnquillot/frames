(** {3 Property_basicname_sector_by_unit_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPRO:Property_basicname_sector_by_unit_provider_v";
   "Needs : BPRO:Basicname_duo_by_fullnameofdirectory_provider_v";
   "Author : François Colonna 27 septembre 2016 at 16:07:01+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build () =
  let fnd_cur = Unix.getenv ("BPRO") in
  let (_, bna_sec) =
    Basicname_duo_by_fullnameofdirectory_provider_v.provide
      fnd_cur 
  in
  bna_sec
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
(* done with do_provider_without_register.sh Property_basicname_sector_by_unit_provider_v.ml force on mardi 15 novembre 2016, 16:37:13 (UTC+0100) *)
