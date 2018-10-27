(** {3 Inputbase_sole_index__by_any_sole_index_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Inputbase_sole_index_by_any_sole_index_provider_v";
   "Needs : CONS:Base_sole_index_by_any_sole_index_provider_v";
   "What-is-it : ";
   "Author : François Colonna 04 avril 2017 at 12:09:53+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build soi_any =
  let soi_bas = Base_sole_index_by_any_sole_index_provider_v.provide soi_any in
  let ord_tri = Trio_v.trio_of_list soi_bas in
  let nam_tri = Context_name_trio_by_context_ordinal_trio_provider_v.provide ord_tri in
  Check_consistency_by_context_name_trio_provider_v.provide nam_tri;

  soi_bas
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

