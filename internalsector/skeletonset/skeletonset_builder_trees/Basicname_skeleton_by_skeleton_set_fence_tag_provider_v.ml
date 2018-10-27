(** {3 Basicname_skeleton_by_skeleton_set_fence_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VFIG:Basicname_skeleton_by_skeleton_set_fence_tag_provider_v";
   "Needs : DFIG:Skeleton_context_databox_tag_by_any_sole_index_provider_v";
   "Needs : DFIG:Skeleton_son_tag_list_by_skeleton_father_tag_provider_v";
   "What-is-it : the Name of the Current Skeleton";
   "How-is-it-done : by getting the String_off the Son of the Skeleton_context_databox_tag";
   "Author : François Colonna 10 janvier 2017 at 17:01:23+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Build *)

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build tag_fsf =
  let nam_fig = Skeleton_name_by_skeleton_set_fence_tag_provider_v.provide tag_fsf in
  Basicname_v.basicname_skeleton_of_string nam_fig
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_without_register_v.ml *)
(* done with do_provider_without_register.sh Basicname_skeleton_by_skeleton_set_fence_tag_provider_v.ml  on mardi 10 janvier 2017, 17:29:32 (UTC+0100) *)
