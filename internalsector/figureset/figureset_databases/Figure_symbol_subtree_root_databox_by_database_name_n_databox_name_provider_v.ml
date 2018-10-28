(** {3 Figure_symbol_subtree_root_databox_by_database_name_n_databox_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DFIG:Figure_symbol_subtree_root_databox_by_database_name_n_databox_name_provider_v";
   "Needs : DFIG:Figure_as_field_symbol_subtree_by_database_name_n_databox_name_provider_v";
   "Needs : DFIG:Figure_as_context_databox_tag_by_database_name_n_databox_name_provider_v";
   "Needed-by :"; 
   "What-is-it : the Subtree of Figure_symbol Rooted by Figure_context_databox_symbol";
   "What-is-it : a Figure_context_databox son is a Figure_field Triangle Segment od Point";
   "What-is-it : Figure_field sons are Figure_field_fence_point";
   "How-is-it-done : by translating Figure_symbols from equivalent Db1figure_symbols";
   "How-is-it-done : using String_off to get Db1figure Tag and build Figure_symbol";
   "Abbreviation : dbo  = db1figure_context_databox";
   "Abbreviation : db1  = db1figure";
   "Abbreviation : ele  = elementary";
   "Abbreviation : fig  = figure";
   "Abbreviation : ect  = elementary_body_coordinate_tuple";
   "Abbreviation : ebc  = elementary_border_coordinate";
   "Abbreviation : l    = list";
   "Abbreviation : t    = tree";
   "Abbreviation : yt   = ytree";
   "Abbreviation : st   = subtree";
   "Abbreviation : stl  = subtree list";
   "Abbreviation : stll = subtree list list";
   "Author : François Colonna 22nd March 2016 Point and other Figure Trees are separated";
 ]
;;

(*                       Figure_context_databox        Db1figure_context_databox       *)
(*                                |                                 |                  *)
(*                       Figure_field                               |                  *)
(*      Figure_field_body_triangle  (  segment  point )      Db1figure_body_cluster_vertex   *)
(*              "U"                                                 "U"                *)
(*          /                     |                \                                   *)
(*    Figure_field_fence_point Figure_field_fence_point Figure_field_fence_point  Vertex  Vertex  Vertex *)
(*           "U_A"              "U_B"              "U_C"        "U_A"   "U_B"   "U_C"  *)


let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (nam_dba, nam_dbo) =
  let sym_fig_ffi_st = 
    Figure_as_field_symbol_subtree_by_database_name_n_databox_name_provider_v.provide
      (nam_dba, nam_dbo)
  in

  let tag_fig_fbo = 
    Figure_as_context_databox_tag_by_database_name_n_databox_name_provider_v.provide
      (nam_dba, nam_dbo)
  in
  let sym_fig_fbo = Tag_v.entity_off_tag tag_fig_fbo in

  Tree_v.make_of_node sym_fig_fbo [sym_fig_ffi_st]
;;


(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_without_register.sh Figure_symbol_subtree_root_databox_by_database_name_n_databox_name_provider_v.ml on jeudi 19 mai 2016, 18:35:58 (UTC+0200) *)