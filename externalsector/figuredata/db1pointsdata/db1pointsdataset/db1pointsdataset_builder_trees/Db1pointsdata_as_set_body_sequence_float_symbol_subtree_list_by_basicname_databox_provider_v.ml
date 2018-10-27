(** {3 Db1pointsdata_as_set_body_sequence_float_symbol_subtree_list_by_basicname_databox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BDB1:Db1pointsdata_as_set_body_sequence_float_symbol_subtree_list_by_basicname_databox_provider_v";
   "Register : BDB1:Db1pointsdata_as_set_body_sequence_float_symbol_subtree_list_by_basicname_databox_register_v";
   "Needs : BDB1:Db1pointsdata_symbol_subtree_by_basicname_databox_provider_v";
   "Needed-by : BDB1:";
   "What-is-it : the Db1pointsdata_as_set_body_sequence_float symbol subtree list interfacing by Coordinate_tuple";
   "Abbreviation : dsf = db1pointsdata_set_body_sequence_float";
   "Abbreviation : dbo = db1pointsdata_context_databox";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build bna_dbo =
  let sym_db1_st = 
    Db1pointsdata_symbol_subtree_by_basicname_databox_provider_v.provide
      bna_dbo 
  in
  
  Tree_v.subtree_list_of_node_predicate_off_tree 
    Db1pointsdata_symbol_v.is_db1pointsdata_set_body_sequence_float_symbol_off_db1pointsdata_symbol 
    sym_db1_st
;;

(** {6 Storing} *)

let store nam_dbo val_ =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Db1pointsdata_as_set_body_sequence_float_symbol_subtree_list_by_basicname_databox_register_v.store nam_mod nam_dbo val_;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store nam_dbo =
  let val_ = build nam_dbo in
  store nam_dbo val_;
  val_
;;

(** {6 Retrieving} *)

let retrieve nam_dbo =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Db1pointsdata_as_set_body_sequence_float_symbol_subtree_list_by_basicname_databox_register_v.retrieve nam_mod nam_dbo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace nam_dbo =
  if Db1pointsdata_as_set_body_sequence_float_symbol_subtree_list_by_basicname_databox_register_v.is_stored nam_dbo
  then retrieve nam_dbo
  else build_n_store nam_dbo
;;

(** {6 Providing} *)

let provide nam_dbo =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace nam_dbo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_with_register.sh Db1pointsdata_as_set_body_sequence_float_symbol_subtree_list_by_basicname_databox_provider_v.ml on samedi 21 mai 2016, 11:46:39 (UTC+0200) *)
