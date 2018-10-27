(** {3 Skeleton_context_databox_symbol_by_any_sole_index_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BSKE:Skeleton_context_databox_symbol_by_any_sole_index_provider_v";
   "Needs : BSKE:Skeleton_basicname_databox_by_any_sole_index_provider_v";
   "What-is-it : the Skeleton_context_databox Symbol";
   "Author : François Colonna 09 avril 2017 at 12:02:28+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build soi_any =
  let bna_dbo = Skeleton_basicname_databox_by_any_sole_index_provider_v.provide soi_any in
  let nam_dbo = Basicname_v.string_off bna_dbo in
  Skeleton_context_databox_symbol_v.skeleton_context_databox_constructor nam_dbo
;;


(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

