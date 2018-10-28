(** {3 Coordinate_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FCOO:Coordinate_container_v";
   "Needs : FCOO:Coordinate_set_fence_tag_v";
   "Needs : FCOO:Coordinate_context_container_v";
   "Needs : FCOO:Coordinate_set_container_v";
   "Needs : BCOO:Coordinate_fence_by_coordinate_tag_provider_v";
   "Needed-by: ";
   "What-is-it : Up_coercion of Container type as Symbol type up_coercion";
   "What-is-it : it is a Trunc container of Context sub-Types and thus a List of its Coordinate_set_fence Tag";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_container} *)

let name = function
  | Coordinate_container_t.Coordinate_context_container con_cco ->
      (Coordinate_context_container_v.name con_cco)
        
  | Coordinate_container_t.Coordinate_set_container con_cse ->
      (Coordinate_set_container_v.name con_cse)
;;

let string_off = function
  | Coordinate_container_t.Coordinate_context_container con_cco ->
      (Coordinate_context_container_v.string_off con_cco)
        
  | Coordinate_container_t.Coordinate_set_container con_cse ->
      (Coordinate_set_container_v.string_off con_cse)
;;

let longname = function
  | Coordinate_container_t.Coordinate_context_container con_cco ->
      (Coordinate_context_container_v.longname con_cco)
        
  | Coordinate_container_t.Coordinate_set_container con_cse ->
      (Coordinate_set_container_v.longname con_cse)
;;

let fullname = function
  | Coordinate_container_t.Coordinate_context_container con_cco ->
      (Coordinate_context_container_v.fullname con_cco)
        
  | Coordinate_container_t.Coordinate_set_container con_cse ->
      (Coordinate_set_container_v.fullname con_cse)
;;

(** {6 Coercing Tag} *)

(** {9 Coercing Up Tag} *)

let coerce_up_tag tag_car =
    tag_car
;;

(** {9 Coercing Down Builder to Containee} *)

let containee_up_tag_off_builder_tag tag_coo =
    tag_coo
;;

(** {9 Coercing Up Containee_up to Builder} *)

let builder_tag_of_containee_up_tag tag_cnu =
    tag_cnu
;;

(** {6 Builders} *)

(** {9 Builder Tag list} *)

let builder_tag_list_of_tag tag_car =
  let (sym_car, soi_car) = tag_car in
  match sym_car with
  | Coordinate_symbol_t.Coordinate_context_symbol sym_cco ->
      let tag_cco = Tag_v.make sym_cco soi_car in
      Coordinate_context_container_v.builder_tag_list_of_tag tag_cco

  | Coordinate_symbol_t.Coordinate_set_symbol sym_cse ->
      let tag_cse = Tag_v.make sym_cse soi_car in
      Coordinate_set_container_v.builder_tag_list_of_tag tag_cse
;;

(** {9 Builder Tag Tuple} *)

let builder_tag_tuple_of_tag tag_car =
  let tag_bui_l = builder_tag_list_of_tag tag_car in
  Tuple_v.tuple_of_list tag_bui_l
;;

(** {9 Building as Builder Tag tuple} *)

let building_of_tag tag_car =
  builder_tag_list_of_tag tag_car
;;

(** {6 Container} *)

let containee_up_tag_list tag_car =
  let tag_bui_l = builder_tag_list_of_tag tag_car in
  List.map containee_up_tag_off_builder_tag tag_bui_l
;;

(** {6 Fence *)

let fence_as_list_of_tag tag_car =
  let tag_coo = coerce_up_tag tag_car in
  Coordinate_fence_by_coordinate_tag_provider_v.provide tag_coo
;;

let fence_as_tuple_of_tag tag_car =
  let fen_l = fence_as_list_of_tag tag_car in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list_of_tag tag_car =
  let fen_l = fence_as_list_of_tag tag_car in
  Tuple_list_v.make fen_l
;;

(* generated by ./do_container_as_list_top_trunc_2sibling_1containee_v.sh coordinate car coordinate_context cco coordinate_set cse coordinate_set_fence *)
(* using template_container_as_list_top_trunc_2sibling_1containee_v.ml *)
(* Done on dimanche 18 décembre 2016, 17:16:41 (UTC+0100) *)
