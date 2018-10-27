(** {3 Nwchemdata_tag_all_list_by_basicname_databox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BNWC:Nwchemdata_tag_all_list_by_basicname_databox_provider_v";
   "Needs : BNWC:Nwchemdata_tag_tree_by_basicname_databox_provider_v";
   "Register : BNWC:Nwchemdata_tag_all_list_by_basicname_databox_register_v";
   "Register : BNWC:Nwchemdata_creation_module_name_by_sole_index_register_v";
   "Register : BNWC:Nwchemdata_symbol_by_sole_index_register_v";
   "Needed-by : BNWC:";
   "What-is-it : the list of all Nodes of the Builder-tree (including Root))";
   "What-is-it : for Database_name_n_databox_name with Nwchemdata_tag as Root";
   "Author : François Colonna 01 avril 2017 at 12:29:18+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build bna_dbo =
  let tag_nwc_t = 
    Nwchemdata_tag_tree_by_basicname_databox_provider_v.provide
      bna_dbo
  in
  
  Tree_v.node_list_off_tree tag_nwc_t 
;;

(** {6 Storing in Creation_module and Symbol by Sole_index} *)

let store_creation_module_n_symbol nam_mod nam_dbo =
  let nam_fun = "store_creation_module_n_symbol" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in

  let tag_nwc_l = build nam_dbo in
  List.iter 
    (fun (s, i) ->
      Nwchemdata_creation_module_name_by_sole_index_register_v.store nam_mod i nam_mod; 
      Nwchemdata_symbol_by_sole_index_register_v.store nam_mod i s;
    )
    tag_nwc_l;

  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Storing} *)

let store nam_dbo tag_nwc_l =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Nwchemdata_tag_all_list_by_basicname_databox_register_v.store nam_mod nam_dbo tag_nwc_l; 
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store nam_dbo =
  let tag_nwc_l = build nam_dbo in
  store nam_dbo tag_nwc_l;
  store_creation_module_n_symbol nam_mod nam_dbo;
  tag_nwc_l
;;

(** {6 Retrieving} *)

let retrieve nam_dbo =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = 
    Nwchemdata_tag_all_list_by_basicname_databox_register_v.retrieve 
      nam_mod 
      nam_dbo 
  in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace nam_dbo =
  if Nwchemdata_tag_all_list_by_basicname_databox_register_v.is_stored nam_dbo
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

(* using template_provider_tag_all_list_by_basicname_databox_v.ml *)
(* done with do_provider_tag_all_list_by_basicname_databox.sh force on lundi 26 septembre 2016, 07:52:48 (UTC+0200) *)
