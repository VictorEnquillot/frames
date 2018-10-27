(** {3 Elementary_body_coordinate_tuple_tree_symbol_tree_by_elementary_context_databox_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Elementary_body_coordinate_tuple_symbol_tree_by_db1figure_database_tag_provider_v";
   "Needs : DELE:Elementary_data_coordinate_symbol_subtree_by_db1figure_float_tag_translator_v";
   "Needed-by :"; 
   "What-is-it : the tree of all Local Entity Symbol in Db1 Elementary_context_database_tag";
   "How-is-it-done : by translating the Db1_elementary_context_database tree Tags";
   "How-is-it-done : Elementary_body_coordinate_tuple_symbol is a Symbol";
   "How-is-it-done : Db1figure_component_vertex and Db1figure_element_vertex";
   "How-is-it-done : are both translated as Point. Component node is skipped";
   "Remark : No storage. Only Tags are stored";
  ]
;;

(** {6 Tree} *)

let coordinate_tuple_symbol_tree_of_db1figure_tag_tree tag_den_t =

  let rec apply = function
    | Tree_t.Empty -> failwith "Tree_empty"

    | Tree_t.Leaf tag_den_lea ->

	let soi_den = Tag_v.sole_index_off_tag tag_den_lea in
	let sym_den_lea = Tag_v.entity_off_tag tag_den_lea in

	begin
	  match sym_den_lea with 
	  | Db1figure_symbol_t.Db1figure_float_symbol sym_def ->

	      let tag_def = Tag_v.make sym_def soi_den in
	      Elementary_data_coordinate_symbol_subtree_by_db1figure_float_tag_translator_v.translate tag_def

	  | Db1figure_symbol_t.Db1figure_element_symbol
	      (Db1figure_element_symbol_t.Db1figure_element_coordinates_kind_symbol _ )
	      
	  | Db1figure_symbol_t.Db1figure_element_symbol
	      (Db1figure_element_symbol_t.Db1figure_element_coordinates_units_angle_symbol _ )
	      
	  | Db1figure_symbol_t.Db1figure_element_symbol
	      (Db1figure_element_symbol_t.Db1figure_element_coordinates_units_length_symbol _ ) ->
		
		Tree_v.empty
		  
	  | _ ->
	      let nam_fun = "coordinate_tuple_tag_tree_of_elementary_context_database_tag" in
	      let nam_mod = Management_v.current_module_name (documentation ()) in
	      Error_messages_v.print_fatal_error nam_mod nam_fun
		"Leaf ONLY for Db1figure_float"
		(Format.sprintf "Db1figure is >%s<" 
		   (Db1figure_tag_v.fullname tag_den_lea)
	      )
		"Check" 
	      
	end
	  
    | Tree_t.Inner (tag_den_roo, tag_den_sut_l) -> 
	
	let sym_db1_roo = Tag_v.entity_off_tag tag_den_roo in
	
	begin
	  match sym_db1_roo with 
	  | Db1figure_symbol_t.Db1figure_element_symbol
	      (Db1figure_element_symbol_t.Db1figure_element_vertex_symbol _) ->

		let loc_roo = 
		  Elementary_symbol_from_db1figure_tag_translations_v.translate
		    tag_den_roo
		in

		let loc_sut_l = List.map apply tag_den_sut_l in

		let no_empty_tree_l = 
		  List.filter (fun t -> not (Tree_v.is_empty t)) 
		    loc_sut_l 
		in

		Tree_v.make_of_node loc_roo no_empty_tree_l
		  
	  | _ ->		
	      let nam_fun = "elementary_tag_tree_of_elementary_context_database_tag" in
	      let nam_mod = Management_v.current_module_name (documentation ()) in
	      Error_messages_v.print_fatal_error nam_mod nam_fun
		"Subtree ONLY for Db1figure_component"
		(Format.sprintf "Db1figure is >%s<" 
		   (Db1figure_tag_v.fullname tag_den_roo)
	      )
		"Check" 
	end
  in
  
  apply tag_den_t
;;

(** {6 Building} *)

let build tag_eld =
  let tag_den_t =
    Db1figure_tag_subtree_by_db1figure_database_tag_provider_v.provide 
      tag_eld
  in
  
  let sym_ctu_t = coordinate_tuple_symbol_tree_of_db1figure_tag_tree tag_den_t in
   
  Tree_v.remove_empty_subtree_off_tree sym_ctu_t 
;;

let build_n_store tag_eld =
  build tag_eld 
;;

let provide_without_trace tag_eld =
  build tag_eld
;;

let provide_with_trace tag_eld =
  let nam_mod = Management_v.current_module_name (documentation ()) in
  Management_v.entering_of_current_module_name nam_mod;

  let result = provide_without_trace tag_eld in

  Management_v.exiting_of_current_module_name nam_mod;
  result
;;

let provide tag_eld =
  if Parameters_general_provider_v.provide "trace-provide" = "true"
  then provide_with_trace tag_eld
  else provide_without_trace tag_eld
;;


