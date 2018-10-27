(** {3 Parameter_context_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FPAR:Parameter_context_container_v";
   "Needs : FPAR:Parameter_set_body_tuple_tag_v";
   "Needs : FPAR:Parameter_context_sector_container_v";
   "Needs : FPAR:Parameter_context_domain_container_v";
   "Needs : FPAR:Parameter_context_database_container_v";
   "Needs : BPAR:Parameter_fence_by_parameter_tag_provider_v";
   "Needed-by: ";
   "What-is-it : Up_coercion of Container type as Symbol type up_coercion";
   "What-is-it : it is a Trunc container of Context sub-Types and thus a List of its Parameter_set_body_tuple Tag";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_container} *)

let name = function
  | Parameter_context_container_t.Parameter_context_sector_container con_pcs ->
      (Parameter_context_sector_container_v.name con_pcs)
        
  | Parameter_context_container_t.Parameter_context_domain_container con_pcd ->
      (Parameter_context_domain_container_v.name con_pcd)

  | Parameter_context_container_t.Parameter_context_database_container con_pba ->
      (Parameter_context_database_container_v.name con_pba)

  | Parameter_context_container_t.Parameter_context_databox_container con_pbo ->
      (Parameter_context_databox_container_v.name con_pbo)
;;

let string_off = function
  | Parameter_context_container_t.Parameter_context_sector_container con_pcs ->
      (Parameter_context_sector_container_v.string_off con_pcs)
        
  | Parameter_context_container_t.Parameter_context_domain_container con_pcd ->
      (Parameter_context_domain_container_v.string_off con_pcd)

  | Parameter_context_container_t.Parameter_context_database_container con_pba ->
      (Parameter_context_database_container_v.string_off con_pba)

  | Parameter_context_container_t.Parameter_context_databox_container con_pbo ->
      (Parameter_context_databox_container_v.string_off con_pbo)
;;

let longname = function
  | Parameter_context_container_t.Parameter_context_sector_container con_pcs ->
      (Parameter_context_sector_container_v.longname con_pcs)
        
  | Parameter_context_container_t.Parameter_context_domain_container con_pcd ->
      (Parameter_context_domain_container_v.longname con_pcd)

  | Parameter_context_container_t.Parameter_context_database_container con_pba ->
      (Parameter_context_database_container_v.longname con_pba)

  | Parameter_context_container_t.Parameter_context_databox_container con_pbo ->
      (Parameter_context_databox_container_v.longname con_pbo)
;;

let fullname = function
  | Parameter_context_container_t.Parameter_context_sector_container con_pcs ->
      (Parameter_context_sector_container_v.fullname con_pcs)
        
  | Parameter_context_container_t.Parameter_context_domain_container con_pcd ->
      (Parameter_context_domain_container_v.fullname con_pcd)

  | Parameter_context_container_t.Parameter_context_database_container con_pba ->
      (Parameter_context_database_container_v.fullname con_pba)

  | Parameter_context_container_t.Parameter_context_databox_container con_pbo ->
      (Parameter_context_databox_container_v.fullname con_pbo)
;;

(** {6 Coercing Tag} *)

(** {9 Coercing Up Tag} *)

let coerce_up_tag tag_pco =
  Tag_v.map_entity 
    Parameter_symbol_v.parameter_symbol_of_parameter_context_symbol 
    tag_pco
;;

(** {9 Coercing Down Builder to Containee} *)

let containee_up_tag_off_builder_tag tag_par =
  Tag_v.map_entity
    Parameter_symbol_v.parameter_set_body_tuple_symbol_off_parameter_symbol
    tag_par
;;

(** {9 Coercing Up Containee_up to Builder} *)

let builder_tag_of_containee_up_tag tag_cnu =
  Tag_v.map_entity 
    Parameter_symbol_v.parameter_symbol_of_parameter_set_body_tuple_symbol
    tag_cnu
;;

(** {6 Builders} *)

(** {9 Builder Tag list} *)

let builder_tag_list_of_tag tag_pco =
  let (sym_pco, soi_pco) = tag_pco in
  match sym_pco with
  | Parameter_context_symbol_t.Parameter_context_sector_symbol sym_pcs ->
      let tag_pcs = Tag_v.make sym_pcs soi_pco in
      Parameter_context_sector_container_v.builder_tag_list_of_tag tag_pcs

  | Parameter_context_symbol_t.Parameter_context_domain_symbol sym_pcd ->
      let tag_pcd = Tag_v.make sym_pcd soi_pco in
      Parameter_context_domain_container_v.builder_tag_list_of_tag tag_pcd

  | Parameter_context_symbol_t.Parameter_context_database_symbol sym_pba ->
      let tag_pba = Tag_v.make sym_pba soi_pco in
      Parameter_context_database_container_v.builder_tag_list_of_tag tag_pba

  | Parameter_context_symbol_t.Parameter_context_databox_symbol sym_pbo ->
      let tag_pbo = Tag_v.make sym_pbo soi_pco in
      Parameter_context_databox_container_v.builder_tag_list_of_tag tag_pbo
;;

(** {9 Builder Tag Tuple} *)

let builder_tag_tuple_of_tag tag_pco =
  let tag_bui_l = builder_tag_list_of_tag tag_pco in
  Tuple_v.tuple_of_list tag_bui_l
;;

(** {9 Building as Builder Tag tuple} *)

let building_of_tag tag_pco =
  builder_tag_list_of_tag tag_pco
;;

(** {6 Container} *)

let containee_up_tag_list tag_pco =
  let tag_bui_l = builder_tag_list_of_tag tag_pco in
  List.map containee_up_tag_off_builder_tag tag_bui_l
;;

(** {6 Fence *)

let fence_as_list_of_tag tag_pco =
  let tag_par = coerce_up_tag tag_pco in
  Parameter_fence_by_parameter_tag_provider_v.provide tag_par
;;

let fence_as_tuple_of_tag tag_pco =
  let fen_l = fence_as_list_of_tag tag_pco in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list_of_tag tag_pco =
  let fen_l = fence_as_list_of_tag tag_pco in
  Tuple_list_v.make fen_l
;;

(* generated by ./do_container_as_list_context_trunc_4sibling_1containee_v.sh parameter_context pco parameter_context_sector pcs parameter_context_domain pcd parameter_context_database pba parameter_context_databox pbo parameter_set_body_tuple *)
(* using template_container_as_list_context_trunc_4sibling_1containee_v.ml *)
(* Done on mercredi 14 décembre 2016, 16:07:06 (UTC+0100) *)

