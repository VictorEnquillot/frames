(** {3 Skeleton_set_body_container_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : FSKE:Skeleton_set_body_container_v";
   "Needs : FSKE:_tag_v";
   "Needs : BSKE:Skeleton_any_category_by_sole_index_extractor_v";
   "Needs : BSKE:Skeleton_fence_by_skeleton_tag_provider_v";
   "Needed-by: ";
   "Builder_tag : Skeleton_tag";
   "Containee_tag : _tag";
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
   "What-is-it : it is a container of a Trunc Type as a List of _tag";
   "Author : François Colonna 05 janvier 2017 at 15:45:29+01:00";
 ]
;;

(** {6 Coercing Up Tag} *)

let skeleton_tag_of_skeleton_set_body_tag tag_ssb =
  Tag_v.map_entity 
    Skeleton_symbol_v.skeleton_symbol_of_skeleton_set_body_symbol 
    tag_ssb 
;;

(** {6 Building as Builder Tag list} *)

let building_of_tag tag_ssb =
  let soi_ssb = Tag_v.sole_index_off_tag tag_ssb in
  let sym_ssb = Tag_v.entity_off_tag tag_ssb in
  match sym_ssb with
  | Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol sym_sbc ->
      let tag_sbc = Tag_v.make sym_sbc soi_ssb in
      (Skeleton_set_body_centered_container_v.building_of_tag tag_sbc)
	
  | Skeleton_set_body_symbol_t.Skeleton_set_body_periodic_symbol sym_sbp ->
      let tag_sbp = Tag_v.make sym_sbp soi_ssb in
      (Skeleton_set_body_periodic_container_v.building_of_tag tag_sbp)
;;

(** {6 Builder Tag Datastructures} *)

let builder_tag_list_of_tag tag_ssb =
  building_of_tag tag_ssb
;;

let builder_tag_tuple_of_tag tag_ssb =
  let tag_bui_l = builder_tag_list_of_tag tag_ssb in
  Tuple_v.tuple_of_list tag_bui_l
;;

(** {6 Container_of_tag : Containee Datastructure} *)

let container_of_tag tag_ssb =
  let soi_ssb = Tag_v.sole_index_off_tag tag_ssb in
  let sym_ssb = Tag_v.entity_off_tag tag_ssb in
  match sym_ssb with
  | Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol sym_sbc ->
      let tag_sbc = Tag_v.make sym_sbc soi_ssb in
      Skeleton_set_body_container_t.Skeleton_set_body_centered_container
	(Skeleton_set_body_centered_container_v.container_of_tag tag_sbc)

  | Skeleton_set_body_symbol_t.Skeleton_set_body_periodic_symbol sym_sbp ->
      let tag_sbp = Tag_v.make sym_sbp soi_ssb in
      Skeleton_set_body_container_t.Skeleton_set_body_periodic_container
	(Skeleton_set_body_periodic_container_v.container_of_tag tag_sbp)
;;

(** {6 Coercing up Container} *)

let skeleton_set_body_container_of_skeleton_set_body_centered_container con_sbc =
  Skeleton_set_body_container_t.Skeleton_set_body_centered_container con_sbc 
;;

let skeleton_set_body_container_of_skeleton_set_body_periodic_container con_sbp =
  Skeleton_set_body_container_t.Skeleton_set_body_periodic_container con_sbp 
;;

(** {6 Coercing down} *)

let skeleton_set_body_centered_container_off_skeleton_set_body_container = function
  | Skeleton_set_body_container_t.Skeleton_set_body_centered_container con_sbc -> con_sbc
  | _ -> failwith "Not_one_skeleton_set_body_centered:Skeleton_set_body_container.skeleton_set_body_centered_container_off_skeleton_set_body_container"
;;

let skeleton_set_body_periodic_container_off_skeleton_set_body_container = function
  | Skeleton_set_body_container_t.Skeleton_set_body_periodic_container con_sbp -> con_sbp
  | _ -> failwith "Not_one_skeleton_set_body_periodic:Skeleton_set_body_container.skeleton_set_body_periodic_container_off_skeleton_set_body_container"
;;

(** {6 Fence Tag} *)

let fence_as_list_of_tag tag_ssb =
  let tag_ske = skeleton_tag_of_skeleton_set_body_tag tag_ssb in
  Skeleton_fence_by_skeleton_tag_provider_v.provide tag_ske
;;

let fence_as_tuple_of_tag tag_ssb =
  let soi_ssb = Tag_v.sole_index_off_tag tag_ssb in
  let sym_ssb = Tag_v.entity_off_tag tag_ssb in
  match sym_ssb with
  | Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol sym_sbc ->
      let tag_sbc = Tag_v.make sym_sbc soi_ssb in
      (Skeleton_set_body_centered_container_v.fence_as_tuple_of_tag tag_sbc)
	
  | Skeleton_set_body_symbol_t.Skeleton_set_body_periodic_symbol sym_sbp ->
      let tag_sbp = Tag_v.make sym_sbp soi_ssb in
      (Skeleton_set_body_periodic_container_v.fence_as_tuple_of_tag tag_sbp)
;;

let fence_as_tuple_list_of_tag tag_ssb =
  let fen_l = fence_as_list_of_tag tag_ssb in
  Tuple_list_v.make fen_l
;;

(** {6 Naming} *)

let name = function
  | Skeleton_set_body_container_t.Skeleton_set_body_centered_container con_sbc ->
      (Skeleton_set_body_centered_container_v.name con_sbc)
	
  | Skeleton_set_body_container_t.Skeleton_set_body_periodic_container con_sbp ->
      (Skeleton_set_body_periodic_container_v.name con_sbp)
;;

let string_off = function
  | Skeleton_set_body_container_t.Skeleton_set_body_centered_container con_sbc ->
      (Skeleton_set_body_centered_container_v.string_off con_sbc)
	
  | Skeleton_set_body_container_t.Skeleton_set_body_periodic_container con_sbp ->
      (Skeleton_set_body_periodic_container_v.string_off con_sbp)
;;

let longname = function
  | Skeleton_set_body_container_t.Skeleton_set_body_centered_container con_sbc ->
      (Skeleton_set_body_centered_container_v.longname con_sbc)
	
  | Skeleton_set_body_container_t.Skeleton_set_body_periodic_container con_sbp ->
      (Skeleton_set_body_periodic_container_v.longname con_sbp)
;;

let fullname = function
  | Skeleton_set_body_container_t.Skeleton_set_body_centered_container con_sbc ->
      (Skeleton_set_body_centered_container_v.fullname con_sbc)
	
  | Skeleton_set_body_container_t.Skeleton_set_body_periodic_container con_sbp ->
      (Skeleton_set_body_periodic_container_v.fullname con_sbp)
;;


(* generated by ./do_container_set_body_trunc_2sibling_v.sh skeleton_set_body ssb skeleton_set_body_centered sbc skeleton_set_body_periodic sbp *)
(* using ./template_container_set_body_trunc_2sibling_v.ml *)
(* Done on jeudi 5 janvier 2017, 19:38:48 (UTC+0100) *)
