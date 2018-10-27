(** {3 Figure_set_body_triangle_scalene_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FFIG:Figure_set_body_triangle_scalene_container_v";
   "Needs : FFIG:Figure_set_fence_tag_v";
   "Needs : FFIG:Figure_set_body_triangle_scalene_acute_container_v";
   "Needs : FFIG:Figure_set_body_triangle_scalene_obtuse_container_v";
   "Needs : FFIG:Figure_set_body_triangle_scalene_right_container_v";
   "Needs : DFIG:Figure_any_category_by_sole_index_extractor_v";
   "Needs : DFIG:Figure_fence_by_figure_tag_provider_v";
   "Needed-by: ";
   "What-is-it : Up_coercion to Figure_set_body_triangle_scalene type from Figure_set_body_triangle_scalene_acute ...obtuse ...right";
   "What-is-it : it is a Body container as a Trio of Figure_set_fence_point and thus a List Figure_set_fence Tag";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_container} *)

let name = function
  | Figure_set_body_triangle_scalene_container_t.Figure_set_body_triangle_scalene_acute_container con_fsa ->
      (Figure_set_body_triangle_scalene_acute_container_v.name con_fsa)
        
  | Figure_set_body_triangle_scalene_container_t.Figure_set_body_triangle_scalene_obtuse_container con_fso ->
      (Figure_set_body_triangle_scalene_obtuse_container_v.name con_fso)

  | Figure_set_body_triangle_scalene_container_t.Figure_set_body_triangle_scalene_right_container con_fsr ->
      (Figure_set_body_triangle_scalene_right_container_v.name con_fsr)
;;

let string_off = function
  | Figure_set_body_triangle_scalene_container_t.Figure_set_body_triangle_scalene_acute_container con_fsa ->
      (Figure_set_body_triangle_scalene_acute_container_v.string_off con_fsa)
        
  | Figure_set_body_triangle_scalene_container_t.Figure_set_body_triangle_scalene_obtuse_container con_fso ->
      (Figure_set_body_triangle_scalene_obtuse_container_v.string_off con_fso)

  | Figure_set_body_triangle_scalene_container_t.Figure_set_body_triangle_scalene_right_container con_fsr ->
      (Figure_set_body_triangle_scalene_right_container_v.string_off con_fsr)
;;

let longname = function
  | Figure_set_body_triangle_scalene_container_t.Figure_set_body_triangle_scalene_acute_container con_fsa ->
      (Figure_set_body_triangle_scalene_acute_container_v.longname con_fsa)
        
  | Figure_set_body_triangle_scalene_container_t.Figure_set_body_triangle_scalene_obtuse_container con_fso ->
      (Figure_set_body_triangle_scalene_obtuse_container_v.longname con_fso)

  | Figure_set_body_triangle_scalene_container_t.Figure_set_body_triangle_scalene_right_container con_fsr ->
      (Figure_set_body_triangle_scalene_right_container_v.longname con_fsr)
;;

let fullname = function
  | Figure_set_body_triangle_scalene_container_t.Figure_set_body_triangle_scalene_acute_container con_fsa ->
      (Figure_set_body_triangle_scalene_acute_container_v.fullname con_fsa)
        
  | Figure_set_body_triangle_scalene_container_t.Figure_set_body_triangle_scalene_obtuse_container con_fso ->
      (Figure_set_body_triangle_scalene_obtuse_container_v.fullname con_fso)

  | Figure_set_body_triangle_scalene_container_t.Figure_set_body_triangle_scalene_right_container con_fsr ->
      (Figure_set_body_triangle_scalene_right_container_v.fullname con_fsr)
;;

(** {6 Coercing Tag} *)

(** {9 Coercing Up Tag} *)

let coerce_up_tag tag_fts =
  Tag_v.map_entity 
    Figure_symbol_v.figure_symbol_of_figure_set_body_triangle_scalene_symbol 
    tag_fts
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

let builder_tag_list_of_tag tag_fts =
  let (sym_fts, soi_fts) = tag_fts in
  match sym_fts with
  | Figure_set_body_triangle_scalene_symbol_t.Figure_set_body_triangle_scalene_acute_symbol sym_fsa ->
      let tag_fsa = Tag_v.make sym_fsa soi_fts in
      Figure_set_body_triangle_scalene_acute_container_v.builder_tag_list_of_tag tag_fsa

  | Figure_set_body_triangle_scalene_symbol_t.Figure_set_body_triangle_scalene_obtuse_symbol sym_fso ->
      let tag_fso = Tag_v.make sym_fso soi_fts in
      Figure_set_body_triangle_scalene_obtuse_container_v.builder_tag_list_of_tag tag_fso

  | Figure_set_body_triangle_scalene_symbol_t.Figure_set_body_triangle_scalene_right_symbol sym_fsr ->
      let tag_fsr = Tag_v.make sym_fsr soi_fts in
      Figure_set_body_triangle_scalene_right_container_v.builder_tag_list_of_tag tag_fsr
;;

(** {9 Builder Tag Tuple} *)

let builder_tag_tuple tag_fts =
  let tag_bui_l = builder_tag_list_of_tag tag_fts in
  Tuple_v.tuple_of_list tag_bui_l
;;

(** {9 Building as Builder Tag tuple} *)

let building_of_tag tag_fts =
  builder_tag_list_of_tag tag_fts
;;

(** {6 Container} *)

let containee_tag_list_of_tag tag_fts =
  let tag_bui_l = builder_tag_list_of_tag tag_fts in
  List.map containee_tag_off_builder_tag tag_bui_l
;;

(** {6 Fence *)

let fence_as_list_of_tag tag_fts =
  let tag_fig = coerce_up_tag tag_fts in
  Figure_fence_by_figure_tag_provider_v.provide tag_fig
;;

let fence_as_tuple_of_tag tag_fts =
  let fen_l = fence_as_list_of_tag tag_fts in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list_of_tag tag_fts =
  let fen_l = fence_as_list_of_tag tag_fts in
  Tuple_list_v.make fen_l
;;

(* generated by ./do_container_as_trio_body_stem_3sibling_1containee_v.sh figure_set_body_triangle_scalene fts acute fsa obtuse fso right fsr figure_set_fence ffe figure_set_fence_point fpo *)
(* using ./template_container_as_trio_body_stem_3sibling_1containee_v.ml *)
(* done on vendredi 2 décembre 2016, 14:43:52 (UTC+0100) *)

