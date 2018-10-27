(** {3 Db1pointsdata_tag_tree_by_basicname_databox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BDB1:Db1pointsdata_tag_tree_by_basicname_databox_provider_v";
   "Register : BDB1:Db1pointsdata_tag_tree_by_basicname_databox_register_v";
   "Needs : BDB1:Db1pointsdata_as_context_tag_quatuor_by_basicname_databox_provider_v";
   "Needs : BDB1:Db1pointsdata_symbol_subtree_by_db1pointsdata_context_databox_tag_provider_v";
   "Needed-by :"; 
   "What-is-it : the Tree of Db1pointsdata_tag Rooted by Db1pointsdata Tag Quatuor";
   "How-is-it-done : getting Quatuor Db1pointsdata Tags";
   "How-is-it-done : adding it to Databox Rooted Db1pointsdata_symbol_subtree";
   "Abbreviation : dcs  = db1pointsdata_context_sector";
   "Abbreviation : dcd  = db1pointsdata_context_domain";
   "Abbreviation : dba  = db1pointsdata_context_database";
   "Abbreviation : dbo  = db1pointsdata_context_databox";
   "Abbreviation : db1  = db1points";
   "Abbreviation : t    = tree";
   "Abbreviation : st   = subtree";
 ]
;;

(*         |-           Db1pointsdata_context_sector   -|          *)
(*         |                    / | \                |          *)
(*         |-           Db1pointsdata_context_domain   -| fixed    *)
(* Context |                    / | \                | trio     *)
(* Quatuor |-           Db1pointsdata_context_database -|          *)
(*         |                    / | \                           *)
(*         |-           Db1pointsdata_context_databox  -| variable *)
(*         |                      |                             *)

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build bna_dbo =
  let (tag_db1_dbo, tag_db1_dba, tag_db1_dcd, tag_db1_dcs) =
    Db1pointsdata_as_context_tag_quatuor_by_basicname_databox_provider_v.provide
      bna_dbo
  in

  let sym_db1_dbo_st =
    Db1pointsdata_symbol_subtree_by_basicname_databox_provider_v.provide
      bna_dbo
  in

  let soi_db1_dbo = Tag_v.sole_index_off_tag tag_db1_dbo in
  let soi_db1_dbo_st = 
    Sole_index_v.sole_index_tree_of_tree_of_root_sole_index 
      sym_db1_dbo_st 
      soi_db1_dbo 
  in
  let tag_db1_dbo_st = Tree_v.map2 Tag_v.make sym_db1_dbo_st soi_db1_dbo_st in
  let tag_db1_dba_st = Tree_v.make_of_node tag_db1_dba [tag_db1_dbo_st] in
  let tag_db1_dcd_st = Tree_v.make_of_node tag_db1_dcd [tag_db1_dba_st] in
  
  Tree_v.make_of_node tag_db1_dcs [tag_db1_dcd_st]
;;

(** {6 Storing} *)

let store key result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Db1pointsdata_tag_tree_by_basicname_databox_register_v.store nam_mod key result;
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
  let result = Db1pointsdata_tag_tree_by_basicname_databox_register_v.retrieve nam_mod key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace key =
  if Db1pointsdata_tag_tree_by_basicname_databox_register_v.is_stored key
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
(* done with do_provider_with_register.sh Db1pointsdata_tag_tree_by_basicname_databox_provider_v.ml force on lundi 26 septembre 2016, 07:27:02 (UTC+0200) *)
