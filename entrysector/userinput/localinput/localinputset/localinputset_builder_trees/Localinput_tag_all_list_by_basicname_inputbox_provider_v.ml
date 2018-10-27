(** {3 Localinput_tag_all_list_by_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BLOI:Localinput_tag_all_list_by_basicname_inputbox_provider_v";
   "Needs : BLOI:Localinput_tag_tree_by_basicname_inputbox_provider_v";
   "Register : BLOI:Localinput_tag_all_list_by_basicname_inputbox_register_v";
   "Register : BLOI:Localinput_creation_module_name_by_sole_index_register_v";
   "Register : BLOI:Localinput_symbol_by_sole_index_register_v";
   "Needed-by : B:";
   "What-is-it : the list of all Nodes of the Builder-tree (including Root))";
   "What-is-it : for Inputbase_name_n_inputbox_name with Localinput_tag as Root";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build bna_ibo =
  let tag_loi_t = 
    Localinput_tag_tree_by_basicname_inputbox_provider_v.provide
      bna_ibo
  in
  
  Tree_v.node_list_off_tree tag_loi_t 
;;

(** {6 Storing in Creation_module and Symbol by Sole_index} *)

let store_creation_module_n_symbol nam_mod bna_ibo =
  let nam_fun = "store_creation_module_n_symbol" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in

  let tag_loi_l = build bna_ibo in
  List.iter 
    (fun (s, i) ->
      Localinput_creation_module_name_by_sole_index_register_v.store nam_mod i nam_mod; 
      Localinput_symbol_by_sole_index_register_v.store nam_mod i s;
    )
    tag_loi_l;

  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Storing} *)

let store bna_ibo tag_loi_l =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Localinput_tag_all_list_by_basicname_inputbox_register_v.store nam_mod bna_ibo tag_loi_l; 
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store bna_ibo =
  let tag_loi_l = build bna_ibo in
  store bna_ibo tag_loi_l;
  store_creation_module_n_symbol nam_mod bna_ibo;
  tag_loi_l
;;

(** {6 Retrieving} *)

let retrieve bna_ibo =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = 
    Localinput_tag_all_list_by_basicname_inputbox_register_v.retrieve 
      nam_mod 
      bna_ibo 
  in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace bna_ibo =
  if Localinput_tag_all_list_by_basicname_inputbox_register_v.is_stored bna_ibo
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

(* using template_provider_tag_all_list_by_basicname_inputbox_v.ml *)
(* done with do_provider_tag_all_list_by_basicname_inputbox.sh force on lundi 26 septembre 2016, 07:27:07 (UTC+0200) *)
