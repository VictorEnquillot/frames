(** {3 Figure_set_symbol_subtree_by_db1pointsdata_context_databox_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DFIG:Figure_set_symbol_subtree_by_db1pointsdata_context_databox_tag_provider_v";
   "Needs : BDB1:Db1pointsdata_as_set_body_cluster_vertex_symbol_subtree_by_basicname_databox_provider_v";
   "Needs : BDB1:Db1pointsdata_context_databox_tag_by_basicname_databox_n_basicname_database_provider_v";
   "Needs : BDB1:Db1pointsdata_set_fence_token_figure_kind_symbol_by_basicname_databox_provider_v";
   "Needs : BFIG:Databox_nameoffile_by_basicname_databox_n_basicname_database_provider_v";
   "Needed-by :"; 
   "What-is-it : the Subtree of Figure_set_symbol Rooted by Figure_set_symbol";
   "How-is-it-done : by translating Figure_symbols from equivalent Db1pointsdata_symbols";
   "How-is-it-done : using String_off to get Db1pointsdata Tag and build Figure_symbol";
   "Author : François Colonna 22nd March 2016 Point and other Figure Trees are separarted";  
   "Author : François Colonna 18 avril 2017 at 14:32:52+02:00";
   "Improve : try to get rid of Preparing";
   "Improve : get Figure_set_symbol directly";
 ]
;;

(*                       Figure_context_databox                 Db1pointsdata_context_databox          *)
(*                       ----------------------------------------------------------------------------  *)
(*                       Figure_set                                 |                                  *)
(*      Figure_set_body_triangle  ( segment  point )                Db1pointsdata_set_body_cluster_vertex          *)
(*              "U"                                                                   "U"              *)
(*          /                    |         \                     /                     |         \     *)
(*    Figure_set_fence_point     ..._point  ..._point   Db1pointsdata_set_body_record_vertex ..._vertex ..._vertex *)
(*           "U_A"              "U_B"      "U_C"        "U_A"                        "U_B"      "U_C"  *)

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Preparing} *)

let figure_as_body_symbol_subtree_of_db1pointsdata_figure_kind_of_basicname_databoxoffile_of_db1pointsdata_as_set_body_cluster_vertex_symbol_subtree sym_dfk nof_dbo sym_db1_dcv_st = 

  let nam_fun = "figure_as_body_symbol_subtree_of_db1pointsdata_figure_kind_of_basicname_databoxoffile_of_db1pointsdata_as_set_body_cluster_vertex_symbol" in
  
  let rec apply = function
    | Tree_t.Empty ->
	Error_messages_v.print_fatal_error __LOC__ nam_fun 
	  "Db1pointsdata_as_set_body_cluster_vertex_sym_subtree were NOT empty"
	  "it is EMPTY"	  "Check BDB1:Db1pointsdata_as_set_body_cluster_vertex_symbol_subtree_by_basicname_databox_provider_v.ml"	
	  
    | Tree_t.Leaf sym_db1 ->

	Error_messages_v.print_fatal_error __LOC__ nam_fun 
	  "Db1pointsdata_tag were NOT a Leaf"
	  (Format.sprintf "Leaf >%s<" (Db1pointsdata_symbol_v.fullname sym_db1))
	  "Check BDB1:Db1pointsdata_as_set_body_cluster_vertex_tag_subtree_by_basicname_databox_provider_v.ml" 

    | Tree_t.Inner (sym_db1, sym_db1_stl) ->
	
	begin 
	  Management_v.debug_what_string "sym_db1" nam_mod nam_fun (Db1pointsdata_symbol_v.fullname sym_db1);
	  match sym_db1 with 
	  | w when Db1pointsdata_symbol_v.is_db1pointsdata_set_body_cluster_vertex_constructor w ->
			  
	      let sym_fig_ffi = 
		Figure_symbol_from_db1pointsdata_symbol_translations_v.figure_as_symbol_of_db1pointsdata_figure_kind_of_basicname_databoxoffile_of_db1pointsdata_as_set_body_cluster_vertex_symbol 
		  sym_dfk 
		  nof_dbo 
		  sym_db1
	      in
	      
	      let sym_fig_stl = List.map apply sym_db1_stl in
	      Tree_v.make_of_node sym_fig_ffi sym_fig_stl
	
	  | w when Db1pointsdata_symbol_v.is_db1pointsdata_set_body_record_vertex_constructor w ->

	      let nam_ver = Db1pointsdata_symbol_v.string_off w in
			  
	      let sym_fig_ffp = 
		Figure_symbol_v.figure_set_fence_point_constructor
                  nam_ver
	      in
	      
	      Tree_v.make_of_leaf sym_fig_ffp
		
	  | _ -> Error_messages_v.print_fatal_error __LOC__ nam_fun 
		"Db1pointsdata_set_body_cluster_vertex_symbol | Db1pointsdata_set_body_record_vertex_symbol"
		(Format.sprintf "%s" (Db1pointsdata_symbol_v.fullname sym_db1))
		"Check or add it"		  
	end			    
  in

  apply sym_db1_dcv_st
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_dcd =
  let nam_fun = "build" in

  let (bna_dbo, bna_dba) = 
    Basicname_databox_n_basicname_database_by_db1pointsdata_context_databox_tag_provider_v.provide
      tag_dcd
  in
  
  Management_v.debug_what_string "(bna_dbo, bna_dba)" nam_mod nam_fun (Duo_v.name Basicname_v.string_off (bna_dbo, bna_dba)); 

  let sym_db1_dcv_st = 
    Db1pointsdata_as_set_body_cluster_vertex_symbol_subtree_by_basicname_databox_provider_v.provide
      bna_dbo
  in

  let sym_dfk = 
    Db1pointsdata_set_fence_token_figure_kind_symbol_by_basicname_databox_provider_v.provide
      bna_dbo 
  in

  let sym_fig_st = 
    match sym_dfk with 
    | Db1pointsdata_set_fence_token_figure_kind_symbol_t.Db1pointsdata_set_fence_token_figure_kind_point_symbol _ ->
	
	let sym_db1_roo = Tree_v.root_off_tree sym_db1_dcv_st in
	let nam_roo = Db1pointsdata_symbol_v.string_off sym_db1_roo in
	let sym_fig_ffp = 
	  Figure_symbol_v.figure_set_fence_point_constructor
            nam_roo
	in
	
	Tree_v.make_of_leaf sym_fig_ffp
	  
    | Db1pointsdata_set_fence_token_figure_kind_symbol_t.Db1pointsdata_set_fence_token_figure_kind_segment_symbol _ 
    | Db1pointsdata_set_fence_token_figure_kind_symbol_t.Db1pointsdata_set_fence_token_figure_kind_triangle_symbol _ ->
	
	let nof_dbo =
	  Databox_nameoffile_by_basicname_databox_n_basicname_database_provider_v.provide 
	    (bna_dbo, bna_dba)  
	in
	
	figure_as_body_symbol_subtree_of_db1pointsdata_figure_kind_of_basicname_databoxoffile_of_db1pointsdata_as_set_body_cluster_vertex_symbol_subtree
	  sym_dfk 
	  nof_dbo 
	  sym_db1_dcv_st

  in

  Tree_v.map Figure_symbol_v.figure_set_symbol_off_figure_symbol sym_fig_st

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
