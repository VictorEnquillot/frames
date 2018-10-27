(** {3 Databox_name_n_database_name_by_elementary_context_databox_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Databox_name_n_database_name_by_elementary_context_databox_tag_provider_v";
   "Register : DELE:Databox_name_n_database_name_by_elementary_context_databox_tag_register_v";
   "Needs : SELE:Elementary_context_databox_symbol_v";
   "Needs : CON:Context_database_name_by_context_databox_index_provider_v";
   "Needed-by :"; 
   "What-is-it : the couple Databox_name_n_database_name for Elementary_context_databox_tag";
   "Author : François Colonna 03 mai 2016 at 09:39:02+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build tag_nbo =
   let (sym_fbo, soi_fbo) = tag_nbo in
   let nam_dbo = Elementary_context_databox_symbol_v.string_off sym_fbo in
   let idx_dba = Sole_index_v.father_index_off_sole_index soi_fbo in
   let nam_dba = Context_database_name_by_context_database_index_provider_v.provide idx_dba in
   (nam_dbo, nam_dba)
;;

(** {6 Storing} *)

let store tag_nbo result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Databox_name_n_database_name_by_elementary_context_databox_tag_register_v.store nam_mod tag_nbo result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_nbo =
  let result = build tag_nbo in
  store tag_nbo result;
  result
;;

(** {6 Retrieving} *)

let retrieve tag_nbo =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Databox_name_n_database_name_by_elementary_context_databox_tag_register_v.retrieve nam_mod tag_nbo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_nbo =
  if Databox_name_n_database_name_by_elementary_context_databox_tag_register_v.is_stored tag_nbo
  then retrieve tag_nbo
  else build_n_store tag_nbo
;;

(** {6 Providing} *)

let provide tag_nbo =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace tag_nbo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_with_register.sh Databox_name_n_database_name_by_elementary_context_databox_tag_provider_v.ml on mercredi 25 mai 2016, 10:03:57 (UTC+0200) *)
