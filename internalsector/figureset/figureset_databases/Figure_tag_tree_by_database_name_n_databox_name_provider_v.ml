(** {3 Figure_tag_tree_by_database_name_n_databox_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DFIG:Figure_tag_tree_by_database_name_n_databox_name_provider_v";
   "Register : DFIG:Figure_tag_tree_by_database_name_n_databox_name_register_v";
   "Needs : DFIG:Figure_as_context_tag_trio_by_database_name_n_databox_name_provider_v";
   "Needs : DFIG:Figure_symbol_subtree_by_figure_context_databox_tag_provider_v";
   "Needed-by :"; 
   "What-is-it : the Tree of Figure_tag Rooted by Figure_context_domain_symbol";
   "How-is-it-done : getting Trio Figure_as_tag_context_trio";
   "How-is-it-done : adding it to Databox Figure_symbol_subtree";
   "Abbreviation : fba  = figure_context_database";
   "Abbreviation : fbo  = figure_context_databox";
   "Abbreviation : fig  = figure";
   "Abbreviation : t    = tree";
   "Abbreviation : st   = subtree";
   "Author : François Colonna 22nd March 2016";
 ]
;;

(*          |-           Figure_context_domain                 *)
(*          |                    / | \                         *)
(*    Trio  |-           Figure_context_database               *)
(*          |                    / | \                         *)
(*          |-           Figure_context_databox                *)
(*                                 |                           *)
(*                           Figure_field                      *)
(*      Figure_field_body_triangle ( | segment | point)              *)
(*              "U"                                            *)
(*          /                     |                \           *)
(*    Figure_field_fence_point Figure_field_fence_point Figure_field_fence_point *)
(*           "U_A"              "U_B"              "U_C"       *)


let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (nam_dba, nam_dbo) =
  let (tag_fig_dom, tag_fig_fba, tag_fig_fbo) =
    Figure_as_context_tag_trio_by_database_name_n_databox_name_provider_v.provide
      (nam_dba, nam_dbo)
  in

  let sym_fig_fbo_st =
    Figure_symbol_subtree_root_databox_by_database_name_n_databox_name_provider_v.provide
      (nam_dba, nam_dbo)
  in

  let soi_fig_fbo = Tag_v.sole_index_off_tag tag_fig_fbo in
  let soi_fig_fbo_st = 
    Sole_index_v.sole_index_tree_of_tree_of_root_sole_index 
      sym_fig_fbo_st 
      soi_fig_fbo 
  in
  let tag_fig_fbo_st = Tree_v.map2 Tag_v.make sym_fig_fbo_st soi_fig_fbo_st in
  let tag_fig_fba_st = Tree_v.make_of_node tag_fig_fba [tag_fig_fbo_st] in
  
  Tree_v.make_of_node tag_fig_dom [tag_fig_fba_st]
;;

(** {6 Storing} *)

let store (nam_dba, nam_dbo) result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Figure_tag_tree_by_database_name_n_databox_name_register_v.store nam_mod (nam_dba, nam_dbo) result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store (nam_dba, nam_dbo) =
  let result = build (nam_dba, nam_dbo) in
  store (nam_dba, nam_dbo) result;
  result
;;

(** {6 Retrieving} *)

let retrieve (nam_dba, nam_dbo) =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Figure_tag_tree_by_database_name_n_databox_name_register_v.retrieve nam_mod (nam_dba, nam_dbo) in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace (nam_dba, nam_dbo) =
  if Figure_tag_tree_by_database_name_n_databox_name_register_v.is_stored (nam_dba, nam_dbo)
  then retrieve (nam_dba, nam_dbo)
  else build_n_store (nam_dba, nam_dbo)
;;

(** {6 Providing} *)

let provide (nam_dba, nam_dbo) =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace (nam_dba, nam_dbo) in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_with_register.sh Figure_tag_tree_by_database_name_n_databox_name_provider_v.ml on jeudi 19 mai 2016, 18:35:56 (UTC+0200) *)
