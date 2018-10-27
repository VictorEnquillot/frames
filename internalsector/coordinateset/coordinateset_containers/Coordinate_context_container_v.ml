(** {3 Coordinate_context_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FCOO:Coordinate_context_container_v";
   "Needs : FCOO:Coordinate_set_body_tuple_tag_v";
   "Needs : FCOO:Coordinate_context_sector_container_v";
   "Needs : FCOO:Coordinate_context_domain_container_v";
   "Needs : FCOO:Coordinate_context_database_container_v";
   "Needs : BCOO:Coordinate_fence_by_coordinate_tag_provider_v";
   "Needed-by: ";
   "What-is-it : Up_coercion of Container type as Symbol type up_coercion";
   "What-is-it : it is a Trunc container of Context sub-Types and thus a List of its Coordinate_set_body_tuple Tag";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_container} *)

let name = function
  | Coordinate_context_container_t.Coordinate_context_sector_container con_ccs ->
      (Coordinate_context_sector_container_v.name con_ccs)
        
  | Coordinate_context_container_t.Coordinate_context_domain_container con_ccd ->
      (Coordinate_context_domain_container_v.name con_ccd)

  | Coordinate_context_container_t.Coordinate_context_database_container con_dba ->
      (Coordinate_context_database_container_v.name con_dba)

  | Coordinate_context_container_t.Coordinate_context_databox_container con_dbo ->
      (Coordinate_context_databox_container_v.name con_dbo)
;;

let string_off = function
  | Coordinate_context_container_t.Coordinate_context_sector_container con_ccs ->
      (Coordinate_context_sector_container_v.string_off con_ccs)
        
  | Coordinate_context_container_t.Coordinate_context_domain_container con_ccd ->
      (Coordinate_context_domain_container_v.string_off con_ccd)

  | Coordinate_context_container_t.Coordinate_context_database_container con_dba ->
      (Coordinate_context_database_container_v.string_off con_dba)

  | Coordinate_context_container_t.Coordinate_context_databox_container con_dbo ->
      (Coordinate_context_databox_container_v.string_off con_dbo)
;;

let longname = function
  | Coordinate_context_container_t.Coordinate_context_sector_container con_ccs ->
      (Coordinate_context_sector_container_v.longname con_ccs)
        
  | Coordinate_context_container_t.Coordinate_context_domain_container con_ccd ->
      (Coordinate_context_domain_container_v.longname con_ccd)

  | Coordinate_context_container_t.Coordinate_context_database_container con_dba ->
      (Coordinate_context_database_container_v.longname con_dba)

  | Coordinate_context_container_t.Coordinate_context_databox_container con_dbo ->
      (Coordinate_context_databox_container_v.longname con_dbo)
;;

let fullname = function
  | Coordinate_context_container_t.Coordinate_context_sector_container con_ccs ->
      (Coordinate_context_sector_container_v.fullname con_ccs)
        
  | Coordinate_context_container_t.Coordinate_context_domain_container con_ccd ->
      (Coordinate_context_domain_container_v.fullname con_ccd)

  | Coordinate_context_container_t.Coordinate_context_database_container con_dba ->
      (Coordinate_context_database_container_v.fullname con_dba)

  | Coordinate_context_container_t.Coordinate_context_databox_container con_dbo ->
      (Coordinate_context_databox_container_v.fullname con_dbo)
;;

(** {6 Coercing Tag} *)

(** {9 Coercing Up Tag} *)

let coerce_up_tag tag_cco =
  Tag_v.map_entity 
    Coordinate_symbol_v.coordinate_symbol_of_coordinate_context_symbol 
    tag_cco
;;

(** {9 Coercing Down Builder to Containee} *)

let containee_up_tag_off_builder_tag tag_coo =
  Tag_v.map_entity
    Coordinate_symbol_v.coordinate_set_body_tuple_symbol_off_coordinate_symbol
    tag_coo
;;

(** {9 Coercing Up Containee_up to Builder} *)

let builder_tag_of_containee_up_tag tag_cnu =
  Tag_v.map_entity 
    Coordinate_symbol_v.coordinate_symbol_of_coordinate_set_body_tuple_symbol
    tag_cnu
;;

(** {6 Builders} *)

(** {9 Builder Tag list} *)

let builder_tag_list_of_tag tag_cco =
  let (sym_cco, soi_cco) = tag_cco in
  match sym_cco with
  | Coordinate_context_symbol_t.Coordinate_context_sector_symbol sym_ccs ->
      let tag_ccs = Tag_v.make sym_ccs soi_cco in
      Coordinate_context_sector_container_v.builder_tag_list_of_tag tag_ccs

  | Coordinate_context_symbol_t.Coordinate_context_domain_symbol sym_ccd ->
      let tag_ccd = Tag_v.make sym_ccd soi_cco in
      Coordinate_context_domain_container_v.builder_tag_list_of_tag tag_ccd

  | Coordinate_context_symbol_t.Coordinate_context_database_symbol sym_dba ->
      let tag_dba = Tag_v.make sym_dba soi_cco in
      Coordinate_context_database_container_v.builder_tag_list_of_tag tag_dba

  | Coordinate_context_symbol_t.Coordinate_context_databox_symbol sym_dbo ->
      let tag_dbo = Tag_v.make sym_dbo soi_cco in
      Coordinate_context_databox_container_v.builder_tag_list_of_tag tag_dbo
;;

(** {9 Builder Tag Tuple} *)

let builder_tag_tuple_of_tag tag_cco =
  let tag_bui_l = builder_tag_list_of_tag tag_cco in
  Tuple_v.tuple_of_list tag_bui_l
;;

(** {9 Building as Builder Tag tuple} *)

let building_of_tag tag_cco =
  builder_tag_list_of_tag tag_cco
;;

(** {6 Container} *)

let containee_up_tag_list tag_cco =
  let tag_bui_l = builder_tag_list_of_tag tag_cco in
  List.map containee_up_tag_off_builder_tag tag_bui_l
;;

(** {6 Fence *)

let fence_as_list_of_tag tag_cco =
  let tag_coo = coerce_up_tag tag_cco in
  Coordinate_fence_by_coordinate_tag_provider_v.provide tag_coo
;;

let fence_as_tuple_of_tag tag_cco =
  let fen_l = fence_as_list_of_tag tag_cco in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list_of_tag tag_cco =
  let fen_l = fence_as_list_of_tag tag_cco in
  Tuple_list_v.make fen_l
;;

(* generated by ./do_container_as_list_context_trunc_4sibling_1containee_v.sh coordinate_context cco coordinate_context_sector ccs coordinate_context_domain ccd coordinate_context_database dba coordinate_context_databox dbo coordinate_set_body_tuple *)
(* using template_container_as_list_context_trunc_4sibling_1containee_v.ml *)
(* Done on dimanche 18 décembre 2016, 17:16:40 (UTC+0100) *)

