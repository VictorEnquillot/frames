(** {3 Db1pointsdata_tag_tree_by_basicname_databox_n_basicname_database_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BFIG:Figure_tag_tree_by_basicname_databox_n_basicname_database_provider_v";
   "Needs : BFIG:Figure_as_context_tag_quatuor_by_basicname_databox_n_basicname_database_provider_v";
   "Needs : BFIG:Figure_symbol_subtree_by_basicname_databox_n_basicname_database_provider_v";
   "Register : BFIG:Figure_tag_tree_by_basicname_databox_n_basicname_database_register_v";
   "Needed-by :"; 
   "What-is-it : the Tree of Figure_tag Rooted by Figure Tag Quatuor";
   "How-is-it-done : getting Quatuor Figure Tags";
   "How-is-it-done : adding its Top trio to Databox Rooted Figure_symbol_subtree";
   "Author : François Colonna 11 octobre 2016 at 17:45:09+02:00 from BELE";
   "Author : François Colonna 18 avril 2017 at 13:54:50+02:00";
 ]
;;

(*         |-           Figure_context_sector   -|        -|          *)
(*         |                    / | \            | fixed   |          *)
(*         |-           Figure_context_domain   -| Top duo | Top trio *)
(* Context |                    / | \            |         |          *)
(* Quatuor |-           Figure_context_database -|        -|          *)
(*         |                    / | \            | variable           *)
(*         |-           Figure_context_databox  -| Bottom duo         *)
(*         |                      |                                   *)

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (bna_dbo, bna_dba) =
  let nam_fun = "build" in
  Management_v.debug_what_string "(bna_dbo, bna_dba)" nam_mod nam_fun (Duo_v.name Basicname_v.name (bna_dbo, bna_dba));
  
  Check_is_databox_name_by_name_provider_v.provide (Basicname_v.string_off bna_dbo);
  Check_is_database_name_by_name_provider_v.provide (Basicname_v.string_off bna_dba);
  
  let (tag_fig_dbo, tag_fig_dba, tag_fig_dom, tag_fig_sec) =
    Figure_as_context_tag_quatuor_by_basicname_databox_n_basicname_database_provider_v.provide
      (bna_dbo, bna_dba)
  in

  let sym_fig_dbo_st =
    Figure_symbol_subtree_by_basicname_databox_n_basicname_database_provider_v.provide
      (bna_dbo, bna_dba)
  in

  let soi_fig_dbo = Tag_v.sole_index_off_tag tag_fig_dbo in
  let soi_fig_dbo_st = 
    Sole_index_v.sole_index_tree_of_tree_of_root_sole_index 
      sym_fig_dbo_st 
      soi_fig_dbo 
  in

  let tag_fig_dbo_st = Tree_v.map2 Tag_v.make sym_fig_dbo_st soi_fig_dbo_st in
  let tag_fig_dba_st = Tree_v.make_of_node tag_fig_dba [tag_fig_dbo_st] in
  let tag_fig_dom_st = Tree_v.make_of_node tag_fig_dom [tag_fig_dba_st] in
  
  Tree_v.make_of_node tag_fig_sec [tag_fig_dom_st]
;;

(** {6 Storing} *)

let store (bna_dbo, bna_dba) result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Figure_tag_tree_by_basicname_databox_n_basicname_database_register_v.store nam_mod (bna_dbo, bna_dba) result;
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
  let result = Figure_tag_tree_by_basicname_databox_n_basicname_database_register_v.retrieve nam_mod (bna_dbo, bna_dba) in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace (bna_dbo, bna_dba) =
  if Figure_tag_tree_by_basicname_databox_n_basicname_database_register_v.is_stored (bna_dbo, bna_dba)
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
(* done with do_provider_with_register.sh Figure_tag_tree_by_basicname_databox_n_basicname_database_provider_v.ml force on mercredi 12 octobre 2016, 16:11:18 (UTC+0200) *)
