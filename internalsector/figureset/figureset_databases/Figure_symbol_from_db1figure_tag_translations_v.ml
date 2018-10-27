(** {3 Figure_symbol_from_db1figure_tag_translations_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DFIG:Figure_symbol_from_db1figure_tag_translations_v";
   "Needs : BDB1:Db1figure_tag_all_list_by_db1figure_context_databox_tag_provider_v";
   "Needed-by :"; 
   "What-is-it : Translator to Figure_symbol from Db1figure ";
   "Remark : Tag are needed to get information from tag_all_list";
   "Abbreviation : anv  = aoset_numerical_values";
   "Abbreviation : ddf  = db1figure_context_databox";
   "Abbreviation : db1  = db1figure";
   "Abbreviation : ele  = figure";
   "Abbreviation : ptu  = figure_field_body_coordinate_tuple";
   "Abbreviation : pta  = figure_field_body_coordinate_tuple_aopef";
   "Abbreviation : exp  = figure_border_coordinate_aopef_exponent";
   "Abbreviation : coe  = figure_border_coordinate_aopef_coefficient";
   "Abbreviation : l    = list";
   "Abbreviation : t    = tree";
   "Abbreviation : st   = subtree";
   "Abbreviation : stll = subtree list";
   "Abbreviation : stll = subtree list list";
  ]
;;

let figure_as_body_triangle_symbol_of_string_off_of_databox_nameoffile sof = function
  | "triangle_isoacute.db1" ->
      Figure_symbol_v.figure_field_body_triangle_isosceles_acute_constructor sof
  | "triangle_isoobtuse.db1" ->
      Figure_symbol_v.figure_field_body_triangle_isosceles_obtuse_constructor sof
  | "triangle_isoright.db1" ->
      Figure_symbol_v.figure_field_body_triangle_isosceles_right_constructor sof
  | wha_tri ->
      let nam_fun = "figure_field_body_triangle_isosceles_right_constructor" in
      Error_messages_v.print_fatal_error __LOC__ nam_fun 
	"Databox_nameoffile were triangle_isoacute.db1 | triangle_isoobtuse.db1 | triangle_isoright.db1"
	wha_tri
	"Check"	
;;

let figure_as_field_symbol_of_db1figure_figure_kind_of_databox_nameoffile_of_db1figure_as_body_cluster_vertex_symbol db1_dfk wha_tri= function
  | Db1figure_symbol_t.Db1figure_body_symbol
      (Db1figure_body_symbol_t.Db1figure_body_cluster_symbol
         (Db1figure_body_cluster_symbol_t.Db1figure_body_cluster_vertex_symbol
            (Db1figure_body_cluster_vertex_symbol_t.Db1figure_body_cluster_vertex_constructor
               sof_db1_dsf))) ->

		 begin
		   match db1_dfk with 
		   | Db1figure_fence_token_figure_kind_symbol_t.Db1figure_fence_token_figure_kind_triangle ->
		       figure_as_body_triangle_symbol_of_string_off_of_databox_nameoffile
			 sof_db1_dsf
			 wha_tri
			 
		   | Db1figure_fence_token_figure_kind_symbol_t.Db1figure_fence_token_figure_kind_segment ->
		       Figure_symbol_v.figure_field_body_segment_constructor 
			 sof_db1_dsf
			 
		   | Db1figure_fence_token_figure_kind_symbol_t.Db1figure_fence_token_figure_kind_point ->
		       Figure_symbol_v.figure_field_fence_point_constructor 
			 sof_db1_dsf
			 
		 end
  | sym_db1 -> 
      let nam_fun = "figure_as_body_triangle_symbol_of_string_off_of_databox_nameoffile" in
      Error_messages_v.print_fatal_error __LOC__ nam_fun 
	"Db1figuresymbol were Db1figure_body_cluster_vertex_constructor"
	(Format.sprintf "%s" (Db1figure_symbol_v.fullname sym_db1))
	"Check"	
;;

