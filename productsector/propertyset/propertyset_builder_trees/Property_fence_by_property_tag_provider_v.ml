(** {3 Property_fence_by_property_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPRO:Property_fence_by_property_tag_provider_v";
   "Needs : BPRO:Property_tag_subtree_by_property_tag_provider_v";
   "Register : BPRO:Property_fence_by_property_tag_register_v";
   "Needed-by :"; 
   "Definition : the Fence is the Tag list (Coerced Up) of the Leaf Entities of the B-Tree of any Entity";
   "What-is-it : the Property_fence_coordinate_tag for any Property_tag";
   "What-is-it : the Property_fence_parameter_tag for any Property_tag";
   "How-is-it-done : by extracting it from B-SubTree Rooted by Property_tag";
   "How-is-it-done : by getting the Deepfence not the Fence";
   "Example : for a Coordinate_tuple fence is a Coordinate Tag list";
   "Example : for a Coordinate fence is itself";
   "Author : François Colonna 10 octobre 2016 at 07:54:32+02:00";
  ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_pro =
  let tag_pro_st = 
    Property_tag_subtree_by_property_tag_provider_v.provide tag_pro 
  in
  Tree_v.leaf_node_list_off_tree tag_pro_st
;;

(** {6 Storing} *)

let store tag_pro val_ =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Property_fence_by_property_tag_register_v.store nam_mod tag_pro val_;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_pro =
  let val_ = build tag_pro in
  store tag_pro val_;
  val_
;;

(** {6 Retrieving} *)

let retrieve tag_pro =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Property_fence_by_property_tag_register_v.retrieve nam_mod tag_pro in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_pro =
  if Property_fence_by_property_tag_register_v.is_stored tag_pro
  then retrieve tag_pro
  else build_n_store tag_pro
;;

(** {6 Providing} *)

let provide tag_pro =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace tag_pro in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Property_fence_by_property_tag_provider_v.ml force on mardi 15 novembre 2016, 16:37:06 (UTC+0100) *)
