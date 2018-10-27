(** {3 Elementary_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FELE:Elementary_container_v";
   "Needs : FELE:Elementary_tag_v";
   "Needs : FELE:Elementary_context_container_v";
   "Needs : FELE:Elementary_body_container_v";
   "Needs : FELE:Elementary_border_container_v";
   "Needs : DELE:Elementary_border_by_elementary_tag_provider_v";
   "Needs : DELE:Elementary_any_category_by_sole_index_extractor_v";
   "Needs : DELE:Elementary_fence_by_elementary_tag_provider_v";
   "Needed-by: ";
   "What-is-it : Up_coercion of Container type as Symbol type up_coercion";
   "What-is-it : it is a Trunc container of Context sub-Types and thus a List of its Elementary Tag";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_container} *)

let name = function
  | Elementary_container_t.Elementary_context_container con_eco ->
      (Elementary_context_container_v.name con_eco)
        
  | Elementary_container_t.Elementary_body_container con_ebo ->
      (Elementary_body_container_v.name con_ebo)

  | Elementary_container_t.Elementary_border_container con_ebo ->
      (Elementary_border_container_v.name con_ebo)

  | Elementary_container_t.Elementary_fence_container con_efe ->
      (Elementary_fence_container_v.name con_efe)
;;

let string_off = function
  | Elementary_container_t.Elementary_context_container con_eco ->
      (Elementary_context_container_v.string_off con_eco)
        
  | Elementary_container_t.Elementary_body_container con_ebo ->
      (Elementary_body_container_v.string_off con_ebo)

  | Elementary_container_t.Elementary_border_container con_ebo ->
      (Elementary_border_container_v.string_off con_ebo)

  | Elementary_container_t.Elementary_fence_container con_efe ->
      (Elementary_fence_container_v.string_off con_efe)
;;

let longname = function
  | Elementary_container_t.Elementary_context_container con_eco ->
      (Elementary_context_container_v.longname con_eco)
        
  | Elementary_container_t.Elementary_body_container con_ebo ->
      (Elementary_body_container_v.longname con_ebo)

  | Elementary_container_t.Elementary_border_container con_ebo ->
      (Elementary_border_container_v.longname con_ebo)

  | Elementary_container_t.Elementary_fence_container con_efe ->
      (Elementary_fence_container_v.longname con_efe)
;;

let fullname = function
  | Elementary_container_t.Elementary_context_container con_eco ->
      (Elementary_context_container_v.fullname con_eco)
        
  | Elementary_container_t.Elementary_body_container con_ebo ->
      (Elementary_body_container_v.fullname con_ebo)

  | Elementary_container_t.Elementary_border_container con_ebo ->
      (Elementary_border_container_v.fullname con_ebo)

  | Elementary_container_t.Elementary_fence_container con_efe ->
      (Elementary_fence_container_v.fullname con_efe)
;;

(** {6 Coercing Tag} *)

(** {9 Coercing Up Tag} *)

let coerce_up_tag tag_ele =
    tag_ele
;;

(** {9 Coercing Down Builder to Containee} *)

let containee_up_tag_off_builder_tag tag_ele =
    tag_ele
;;

(** {9 Coercing Up Containee_up to Builder} *)

let builder_tag_of_containee_up_tag tag_cnu =
    tag_cnu
;;

(** {6 Builders} *)

(** {9 Builder Tag list} *)

let builder_tag_list tag_ele =
  let (sym_ele, soi_ele) = tag_ele in
  match sym_ele with
  | Elementary_symbol_t.Elementary_context_symbol sym_eco ->
      let tag_eco = Tag_v.make sym_eco soi_ele in
      Elementary_context_container_v.builder_tag_list tag_eco

  | Elementary_symbol_t.Elementary_body_symbol sym_ebo ->
      let tag_ebo = Tag_v.make sym_ebo soi_ele in
      Elementary_body_container_v.builder_tag_list tag_ebo

  | Elementary_symbol_t.Elementary_border_symbol sym_ebo ->
      let tag_ebo = Tag_v.make sym_ebo soi_ele in
      Elementary_border_container_v.builder_tag_list tag_ebo

  | Elementary_symbol_t.Elementary_fence_symbol sym_efe ->
      let tag_efe = Tag_v.make sym_efe soi_ele in
      Elementary_fence_container_v.builder_tag_list tag_efe
;;

(** {9 Builder Tag Tuple} *)

let builder_tag_tuple tag_ele =
  let tag_bui_l = builder_tag_list tag_ele in
  Tuple_v.tuple_of_list tag_bui_l
;;

(** {9 Building as Builder Tag tuple} *)

let building_of_tag tag_ele =
  builder_tag_list tag_ele
;;

(** {6 Container} *)

let containee_up_tag_list tag_ele =
  let tag_bui_l = builder_tag_list tag_ele in
  List.map containee_up_tag_off_builder_tag tag_bui_l
;;

(** {6 Border *)

let border_as_list tag_ele =
  let tag_ele = coerce_up_tag tag_ele in
  Elementary_border_by_elementary_tag_provider_v.provide tag_ele
;;

let border_as_duo tag_ele =
  let bor_ele = border_as_list tag_ele in
  Duo_v.duo_of_list bor_ele
;;

let border_as_tuple tag_ele =
  let bor_l = border_as_list tag_ele in
  Tuple_v.tuple_of_list bor_l
;;

let border_as_tuple_list tag_ele =
  let bor_l = border_as_list tag_ele in
  Tuple_list_v.make bor_l
;;

(** {6 Fence *)

let fence_as_list tag_ele =
  let tag_ele = coerce_up_tag tag_ele in
  Elementary_fence_by_elementary_tag_provider_v.provide tag_ele
;;

let fence_as_tuple tag_ele =
  let fen_l = fence_as_list tag_ele in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list tag_ele =
  let fen_l = fence_as_list tag_ele in
  Tuple_list_v.make fen_l
;;

(* generated by ./do_container_as_list_top_trunc_4sibling_1containee_v.sh elementary ele elementary_context eco elementary_body ebo elementary_border ebo elementary_fence efe elementary *)
(* using ./template_container_as_list_top_trunc_4sibling_1containee_v.ml *)
(* Done on mercredi 11 mai 2016, 10:51:56 (UTC+0200) *)

