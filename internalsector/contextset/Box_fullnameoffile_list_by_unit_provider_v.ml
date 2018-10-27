(** {3 Box_fullnameoffile_list_by_unit_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Box_fullnameoffile_list_by_unit_provider_v";
   "Needs : CONS:Databox_fullnameoffile_list_by_unit_provider_v";
   "Needs : CONS:Inputbox_fullnameoffile_list_by_unit_provider_v";
   "What-is-it : the name list of all external files";
   "Author : François Colonna 13 septembre 2016 at 15:44:25+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build () =
  let fno_box_nsl =
    (Databox_fullnameoffile_list_by_unit_provider_v.provide ()) @ 
    (Inputbox_fullnameoffile_list_by_unit_provider_v.provide ())
  in
  List.sort compare fno_box_nsl
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
(* done with do_provider_without_register.sh Box_fullnameoffile_list_by_unit_provider_v.ml force on samedi 8 octobre 2016, 18:52:41 (UTC+0200) *)
