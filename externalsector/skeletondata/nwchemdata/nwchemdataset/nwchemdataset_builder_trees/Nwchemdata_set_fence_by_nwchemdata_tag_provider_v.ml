(** {3 Nwchemdata_set_fence_by_nwchemdata_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BNWC:Nwchemdata_set_fence_by_nwchemdata_tag_provider_v";
   "Needs : BNWC:Nwchemdata_tag_subtree_by_nwchemdata_tag_provider_v";
   "Register : BNWC:Nwchemdata_set_fence_by_nwchemdata_tag_register_v";
   "Needed-by :"; 
   "Definition : a Fence is the Tag list of the Leaf Non-basic entities of the B-Tree";
   "What-is-it : the Fence for a Nwchem Tag";
   "Author : François Colonna 25 septembre 2016 at 20:19:24+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_db1 =
  let tag_nwc_st = 
    Nwchemdata_tag_subtree_by_nwchemdata_tag_provider_v.provide tag_db1 
  in
  Tree_v.leaf_node_list_off_tree tag_nwc_st
;;

(** {6 Storing} *)

let store tag_db1 result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Nwchemdata_set_fence_by_nwchemdata_tag_register_v.store nam_mod tag_db1 result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_db1 =
  let result = build tag_db1 in
  store tag_db1 result;
  result
;;

(** {6 Retrieving} *)

let retrieve tag_db1 =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Nwchemdata_set_fence_by_nwchemdata_tag_register_v.retrieve nam_mod tag_db1 in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_db1 =
  if Nwchemdata_set_fence_by_nwchemdata_tag_register_v.is_stored tag_db1
  then retrieve tag_db1
  else build_n_store tag_db1
;;

(** {6 Providing} *)

let provide tag_db1 =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace tag_db1 in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Nwchemdata_set_fence_by_nwchemdata_tag_provider_v.ml force on lundi 10 octobre 2016, 15:52:03 (UTC+0200) *)
