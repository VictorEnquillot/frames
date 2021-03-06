(** {3 Basicname_databox_n_basicname_database_by_skeleton_context_databox_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BSKE:Basicname_databox_n_basicname_database_by_skeleton_context_databox_tag_provider_v";
   "Needs : BSKE:Basicname_database_by_skeleton_context_databox_tag_provider_v";
   "Register : BSKE:Basicname_databox_n_basicname_database_by_skeleton_context_databox_tag_register_v";
   "Needed-by :"; 
   "What-is-it : the couple Basicname_databox_n_basicname_database for an Skeleton_context_databox Tag";
   "Author : François Colonna 27 septembre 2016 at 11:39:59+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build tag_pbo =
  let soi_pbo = Tag_v.sole_index_off_tag tag_pbo in
  Basicname_databox_n_basicname_database_by_any_sole_index_provider_v.provide
    soi_pbo
;;

(** {6 Storing} *)

let store tag_pbo result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Basicname_databox_n_basicname_database_by_skeleton_context_databox_tag_register_v.store nam_mod tag_pbo result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_pbo =
  let result = build tag_pbo in
  store tag_pbo result;
  result
;;

(** {6 Retrieving} *)

let retrieve tag_pbo =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Basicname_databox_n_basicname_database_by_skeleton_context_databox_tag_register_v.retrieve nam_mod tag_pbo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_pbo =
  if Basicname_databox_n_basicname_database_by_skeleton_context_databox_tag_register_v.is_stored tag_pbo
  then retrieve tag_pbo
  else build_n_store tag_pbo
;;

(** {6 Providing} *)

let provide tag_pbo =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace tag_pbo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Basicname_databox_n_basicname_database_by_skeleton_context_databox_tag_provider_v.ml force on lundi 10 octobre 2016, 09:12:54 (UTC+0200) *)
