(** {3 Figure_as_field_symbol_subtree_by_database_name_n_databox_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
[
 "Current : DFIG:Figure_as_field_symbol_subtree_by_database_name_n_databox_name_provider_v";
 "Needs: BDB1:Db1figure_context_databox_tag_by_database_name_n_databox_name_provider_v";
 "Needs : BDB1:Db1figure_as_body_cluster_vertex_tag_subtree_by_db1figure_context_databox_tag_provider_v";
 "Needs : BDB1:Db1figure_fence_token_figure_kind_symbol_by_db1figure_context_databox_tag_provider_v";
 "Needs : CON:Context_databox_nameoffile_by_database_name_n_databox_name_provider_v";
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
   "Author : François Colonna 22nd March 2016 Point and other Figure Trees are separarted";  ]
;;

(*                       Figure_context_databox                 Db1figure_context_databox              *)
(*                                |                                 |                                  *)
(*                       Figure_field                               |                                  *)
(*      Figure_field_body_triangle  ( segment  point )                Db1figure_body_cluster_vertex          *)
(*              "U"                                                                   "U"              *)
(*          /                    |         \                     /                     |         \     *)
(*    Figure_field_fence_point     ..._point  ..._point   Db1figure_body_record_vertex ..._vertex ..._vertex *)
(*           "U_A"              "U_B"      "U_C"        "U_A"                        "U_B"      "U_C"  *)

let nam_mod = Management_v.current_module_name (documentation ());;

let figure_as_body_symbol_subtree_of_db1figure_figure_kind_of_databox_nameoffile_of_db1figure_as_body_cluster_vertex_symbol_subtree sym_dfk nof_dbo tag_db1_dcv_st = 
  let nam_fun = "figure_as_body_symbol_subtree_of_db1figure_figure_kind_of_databox_nameoffile_of_db1figure_as_body_cluster_vertex_symbol" in

  let rec apply = function
    | Tree_t.Empty ->
	Error_messages_v.print_fatal_error __LOC__ nam_fun 
	  "Db1figure_as_body_cluster_vertex_tag_subtree were NOT empty"
	  "it is EMPTY"	  "Check BDB1:Db1figure_as_body_cluster_vertex_tag_subtree_by_db1figure_context_databox_tag_provider_v.ml"	
	  
    | Tree_t.Leaf tag_db1 ->

	Error_messages_v.print_fatal_error __LOC__ nam_fun 
	  "Db1figure_tag were NOT a Leaf"
	  (Format.sprintf "Leaf >%s<" (Db1figure_tag_v.fullname tag_db1))
	  "Check BDB1:Db1figure_as_body_cluster_vertex_tag_subtree_by_db1figure_context_databox_tag_provider_v.ml" 

    | Tree_t.Inner (tag_db1, tag_db1_stl) ->
	
	begin 
	  let (sym_db1, soi_db1) = tag_db1 in
	  Management_v.debug_what_string "sym_db1" nam_mod nam_fun (Db1figure_symbol_v.fullname sym_db1);
	  match sym_db1 with 
	  | Db1figure_symbol_t.Db1figure_body_symbol
               (Db1figure_body_symbol_t.Db1figure_body_cluster_symbol
		  (Db1figure_body_cluster_symbol_t.Db1figure_body_cluster_vertex_symbol
		     (Db1figure_body_cluster_vertex_symbol_t.Db1figure_body_cluster_vertex_constructor
			nam_clu))) ->
			  
			  let sym_fig_ffi = 
			    Figure_symbol_from_db1figure_tag_translations_v.figure_as_field_symbol_of_db1figure_figure_kind_of_databox_nameoffile_of_db1figure_as_body_cluster_vertex_symbol 
			      sym_dfk 
			      nof_dbo 
			      sym_db1
			  in
			  
			  let sym_fig_stl = List.map apply tag_db1_stl in
			  Tree_v.make_of_node sym_fig_ffi sym_fig_stl

	  | Db1figure_symbol_t.Db1figure_body_symbol
               (Db1figure_body_symbol_t.Db1figure_body_record_symbol
		  (Db1figure_body_record_symbol_t.Db1figure_body_record_vertex_symbol
		     (Db1figure_body_record_vertex_symbol_t.Db1figure_body_record_vertex_constructor
			nam_ver))) ->
			  
			  let sym_fig_ffp = 
			    Figure_symbol_v.figure_field_fence_point_constructor
                            nam_ver
			  in
			  
			  Tree_v.make_of_leaf sym_fig_ffp
			    
	  | _ -> Error_messages_v.print_fatal_error __LOC__ nam_fun 
		"Db1figure_body_cluster_vertex_symbol | Db1figure_body_record_vertex_symbol"
		(Format.sprintf "%s" (Db1figure_symbol_v.fullname sym_db1))
		"Check or add it"		  
	end			    
  in

  apply tag_db1_dcv_st
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (nam_dba, nam_dbo) =
  let nam_fun = "build" in

  Management_v.debug_what_string "(nam_dba, nam_dbo)" nam_mod nam_fun "(nam_dba, nam_dbo)"; 

  let tag_dbo =  
    Db1figure_context_databox_tag_by_database_name_n_databox_name_provider_v.provide
      (nam_dba, nam_dbo)
  in
  let tag_db1_dcv_st = 
    Db1figure_as_body_cluster_vertex_tag_subtree_by_db1figure_context_databox_tag_provider_v.provide
      tag_dbo
  in
  let sym_dfk = 
    Db1figure_fence_token_figure_kind_symbol_by_db1figure_context_databox_tag_provider_v.provide
      tag_dbo 
  in
  match sym_dfk with 
  | Db1figure_fence_token_figure_kind_symbol_t.Db1figure_fence_token_figure_kind_point ->

      let sym_db1_roo = Tag_v.entity_off_tag (Tree_v.root_off_tree tag_db1_dcv_st) in
      let nam_roo = Db1figure_symbol_v.string_off sym_db1_roo in
      let sym_fig_ffp = 
	Figure_symbol_v.figure_field_fence_point_constructor
          nam_roo
      in
      
      Tree_v.make_of_leaf sym_fig_ffp

  | Db1figure_fence_token_figure_kind_symbol_t.Db1figure_fence_token_figure_kind_segment 
  | Db1figure_fence_token_figure_kind_symbol_t.Db1figure_fence_token_figure_kind_triangle ->

      let nof_dbo =
	Context_databox_nameoffile_by_database_name_n_databox_name_provider_v.provide 
	  (nam_dba, nam_dbo)  
      in

      figure_as_body_symbol_subtree_of_db1figure_figure_kind_of_databox_nameoffile_of_db1figure_as_body_cluster_vertex_symbol_subtree
	sym_dfk 
	nof_dbo 
	tag_db1_dcv_st
;;


(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_without_register.sh Figure_as_field_symbol_subtree_by_database_name_n_databox_name_provider_v.ml on jeudi 19 mai 2016, 18:35:57 (UTC+0200) *)
