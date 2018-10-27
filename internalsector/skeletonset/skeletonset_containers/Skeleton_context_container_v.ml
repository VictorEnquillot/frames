(** {3 Skeleton_context_container_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : FSKE:Skeleton_context_container_v";
   "Needs : BSKE:Skeleton_any_category_by_sole_index_extractor_v";
   "Needs : BSKE:Skeleton_fence_by_skeleton_tag_provider_v";
   "Needed-by: ";
   "Builder_tag : Skeleton_tag";
   "Containee_tag : None";
   "Definition : a Builder (for an Entity of a Domain) is a son of its B-Tree i.e. Coerced Up";
   "Definition : a Builder of a fence Container is its own Tag Coerced Up";
   "Definition : a Building is the same Datastructure as a Container but filled with Builders"; 
   "Definition : a Containee is a Builder expressed in the lowest subtype compatible with the Datastructure of the Container";
   "Definition : a Containee is an element of the Datastructure of the Container of an Entity";
   "Definition : a Trunc type has only constructors of constructor";
   "Definition : the Containee Tag of a fence Container is its own Tag";
   "Definition : the Fence is the Tag list (Coerced Up) of the Leaf Entities of the B-Tree of any Entity";
   "Fence : Skeleton_tag list";
   "What-is-it : Up_coercion of Container subtype similar to Symbol type Up_coercion";
   "What-is-it : it is a container of a Trunc Type as a List of _up_tag";
   "Author : François Colonna 05 janvier 2017 at 15:45:29+01:00";
 ]
;;

(** {6 Coercing Up Tag} *)

let skeleton_tag_of_skeleton_context_tag tag_sco =
  Tag_v.map_entity 
    Skeleton_symbol_v.skeleton_symbol_of_skeleton_context_symbol 
    tag_sco 
;;

(** {6 Building as Builder Tag list} *)

let building_of_tag tag_sco =
  let soi_sco = Tag_v.sole_index_off_tag tag_sco in
  let sym_sco = Tag_v.entity_off_tag tag_sco in
  match sym_sco with
  | Skeleton_context_symbol_t.Skeleton_context_sector_symbol sym_scs ->
      let tag_scs = Tag_v.make sym_scs soi_sco in
      (Skeleton_context_sector_container_v.building_of_tag tag_scs)
	
  | Skeleton_context_symbol_t.Skeleton_context_domain_symbol sym_scd ->
      let tag_scd = Tag_v.make sym_scd soi_sco in
      (Skeleton_context_domain_container_v.building_of_tag tag_scd)
	
  | Skeleton_context_symbol_t.Skeleton_context_database_symbol sym_sba ->
      let tag_sba = Tag_v.make sym_sba soi_sco in
      (Skeleton_context_database_container_v.building_of_tag tag_sba)
	
  | Skeleton_context_symbol_t.Skeleton_context_databox_symbol sym_sbo ->
      let tag_sbo = Tag_v.make sym_sbo soi_sco in
      (Skeleton_context_databox_container_v.building_of_tag tag_sbo)
;;

(** {6 Builder Tag Datastructures} *)

let builder_tag_list_of_tag tag_sco =
  building_of_tag tag_sco
;;

let builder_tag_tuple_of_tag tag_sco =
  let tag_bui_l = builder_tag_list_of_tag tag_sco in
  Tuple_v.tuple_of_list tag_bui_l
;;

(** {6 Container_of_tag : Containee Datastructure} *)

let container_of_tag tag_sco =
  let soi_sco = Tag_v.sole_index_off_tag tag_sco in
  let sym_sco = Tag_v.entity_off_tag tag_sco in
  match sym_sco with
  | Skeleton_context_symbol_t.Skeleton_context_sector_symbol sym_scs ->
      let tag_scs = Tag_v.make sym_scs soi_sco in
      Skeleton_context_container_t.Skeleton_context_sector_container
	(Skeleton_context_sector_container_v.container_of_tag tag_scs)

  | Skeleton_context_symbol_t.Skeleton_context_domain_symbol sym_scd ->
      let tag_scd = Tag_v.make sym_scd soi_sco in
      Skeleton_context_container_t.Skeleton_context_domain_container
	(Skeleton_context_domain_container_v.container_of_tag tag_scd)

  | Skeleton_context_symbol_t.Skeleton_context_database_symbol sym_sba ->
      let tag_sba = Tag_v.make sym_sba soi_sco in
      Skeleton_context_container_t.Skeleton_context_database_container
	(Skeleton_context_database_container_v.container_of_tag tag_sba)

  | Skeleton_context_symbol_t.Skeleton_context_databox_symbol sym_sbo ->
      let tag_sbo = Tag_v.make sym_sbo soi_sco in
      Skeleton_context_container_t.Skeleton_context_databox_container
	(Skeleton_context_databox_container_v.container_of_tag tag_sbo)
;;

(** {6 Coercing up Container} *)

let skeleton_context_container_of_skeleton_context_sector_container con_scs =
  Skeleton_context_container_t.Skeleton_context_sector_container con_scs 
;;

let skeleton_context_container_of_skeleton_context_domain_container con_scd =
  Skeleton_context_container_t.Skeleton_context_domain_container con_scd 
;;

let skeleton_context_container_of_skeleton_context_database_container con_sba =
  Skeleton_context_container_t.Skeleton_context_database_container con_sba 
;;

let skeleton_context_container_of_skeleton_context_databox_container con_sbo =
  Skeleton_context_container_t.Skeleton_context_databox_container con_sbo 
;;

(** {6 Coercing down} *)

let skeleton_context_sector_container_off_skeleton_context_container = function
  | Skeleton_context_container_t.Skeleton_context_sector_container con_scs -> con_scs
  | _ -> failwith "Not_one_skeleton_context_sector:Skeleton_context_container.skeleton_context_sector_container_off_skeleton_context_container"
;;

let skeleton_context_domain_container_off_skeleton_context_container = function
  | Skeleton_context_container_t.Skeleton_context_domain_container con_scd -> con_scd
  | _ -> failwith "Not_one_skeleton_context_domain:Skeleton_context_container.skeleton_context_domain_container_off_skeleton_context_container"
;;

let skeleton_context_database_container_off_skeleton_context_container = function
  | Skeleton_context_container_t.Skeleton_context_database_container con_sba -> con_sba
  | _ -> failwith "Not_one_skeleton_context_database:Skeleton_context_container.skeleton_context_database_container_off_skeleton_context_container"
;;

let skeleton_context_databox_container_off_skeleton_context_container = function
  | Skeleton_context_container_t.Skeleton_context_databox_container con_sbo -> con_sbo
  | _ -> failwith "Not_one_skeleton_context_databox:Skeleton_context_container.skeleton_context_databox_container_off_skeleton_context_container"
;;

(** {6 Fence Tag} *)

let fence_as_list_of_tag tag_sco =
  let tag_ske = skeleton_tag_of_skeleton_context_tag tag_sco in
  Skeleton_fence_by_skeleton_tag_provider_v.provide tag_ske
;;

let fence_as_tuple_of_tag tag_sco =
  let soi_sco = Tag_v.sole_index_off_tag tag_sco in
  let sym_sco = Tag_v.entity_off_tag tag_sco in
  match sym_sco with
  | Skeleton_context_symbol_t.Skeleton_context_sector_symbol sym_scs ->
      let tag_scs = Tag_v.make sym_scs soi_sco in
      (Skeleton_context_sector_container_v.fence_as_tuple_of_tag tag_scs)
	
  | Skeleton_context_symbol_t.Skeleton_context_domain_symbol sym_scd ->
      let tag_scd = Tag_v.make sym_scd soi_sco in
      (Skeleton_context_domain_container_v.fence_as_tuple_of_tag tag_scd)
	
  | Skeleton_context_symbol_t.Skeleton_context_database_symbol sym_sba ->
      let tag_sba = Tag_v.make sym_sba soi_sco in
      (Skeleton_context_database_container_v.fence_as_tuple_of_tag tag_sba)
	
  | Skeleton_context_symbol_t.Skeleton_context_databox_symbol sym_sbo ->
      let tag_sbo = Tag_v.make sym_sbo soi_sco in
      (Skeleton_context_databox_container_v.fence_as_tuple_of_tag tag_sbo)
;;

let fence_as_tuple_list_of_tag tag_sco =
  let fen_l = fence_as_list_of_tag tag_sco in
  Tuple_list_v.make fen_l
;;

(** {6 Naming} *)

let name = function
  | Skeleton_context_container_t.Skeleton_context_sector_container con_scs ->
      (Skeleton_context_sector_container_v.name con_scs)
	
  | Skeleton_context_container_t.Skeleton_context_domain_container con_scd ->
      (Skeleton_context_domain_container_v.name con_scd)

  | Skeleton_context_container_t.Skeleton_context_database_container con_sba ->
      (Skeleton_context_database_container_v.name con_sba)
	
  | Skeleton_context_container_t.Skeleton_context_databox_container con_sbo ->
      (Skeleton_context_databox_container_v.name con_sbo)
;;

let string_off = function
  | Skeleton_context_container_t.Skeleton_context_sector_container con_scs ->
      (Skeleton_context_sector_container_v.string_off con_scs)
	
  | Skeleton_context_container_t.Skeleton_context_domain_container con_scd ->
      (Skeleton_context_domain_container_v.string_off con_scd)

  | Skeleton_context_container_t.Skeleton_context_database_container con_sba ->
      (Skeleton_context_database_container_v.string_off con_sba)
	
  | Skeleton_context_container_t.Skeleton_context_databox_container con_sbo ->
      (Skeleton_context_databox_container_v.string_off con_sbo)
;;

let longname = function
  | Skeleton_context_container_t.Skeleton_context_sector_container con_scs ->
      (Skeleton_context_sector_container_v.longname con_scs)
	
  | Skeleton_context_container_t.Skeleton_context_domain_container con_scd ->
      (Skeleton_context_domain_container_v.longname con_scd)

  | Skeleton_context_container_t.Skeleton_context_database_container con_sba ->
      (Skeleton_context_database_container_v.longname con_sba)
	
  | Skeleton_context_container_t.Skeleton_context_databox_container con_sbo ->
      (Skeleton_context_databox_container_v.longname con_sbo)
;;

let fullname = function
  | Skeleton_context_container_t.Skeleton_context_sector_container con_scs ->
      (Skeleton_context_sector_container_v.fullname con_scs)
	
  | Skeleton_context_container_t.Skeleton_context_domain_container con_scd ->
      (Skeleton_context_domain_container_v.fullname con_scd)

  | Skeleton_context_container_t.Skeleton_context_database_container con_sba ->
      (Skeleton_context_database_container_v.fullname con_sba)
	
  | Skeleton_context_container_t.Skeleton_context_databox_container con_sbo ->
      (Skeleton_context_databox_container_v.fullname con_sbo)
;;


(* generated by ./do_container_context_trunc_4sibling_0containee_v.sh skeleton_context sco skeleton_context_sector scs skeleton_context_domain scd skeleton_context_database sba skeleton_context_databox sbo *)
(* using ./template_container_context_trunc_4sibling_0containee_v.ml *)
(* Done on jeudi 5 janvier 2017, 19:38:49 (UTC+0100) *)
