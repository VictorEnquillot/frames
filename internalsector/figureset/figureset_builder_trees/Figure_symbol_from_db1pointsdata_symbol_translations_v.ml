(** {3 Figure_symbol_from_db1pointsdata_symbol_translations_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DFIG:Figure_symbol_from_db1pointsdata_symbol_translations_v";
   "Needs : BDB1:Db1pointsdata_tag_all_list_by_db1pointsdata_context_databox_tag_provider_v";
   "Needed-by :"; 
   "What-is-it : Translator to Figure_symbol from Db1figure ";
   "Abbreviation : anv  = aoset_numerical_values";
   "Abbreviation : ddf  = db1pointsdata_context_databox";
   "Abbreviation : db1  = db1figure";
   "Abbreviation : ele  = figure";
   "Abbreviation : ptu  = figure_set_body_coordinate_tuple";
   "Abbreviation : pta  = figure_set_body_coordinate_tuple_aopef";
   "Abbreviation : exp  = figure_border_coordinate_aopef_exponent";
   "Abbreviation : coe  = figure_border_coordinate_aopef_coefficient";
   "Abbreviation : l    = list";
   "Abbreviation : t    = tree";
   "Abbreviation : st   = subtree";
   "Abbreviation : stll = subtree list";
   "Abbreviation : stll = subtree list list";
   "Improve : how to get rid of next function ?";
   "Author : François Colonna 04 juin 2017 at 12:58:44+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
  ]
;;

let figure_as_body_triangle_symbol_of_string_off_of_basicname_databoxoffile sof = function
  | "triangle_isoacute.db1" ->
      Figure_symbol_v.figure_set_body_triangle_isosceles_acute_constructor sof
  | "triangle_isoobtuse.db1" ->
      Figure_symbol_v.figure_set_body_triangle_isosceles_obtuse_constructor sof
  | "triangle_isoright.db1" ->
      Figure_symbol_v.figure_set_body_triangle_isosceles_right_constructor sof
  | "triangle_w.db1" ->
      Figure_symbol_v.figure_set_body_triangle_scalene_acute_constructor sof
  | wha_tri ->
      let nam_fun = "figure_set_body_triangle_isosceles_right_constructor" in
      Error_messages_v.print_fatal_error __LOC__ nam_fun 
	"Databox_nameoffile were triangle_isoacute.db1 | triangle_isoobtuse.db1 | triangle_isoright.db1 | triangle_scalene_acute"
	wha_tri
	"Check"	
;;

let figure_as_symbol_of_db1pointsdata_figure_kind_of_basicname_databoxoffile_of_db1pointsdata_as_set_body_cluster_vertex_symbol db1_dfk wha_tri= function
  | w when Db1pointsdata_symbol_v.is_db1pointsdata_set_body_cluster_vertex_constructor w ->

      let sof_db1_dsf = Db1pointsdata_symbol_v.string_off w in

      begin
	match db1_dfk with 
	| Db1pointsdata_set_fence_token_figure_kind_symbol_t.Db1pointsdata_set_fence_token_figure_kind_triangle_symbol _ ->
	    figure_as_body_triangle_symbol_of_string_off_of_basicname_databoxoffile
	      sof_db1_dsf
	      wha_tri
	      
	| Db1pointsdata_set_fence_token_figure_kind_symbol_t.Db1pointsdata_set_fence_token_figure_kind_segment_symbol _ ->
	    Figure_symbol_v.figure_set_body_segment_constructor 
	      sof_db1_dsf
	      
	| Db1pointsdata_set_fence_token_figure_kind_symbol_t.Db1pointsdata_set_fence_token_figure_kind_point_symbol _ ->
	    Figure_symbol_v.figure_set_fence_point_constructor 
	      sof_db1_dsf
	      
      end

  | sym_db1 -> 
      let nam_fun = "figure_as_body_triangle_symbol_of_string_off_of_basicname_databoxoffile" in
      Error_messages_v.print_fatal_error __LOC__ nam_fun 
	"Db1figuresymbol were Db1pointsdata_set_body_cluster_vertex_constructor"
	(Format.sprintf "%s" (Db1pointsdata_symbol_v.fullname sym_db1))
	"Check"	
;;

