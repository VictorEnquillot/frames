(** {3 This_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FMMM:This_container_v";
   "Needs : FMMM:Conee_up_tag_v";
   "Needs : FMMM:Sibling_1_container_v";
   "Needs : FMMM:Sibling_2_container_v";
   "Needs : FMMM:Sibling_3_container_v";
   "Needs : BMMM:Maint_fence_by_maint_tag_provider_v";
   "Needed-by: ";
   "What-is-it : Up_coercion of Container type as Symbol type up_coercion";
   "What-is-it : it is a Trunc container of Context sub-Types and thus a List of its Conee_up Tag";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_container} *)

let name = function
  | This_container_t.Sibling_1_container con_sib_1 ->
      (Sibling_1_container_v.name con_sib_1)
        
  | This_container_t.Sibling_2_container con_sib_2 ->
      (Sibling_2_container_v.name con_sib_2)

  | This_container_t.Sibling_3_container con_sib_3 ->
      (Sibling_3_container_v.name con_sib_3)

  | This_container_t.Sibling_4_container con_sib_4 ->
      (Sibling_4_container_v.name con_sib_4)
;;

let string_off = function
  | This_container_t.Sibling_1_container con_sib_1 ->
      (Sibling_1_container_v.string_off con_sib_1)
        
  | This_container_t.Sibling_2_container con_sib_2 ->
      (Sibling_2_container_v.string_off con_sib_2)

  | This_container_t.Sibling_3_container con_sib_3 ->
      (Sibling_3_container_v.string_off con_sib_3)

  | This_container_t.Sibling_4_container con_sib_4 ->
      (Sibling_4_container_v.string_off con_sib_4)
;;

let longname = function
  | This_container_t.Sibling_1_container con_sib_1 ->
      (Sibling_1_container_v.longname con_sib_1)
        
  | This_container_t.Sibling_2_container con_sib_2 ->
      (Sibling_2_container_v.longname con_sib_2)

  | This_container_t.Sibling_3_container con_sib_3 ->
      (Sibling_3_container_v.longname con_sib_3)

  | This_container_t.Sibling_4_container con_sib_4 ->
      (Sibling_4_container_v.longname con_sib_4)
;;

let fullname = function
  | This_container_t.Sibling_1_container con_sib_1 ->
      (Sibling_1_container_v.fullname con_sib_1)
        
  | This_container_t.Sibling_2_container con_sib_2 ->
      (Sibling_2_container_v.fullname con_sib_2)

  | This_container_t.Sibling_3_container con_sib_3 ->
      (Sibling_3_container_v.fullname con_sib_3)

  | This_container_t.Sibling_4_container con_sib_4 ->
      (Sibling_4_container_v.fullname con_sib_4)
;;

(** {6 Coercing Tag} *)

(** {9 Coercing Up Tag} *)

let coerce_up_tag tag_ttt =
  Tag_v.map_entity 
    Maint_symbol_v.maint_symbol_of_this_symbol 
    tag_ttt
;;

(** {9 Coercing Down Builder to Containee} *)

let containee_up_tag_off_builder_tag tag_mmm =
  Tag_v.map_entity
    Maint_symbol_v.conee_up_symbol_off_maint_symbol
    tag_mmm
;;

(** {9 Coercing Up Containee_up to Builder} *)

let builder_tag_of_containee_up_tag tag_cnu =
  Tag_v.map_entity 
    Maint_symbol_v.maint_symbol_of_conee_up_symbol
    tag_cnu
;;

(** {6 Builders} *)

(** {9 Builder Tag list} *)

let builder_tag_list_of_tag tag_ttt =
  let (sym_ttt, soi_ttt) = tag_ttt in
  match sym_ttt with
  | This_symbol_t.Sibling_1_symbol sym_sib_1 ->
      let tag_sib_1 = Tag_v.make sym_sib_1 soi_ttt in
      Sibling_1_container_v.builder_tag_list_of_tag tag_sib_1

  | This_symbol_t.Sibling_2_symbol sym_sib_2 ->
      let tag_sib_2 = Tag_v.make sym_sib_2 soi_ttt in
      Sibling_2_container_v.builder_tag_list_of_tag tag_sib_2

  | This_symbol_t.Sibling_3_symbol sym_sib_3 ->
      let tag_sib_3 = Tag_v.make sym_sib_3 soi_ttt in
      Sibling_3_container_v.builder_tag_list_of_tag tag_sib_3

  | This_symbol_t.Sibling_4_symbol sym_sib_4 ->
      let tag_sib_4 = Tag_v.make sym_sib_4 soi_ttt in
      Sibling_4_container_v.builder_tag_list_of_tag tag_sib_4
;;

(** {9 Builder Tag Tuple} *)

let builder_tag_tuple_of_tag tag_ttt =
  let tag_bui_l = builder_tag_list_of_tag tag_ttt in
  Tuple_v.tuple_of_list tag_bui_l
;;

(** {9 Building as Builder Tag tuple} *)

let building_of_tag tag_ttt =
  builder_tag_list_of_tag tag_ttt
;;

(** {6 Container} *)

let containee_up_tag_list tag_ttt =
  let tag_bui_l = builder_tag_list_of_tag tag_ttt in
  List.map containee_up_tag_off_builder_tag tag_bui_l
;;

(** {6 Fence *)

let fence_as_list tag_ttt =
  let tag_mmm = coerce_up_tag tag_ttt in
  Maint_fence_by_maint_tag_provider_v.provide tag_mmm
;;

let fence_as_tuple_of_tag tag_ttt =
  let fen_l = fence_as_list tag_ttt in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list_of_tag tag_ttt =
  let fen_l = fence_as_list tag_ttt in
  Tuple_list_v.make fen_l
;;
