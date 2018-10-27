(** {3 Property_symbol_subtree_by_localinput_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPRO:Property_symbol_subtree_by_localinput_tag_provider_v";
   "Needs : BPRO:Basicname_inputbox_n_basicname_inputbase_by_any_sole_index_provider_v";
   "Needs : BPRO:Property_symbol_subtree_by_basicname_inputbox_n_basicname_inputbase_provider_v";
   "Register : BPRO:Property_symbol_subtree_by_localinput_tag_register_v";
   "Improve : get rid of tag use only symbols";
   "Author : François Colonna 09 novembre 2016 at 16:09:40+01:00";
 ]
 ;;
                                 
let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build tag_loi =
  let soi_loi = Tag_v.sole_index_off_tag tag_loi in
  let (bna_ibo, bna_iba) = 
    Basicname_inputbox_n_basicname_inputbase_by_any_sole_index_provider_v.provide
      soi_loi
  in
  Property_symbol_subtree_by_basicname_inputbox_n_basicname_inputbase_provider_v.provide
    (bna_ibo, bna_iba)
;;

(** {6 Storing} *)

let store tag_loi result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Property_symbol_subtree_by_localinput_tag_register_v.store nam_mod tag_loi result;
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
  let result = Property_symbol_subtree_by_localinput_tag_register_v.retrieve nam_mod tag_loi in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_loi =
  if Property_symbol_subtree_by_localinput_tag_register_v.is_stored tag_loi
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
(* done with do_provider_with_register.sh Property_symbol_subtree_by_localinput_tag_provider_v.ml force on mardi 15 novembre 2016, 16:37:08 (UTC+0100) *)
