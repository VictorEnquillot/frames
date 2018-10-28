(** {3 Figure_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FFIG:Figure_container_v";
   "Needs : FFIG:Figure_set_fence_tag_v";
   "Needs : FFIG:Figure_set_container_v";
   "Needs : FFIG:Figure_context_container_v";
   "Needs : DFIG:Figure_any_category_by_sole_index_extractor_v";
   "Needs : DFIG:Figure_fence_by_figure_tag_provider_v";
   "Needed-by: ";
   "What-is-it : Up_coercion to Figure type from Figure_set ...context";
   "What-is-it : it is a Body container as a List Figure_set_fence Tag";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_container} *)

let name = function
  | Figure_container_t.Figure_set_container con_fse ->
      (Figure_set_container_v.name con_fse)
        
  | Figure_container_t.Figure_context_container con_fco ->
      (Figure_context_container_v.name con_fco)
;;

let string_off = function
  | Figure_container_t.Figure_set_container con_fse ->
      (Figure_set_container_v.string_off con_fse)
        
  | Figure_container_t.Figure_context_container con_fco ->
      (Figure_context_container_v.string_off con_fco)
;;

let longname = function
  | Figure_container_t.Figure_set_container con_fse ->
      (Figure_set_container_v.longname con_fse)
        
  | Figure_container_t.Figure_context_container con_fco ->
      (Figure_context_container_v.longname con_fco)
;;

let fullname = function
  | Figure_container_t.Figure_set_container con_fse ->
      (Figure_set_container_v.fullname con_fse)
        
  | Figure_container_t.Figure_context_container con_fco ->
      (Figure_context_container_v.fullname con_fco)
;;

(** {6 Coercing Tag} *)

(** {9 Coercing Up Tag} *)

let coerce_up_tag tag_fig =
  tag_fig
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

let builder_tag_list_of_tag tag_fig =
  let (sym_fig, soi_fig) = tag_fig in
  match sym_fig with
  | Figure_symbol_t.Figure_set_symbol sym_fse ->
      let tag_fse = Tag_v.make sym_fse soi_fig in
      Figure_set_container_v.builder_tag_list_of_tag tag_fse

  | Figure_symbol_t.Figure_context_symbol sym_fco ->
      let tag_fco = Tag_v.make sym_fco soi_fig in
      Figure_context_container_v.builder_tag_list_of_tag tag_fco
;;

(** {9 Builder Tag Tuple} *)

let builder_tag_tuple tag_fig =
  let tag_bui_l = builder_tag_list_of_tag tag_fig in
  Tuple_v.tuple_of_list tag_bui_l
;;

(** {9 Building as Builder Tag tuple} *)

let building_of_tag tag_fig =
  builder_tag_list_of_tag tag_fig
;;

(** {6 Container} *)

let containee_tag_list_of_tag tag_fig =
  let tag_bui_l = builder_tag_list_of_tag tag_fig in
  List.map containee_tag_off_builder_tag tag_bui_l
;;

(** {6 Fence *)

let fence_as_list_of_tag tag_fig =
  let tag_fig = coerce_up_tag tag_fig in
  Figure_fence_by_figure_tag_provider_v.provide tag_fig
;;

let fence_as_tuple_of_tag tag_fig =
  let fen_l = fence_as_list_of_tag tag_fig in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list_of_tag tag_fig =
  let fen_l = fence_as_list_of_tag tag_fig in
  Tuple_list_v.make fen_l
;;

(* generated by ./do_container_as_list_top_stem_2sibling_1containee_v.sh figure fig set fse context fco figure_set_fence ffe figure_set_fence_point fpo *)
(* using template_container_as_list_top_stem_2sibling_1containee_v.ml *)
(* done on vendredi 2 décembre 2016, 14:45:00 (UTC+0100) *)
