(** {3 Property_tag_all_list_by_basicname_inputbox_n_basicname_inputbase_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPRO:Property_tag_all_list_by_basicname_inputbox_n_basicname_inputbase_provider_v";
   "Needs : BPRO:Property_tag_tree_by_basicname_inputbox_n_basicname_inputbase_provider_v";
   "Register : BPRO:Property_tag_all_list_by_basicname_inputbox_n_basicname_inputbase_register_v";
   "Register : BPRO:Property_creation_module_name_by_sole_index_register_v";
   "Register : BPRO:Property_symbol_by_sole_index_register_v";
   "Needed-by : BPRO:";
   "What-is-it : the list of all Nodes of the Builder-tree (including Root))";
   "What-is-it : for Basicname_inputbox_n_basicname_inputbase with Sector_tag as Root";
   "Author : François Colonna 15 novembre 2016 at 16:26:47+01:00";   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";

 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (bna_ibo, bna_iba) =
  let tag_pro_t = 
    Property_tag_tree_by_basicname_inputbox_n_basicname_inputbase_provider_v.provide
      (bna_ibo, bna_iba)
  in
  
  Tree_v.node_list_off_tree tag_pro_t 
;;

(** {6 Storing in Creation_module and Symbol by Sole_index} *)

let store_creation_module_n_symbol nam_mod (bna_ibo, bna_iba) =
  let nam_fun = "store_creation_module_n_symbol" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in

  let tag_pro_l = build (bna_ibo, bna_iba) in
  List.iter 
    (fun (s, i) ->
      Property_creation_module_name_by_sole_index_register_v.store nam_mod i nam_mod; 
      Property_symbol_by_sole_index_register_v.store nam_mod i s;
    )
    tag_pro_l;

  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Storing} *)

let store (bna_ibo, bna_iba) tag_pro_l =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Property_tag_all_list_by_basicname_inputbox_n_basicname_inputbase_register_v.store nam_mod (bna_ibo, bna_iba) tag_pro_l; 
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store (bna_ibo, bna_iba) =
  let tag_pro_l = build (bna_ibo, bna_iba) in
  store (bna_ibo, bna_iba) tag_pro_l;
  store_creation_module_n_symbol nam_mod (bna_ibo, bna_iba);
  tag_pro_l
;;

(** {6 Retrieving} *)

let retrieve (bna_ibo, bna_iba) =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = 
    Property_tag_all_list_by_basicname_inputbox_n_basicname_inputbase_register_v.retrieve 
      nam_mod 
      (bna_ibo, bna_iba) 
  in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace (bna_ibo, bna_iba) =
  if Property_tag_all_list_by_basicname_inputbox_n_basicname_inputbase_register_v.is_stored (bna_ibo, bna_iba)
  then retrieve (bna_ibo, bna_iba)
  else build_n_store (bna_ibo, bna_iba)
;;

(** {6 Providing} *)

let provide (bna_ibo, bna_iba) =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace (bna_ibo, bna_iba) in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_product_provider_tag_all_list_by_basicname_inputbox_n_basicname_inputbase_v.ml *)
(* done with do_provider_tag_all_list_by_basicname_inputbox_n_basicname_inputbase.sh force on mardi 15 novembre 2016, 16:37:16 (UTC+0100) *)
