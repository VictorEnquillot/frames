(** {3 Nwchemdata_as_set_body_node_aoset_numericalvalues_tag_list_by_nwchemdata_context_databox_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BNWC:Nwchemdata_as_set_body_node_aoset_numericalvalues_tag_list_by_nwchemdata_context_databox_tag_provider_v";
   "Needs : BNWC:Nwchemdata_tag_all_list_by_nwchemdata_context_databox_tag_provider_v";
   "Needed-by : BNWC:";
   "What-is-it : the list of Nwchemdata_set_body_node_aoset_numericalvalues_constructor Tag";
   "How-is-it-done : converting Databox Tag to Name";
   "Author : François Colonna 03 décembre 2016 at 16:59:40+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_nbo =

  let tag_nwc_l = 
    Nwchemdata_tag_all_list_by_nwchemdata_context_databox_tag_provider_v.provide 
      tag_nbo 
  in

  List.filter 
      (fun (s, i) -> Nwchemdata_symbol_v.is_nwchemdata_set_body_node_aoset_numericalvalues_constructor s)
      tag_nwc_l
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

