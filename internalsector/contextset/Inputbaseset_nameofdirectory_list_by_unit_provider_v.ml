(** {3 Inputbaseset_nameofdirectory_list_by_unit_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Inputbaseset_nameofdirectory_list_by_unit_provider_v";
   "Needs : CONS:Inputbase_nameofdirectory_list_by_unit_provider_v";
   "Needs : CONS:Inputbaseset_nameofdirectory_by_inputbase_nameofdirectory_provider_v";
   "Definition : Inputbaseset_name is the name without its path of a Set directory son of Sector Directories";
   "Example : db1figureinputset";
   "Author : François Colonna 22 août 2016 at 10:49:07+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build () =
  let nod_iba_l = Inputbase_nameofdirectory_list_by_unit_provider_v.provide () in
  let nod_ibs_nsl = List.map
      Inputbaseset_nameofdirectory_by_inputbase_nameofdirectory_provider_v.provide
      nod_iba_l
  in
  List.sort String.compare nod_ibs_nsl
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
(* done with do_provider_without_register.sh Inputbaseset_nameofdirectory_list_by_unit_provider_v.ml force on samedi 8 octobre 2016, 18:53:04 (UTC+0200) *)
