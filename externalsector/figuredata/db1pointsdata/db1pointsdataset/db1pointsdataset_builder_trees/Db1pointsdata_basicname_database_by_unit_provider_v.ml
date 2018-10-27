(** {3 Db1pointsdata_basicname_database_by_unit_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BDB1:Db1pointsdata_basicname_database_by_unit_provider_v";
   "Needs : BDB1:Db1pointsdata_basicname_trio_by_unit_provider_v";
   "What-is-it : the database_name (e.g: db1points, db1points, ...)";
   "Author : François Colonna 24 septembre 2016 at 13:31:45+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build () =
  let (nam_dba, _, _) = Db1pointsdata_basicname_trio_by_unit_provider_v.provide () in
  nam_dba
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
(* done with do_provider_without_register.sh Db1pointsdata_basicname_database_by_unit_provider_v.ml force on lundi 26 septembre 2016, 07:27:03 (UTC+0200) *)
