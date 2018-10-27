(** {3 Skeleton_set_body_periodic_container_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : FSKE:Skeleton_set_body_periodic_container_v";
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

let skeleton_tag_of_skeleton_set_body_periodic_tag tag_sbc =
  Tag_v.map_entity 
    Skeleton_symbol_v.skeleton_symbol_of_skeleton_set_body_periodic_symbol 
    tag_sbc 
;;

(** {6 Building as Builder Tag list} *)

let building_of_tag tag_sbc =
  let soi_sbc = Tag_v.sole_index_off_tag tag_sbc in
  let sym_sbc = Tag_v.entity_off_tag tag_sbc in
  match sym_sbc with
  | Skeleton_set_body_periodic_symbol_t.Skeleton_set_body_periodic_blochwaveset_symbol sym_spb ->
      let tag_spb = Tag_v.make sym_spb soi_sbc in
      (Skeleton_set_body_periodic_blochwaveset_container_v.building_of_tag tag_spb)
	
  | Skeleton_set_body_periodic_symbol_t.Skeleton_set_body_periodic_waveletset_symbol sym_spw ->
      let tag_spw = Tag_v.make sym_spw soi_sbc in
      (Skeleton_set_body_periodic_waveletset_container_v.building_of_tag tag_spw)
;;

(** {6 Builder Tag Datastructures} *)

let builder_tag_list_of_tag tag_sbc =
  building_of_tag tag_sbc
;;

let builder_tag_tuple_of_tag tag_sbc =
  let tag_bui_l = builder_tag_list_of_tag tag_sbc in
  Tuple_v.tuple_of_list tag_bui_l
;;

(** {6 Container_of_tag : Containee Datastructure} *)

let container_of_tag tag_sbc =
  let soi_sbc = Tag_v.sole_index_off_tag tag_sbc in
  let sym_sbc = Tag_v.entity_off_tag tag_sbc in
  match sym_sbc with
  | Skeleton_set_body_periodic_symbol_t.Skeleton_set_body_periodic_blochwaveset_symbol sym_spb ->
      let tag_spb = Tag_v.make sym_spb soi_sbc in
      Skeleton_set_body_periodic_container_t.Skeleton_set_body_periodic_blochwaveset_container
	(Skeleton_set_body_periodic_blochwaveset_container_v.container_of_tag tag_spb)

  | Skeleton_set_body_periodic_symbol_t.Skeleton_set_body_periodic_waveletset_symbol sym_spw ->
      let tag_spw = Tag_v.make sym_spw soi_sbc in
      Skeleton_set_body_periodic_container_t.Skeleton_set_body_periodic_waveletset_container
	(Skeleton_set_body_periodic_waveletset_container_v.container_of_tag tag_spw)
;;

(** {6 Coercing up Container} *)

let skeleton_set_body_periodic_container_of_skeleton_set_body_periodic_blochwaveset_container con_spb =
  Skeleton_set_body_periodic_container_t.Skeleton_set_body_periodic_blochwaveset_container con_spb 
;;

let skeleton_set_body_periodic_container_of_skeleton_set_body_periodic_waveletset_container con_spw =
  Skeleton_set_body_periodic_container_t.Skeleton_set_body_periodic_waveletset_container con_spw 
;;

(** {6 Coercing down} *)

let skeleton_set_body_periodic_blochwaveset_container_off_skeleton_set_body_periodic_container = function
  | Skeleton_set_body_periodic_container_t.Skeleton_set_body_periodic_blochwaveset_container con_spb -> con_spb
  | _ -> failwith "Not_one_skeleton_set_body_periodic_blochwaveset:Skeleton_set_body_periodic_container.skeleton_set_body_periodic_blochwaveset_container_off_skeleton_set_body_periodic_container"
;;

let skeleton_set_body_periodic_waveletset_container_off_skeleton_set_body_periodic_container = function
  | Skeleton_set_body_periodic_container_t.Skeleton_set_body_periodic_waveletset_container con_spw -> con_spw
  | _ -> failwith "Not_one_skeleton_set_body_periodic_waveletset:Skeleton_set_body_periodic_container.skeleton_set_body_periodic_waveletset_container_off_skeleton_set_body_periodic_container"
;;

(** {6 Fence Tag} *)

let fence_as_list_of_tag tag_sbc =
  let tag_ske = skeleton_tag_of_skeleton_set_body_periodic_tag tag_sbc in
  Skeleton_fence_by_skeleton_tag_provider_v.provide tag_ske
;;

let fence_as_tuple_of_tag tag_sbc =
  let soi_sbc = Tag_v.sole_index_off_tag tag_sbc in
  let sym_sbc = Tag_v.entity_off_tag tag_sbc in
  match sym_sbc with
  | Skeleton_set_body_periodic_symbol_t.Skeleton_set_body_periodic_blochwaveset_symbol sym_spb ->
      let tag_spb = Tag_v.make sym_spb soi_sbc in
      (Skeleton_set_body_periodic_blochwaveset_container_v.fence_as_tuple_of_tag tag_spb)
	
  | Skeleton_set_body_periodic_symbol_t.Skeleton_set_body_periodic_waveletset_symbol sym_spw ->
      let tag_spw = Tag_v.make sym_spw soi_sbc in
      (Skeleton_set_body_periodic_waveletset_container_v.fence_as_tuple_of_tag tag_spw)
;;

let fence_as_tuple_list_of_tag tag_sbc =
  let fen_l = fence_as_list_of_tag tag_sbc in
  Tuple_list_v.make fen_l
;;

(** {6 Naming} *)

let name = function
  | Skeleton_set_body_periodic_container_t.Skeleton_set_body_periodic_blochwaveset_container con_spb ->
      (Skeleton_set_body_periodic_blochwaveset_container_v.name con_spb)
	
  | Skeleton_set_body_periodic_container_t.Skeleton_set_body_periodic_waveletset_container con_spw ->
      (Skeleton_set_body_periodic_waveletset_container_v.name con_spw)
;;

let string_off = function
  | Skeleton_set_body_periodic_container_t.Skeleton_set_body_periodic_blochwaveset_container con_spb ->
      (Skeleton_set_body_periodic_blochwaveset_container_v.string_off con_spb)
	
  | Skeleton_set_body_periodic_container_t.Skeleton_set_body_periodic_waveletset_container con_spw ->
      (Skeleton_set_body_periodic_waveletset_container_v.string_off con_spw)
;;

let longname = function
  | Skeleton_set_body_periodic_container_t.Skeleton_set_body_periodic_blochwaveset_container con_spb ->
      (Skeleton_set_body_periodic_blochwaveset_container_v.longname con_spb)
	
  | Skeleton_set_body_periodic_container_t.Skeleton_set_body_periodic_waveletset_container con_spw ->
      (Skeleton_set_body_periodic_waveletset_container_v.longname con_spw)
;;

let fullname = function
  | Skeleton_set_body_periodic_container_t.Skeleton_set_body_periodic_blochwaveset_container con_spb ->
      (Skeleton_set_body_periodic_blochwaveset_container_v.fullname con_spb)
	
  | Skeleton_set_body_periodic_container_t.Skeleton_set_body_periodic_waveletset_container con_spw ->
      (Skeleton_set_body_periodic_waveletset_container_v.fullname con_spw)
;;


(* generated by ./do_container_set_body_trunc_2sibling_v.sh skeleton_set_body_periodic sbc skeleton_set_body_periodic_blochwaveset spb skeleton_set_body_periodic_waveletset spw *)
(* using ./template_container_set_body_trunc_2sibling_v.ml *)
(* Done on jeudi 5 janvier 2017, 19:38:48 (UTC+0100) *)
