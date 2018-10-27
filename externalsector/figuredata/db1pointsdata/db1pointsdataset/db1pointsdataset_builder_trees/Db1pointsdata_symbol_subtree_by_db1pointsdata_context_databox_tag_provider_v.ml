(** {3 Db1pointsdata_symbol_subtree_by_db1pointsdata_context_databox_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BDB1:Db1pointsdata_symbol_subtree_by_db1pointsdata_context_databox_tag_provider_v";
   "Needs : BDB1:Db1pointsdata_fullnameoffile_by_db1pointsdata_context_databox_tag_provider_v";
   "Needs : PARDB1:Db1pointsdata_parser_v";
   "Needed-by : BDB1:";
   "What-is-it : the Db1pointsdata_symbol Subtree Rooted by a Db1pointsdata_context_databox";
   "Invariant : Non-leaf Symbol Tree has unique nodes";
   "Invariant : Symbol Subtree is complete";
   "Author : François Colonna 25 septembre 2016 at 20:16:47+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_dbo =
  let nam_dbo = Db1pointsdata_context_databox_tag_v.string_off tag_dbo in
  let bna_dbo = Basicname_v.basicname_databox_of_string nam_dbo in

  Db1pointsdata_parser_v.db1pointsdata_symbol_tree_root_databox_of_basicname_databox 
    bna_dbo 
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
(* done with do_provider_without_register.sh Db1pointsdata_symbol_subtree_by_db1pointsdata_context_databox_tag_provider_v.ml force on lundi 26 septembre 2016, 07:27:05 (UTC+0200) *)
