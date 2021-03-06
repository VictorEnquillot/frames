(** {3 Readee_basic_by_elementary_fence_basic_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Readee_basic_by_elementary_fence_basic_tag_provider_v";
   "Register : DELE:Readee_basic_by_elementary_fence_basic_tag_register_v";
   "What-is-it : the Elementary_fence_basic_value (Readee_basic) from Database";
   "Author : François Colonna 09 mai 2016 at 10:20:30+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_eba =
  Utilities_v.not_yet_implemented __LOC__ "build";
;;

(** {6 Storing} *)

let store tag_eba result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Readee_basic_by_elementary_fence_basic_tag_register_v.store nam_mod tag_eba result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_eba =
  let result = build tag_eba in
  store tag_eba result;
  result
;;

(** {6 Retrieving} *)

let retrieve tag_eba =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Readee_basic_by_elementary_fence_basic_tag_register_v.retrieve nam_mod tag_eba in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_eba =
  if Readee_basic_by_elementary_fence_basic_tag_register_v.is_stored tag_eba
  then retrieve tag_eba
  else build_n_store tag_eba
;;

(** {6 Providing} *)

let provide tag_eba =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace tag_eba in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_with_register.sh Readee_basic_by_elementary_fence_basic_tag_provider_v.ml on mercredi 25 mai 2016, 10:04:02 (UTC+0200) *)
