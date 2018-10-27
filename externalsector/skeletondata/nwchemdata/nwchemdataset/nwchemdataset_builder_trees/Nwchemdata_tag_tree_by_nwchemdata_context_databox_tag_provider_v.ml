(** {3 Nwchemdata_tag_tree_by_nwchemdata_context_databox_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BNWC:Nwchemdata_tag_tree_by_nwchemdata_context_databox_tag_provider_v";
   "Needs : BNWC:Nwchemdata_tag_tree_by_basicname_databox_provider_v";
   "Needed-by : BNWC:";
   "What-is-it : the Tree of Nwchemdata_tag Rooted by Nwchemdata Tag Quatuor";
   "How-is-it-done : converting Databox Tag to Name";
   "Author : François Colonna 01 avril 2017 at 12:28:57+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_nbo =
  let nam_dbo = Nwchemdata_context_databox_tag_v.string_off tag_nbo in
  let bna_dbo = Basicname_v.basicname_databox_of_string nam_dbo in
  Nwchemdata_tag_tree_by_basicname_databox_provider_v.provide bna_dbo
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
