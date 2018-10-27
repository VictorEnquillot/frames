(** {3 Elementary_tag_tree_by_elementary_context_databox_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Elementary_tag_tree_by_elementary_context_databox_tag_provider_v";
   "Register : DELE:Elementary_tag_tree_by_elementary_context_databox_tag_register_v";
   "Needs : DELE:Elementary_tag_tree_by_elementary_context_databox_skeletondata_tag_provider_v";
   "Needs : DELE:Elementary_tag_tree_by_elementary_context_databox_figuredata_tag_provider_v";
   "What-is-it : the Full Elementary Builder-Tree from Databox_tag";
   "How-is-it-done : by dispatching between the different entity_domains figure | skeleton ...";
   "Abbreviation : edo = elementary_context_databox";
   "Abbreviation : efd = elementary_context_databox_figuredata";
   "Abbreviation : esd = elementary_context_databox_skeletondata";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build tag_edo =
  let sym_edo = Tag_v.entity_off_tag tag_edo in
  let soi_edo = Tag_v.sole_index_off_tag tag_edo in
  match sym_edo with
  | Elementary_context_databox_symbol_t.Elementary_context_databox_skeletondata_symbol sym_esd ->
      let tag_esd = Tag_v.make sym_esd soi_edo in
      Elementary_tag_tree_by_elementary_context_databox_skeletondata_tag_provider_v.provide tag_esd

  | Elementary_context_databox_symbol_t.Elementary_context_databox_figuredata_symbol sym_efd ->
      let tag_efd = Tag_v.make sym_efd soi_edo in
      Elementary_tag_tree_by_elementary_context_databox_figuredata_tag_provider_v.provide tag_efd
;;

(** {6 Storing} *)

let store tag_edo result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Elementary_tag_tree_by_elementary_context_databox_tag_register_v.store nam_mod tag_edo result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_edo =
  let result = build tag_edo in
  store tag_edo result;
  result
;;

(** {6 Retrieving} *)

let retrieve tag_edo =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Elementary_tag_tree_by_elementary_context_databox_tag_register_v.retrieve nam_mod tag_edo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_edo =
  if Elementary_tag_tree_by_elementary_context_databox_tag_register_v.is_stored tag_edo
  then retrieve tag_edo
  else build_n_store tag_edo
;;

(** {6 Providing} *)

let provide tag_edo =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace tag_edo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_with_register.sh Elementary_tag_tree_by_elementary_context_databox_tag_provider_v.ml on mercredi 25 mai 2016, 10:04:01 (UTC+0200) *)
