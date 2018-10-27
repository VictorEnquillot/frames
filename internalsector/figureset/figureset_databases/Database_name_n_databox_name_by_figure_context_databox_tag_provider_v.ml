(** {3 Database_name_n_databox_name_by_figure_context_databox_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DFIG:Database_name_n_databox_name_by_figure_context_databox_tag_provider_v";
   "Register : DFIG:Database_name_n_databox_name_by_figure_context_databox_tag_register_v";
   "Needs : CON:Context_database_name_by_context_databox_index_provider_v";
   "Needed-by :"; 
   "What-is-it : the couple Database_name_n_databox_name for Figure_context_databox_tag";
   "Author : François Colonna 22nd March 2016";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build tag_fbo =
  let (sym_fbo, soi_fbo) = tag_fbo in
  let nam_dbo = Figure_context_databox_symbol_v.string_off sym_fbo in
  let idx_dba = Sole_index_v.father_index_off_sole_index soi_fbo in
  let nam_dba = Context_database_name_by_context_database_index_provider_v.provide idx_dba in
  (nam_dba, nam_dbo)
;;

(** {6 Storing} *)

let store tag_fbo result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Database_name_n_databox_name_by_figure_context_databox_tag_register_v.store nam_mod tag_fbo result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_fbo =
  let result = build tag_fbo in
  store tag_fbo result;
  result
;;

(** {6 Retrieving} *)

let retrieve tag_fbo =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Database_name_n_databox_name_by_figure_context_databox_tag_register_v.retrieve nam_mod tag_fbo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_fbo =
  if Database_name_n_databox_name_by_figure_context_databox_tag_register_v.is_stored tag_fbo
  then retrieve tag_fbo
  else build_n_store tag_fbo
;;

(** {6 Providing} *)

let provide tag_fbo =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace tag_fbo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_with_register.sh Database_name_n_databox_name_by_figure_context_databox_tag_provider_v.ml on jeudi 19 mai 2016, 18:35:53 (UTC+0200) *)
