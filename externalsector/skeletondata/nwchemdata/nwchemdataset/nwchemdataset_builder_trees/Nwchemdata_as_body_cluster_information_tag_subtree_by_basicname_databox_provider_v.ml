(** {3 Nwchemdata_as_body_cluster_information_tag_subtree_by_basicname_databox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BNWC:Nwchemdata_as_body_cluster_information_tag_subtree_by_basicname_databox_provider_v";
   "Needs : BNWC:Nwchemdata_tag_tree_by_basicname_databox_provider_v";
   "Needed-by :"; 
   "What-is-it : the Subtree of Nwchemdata_tag Rooted by Nwchemdata_as_body_cluster_information_tag";
   "How-is-it-done : by extraction from Nwchemdata_tag_tree";
   "Abbreviation : dbo  = databox";
   "Abbreviation : db1  = nwchem";
   "Author : François Colonna 19 septembre 2016 at 15:09:28+02:00";
 ]
;;

(*  <databox_name> ::= <cluster_information> <cluster_vertex>  *)

(*                          <sector>                           *)
(*                          <domain>                           *)
(*                          <database>                         *)
(*                          <databox>                          *)
(*                        /              \                     *)
(*  <cluster_information>                    <cluster_vertex>  *)

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build bna_dbo =
  let tag_nwc_t = 
    Nwchemdata_tag_tree_by_basicname_databox_provider_v.provide 
      nam_dbo 
  in
  Tree_v.subtree_of_node_predicate_off_tree  
    (fun (s, i) -> Nwchemdata_symbol_v.is_nwchemdata_set_body_cluster_information_constructor s)
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
(* done with do_provider_without_register.sh Nwchemdata_as_body_cluster_information_tag_subtree_by_basicname_databox_provider_v.ml force on lundi 10 octobre 2016, 15:52:05 (UTC+0200) *)
