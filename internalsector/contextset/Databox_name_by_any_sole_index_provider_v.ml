(** {3 Databox_name_by_any_sole_index_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Databox_name_by_any_sole_index_provider_v";
   "Needs : CONS:Context_databox_name_by_ordinal_provider_v";
   "What-is-it : the Databox_name obtained by any sole_index of length greater than 3";
   "How-is-it-done : by getting the 3th element of any sole_index";
   "Author : François Colonna 29 mars 2017 at 15:54:10+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build soi_any =
  let soi_dbo = 
    Box_sole_index_by_any_sole_index_provider_v.provide
      soi_any 
  in
  let ord_dbo = List.hd soi_dbo in
  Databox_name_by_ordinal_provider_v.provide ord_dbo
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

