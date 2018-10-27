(** {3 Figure_context_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FFIG:Figure_context_container_v";
   "Needs : FFIG:Figure_set_fence_tag_v";
   "Needs : FFIG:Figure_context_sector_container_v";
   "Needs : FFIG:Figure_context_domain_container_v";
   "Needs : FFIG:Figure_context_database_container_v";
   "Needs : FFIG:Figure_context_databox_container_v";
   "Needs : DFIG:Figure_any_category_by_sole_index_extractor_v";
   "Needs : DFIG:Figure_fence_by_figure_tag_provider_v";
   "Needed-by: ";
   "What-is-it : Up_coercion to Figure_context type from Figure_context_sector ...domain ...database";
   "What-is-it : it is a Body container as a List Figure_set_fence Tag";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_container} *)

let name = function
  | Figure_context_container_t.Figure_context_sector_container con_fcs ->
      (Figure_context_sector_container_v.name con_fcs)
        
  | Figure_context_container_t.Figure_context_domain_container con_fcd ->
      (Figure_context_domain_container_v.name con_fcd)

  | Figure_context_container_t.Figure_context_database_container con_fda ->
      (Figure_context_database_container_v.name con_fda)

  | Figure_context_container_t.Figure_context_databox_container con_fdo ->
      (Figure_context_databox_container_v.name con_fdo)
;;

let string_off = function
  | Figure_context_container_t.Figure_context_sector_container con_fcs ->
      (Figure_context_sector_container_v.string_off con_fcs)
        
  | Figure_context_container_t.Figure_context_domain_container con_fcd ->
      (Figure_context_domain_container_v.string_off con_fcd)

  | Figure_context_container_t.Figure_context_database_container con_fda ->
      (Figure_context_database_container_v.string_off con_fda)

  | Figure_context_container_t.Figure_context_databox_container con_fdo ->
      (Figure_context_databox_container_v.string_off con_fdo)
;;

let longname = function
  | Figure_context_container_t.Figure_context_sector_container con_fcs ->
      (Figure_context_sector_container_v.longname con_fcs)
        
  | Figure_context_container_t.Figure_context_domain_container con_fcd ->
      (Figure_context_domain_container_v.longname con_fcd)

  | Figure_context_container_t.Figure_context_database_container con_fda ->
      (Figure_context_database_container_v.longname con_fda)

  | Figure_context_container_t.Figure_context_databox_container con_fdo ->
      (Figure_context_databox_container_v.longname con_fdo)
;;

let fullname = function
  | Figure_context_container_t.Figure_context_sector_container con_fcs ->
      (Figure_context_sector_container_v.fullname con_fcs)
        
  | Figure_context_container_t.Figure_context_domain_container con_fcd ->
      (Figure_context_domain_container_v.fullname con_fcd)

  | Figure_context_container_t.Figure_context_database_container con_fda ->
      (Figure_context_database_container_v.fullname con_fda)

  | Figure_context_container_t.Figure_context_databox_container con_fdo ->
      (Figure_context_databox_container_v.fullname con_fdo)
;;

(** {6 Coercing Tag} *)

(** {9 Coercing Up Tag} *)

let coerce_up_tag tag_fco =
  Tag_v.map_entity 
    Figure_symbol_v.figure_symbol_of_figure_context_symbol 
    tag_fco
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

let builder_tag_list_of_tag tag_fco =
  let (sym_fco, soi_fco) = tag_fco in
  match sym_fco with
  | Figure_context_symbol_t.Figure_context_sector_symbol sym_fcs ->
      let tag_fcs = Tag_v.make sym_fcs soi_fco in
      Figure_context_sector_container_v.builder_tag_list_of_tag tag_fcs

  | Figure_context_symbol_t.Figure_context_domain_symbol sym_fcd ->
      let tag_fcd = Tag_v.make sym_fcd soi_fco in
      Figure_context_domain_container_v.builder_tag_list_of_tag tag_fcd

  | Figure_context_symbol_t.Figure_context_database_symbol sym_fda ->
      let tag_fda = Tag_v.make sym_fda soi_fco in
      Figure_context_database_container_v.builder_tag_list_of_tag tag_fda

  | Figure_context_symbol_t.Figure_context_databox_symbol sym_fdo ->
      let tag_fdo = Tag_v.make sym_fdo soi_fco in
      Figure_context_databox_container_v.builder_tag_list_of_tag tag_fdo
;;

(** {9 Builder Tag Tuple} *)

let builder_tag_tuple tag_fco =
  let tag_bui_l = builder_tag_list_of_tag tag_fco in
  Tuple_v.tuple_of_list tag_bui_l
;;

(** {9 Building as Builder Tag tuple} *)

let building_of_tag tag_fco =
  builder_tag_list_of_tag tag_fco
;;

(** {6 Container} *)

let containee_tag_list_of_tag tag_fco =
  let tag_bui_l = builder_tag_list_of_tag tag_fco in
  List.map containee_tag_off_builder_tag tag_bui_l
;;

(** {6 Fence *)

let fence_as_list_of_tag tag_fco =
  let tag_fig = coerce_up_tag tag_fco in
  Figure_fence_by_figure_tag_provider_v.provide tag_fig
;;

let fence_as_tuple_of_tag tag_fco =
  let fen_l = fence_as_list_of_tag tag_fco in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list_of_tag tag_fco =
  let fen_l = fence_as_list_of_tag tag_fco in
  Tuple_list_v.make fen_l
;;

(* generated by ./do_container_as_list_body_stem_4sibling_1containee_v.sh figure_context fco sector fcs domain fcd database fda databox fdo figure_set_fence ffe figure_set_fence_point fpo *)
(* using ./template_container_as_list_body_stem_4sibling_1containee_v.ml *)
(* done on vendredi 2 décembre 2016, 14:43:53 (UTC+0100) *)

