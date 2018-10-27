(** {3 Localinput_set_fence_by_localinput_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BLOI:Localinput_set_fence_by_localinput_tag_provider_v";
   "Needs : BLOI:Localinput_tag_subtree_by_localinput_tag_provider_v";
   "Register : B:Localinput_set_fence_by_localinput_tag_register_v";
   "Needed-by :"; 
   "Definition : a Fence is the Tag list of the Leaf Non-basic entities of the B-Tree";
   "What-is-it : the Fence for a Local Tag";
   "Author : François Colonna 25 septembre 2016 at 20:19:24+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_loi =
  let tag_loi_st = 
    Localinput_tag_subtree_by_localinput_tag_provider_v.provide tag_loi 
  in
  Tree_v.leaf_node_list_off_tree tag_loi_st
;;

(** {6 Storing} *)

let store tag_loi result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Localinput_set_fence_by_localinput_tag_register_v.store nam_mod tag_loi result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_loi =
  let result = build tag_loi in
  store tag_loi result;
  result
;;

(** {6 Retrieving} *)

let retrieve tag_loi =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Localinput_set_fence_by_localinput_tag_register_v.retrieve nam_mod tag_loi in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_loi =
  if Localinput_set_fence_by_localinput_tag_register_v.is_stored tag_loi
  then retrieve tag_loi
  else build_n_store tag_loi
;;

(** {6 Providing} *)

let provide tag_loi =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace tag_loi in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Localinput_set_fence_by_localinput_tag_provider_v.ml force on lundi 31 octobre 2016, 14:54:03 (UTC+0100) *)
