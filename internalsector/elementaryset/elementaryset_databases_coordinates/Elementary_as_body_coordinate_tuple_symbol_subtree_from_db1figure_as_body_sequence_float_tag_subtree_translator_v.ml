(** {3 Elementary_as_body_coordinate_tuple_symbol_subtree_from_db1figure_as_body_sequence_float_tag_subtree_translator_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Elementary_as_body_coordinate_tuple_symbol_subtree_from_db1figure_as_body_sequence_float_tag_subtree_translator_v";
   "Needs : BDB1:Db1figure_tag_all_list_by_db1figure_context_databox_tag_provider_v";
   "Needed-by :"; 
   "What-is-it : Translator to Elementary_symbol from Db1figure ";
   "Remark : Tag are needed to get information from tag_all_list";
   "Abbreviation : dbo  = db1figure_context_databox";
   "Abbreviation : db1  = db1figure";
   "Abbreviation : ele  = elementary";
   "Abbreviation : l    = list";
   "Abbreviation : t    = tree";
   "Abbreviation : st   = subtree";
   "Abbreviation : stl = subtree list";
   "Abbreviation : stll = subtree list list";
  ]
;;

(*    Elementary_body_coordinate_tuple_homogeneous   Db1figure_body_sequence_float          *)
(*              "A_A"                             <=>          "A_A"                        *)
(*          /         \                                                                     *)
(*        Elementary_border_coordinate                                                      *)
(*      x     y     z    rho   phi  theta                                                   *)
(*      |     |     |     |     |     |                                                     *)
(*    units units units units units units units units                                       *)


(*    Elementary_fence_units_angle                 <=|  Db1figure_fence_token_units_angle   *)
(*    Elementary_fence_units_length                <=|  Db1figure_fence_token_units_length  *)
(*    Elementary_body_coordinate_tuple_homogeneous <=|  Db1figure_body_sequence_float       *)

(** {6 Building} *)

let build tag_db1_dsf_st =
  let nam_fun = "build" in

  let tag_db1_dsf = Tree_v.root_off_tree tag_db1_dsf_st in
  let soi_db1_dsf = Tag_v.sole_index_off_tag tag_db1_dsf in
  let tag_dbo =  
    Db1figure_any_category_by_sole_index_extractor_v.db1figure_context_databox_tag_off_sole_index
      soi_db1_dsf
  in
  let sym_dck = 
    Db1figure_fence_token_coordinates_kind_symbol_by_db1figure_context_databox_tag_provider_v.provide
      tag_dbo 
  in
  let sym_dua = 
    Db1figure_fence_token_coordinates_units_angle_symbol_by_db1figure_context_databox_tag_provider_v.provide
      tag_dbo 
  in
  let sym_dul = 
    Db1figure_fence_token_coordinates_units_length_symbol_by_db1figure_context_databox_tag_provider_v.provide
      tag_dbo 
  in

  let rec apply nam_ver = function
    | Tree_t.Empty ->
	Error_messages_v.print_fatal_error __LOC__ nam_fun 
	  "Db1figure_as_body_sequence_float_tag_subtree were NOT empty"
	  "it is EMPTY"
	  "Check BDB1:Db1figure_as_body_sequence_float_tag_subtree_list_by_db1figure_context_databox_tag_provider_v.ml"		  

    | Tree_t.Leaf tag_db1 ->

	begin
	  let (sym_db1, soi_db1) = tag_db1 in
	  match sym_db1 with 
	  | Db1figure_symbol_t.Db1figure_fence_symbol
               (Db1figure_fence_symbol_t.Db1figure_fence_basic_symbol
		  (Db1figure_fence_basic_symbol_t.Db1figure_fence_basic_numerical_symbol
		     (Db1figure_fence_basic_numerical_symbol_t.Db1figure_fence_basic_numerical_float_symbol
			(Db1figure_fence_basic_numerical_float_symbol_t.Db1figure_fence_basic_numerical_float_constructor 
			   _)))) ->
			
			     let sym_ele_ebc =
			       Elementary_symbol_from_db1figure_tag_translations_v.elementary_as_border_coordinate_of_vertex_name_of_db1figure_coordinates_kind_of_db1figure_as_fence_basic_numerical_float_tag 
				 nam_ver
				 sym_dck 
				 tag_db1
			     in			     
			     
			     let sym_efu = 
			       Elementary_symbol_from_db1figure_tag_translations_v.elementary_fence_units_symbol_of_db1figure_fence_token_coordinates_units_angle_symbol_of_db1figure_fence_token_coordinates_units_length_symbol_of_coordinate_symbol_of_elementary_as_border_coordinate_symbol				 
				 sym_dua 
				 sym_dul 
				 sym_ele_ebc
			     in
			     let sym_ele_efu =
			       Elementary_symbol_v.elementary_symbol_of_elementary_fence_units_symbol
				 sym_efu
			     in
			     let sym_ele_efu_f = Tree_v.make_of_leaf sym_ele_efu in
			     Tree_v.make_of_node sym_ele_ebc [sym_ele_efu_f]
			       
			    
	  | _ -> Error_messages_v.print_fatal_error __LOC__ nam_fun 
		"Db1figure_fence_basic_numerical_float_constructor"
		(Format.sprintf "%s" (Db1figure_symbol_v.fullname sym_db1))
		"Check or add it"		  
	end
	  
    | Tree_t.Inner (tag_db1, tag_db1_stl) ->
	
	begin 
	  let (sym_db1, soi_db1) = tag_db1 in
	  match sym_db1 with 
	  | Db1figure_symbol_t.Db1figure_body_symbol
               (Db1figure_body_symbol_t.Db1figure_body_sequence_symbol
		  (Db1figure_body_sequence_symbol_t.Db1figure_body_sequence_float_symbol
		     (Db1figure_body_sequence_float_symbol_t.Db1figure_body_sequence_float_constructor
			nam_ver))) ->
			  
			  let sym_ele_ect = 
			    Elementary_symbol_from_db1figure_tag_translations_v.elementary_as_body_coordinate_tuple_symbol_of_db1figure_coordinates_kind_of_db1figure_as_body_sequence_float_symbol 
			      sym_dck 
			      sym_db1
			  in
			  
			  let sym_ele_ebc_stl = List.map (apply nam_ver) tag_db1_stl in
			  Tree_v.make_of_node sym_ele_ect sym_ele_ebc_stl
			    
	  | _ -> Error_messages_v.print_fatal_error __LOC__ nam_fun 
		"Db1figure_body_sequence_float_symbol | Db1figure_fence_basic_numerical_float_symbol"
		(Format.sprintf "%s" (Db1figure_symbol_v.fullname sym_db1))
		"Check or add it"		  
	end			    
  in

  apply "" tag_db1_dsf_st
;;

let build_n_store tag_db1_dsf_st =
  build tag_db1_dsf_st 
;;

let translate_without_trace tag_db1_dsf_st =
  build tag_db1_dsf_st
;;

let translate_with_trace tag_db1_dsf_st =
  let nam_mod = Management_v.current_module_name (documentation ()) in
  Management_v.entering_of_current_module_name nam_mod;

  let result = translate_without_trace tag_db1_dsf_st in

  Management_v.exiting_of_current_module_name nam_mod;
  result
;;

let translate tag_db1_dsf_st =
  if Parameters_general_provider_v.provide "trace-translate" = "true"
  then translate_with_trace tag_db1_dsf_st
  else translate_without_trace tag_db1_dsf_st
;;


