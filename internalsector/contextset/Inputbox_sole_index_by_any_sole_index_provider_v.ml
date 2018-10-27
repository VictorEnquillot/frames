(** {3 Inputbox_sole_index__by_any_sole_index_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Inputbox_sole_index_by_any_sole_index_provider_v";
   "Needs : CONS:Box_sole_index_by_any_sole_index_provider_v";
   "What-is-it : ";
   "Author : François Colonna 04 avril 2017 at 12:09:53+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build soi_any =
  let soi_box = Box_sole_index_by_any_sole_index_provider_v.provide soi_any in
  let ord_qua = Quatuor_v.quatuor_of_list soi_box in
  let nam_qua = Context_name_quatuor_by_context_ordinal_quatuor_provider_v.provide ord_qua in
  Check_consistency_by_context_name_quatuor_provider_v.provide nam_qua;

  soi_box
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

