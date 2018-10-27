(** {3 This_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FMMM:This_container_v";
   "Needs : FMMM:Conee_1_tag_v";
   "Needs : DMMM:Maint_any_category_by_sole_index_extractor_v";
   "Needs : DMMM:Maint_fence_by_maint_tag_provider_v";
   "Needed-by: ";
   "Remark : here Conee_1 is also Containee_up";
   "What-is-it : it is a container as a List of Conee_1 Tag";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_container} *)

let name con_ttt =
  List_v.name 
    Conee_1_tag_v.name
    con_ttt
;;

let string_off con_ttt =
  List_v.name 
    Conee_1_tag_v.string_off
    con_ttt
;;

let longname con_ttt =
  List_v.name 
    Conee_1_tag_v.longname
    con_ttt
;;

let fullname con_ttt =
  List_v.name 
    Conee_1_tag_v.fullname
    con_ttt
;;

(** {9 Coercing Up Tag} *)

let coerce_up_tag tag_ttt =
  Tag_v.map_entity 
    Maint_symbol_v.maint_symbol_of_this_symbol 
    tag_ttt
;;

(** {6 Builders} *)

(** {9 Builder Tag list} *)

let builder_tag_list_of_tag tag_ttt =
  let tag_mmm = coerce_up_tag tag_ttt in
  Maint_son_tag_list_by_maint_father_tag_provider_v.provide tag_mmm
;;

(** {9 Builder Tag Tuple} *)

let builder_tag_tuple tag_ttt =
  let tag_bui_l = builder_tag_list_of_tag tag_ttt in
  Tuple_v.tuple_of_list tag_bui_l
;;

(** {9 Building as Builder Tag tuple} *)

let building_of_tag tag_ttt =
  builder_tag_list_of_tag tag_ttt
;;

(** {6 Container} *)

(** {9 Coercing Up Containee_up Tag to Builder Tag} *)

let builder_tag_of_containee_tag tag_cnu =
  Tag_v.map_entity 
    Maint_symbol_v.maint_symbol_of_conee_1_symbol
    tag_cnu
;;

(** {9 Coercing Down Builder Tag to Containee_up Tag} *)

let containee_tag_off_builder_tag tag_bui =
  Tag_v.map_entity 
    Maint_symbol_v.conee_1_symbol_off_maint_symbol
    tag_bui
;;

(** {9 Containee_up Tag list} *)

let containee_tag_list_of_tag tag_ttt =
  let tag_bui_l = builder_tag_list_of_tag tag_ttt in
  List.map containee_tag_off_builder_tag tag_bui_l 
;;

(** {6 Fence *)

let fence_as_list_of_tag tag_ttt =
  let tag_mmm = coerce_up_tag tag_ttt in
  Maint_fence_by_maint_tag_provider_v.provide tag_mmm
;;

let fence_as_tuple_of_tag tag_ttt =
  let fen_l = fence_as_list_of_tag tag_ttt in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list_of_tag tag_ttt =
  let fen_l = fence_as_list_of_tag tag_ttt in
  Tuple_list_v.make fen_l
;;
