(** {3 Figure_context_databox_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FFIG:Figure_context_databox_container_v";
   "Needs : FFIG:Figure_set_tag_v";
   "Needs : DFIG:Figure_any_category_by_sole_index_extractor_v";
   "Needs : DFIG:Figure_fence_by_figure_tag_provider_v";
   "Needed-by: ";
   "Remark : here Figure_set is also Containee_up";
   "What-is-it : it is a container as a List of Figure_set Tag";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_container} *)

let name con_fbo =
  List_v.name 
    Figure_set_tag_v.name
    con_fbo
;;

let string_off con_fbo =
  List_v.name 
    Figure_set_tag_v.string_off
    con_fbo
;;

let longname con_fbo =
  List_v.name 
    Figure_set_tag_v.longname
    con_fbo
;;

let fullname con_fbo =
  List_v.name 
    Figure_set_tag_v.fullname
    con_fbo
;;

(** {9 Coercing Up Tag} *)

let coerce_up_tag tag_fbo =
  Tag_v.map_entity 
    Figure_symbol_v.figure_symbol_of_figure_context_databox_symbol 
    tag_fbo
;;

(** {6 Builders} *)

(** {9 Builder Tag list} *)

let builder_tag_list_of_tag tag_fbo =
  let tag_fig = coerce_up_tag tag_fbo in
  Figure_son_tag_list_by_figure_father_tag_provider_v.provide tag_fig
;;

(** {9 Builder Tag Tuple} *)

let builder_tag_tuple tag_fbo =
  let tag_bui_l = builder_tag_list_of_tag tag_fbo in
  Tuple_v.tuple_of_list tag_bui_l
;;

(** {9 Building as Builder Tag tuple} *)

let building_of_tag tag_fbo =
  builder_tag_list_of_tag tag_fbo
;;

(** {6 Container} *)

(** {9 Coercing Up Containee_up Tag to Builder Tag} *)

let builder_tag_of_containee_tag tag_cnu =
  tag_cnu
;;

(** {9 Coercing Down Builder Tag to Containee_up Tag} *)

let containee_tag_off_builder_tag tag_bui =
    tag_bui
;;

(** {9 Containee_up Tag list} *)

let containee_tag_list_of_tag tag_fbo =
  let tag_bui_l = builder_tag_list_of_tag tag_fbo in
  List.map containee_tag_off_builder_tag tag_bui_l 
;;

(** {6 Fence *)

let fence_as_list_of_tag tag_fbo =
  let tag_fig = coerce_up_tag tag_fbo in
  Figure_fence_by_figure_tag_provider_v.provide tag_fig
;;

let fence_as_tuple_of_tag tag_fbo =
  let fen_l = fence_as_list_of_tag tag_fbo in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list_of_tag tag_fbo =
  let fen_l = fence_as_list_of_tag tag_fbo in
  Tuple_list_v.make fen_l
;;

(* generated by ./do_container_as_list_context_figure_containee_v.sh figure_context_databox fbo figure_set fse *)
(* using ./template_container_as_list_context_figure_containee_v.ml *)
(* done on vendredi 2 décembre 2016, 14:52:00 (UTC+0100) *)
