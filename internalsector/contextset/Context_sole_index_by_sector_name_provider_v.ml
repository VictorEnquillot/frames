(** {3 Context_sole_index_by_sector_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Context_sole_index_by_sector_name_provider_v";
   "Needs : CONS:Sector_ordinal_by_sector_name_provider_v";
   "What-is-it : the Sole_index for any Sector_name";
   "Author : François Colonna 31 août 2016 at 11:43:35+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build nam_sec =
  let ord_sec = Sector_ordinal_by_sector_name_provider_v.provide nam_sec in
  [ord_sec]
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
(* done with do_provider_without_register.sh Context_sole_index_by_sector_name_provider_v.ml force on samedi 8 octobre 2016, 18:52:47 (UTC+0200) *)
