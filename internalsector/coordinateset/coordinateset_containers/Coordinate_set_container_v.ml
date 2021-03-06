(** {3 Coordinate_set_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FCOO:Coordinate_set_container_v";
   "Needs : FCOO:Coordinate_set_fence_tag_v";
   "Needs : FCOO:Coordinate_set_body_container_v";
   "Needs : FCOO:Coordinate_set_fence_container_v";
   "Needs : BCOO:Coordinate_fence_by_coordinate_tag_provider_v";
   "Needed-by: ";
   "What-is-it : Up_coercion of Container type as Symbol type up_coercion";
   "What-is-it : it is a Trunc container of Context sub-Types and thus a List of its Coordinate_set_fence Tag";
   "Author : François Colonna 01 décembre 2016 at 11:13:02+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_container} *)

let name = function
  | Coordinate_set_container_t.Coordinate_set_body_container con_csb ->
      (Coordinate_set_body_container_v.name con_csb)
        
  | Coordinate_set_container_t.Coordinate_set_fence_container con_csf ->
      (Coordinate_set_fence_container_v.name con_csf)
;;

let string_off = function
  | Coordinate_set_container_t.Coordinate_set_body_container con_csb ->
      (Coordinate_set_body_container_v.string_off con_csb)
        
  | Coordinate_set_container_t.Coordinate_set_fence_container con_csf ->
      (Coordinate_set_fence_container_v.string_off con_csf)
;;

let longname = function
  | Coordinate_set_container_t.Coordinate_set_body_container con_csb ->
      (Coordinate_set_body_container_v.longname con_csb)
        
  | Coordinate_set_container_t.Coordinate_set_fence_container con_csf ->
      (Coordinate_set_fence_container_v.longname con_csf)
;;

let fullname = function
  | Coordinate_set_container_t.Coordinate_set_body_container con_csb ->
      (Coordinate_set_body_container_v.fullname con_csb)
        
  | Coordinate_set_container_t.Coordinate_set_fence_container con_csf ->
      (Coordinate_set_fence_container_v.fullname con_csf)
;;

(** {6 Coercing Tag} *)

(** {9 Coercing Up Tag} *)

let coerce_up_tag tag_cse =
  Tag_v.map_entity 
    Coordinate_symbol_v.coordinate_symbol_of_coordinate_set_symbol 
    tag_cse
;;

(** {9 Coercing Down Builder to Containee} *)

let containee_up_tag_off_builder_tag tag_coo =
  Tag_v.map_entity
    Coordinate_symbol_v.coordinate_set_fence_symbol_off_coordinate_symbol
    tag_coo
;;

(** {9 Coercing Up Containee_up to Builder} *)

let builder_tag_of_containee_up_tag tag_cnu =
  Tag_v.map_entity 
    Coordinate_symbol_v.coordinate_symbol_of_coordinate_set_fence_symbol
    tag_cnu
;;

(** {6 Builders} *)

(** {9 Builder Tag list} *)

let builder_tag_list_of_tag tag_cse =
  let (sym_cse, soi_cse) = tag_cse in
  match sym_cse with
  | Coordinate_set_symbol_t.Coordinate_set_body_symbol sym_csb ->
      let tag_csb = Tag_v.make sym_csb soi_cse in
      Coordinate_set_body_container_v.builder_tag_list_of_tag tag_csb

  | Coordinate_set_symbol_t.Coordinate_set_fence_symbol sym_csf ->
      let tag_csf = Tag_v.make sym_csf soi_cse in
      Coordinate_set_fence_container_v.builder_tag_list_of_tag tag_csf
;;

(** {9 Builder Tag Tuple} *)

let builder_tag_tuple_of_tag tag_cse =
  let tag_bui_l = builder_tag_list_of_tag tag_cse in
  Tuple_v.tuple_of_list tag_bui_l
;;

(** {9 Building as Builder Tag tuple} *)

let building_of_tag tag_cse =
  builder_tag_list_of_tag tag_cse
;;

(** {6 Container} *)

let containee_up_tag_list tag_cse =
  let tag_bui_l = builder_tag_list_of_tag tag_cse in
  List.map containee_up_tag_off_builder_tag tag_bui_l
;;

(** {6 Fence *)

let fence_as_list_of_tag tag_cse =
  let tag_coo = coerce_up_tag tag_cse in
  Coordinate_fence_by_coordinate_tag_provider_v.provide tag_coo
;;

let fence_as_tuple_of_tag tag_cse =
  let fen_l = fence_as_list_of_tag tag_cse in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list_of_tag tag_cse =
  let fen_l = fence_as_list_of_tag tag_cse in
  Tuple_list_v.make fen_l
;;

(* generated by ./do_container_as_list_context_trunc_2sibling_1containee_v.sh coordinate_set cse coordinate_set_body csb coordinate_set_fence csf coordinate_set_fence *)
(* using template_container_as_list_context_trunc_2sibling_1containee_v.ml *)
(* Done on dimanche 18 décembre 2016, 17:16:40 (UTC+0100) *)

