(** {3 Databox_nameoffile_list_by_unit_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Databox_nameoffile_list_by_unit_provider_v";
   "Needs : CONS:Databasefiles_nameofdirectory_list_by_unit_provider_v";
   "Needs : CONS:Databox_nameoffile_list_by_databasefiles_nameofdirectory_provider_v";
   "Definition : Databasefiles_name is the name without its path of a Files directory son of Sector Directories";
   "Example : [\"point_a.db1\"; \"segment_bc.db1\"; ... ]";
   "Author : François Colonna 04 juillet 2016 at 14:32:09+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build () =
  let nod_dbf_l = Databasefiles_nameofdirectory_list_by_unit_provider_v.provide () in
  let nof_dbo_ll = List.map
      Databox_nameoffile_list_by_databasefiles_nameofdirectory_provider_v.provide
      nod_dbf_l
  in
  let nof_dbo_l = List.flatten nof_dbo_ll in 
  List.sort String.compare nof_dbo_l
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
(* done with do_provider_without_register.sh Databox_nameoffile_list_by_unit_provider_v.ml force on samedi 8 octobre 2016, 18:52:54 (UTC+0200) *)
