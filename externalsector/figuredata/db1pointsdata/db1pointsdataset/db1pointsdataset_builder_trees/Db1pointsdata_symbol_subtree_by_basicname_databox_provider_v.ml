(** {3 Db1pointsdata_symbol_subtree_by_basicname_databox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BDB1:Db1pointsdata_symbol_subtree_by_basicname_databox_provider_v";
   "Register : BDB1:Db1pointsdata_symbol_subtree_by_basicname_databox_register_v";
   "Needs : BDB1:Db1pointsdata_fullnameoffile_by_basicname_databox_provider_v";
   "Needs : PARDB1:Db1pointsdata_parser_v";
   "Needed-by :"; 
   "What-is-it : the Subtree of Db1pointsdata_symbol Rooted by Databox_name";
   "What-is-it : a Db1pointsdata_context_databox son is a ";
   "What-is-it : Db1pointsdata_field sons are Db1pointsdata_set_fence";
   "How-is-it-done : by using Parser";
   "Abbreviation : dbo  = databox";
   "Abbreviation : db1  = db1pointsdata";
   "Author : François Colonna 31 mars 2017 at 13:03:49+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

(*         |-           Db1pointsdata_context_sector   -|          *)
(*         |                       / | \                |          *)
(*         |-           Db1pointsdata_context_domain   -| fixed    *)
(* Context |                       / | \                | trio     *)
(* Quatuor |-           Db1pointsdata_context_database -|          *)
(*         |                       / | \                |          *)
(*         |-           Db1pointsdata_context_databox  -| variable *)
(*         |                         |                             *)

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build bna_dbo =
  Db1pointsdata_parser_v.db1pointsdata_symbol_tree_root_databox_of_basicname_databox 
    bna_dbo 
;;

(** {6 Storing} *)

let store key result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Db1pointsdata_symbol_subtree_by_basicname_databox_register_v.store nam_mod key result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store key =
  let result = build key in
  store key result;
  result
;;

(** {6 Retrieving} *)

let retrieve key =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Db1pointsdata_symbol_subtree_by_basicname_databox_register_v.retrieve nam_mod key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace key =
  if Db1pointsdata_symbol_subtree_by_basicname_databox_register_v.is_stored key
  then retrieve key
  else build_n_store key
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Db1pointsdata_symbol_subtree_by_basicname_databox_provider_v.ml force on lundi 26 septembre 2016, 07:27:01 (UTC+0200) *)
