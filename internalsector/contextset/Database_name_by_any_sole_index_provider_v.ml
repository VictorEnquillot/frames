(** {3 Database_name_by_any_sole_index_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Database_name_by_any_sole_index_provider_v";
   "Needs : CONS:Context_database_name_by_ordinal_provider_v";
   "What-is-it : the Database_name obtained by any sole_index of length greater than 3";
   "How-is-it-done : by getting the 3th element of any sole_index";
   "Author : François Colonna 27 décembre 2016 at 12:36:23+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build soi_any =
  let soi_dba = 
    Base_sole_index_by_any_sole_index_provider_v.provide
      soi_any 
  in
  let ord_dba = List.hd soi_dba in
  Database_name_by_ordinal_provider_v.provide ord_dba
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

