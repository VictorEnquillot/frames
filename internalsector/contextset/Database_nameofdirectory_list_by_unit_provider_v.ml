(** {3 Database_nameofdirectory_list_by_unit_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Database_nameofdirectory_list_by_unit_provider_v";
   "Needs : CONS:Domaindata_nameofdirectory_list_by_unit_provider_v";
   "Needs : CONS:Database_nameofdirectory_list_by_domaindata_nameofdirectory_provider_v";
   "Definition : Database_name is the name without its path of a directory son of Sector Directories";
   "Example : db1figuredata";
   "Author : François Colonna 21 juin 2016 at 09:43:02+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build () =
  let nod_dda_l = Domaindata_nameofdirectory_list_by_unit_provider_v.provide () in
  let nod_dba_nsl = List.flatten 
      (List.map
	 Database_nameofdirectory_list_by_domaindata_nameofdirectory_provider_v.provide
	 nod_dda_l)
  in
  List.sort String.compare nod_dba_nsl
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
(* done with do_provider_without_register.sh Database_nameofdirectory_list_by_unit_provider_v.ml force on samedi 8 octobre 2016, 18:52:50 (UTC+0200) *)
