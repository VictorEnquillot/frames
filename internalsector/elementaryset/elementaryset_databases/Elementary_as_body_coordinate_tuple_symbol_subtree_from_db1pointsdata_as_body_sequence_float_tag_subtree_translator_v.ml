(** {3 Elementary_as_body_coordinate_tuple_symbol_subtree_from_db1pointsdata_as_body_sequence_float_tag_subtree_translator_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Elementary_as_body_coordinate_tuple_symbol_subtree_from_db1pointsdata_as_body_sequence_float_tag_subtree_translator_v";
   "Needs : BDB1:Db1pointsdata_tag_all_list_by_db1pointsdata_context_databox_tag_provider_v";
   "Needed-by :"; 
   "What-is-it : Translator to Elementary_symbol from Db1pointsdata ";
   "Remark : Tag are needed to get information from tag_all_list";
   "Abbreviation : dbo  = db1pointsdata_context_databox";
   "Abbreviation : db1  = db1pointsdata";
   "Abbreviation : ele  = elementary";
   "Abbreviation : l    = list";
   "Abbreviation : t    = tree";
   "Abbreviation : st   = subtree";
   "Abbreviation : stl = subtree list";
   "Abbreviation : stll = subtree list list";
  ]
;;

(*    Elementary_body_coordinate_tuple_homogeneous   Db1pointsdata_body_sequence_float      *)
(*              "A"                               <=>            "A"                        *)
(*          /         \                                                                     *)
(*        Elementary_border_coordinate                                                      *)
(*      x     y     z    rho   phi  theta                                                   *)
(*      |     |     |     |     |     |                                                     *)
(*    units units units units units units                                                   *)


(*    Emsrf                 <=|  Db1pointsdata_fence_token_units_angle   *)
(*    Emsrf                <=|  Db1pointsdata_fence_token_units_actual_length  *)
(*    Elementary_body_coordinate_tuple_homogeneous <=|  Db1pointsdata_body_sequence_float       *)

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_db1_dsf_st =
  let nam_fun = "build" in

  let tag_db1_dsf = Tree_v.root_off_tree tag_db1_dsf_st in
  let soi_db1_dsf = Tag_v.sole_index_off_tag tag_db1_dsf in
  let tag_dbo =  
    Db1pointsdata_any_category_by_sole_index_extractor_v.db1pointsdata_context_databox_tag_off_sole_index
      soi_db1_dsf
  in
  let sym_dck = 
    Db1pointsdata_fence_token_coordinates_kind_symbol_by_db1pointsdata_context_databox_tag_provider_v.provide
      tag_dbo 
  in
  let sym_dua = 
    Db1pointsdata_fence_token_coordinates_units_angle_symbol_by_db1pointsdata_context_databox_tag_provider_v.provide
      tag_dbo 
  in
  let sym_dul = 
    Db1pointsdata_fence_token_coordinates_units_length_symbol_by_db1pointsdata_context_databox_tag_provider_v.provide
      tag_dbo 
  in

  let rec apply nam_ver = function
    | Tree_t.Empty ->
	Error_messages_v.print_fatal_error __LOC__ nam_fun 
	  "Db1pointsdata_as_body_sequence_float_tag_subtree were NOT empty"
	  "it is EMPTY"
	  "Check BDB1:Db1pointsdata_as_body_sequence_float_tag_subtree_list_by_db1pointsdata_context_databox_tag_provider_v.ml"		  

    | Tree_t.Leaf tag_db1 ->

	begin
	  let (sym_db1, soi_db1) = tag_db1 in
	  match sym_db1 with 
	  | Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
               (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_basic_symbol
		  (Db1pointsdata_fence_basic_symbol_t.Db1pointsdata_fence_basic_numerical_symbol
		     (Db1pointsdata_fence_basic_numerical_symbol_t.Db1pointsdata_fence_basic_numerical_float_symbol
			(Db1pointsdata_fence_basic_numerical_float_symbol_t.Db1pointsdata_fence_basic_numerical_float_constructor 
			   _)))) ->
			
			     let sym_ele_ebc =
			       Elementary_symbol_from_db1pointsdata_tag_translations_v.elementary_as_border_coordinate_of_vertex_name_of_db1pointsdata_coordinates_kind_of_db1pointsdata_as_fence_basic_numerical_float_tag 
				 nam_ver
				 sym_dck 
				 tag_db1
			     in			     
			     
			     let sym_efu = 
			       Elementary_symbol_from_db1pointsdata_tag_translations_v.elementary_fence_units_actual_symbol_of_db1pointsdata_fence_token_coordinates_units_angle_symbol_of_db1pointsdata_fence_token_coordinates_units_length_symbol_of_coordinate_symbol_of_elementary_as_border_coordinate_symbol				 
				 sym_dua 
				 sym_dul 
				 sym_ele_ebc
			     in
			     let sym_ele_efu =
			       Elementary_symbol_v.elementary_symbol_of_elementary_fence_units_actual_symbol
				 sym_efu
			     in
			     let sym_ele_efu_f = Tree_v.make_of_leaf sym_ele_efu in
			     Tree_v.make_of_node sym_ele_ebc [sym_ele_efu_f]
			       
			    
	  | _ -> Error_messages_v.print_fatal_error __LOC__ nam_fun 
		"Db1pointsdata_fence_basic_numerical_float_constructor"
		(Format.sprintf "%s" (Db1pointsdata_symbol_v.fullname sym_db1))
		"Check or add it"		  
	end
	  
    | Tree_t.Inner (tag_db1, tag_db1_stl) ->
	
	begin 
	  let (sym_db1, soi_db1) = tag_db1 in
	  match sym_db1 with 
	  | Db1pointsdata_symbol_t.Db1pointsdata_body_symbol
               (Db1pointsdata_body_symbol_t.Db1pointsdata_body_sequence_symbol
		  (Db1pointsdata_body_sequence_symbol_t.Db1pointsdata_body_sequence_float_symbol
		     (Db1pointsdata_body_sequence_float_symbol_t.Db1pointsdata_body_sequence_float_constructor
			nam_ver))) ->
			  
			  let sym_ele_ect = 
			    Elementary_symbol_from_db1pointsdata_tag_translations_v.elementary_as_body_coordinate_tuple_symbol_of_db1pointsdata_coordinates_kind_of_db1pointsdata_as_body_sequence_float_symbol 
			      sym_dck 
			      sym_db1
			  in
			  
			  let sym_ele_ebc_stl = List.map (apply nam_ver) tag_db1_stl in
			  Tree_v.make_of_node sym_ele_ect sym_ele_ebc_stl
			    
	  | _ -> Error_messages_v.print_fatal_error __LOC__ nam_fun 
		"Db1pointsdata_body_sequence_float_symbol | Db1pointsdata_fence_basic_numerical_float_symbol"
		(Format.sprintf "%s" (Db1pointsdata_symbol_v.fullname sym_db1))
		"Check or add it"		  
	end			    
  in

  apply "" tag_db1_dsf_st
;;

(** {6 Translating} *)

let translate tag_db1_dsf_st =
  let nam_fun = "translate" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build tag_db1_dsf_st in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_translator_without_register.sh on mercredi 20 avril 2016, 15:23:15 (UTC+0200) *)
