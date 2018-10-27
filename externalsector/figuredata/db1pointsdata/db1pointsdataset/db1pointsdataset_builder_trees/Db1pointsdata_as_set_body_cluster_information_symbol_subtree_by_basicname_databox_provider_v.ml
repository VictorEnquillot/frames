(** {3 Db1pointsdata_as_set_body_cluster_information_symbol_subtree_by_basicname_databox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BDB1:Db1pointsdata_as_set_body_cluster_information_symbol_subtree_by_basicname_databox_provider_v";
   "Needs : BDB1:Db1pointsdata_tag_tree_by_basicname_databox_provider_v";
   "Needed-by :"; 
   "What-is-it : the Subtree of Db1pointsdata_symbol Rooted by Db1pointsdata_as_set_body_cluster_information_tag";
   "How-is-it-done : by extraction from Db1pointsdata_tag_tree";
   "Abbreviation : dbo  = databox";
   "Abbreviation : db1  = db1points";
   "Author : François Colonna 31 mars 2017 at 13:31:50+02:00";
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
  let sym_db1_st = 
    Db1pointsdata_symbol_subtree_by_basicname_databox_provider_v.provide 
      bna_dbo 
  in
  Tree_v.subtree_of_node_predicate_off_tree  
    Db1pointsdata_symbol_v.is_db1pointsdata_set_body_cluster_information_constructor
    sym_db1_st
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
(* done with do_provider_without_register.sh Db1pointsdata_as_set_body_cluster_information_tag_subtree_by_basicname_databox_provider_v.ml force on lundi 26 septembre 2016, 07:27:03 (UTC+0200) *)
