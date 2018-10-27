(** {3 Elementary_context_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FELE:Elementary_context_container_v";
   "Needs : FELE:Elementary_context_tag_v";
   "Needs : FELE:Elementary_context_domain_container_v";
   "Needs : FELE:Elementary_context_database_container_v";
   "Needs : FELE:Elementary_context_databox_container_v";
   "Needs : DELE:Elementary_border_by_elementary_tag_provider_v";
   "Needs : DELE:Elementary_any_category_by_sole_index_extractor_v";
   "Needs : DELE:Elementary_fence_by_elementary_tag_provider_v";
   "Needed-by: ";
   "What-is-it : Up_coercion of Container type as Symbol type up_coercion";
   "What-is-it : it is a Trunc container of Context sub-Types and thus a List of its Elementary_context Tag";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_container} *)

let name = function
  | Elementary_context_container_t.Elementary_context_domain_container con_edo ->
      (Elementary_context_domain_container_v.name con_edo)
        
  | Elementary_context_container_t.Elementary_context_database_container con_edb ->
      (Elementary_context_database_container_v.name con_edb)

  | Elementary_context_container_t.Elementary_context_databox_container con_eda ->
      (Elementary_context_databox_container_v.name con_eda)
;;

let string_off = function
  | Elementary_context_container_t.Elementary_context_domain_container con_edo ->
      (Elementary_context_domain_container_v.string_off con_edo)
        
  | Elementary_context_container_t.Elementary_context_database_container con_edb ->
      (Elementary_context_database_container_v.string_off con_edb)

  | Elementary_context_container_t.Elementary_context_databox_container con_eda ->
      (Elementary_context_databox_container_v.string_off con_eda)
;;

let longname = function
  | Elementary_context_container_t.Elementary_context_domain_container con_edo ->
      (Elementary_context_domain_container_v.longname con_edo)
        
  | Elementary_context_container_t.Elementary_context_database_container con_edb ->
      (Elementary_context_database_container_v.longname con_edb)

  | Elementary_context_container_t.Elementary_context_databox_container con_eda ->
      (Elementary_context_databox_container_v.longname con_eda)
;;

let fullname = function
  | Elementary_context_container_t.Elementary_context_domain_container con_edo ->
      (Elementary_context_domain_container_v.fullname con_edo)
        
  | Elementary_context_container_t.Elementary_context_database_container con_edb ->
      (Elementary_context_database_container_v.fullname con_edb)

  | Elementary_context_container_t.Elementary_context_databox_container con_eda ->
      (Elementary_context_databox_container_v.fullname con_eda)
;;

(** {6 Coercing Tag} *)

(** {9 Coercing Up Tag} *)

let coerce_up_tag tag_eco =
  Tag_v.map_entity 
    Elementary_symbol_v.elementary_symbol_of_elementary_context_symbol 
    tag_eco
;;

(** {9 Coercing Down Builder to Containee} *)

let containee_up_tag_off_builder_tag tag_ele =
  Tag_v.map_entity
    Elementary_symbol_v.elementary_context_symbol_off_elementary_symbol
    tag_ele
;;

(** {9 Coercing Up Containee_up to Builder} *)

let builder_tag_of_containee_up_tag tag_cnu =
  Tag_v.map_entity 
    Elementary_symbol_v.elementary_symbol_of_elementary_context_symbol
    tag_cnu
;;

(** {6 Builders} *)

(** {9 Builder Tag list} *)

let builder_tag_list tag_eco =
  let (sym_eco, soi_eco) = tag_eco in
  match sym_eco with
  | Elementary_context_symbol_t.Elementary_context_domain_symbol sym_edo ->
      let tag_edo = Tag_v.make sym_edo soi_eco in
      Elementary_context_domain_container_v.builder_tag_list tag_edo

  | Elementary_context_symbol_t.Elementary_context_database_symbol sym_edb ->
      let tag_edb = Tag_v.make sym_edb soi_eco in
      Elementary_context_database_container_v.builder_tag_list tag_edb

  | Elementary_context_symbol_t.Elementary_context_databox_symbol sym_eda ->
      let tag_eda = Tag_v.make sym_eda soi_eco in
      Elementary_context_databox_container_v.builder_tag_list tag_eda
;;

(** {9 Builder Tag Tuple} *)

let builder_tag_tuple tag_eco =
  let tag_bui_l = builder_tag_list tag_eco in
  Tuple_v.tuple_of_list tag_bui_l
;;

(** {9 Building as Builder Tag tuple} *)

let building_of_tag tag_eco =
  builder_tag_list tag_eco
;;

(** {6 Container} *)

let containee_up_tag_list tag_eco =
  let tag_bui_l = builder_tag_list tag_eco in
  List.map containee_up_tag_off_builder_tag tag_bui_l
;;

(** {6 Border *)

let border_as_list tag_eco =
  let tag_ele = coerce_up_tag tag_eco in
  Elementary_border_by_elementary_tag_provider_v.provide tag_ele
;;

let border_as_duo tag_eco =
  let bor_eco = border_as_list tag_eco in
  Duo_v.duo_of_list bor_eco
;;

let border_as_tuple tag_eco =
  let bor_l = border_as_list tag_eco in
  Tuple_v.tuple_of_list bor_l
;;

let border_as_tuple_list tag_eco =
  let bor_l = border_as_list tag_eco in
  Tuple_list_v.make bor_l
;;

(** {6 Fence *)

let fence_as_list tag_eco =
  let tag_ele = coerce_up_tag tag_eco in
  Elementary_fence_by_elementary_tag_provider_v.provide tag_ele
;;

let fence_as_tuple tag_eco =
  let fen_l = fence_as_list tag_eco in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list tag_eco =
  let fen_l = fence_as_list tag_eco in
  Tuple_list_v.make fen_l
;;

(* generated by ./do_container_as_list_context_trunc_3sibling_1containee_v.sh elementary_context eco elementary_context_domain edo elementary_context_database edb elementary_context_databox eda elementary_context *)
(* using ./template_container_as_list_context_trunc_3sibling_1containee_v.ml *)
(* Done on mercredi 11 mai 2016, 10:51:56 (UTC+0200) *)

