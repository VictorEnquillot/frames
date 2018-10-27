(** {3 Nwchemdata_as_body_cluster_vertex_symbol_subtree_by_basicname_databox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BNWC:Nwchemdata_as_body_cluster_vertex_symbol_subtree_by_basicname_databox_provider_v";
   "Needs : BNWC:Nwchemdata_symbol_subtree_by_basicname_databox_provider_v";
   "Needed-by :"; 
   "What-is-it : the Subtree of Nwchemdata_symbol Rooted by Databox_name";
   "What-is-it : a Nwchemdata_context_databox son is a ";
   "What-is-it : Nwchemdata_field sons are Nwchemdata_set_fence";
   "How-is-it-done : by using Parser";
   "Abbreviation : dbo  = databox";
   "Abbreviation : db1  = nwchem";
   "Author : François Colonna 19 septembre 2016 at 11:55:32+02:00 no more lowercase";
 ]
;;


(*  <databox_name> ::= <cluster_vertex> <cluster_vertex>  *)
(*                          <databox_name>                     *)
(*                        /              \                     *)
(*  <cluster_vertex>                    <cluster_vertex>  *)

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build bna_dbo =
  let sym_nwc_st = 
    Nwchemdata_symbol_subtree_by_basicname_databox_provider_v.provide 
      nam_dbo 
  in
  Tree_v.subtree_of_node_predicate_off_tree  
    Nwchemdata_symbol_v.is_nwchemdata_set_body_cluster_vertex_constructor
    sym_nwc_st
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
(* done with do_provider_without_register.sh Nwchemdata_as_body_cluster_vertex_symbol_subtree_by_basicname_databox_provider_v.ml force on lundi 10 octobre 2016, 15:52:05 (UTC+0200) *)
