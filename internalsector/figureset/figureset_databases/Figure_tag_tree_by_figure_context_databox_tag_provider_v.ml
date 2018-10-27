(** {3 Figure_tag_tree_by_figure_context_databox_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
[
   "Current : DFIG:Figure_tag_tree_by_figure_context_databox_tag_provider_v";
   "Regsiter : DFIG:Figure_tag_tree_by_figure_context_databox_tag_register_v";
   "Needs : DFIG:Figure_symbol_subtree_root_databox_by_database_name_n_databox_name_provider_v";
   "Needs : DFIG:Database_name_n_databox_name_by_figure_context_databox_tag_provider_v";
   "Needed-by :"; 
   "What-is-it : the Tree of Figure_tag Rooted by Figure_context_domain_symbol";
   "How-is-it-done : getting each context tag ";
   "How-is-it-done : adding Figure_symbol_subtree";
   "Abbreviation : fbo  = figure_context_databox";
   "Abbreviation : fig  = figure";
   "Abbreviation : l    = list";
   "Abbreviation : t    = tree";
   "Abbreviation : yt   = ytree";
   "Abbreviation : st   = subtree";
   "Abbreviation : stl  = subtree list";
   "Abbreviation : stll = subtree list list";
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

let build tag_fbo =
  let (nam_dba, nam_dbo) =
    Database_name_n_databox_name_by_figure_context_databox_tag_provider_v.provide
    tag_fbo
  in
  Figure_tag_tree_by_database_name_n_databox_name_provider_v.provide (nam_dba, nam_dbo)
;;


(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_without_register.sh Figure_tag_tree_by_figure_context_databox_tag_provider_v.ml on jeudi 19 mai 2016, 18:35:58 (UTC+0200) *)
