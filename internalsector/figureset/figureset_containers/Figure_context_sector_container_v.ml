(** {3 Figure_context_sector_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FFIG:Figure_context_sector_container_v";
   "Needs : FFIG:Figure_context_domain_tag_v";
   "Needs : DFIG:Figure_any_category_by_sole_index_extractor_v";
   "Needs : DFIG:Figure_fence_by_figure_tag_provider_v";
   "Needed-by: ";
   "Remark : here Figure_context_domain is also Containee_up";
   "What-is-it : it is a container as a List of Figure_context_domain Tag";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_container} *)

let name con_fcs =
  List_v.name 
    Figure_context_domain_tag_v.name
    con_fcs
;;

let string_off con_fcs =
  List_v.name 
    Figure_context_domain_tag_v.string_off
    con_fcs
;;

let longname con_fcs =
  List_v.name 
    Figure_context_domain_tag_v.longname
    con_fcs
;;

let fullname con_fcs =
  List_v.name 
    Figure_context_domain_tag_v.fullname
    con_fcs
;;

(** {9 Coercing Up Tag} *)

let coerce_up_tag tag_fcs =
  Tag_v.map_entity 
    Figure_symbol_v.figure_symbol_of_figure_context_sector_symbol 
    tag_fcs
;;

(** {6 Builders} *)

(** {9 Builder Tag list} *)

let builder_tag_list_of_tag tag_fcs =
  let tag_fig = coerce_up_tag tag_fcs in
  Figure_son_tag_list_by_figure_father_tag_provider_v.provide tag_fig
;;

(** {9 Builder Tag Tuple} *)

let builder_tag_tuple tag_fcs =
  let tag_bui_l = builder_tag_list_of_tag tag_fcs in
  Tuple_v.tuple_of_list tag_bui_l
;;

(** {9 Building as Builder Tag tuple} *)

let building_of_tag tag_fcs =
  builder_tag_list_of_tag tag_fcs
;;

(** {6 Container} *)

(** {9 Coercing Up Containee_up Tag to Builder Tag} *)

let builder_tag_of_containee_tag tag_cnu =
  Tag_v.map_entity 
    Figure_symbol_v.figure_symbol_of_figure_context_domain_symbol
    tag_cnu
;;

(** {9 Coercing Down Builder Tag to Containee_up Tag} *)

let containee_tag_off_builder_tag tag_bui =
  Tag_v.map_entity 
    Figure_symbol_v.figure_context_domain_symbol_off_figure_symbol
    tag_bui
;;

(** {9 Containee_up Tag list} *)

let containee_tag_list_of_tag tag_fcs =
  let tag_bui_l = builder_tag_list_of_tag tag_fcs in
  List.map containee_tag_off_builder_tag tag_bui_l 
;;

(** {6 Fence *)

let fence_as_list_of_tag tag_fcs =
  let tag_fig = coerce_up_tag tag_fcs in
  Figure_fence_by_figure_tag_provider_v.provide tag_fig
;;

let fence_as_tuple_of_tag tag_fcs =
  let fen_l = fence_as_list_of_tag tag_fcs in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list_of_tag tag_fcs =
  let fen_l = fence_as_list_of_tag tag_fcs in
  Tuple_list_v.make fen_l
;;

(* generated by ./do_container_as_list_context_bud_1containee_v.sh figure_context_sector fcs figure_context_domain fcd *)
(* using ./template_container_as_list_context_bud_1containee_v.ml *)
(* done on vendredi 2 décembre 2016, 14:43:52 (UTC+0100) *)

