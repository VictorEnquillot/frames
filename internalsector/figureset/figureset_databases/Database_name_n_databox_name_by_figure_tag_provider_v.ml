(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DFIG:Database_name_n_databox_name_by_figure_tag_provider_v";
   "Register : DFIG:Database_name_n_databox_name_by_figure_tag_register_v";
   "Needs : DFIG:Figure_any_category_by_sole_index_extractor_v";
   "Needs : DFIG:Database_name_n_databox_name_by_figure_context_databox_tag_provider_v";
   "What-is-it : the couple (Database_name, Databox_name) from any local Tag";
   "Author : François Colonna 31 mai 2016 at 16:40:25+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_ske =

  let soi_ske = Tag_v.sole_index_off_tag tag_ske in
  let tag_sbo = 
    Figure_any_category_by_sole_index_extractor_v.figure_context_databox_tag_off_sole_index
      soi_ske
  in

  Database_name_n_databox_name_by_figure_context_databox_tag_provider_v.provide tag_sbo 
;;

(** {6 Storing} *)

let store tag_ske val_ =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Database_name_n_databox_name_by_figure_tag_register_v.store nam_mod tag_ske val_;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_ske =
  let val_ = build tag_ske in
  store tag_ske val_;
  val_
;;

(** {6 Retrieving} *)

let retrieve tag_ske =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Database_name_n_databox_name_by_figure_tag_register_v.retrieve nam_mod tag_ske in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_ske =
  if Database_name_n_databox_name_by_figure_tag_register_v.is_stored tag_ske
  then retrieve tag_ske
  else build_n_store tag_ske
;;

(** {6 Providing} *)

let provide tag_ske =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace tag_ske in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_with_register.sh Database_name_n_databox_name_by_figure_tag_provider_v.ml on mardi 31 mai 2016, 16:45:31 (UTC+0200) *)
