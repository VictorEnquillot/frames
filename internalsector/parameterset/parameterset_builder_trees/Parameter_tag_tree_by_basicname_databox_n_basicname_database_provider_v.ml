(** {3 Nwchemdata_tag_tree_by_basicname_databox_n_basicname_database_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BDB1:Parameter_tag_tree_by_basicname_databox_n_basicname_database_provider_v";
   "Needs : BPAR:Parameter_as_context_tag_quatuor_by_basicname_databox_n_basicname_database_provider_v";
   "Needs : BPAR:Parameter_symbol_subtree_by_basicname_databox_n_basicname_database_provider_v";
   "Register : BDB1:Parameter_tag_tree_by_basicname_databox_n_basicname_database_register_v";
   "Needed-by :"; 
   "What-is-it : the Tree of Parameter_tag Rooted by Parameter Tag Quatuor";
   "How-is-it-done : getting Quatuor Parameter Tags";
   "How-is-it-done : adding it to Databox Rooted Parameter_symbol_subtree";
   "Abbreviation : ecs  = parameter_context_sector";
   "Abbreviation : ecd  = parameter_context_domain";
   "Abbreviation : eba  = parameter_context_database";
   "Abbreviation : ebo  = parameter_context_databox";
   "Abbreviation : ele  = parameter";
   "Abbreviation : t    = tree";
   "Abbreviation : st   = subtree";
 ]
;;

(*         |-           Parameter_context_sector   -|          *)
(*         |                    / | \                | fixed    *)
(*         |-           Parameter_context_domain   -| duo      *)
(* Context |                    / | \                |          *)
(* Quatuor |-           Parameter_context_database -|          *)
(*         |                    / | \                | variable *)
(*         |-           Parameter_context_databox  -| duo      *)
(*         |                      |                             *)

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (bna_dbo, bna_dba) =
  let (tag_par_pbo, tag_par_pba, tag_par_pcd, tag_par_pcs) =
    Parameter_as_context_tag_quatuor_by_basicname_databox_n_basicname_database_provider_v.provide
      (bna_dbo, bna_dba)
  in

  let sym_par_pbo_st =
    Parameter_symbol_subtree_by_basicname_databox_n_basicname_database_provider_v.provide
      (bna_dbo, bna_dba)
  in

  let soi_par_pbo = Tag_v.sole_index_off_tag tag_par_pbo in
  let soi_par_pbo_st = 
    Sole_index_v.sole_index_tree_of_tree_of_root_sole_index 
      sym_par_pbo_st 
      soi_par_pbo 
  in
  let tag_par_pbo_st = Tree_v.map2 Tag_v.make sym_par_pbo_st soi_par_pbo_st in
  let tag_par_pba_st = Tree_v.make_of_node tag_par_pba [tag_par_pbo_st] in
  let tag_par_ecd_st = Tree_v.make_of_node tag_par_pcd [tag_par_pba_st] in
  
  Tree_v.make_of_node tag_par_pcs [tag_par_ecd_st]
;;

(** {6 Storing} *)

let store (bna_dbo, bna_dba) result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Parameter_tag_tree_by_basicname_databox_n_basicname_database_register_v.store nam_mod (bna_dbo, bna_dba) result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store (bna_dbo, bna_dba) =
  let result = build (bna_dbo, bna_dba) in
  store (bna_dbo, bna_dba) result;
  result
;;

(** {6 Retrieving} *)

let retrieve (bna_dbo, bna_dba) =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Parameter_tag_tree_by_basicname_databox_n_basicname_database_register_v.retrieve nam_mod (bna_dbo, bna_dba) in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace (bna_dbo, bna_dba) =
  if Parameter_tag_tree_by_basicname_databox_n_basicname_database_register_v.is_stored (bna_dbo, bna_dba)
  then retrieve (bna_dbo, bna_dba)
  else build_n_store (bna_dbo, bna_dba)
;;

(** {6 Providing} *)

let provide (bna_dbo, bna_dba) =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace (bna_dbo, bna_dba) in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Parameter_tag_tree_by_basicname_databox_n_basicname_database_provider_v.ml force on lundi 10 octobre 2016, 09:12:58 (UTC+0200) *)
