(** {3 Figure_set_body_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FFIG:Figure_set_body_container_v";
   "Needs : FFIG:Figure_set_fence_tag_v";
   "Needs : FFIG:Figure_set_body_triangle_container_v";
   "Needs : FFIG:Figure_set_body_segment_container_v";
   "Needs : DFIG:Figure_any_category_by_sole_index_extractor_v";
   "Needs : DFIG:Figure_fence_by_figure_tag_provider_v";
   "Needed-by: ";
   "What-is-it : Up_coercion to Figure_set_body type from Figure_set_body_triangle ...segment";
   "What-is-it : it is a Body container as a Tuple of Figure_set_fence_point and thus a List Figure_set_fence Tag";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_container} *)

let name = function
  | Figure_set_body_container_t.Figure_set_body_triangle_container con_fbt ->
      (Figure_set_body_triangle_container_v.name con_fbt)
        
  | Figure_set_body_container_t.Figure_set_body_segment_container con_fbs ->
      (Figure_set_body_segment_container_v.name con_fbs)
;;

let string_off = function
  | Figure_set_body_container_t.Figure_set_body_triangle_container con_fbt ->
      (Figure_set_body_triangle_container_v.string_off con_fbt)
        
  | Figure_set_body_container_t.Figure_set_body_segment_container con_fbs ->
      (Figure_set_body_segment_container_v.string_off con_fbs)
;;

let longname = function
  | Figure_set_body_container_t.Figure_set_body_triangle_container con_fbt ->
      (Figure_set_body_triangle_container_v.longname con_fbt)
        
  | Figure_set_body_container_t.Figure_set_body_segment_container con_fbs ->
      (Figure_set_body_segment_container_v.longname con_fbs)
;;

let fullname = function
  | Figure_set_body_container_t.Figure_set_body_triangle_container con_fbt ->
      (Figure_set_body_triangle_container_v.fullname con_fbt)
        
  | Figure_set_body_container_t.Figure_set_body_segment_container con_fbs ->
      (Figure_set_body_segment_container_v.fullname con_fbs)
;;

(** {6 Coercing Tag} *)

(** {9 Coercing Up Tag} *)

let coerce_up_tag tag_fbt =
  Tag_v.map_entity 
    Figure_symbol_v.figure_symbol_of_figure_set_body_symbol 
    tag_fbt
;;

(** {9 Coercing Down Builder to Containee} *)

let containee_tag_off_builder_tag tag_fig =
  Tag_v.map_entity
    Figure_symbol_v.figure_set_fence_symbol_off_figure_symbol
    tag_fig
;;

(** {9 Coercing Up Containee_up to Builder} *)

let builder_tag_of_containee_tag tag_cnu =
  Tag_v.map_entity 
    Figure_symbol_v.figure_symbol_of_figure_set_fence_symbol
    tag_cnu
;;

(** {6 Builders} *)

(** {9 Builder Tag list} *)

let builder_tag_list_of_tag tag_fbt =
  let (sym_fbt, soi_fbt) = tag_fbt in
  match sym_fbt with
  | Figure_set_body_symbol_t.Figure_set_body_triangle_symbol sym_fbt ->
      let tag_fbt = Tag_v.make sym_fbt soi_fbt in
      Figure_set_body_triangle_container_v.builder_tag_list_of_tag tag_fbt

  | Figure_set_body_symbol_t.Figure_set_body_segment_symbol sym_fbs ->
      let tag_fbs = Tag_v.make sym_fbs soi_fbt in
      Figure_set_body_segment_container_v.builder_tag_list_of_tag tag_fbs
;;

(** {9 Builder Tag Tuple} *)

let builder_tag_tuple tag_fbt =
  let tag_bui_l = builder_tag_list_of_tag tag_fbt in
  Tuple_v.tuple_of_list tag_bui_l
;;

(** {9 Building as Builder Tag tuple} *)

let building_of_tag tag_fbt =
  builder_tag_list_of_tag tag_fbt
;;

(** {6 Container} *)

let containee_tag_list_of_tag tag_fbt =
  let tag_bui_l = builder_tag_list_of_tag tag_fbt in
  List.map containee_tag_off_builder_tag tag_bui_l
;;

(** {6 Fence *)

let fence_as_list_of_tag tag_fbt =
  let tag_fig = coerce_up_tag tag_fbt in
  Figure_fence_by_figure_tag_provider_v.provide tag_fig
;;

let fence_as_tuple_of_tag tag_fbt =
  let fen_l = fence_as_list_of_tag tag_fbt in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list_of_tag tag_fbt =
  let fen_l = fence_as_list_of_tag tag_fbt in
  Tuple_list_v.make fen_l
;;

(* generated by ./do_container_as_tuple_body_stem_2sibling_1containee_v.sh figure_set_body fbt triangle fbt segment fbs figure_set_fence ffe figure_set_fence_point fpo *)
(* using ./template_container_as_tuple_body_stem_2sibling_1containee_v.ml *)
(* done on vendredi 2 décembre 2016, 14:43:53 (UTC+0100) *)

