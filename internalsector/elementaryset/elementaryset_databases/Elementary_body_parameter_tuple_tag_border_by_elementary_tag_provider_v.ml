(** {3 Elementary_body_parameter_tuple_tag_border_by_elementary_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Elementary_body_parameter_tuple_tag_border_by_elementary_tag_provider_v";
   "Register : DELE:Elementary_body_parameter_tuple_tag_border_by_elementary_tag_register_v";
   "Needs : DELE:Elementary_tag_tree_by_elementary_tag_provider_v";
   "Needs : SELE:Elementary_symbol_v";
   "Needed-by :"; 
   "Definition : a Fence is the Tag list of the Leaf Non-basic entities of the B-Tree";
   "Definition : a Deepfence is the Tag list of the Leaf basic entities of the B-Tree";
   "What-is-it : the Elementary_body_parameter_tuple_tag Fence for any Elementary_tag";
   "How-is-it-done : by extracting it from B-SubTree Rooted by Elementary_tag";
   "How-is-it-done : by getting the fence not the Deepfence";
   "Example : for a Parameter fence is itself";
   "Example : for a Parameter_tuple fence is Builder Parameter Tag list";
   "Example : for a Parameter_tuple fence is Elementary Units Tag list";
  ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_ele =
  let tag_ele_st = Elementary_tag_subtree_by_elementary_tag_provider_v.provide tag_ele in
  let tag_ele_fpt_l = try 
    Tree_v.node_list_of_node_predicate_off_tree
      (fun t ->
	Elementary_symbol_v.is_elementary_body_parameter_tuple_symbol_off_elementary_symbol 
	  (Tag_v.entity_off_tag t)
      )
      tag_ele_st 
  with Failure _ -> []
  in
  List.map 
    (Tag_v.map_entity Elementary_symbol_v.elementary_body_parameter_tuple_symbol_off_elementary_symbol) 
    tag_ele_fpt_l
;;

(** {6 Storing} *)

let store tag_ele val_ =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Elementary_body_parameter_tuple_tag_border_by_elementary_tag_register_v.store nam_mod tag_ele val_;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_ele =
  let val_ = build tag_ele in
  store tag_ele val_;
  val_
;;

(** {6 Retrieving} *)

let retrieve tag_ele =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Elementary_body_parameter_tuple_tag_border_by_elementary_tag_register_v.retrieve nam_mod tag_ele in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_ele =
  if Elementary_body_parameter_tuple_tag_border_by_elementary_tag_register_v.is_stored tag_ele
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

(* done with do_provider_with_register.sh Elementary_body_parameter_tuple_tag_border_by_elementary_tag_provider_v.ml on mercredi 25 mai 2016, 10:03:58 (UTC+0200) *)
