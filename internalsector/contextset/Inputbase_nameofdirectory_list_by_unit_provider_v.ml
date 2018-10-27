(** {3 Inputbase_nameofdirectory_list_by_unit_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Inputbase_nameofdirectory_list_by_unit_provider_v";
   "Needs : CONS:Domaininput_nameofdirectory_list_by_unit_provider_v";
   "Needs : CONS:Inputbase_nameofdirectory_list_by_domaininput_nameofdirectory_provider_v";
   "Definition : Inputbase_name is the name without its path of a directory son of Sector Directories";
   "Example : db1figureinput";
   "Author : François Colonna 21 juin 2016 at 09:43:02+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build () =
  let nod_din_l = Domaininput_nameofdirectory_list_by_unit_provider_v.provide () in
  let nod_iba_nsl = List.flatten 
      (List.map
	 Inputbase_nameofdirectory_list_by_domaininput_nameofdirectory_provider_v.provide
	 nod_din_l)
  in
  List.sort String.compare nod_iba_nsl
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
(* done with do_provider_without_register.sh Inputbase_nameofdirectory_list_by_unit_provider_v.ml force on samedi 8 octobre 2016, 18:53:02 (UTC+0200) *)
