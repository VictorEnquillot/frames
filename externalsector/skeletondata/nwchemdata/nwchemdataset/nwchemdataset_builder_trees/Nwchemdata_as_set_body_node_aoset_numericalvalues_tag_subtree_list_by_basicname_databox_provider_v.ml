(** {3 Nwchemdata_as_body_aoset_numericalvalues_tag_list_by_basicname_databox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BNWC:Nwchemdata_as_body_aoset_numericalvalues_tag_list_by_basicname_databox_provider_v";
   "Needs : BNWC:Nwchemdata_context_databox_tag_tree_by_basicname_databox_provider_v";
   "Needed-by : BNWC:";
   "What-is-it : the list of Nwchemdata_set_body_node_aoset_numericalvalues Tag subtree";
   "Author : François Colonna 05 décembre 2016 at 08:29:42+01:00";
 ]
;;

(* Scheme *)
(*   Nwchemdata_set_body_node_aoset_numericalvalues_constructor  *)
(*                         "Ne P 4 GAUSSIAN 1"                   *)
(*   Nwchemdata_set_fence_float_positive_constructor             *)
(*                         "54.7000000"       ( exponent )       *)
(*   Nwchemdata_set_fence_float_positive_constructor             *)
(*                         "0.0171510"        ( coefficient )    *)

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build bna_dbo =

  let tag_nwc_t = Nwchemdata_tag_tree_by_basicname_databox_provider_v.provide bna_dbo in
  
  Tree_v.subtree_list_of_node_predicate_off_tree
    (fun (s, i) -> Nwchemdata_symbol_v.is_nwchemdata_set_body_node_aoset_numericalvalues_constructor s)
    tag_nwc_t
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
(* done with do_provider_without_register.sh Nwchemdata_tag_tree_by_nwchemdata_context_databox_tag_provider_v.ml force on lundi 10 octobre 2016, 15:52:10 (UTC+0200) *)

