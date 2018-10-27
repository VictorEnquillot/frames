(** {3 Database_name_n_databox_name_by_elementary_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Database_name_n_databox_name_by_elementary_tag_provider_v";
   "Register : DELE:Database_name_n_databox_name_by_elementary_tag_register_v";
   "Needs : DELE:Elementary_any_category_by_sole_index_extractor_v";
   "Needs : CON:Database_name_n_databox_name_by_global_sole_index_provider_v";
   "Needed-by :";  
   "What-is-it : the couple Database_name_n_databox_name for any Elementary_tag";
   "Author : François Colonna 25 mai 2016 at 09:35:49+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build tag_ele =
  let soi_ele = Tag_v.sole_index_off_tag tag_ele in
  Database_name_n_databox_name_by_global_sole_index_provider_v.provide soi_ele
;;

(** {6 Storing} *)

let store tag_ele result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Database_name_n_databox_name_by_elementary_tag_register_v.store nam_mod tag_ele result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_ele =
  let result = build tag_ele in
  store tag_ele result;
  result
;;

(** {6 Retrieving} *)

let retrieve tag_ele =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Database_name_n_databox_name_by_elementary_tag_register_v.retrieve nam_mod tag_ele in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_ele =
  if Database_name_n_databox_name_by_elementary_tag_register_v.is_stored tag_ele
  then retrieve tag_ele
  else build_n_store tag_ele
;;

(** {6 Providing} *)

let provide tag_ele =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace tag_ele in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_with_register.sh Database_name_n_databox_name_by_elementary_tag_provider_v.ml on mercredi 25 mai 2016, 10:03:57 (UTC+0200) *)
