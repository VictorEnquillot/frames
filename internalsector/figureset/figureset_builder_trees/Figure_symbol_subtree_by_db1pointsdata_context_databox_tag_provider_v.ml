(** {3 Figure_symbol_subtree_by_db1pointsdata_context_databox_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DFIG:Figure_symbol_subtree_by_db1pointsdata_context_databox_tag_provider_v";
   "Needs : BDB1:Db1pointsdata_as_set_body_cluster_vertex_symbol_subtree_by_basicname_databox_provider_v";
   "Needs : BDB1:Db1pointsdata_context_databox_tag_by_basicname_databox_n_basicname_database_provider_v";
   "Needs : BDB1:Db1pointsdata_set_fence_token_figure_kind_symbol_by_basicname_databox_provider_v";
   "Needs : BFIG:Databox_nameoffile_by_basicname_databox_n_basicname_database_provider_v";
   "Needed-by :"; 
   "What-is-it : the Subtree of Figure_symbol Rooted by Figure_context_databox_symbol";
   "What-is-it : a Figure_context_databox son is a Figure_field Triangle Segment od Point";
   "What-is-it : Figure_field sons are Figure_set_fence_point";
   "How-is-it-done : by translating Figure_symbols from equivalent Db1pointsdata_symbols";
   "How-is-it-done : using String_off to get Db1pointsdata Tag and build Figure_symbol";
   "Author : François Colonna 22nd March 2016 Point and other Figure Trees are separarted";  
   "Author : François Colonna 18 avril 2017 at 14:39:16+02:00";
   "Improve : try to get rid of Preparing";
 ]
;;

(*                       Figure_context_databox                 Db1pointsdata_context_databox              *)
(*                       --------------------------------------------------------------------------------  *)
(*                       Figure_field                               |                                  *)
(*      Figure_set_body_triangle  ( segment  point )                Db1pointsdata_set_body_cluster_vertex          *)
(*              "U"                                                                   "U"              *)
(*          /                    |         \                     /                     |         \     *)
(*    Figure_set_fence_point     ..._point  ..._point   Db1pointsdata_set_body_record_vertex ..._vertex ..._vertex *)
(*           "U_A"              "U_B"      "U_C"        "U_A"                        "U_B"      "U_C"  *)

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Building} *)

let build tag_dcd =

  let sym_fsf_st = 
    Figure_set_symbol_subtree_by_db1pointsdata_context_databox_tag_provider_v.provide 
      tag_dcd
  in

  let sym_fig_fsf_st = Tree_v.map
      Figure_symbol_v.figure_symbol_of_figure_set_symbol 
      sym_fsf_st 
  in

  let nam_dbo = Db1pointsdata_context_databox_tag_v.string_off tag_dcd in
  let sym_fig_dbo = Figure_symbol_v.figure_context_databox_constructor nam_dbo in

  Tree_v.make_of_node sym_fig_dbo [sym_fig_fsf_st]
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
(* done with do_provider_without_register.sh Figure_as_symbol_subtree_by_basicname_databox_n_basicname_database_provider_v.ml force on mercredi 12 octobre 2016, 16:11:19 (UTC+0200) *)
