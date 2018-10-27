(** {3 Localinput_as_set_body_handle_command_tag_subtree_list_by_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Localinput_as_set_body_handle_command_tag_subtree_list_by_basicname_inputbox_provider_v";
   "Register : VARLOI:Localinput_as_set_body_handle_command_tag_subtree_list_by_basicname_inputbox_register_v";
   "Needs : VARLOI:Localinput_tag_tree_by_basicname_inputbox_provider_v";
   "Needed-by :"; 
   "What-is-it : for a given inputbox file it provides the B-Tree of Localinput_command_tag";
   "Remark ?? : each Subtree is already Stored in Localinput_tag_subtree_by_localinput_tag_register_v";
   "Author : François Colonna 10 novembre 2016 at 10:17:31+01:00";
 ]
;;

 
let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Storing newly created Entities} *)

let store_tree_of_localinput_tag_tree tag_loi_t =
  let tag_roo = Tree_v.root_off_tree tag_loi_t in
  Localinput_tag_subtree_by_localinput_tag_register_v.store_with_trace nam_mod tag_roo tag_loi_t
;;

(** {6 Building} *)

let build bna_ibo =
  let tag_loi_t = 
    Localinput_tag_tree_by_basicname_inputbox_provider_v.provide 
      bna_ibo
  in  

  let pre_tag_lhc (s, i) = Localinput_symbol_v.is_localinput_set_body_handle_command_symbol_off_localinput_symbol s in

  Tree_v.subtree_list_of_node_predicate_off_tree pre_tag_lhc tag_loi_t
;;

(** {6 Storing} *)

let store bna_ibo result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Localinput_as_set_body_handle_command_tag_subtree_list_by_basicname_inputbox_register_v.store nam_mod bna_ibo result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store bna_ibo =
  let result = build bna_ibo in
  store bna_ibo result;
  result
;;

(** {6 Retrieving} *)

let retrieve bna_ibo =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Localinput_as_set_body_handle_command_tag_subtree_list_by_basicname_inputbox_register_v.retrieve nam_mod bna_ibo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace bna_ibo =
  if Localinput_as_set_body_handle_command_tag_subtree_list_by_basicname_inputbox_register_v.is_stored bna_ibo
  then retrieve bna_ibo
  else build_n_store bna_ibo
;;

(** {6 Providing} *)

let provide bna_ibo =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace bna_ibo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_with_register.sh Localinput_as_set_body_handle_command_tag_subtree_list_by_basicname_inputbox_provider_v.ml on vendredi 20 mai 2016, 13:40:58 (UTC+0200) *)
