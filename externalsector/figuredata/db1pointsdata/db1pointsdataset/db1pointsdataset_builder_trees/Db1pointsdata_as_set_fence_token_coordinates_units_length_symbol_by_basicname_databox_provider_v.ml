(** {3 Db1pointsdata_as_set_fence_token_coordinates_units_length_symbol_by_basicname_databox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BDB1:Db1pointsdata_as_set_fence_token_coordinates_units_length_symbol_by_basicname_databox_provider_v";
   "Needs : BDB1:Db1pointsdata_as_set_body_cluster_information_symbol_subtree_by_basicname_databox_provider_v";
   "Needed-by : BDB1:";
   "What-is-it : the Db1figure Coordinates_units_length : cartesian, cylindrical, linear, planar, polar, spherical";
   "Abbreviation : dbo = db1pointsdata_context_databox";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build bna_dbo =
  let sym_db1_dci_st = 
    Db1pointsdata_as_set_body_cluster_information_symbol_subtree_by_basicname_databox_provider_v.provide
      bna_dbo 
  in
  
  Tree_v.only_node_of_node_predicate_off_tree 
    Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_length_symbol_off_db1pointsdata_symbol
    sym_db1_dci_st
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_without_register.sh Db1pointsdata_as_set_fence_token_coordinates_units_length_symbol_by_basicname_databox_provider_v.ml on samedi 21 mai 2016, 11:46:45 (UTC+0200) *)
