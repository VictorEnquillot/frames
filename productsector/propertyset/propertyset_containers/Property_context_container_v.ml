(** {3 Property_context_container_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : FPRO:Property_context_container_v";
   "Needs : BPRO:Property_any_category_by_sole_index_extractor_v";
   "Needs : BPRO:Property_fence_by_property_tag_provider_v";
   "Needed-by: ";
   "Builder_tag : Property_tag";
   "Containee_tag : None";
   "Definition : a Builder (for an Entity of a Domain) is a son of its B-Tree i.e. Coerced Up";
   "Definition : a Builder of a fence Container is its own Tag Coerced Up";
   "Definition : a Building is the same Datastructure as a Container but filled with Builders"; 
   "Definition : a Containee is a Builder expressed in the lowest subtype compatible with the Datastructure of the Container";
   "Definition : a Containee is an element of the Datastructure of the Container of an Entity";
   "Definition : a Trunc type has only constructors of constructor";
   "Definition : the Containee Tag of a fence Container is its own Tag";
   "Definition : the Fence is the Tag list (Coerced Up) of the Leaf Entities of the B-Tree of any Entity";
   "Fence : Property_tag list";
   "What-is-it : Up_coercion of Container subtype similar to Symbol type Up_coercion";
   "Author : François Colonna 21 mai 2017 at 12:04:55+01:00";
 ]
;;

(** {6 Coercing Up Tag} *)

let property_tag_of_property_context_tag tag_pco =
  Tag_v.map_entity 
    Property_symbol_v.property_symbol_of_property_context_symbol 
    tag_pco 
;;

(** {6 Building as Builder Tag list} *)

let building_of_tag tag_pco =
  let soi_pco = Tag_v.sole_index_off_tag tag_pco in
  let sym_pco = Tag_v.entity_off_tag tag_pco in
  match sym_pco with
  | Property_context_symbol_t.Property_context_sector_symbol sym_pcs ->
      let tag_pcs = Tag_v.make sym_pcs soi_pco in
      (Property_context_sector_container_v.building_of_tag tag_pcs)
	
  | Property_context_symbol_t.Property_context_domain_symbol sym_pcd ->
      let tag_pcd = Tag_v.make sym_pcd soi_pco in
      (Property_context_domain_container_v.building_of_tag tag_pcd)
	
  | Property_context_symbol_t.Property_context_inputbase_symbol sym_pba ->
      let tag_pba = Tag_v.make sym_pba soi_pco in
      (Property_context_inputbase_container_v.building_of_tag tag_pba)
	
  | Property_context_symbol_t.Property_context_inputbox_symbol sym_pbo ->
      let tag_pbo = Tag_v.make sym_pbo soi_pco in
      (Property_context_inputbox_container_v.building_of_tag tag_pbo)
;;

(** {9 Builder Tag list} *)

let builder_tag_list_of_tag tag_pco =
  building_of_tag tag_pco
;;

(** {6 Builder Tag Datastructures} *)

let builder_tag_tuple_of_tag tag_pco =
  let tag_bui_l = builder_tag_list_of_tag tag_pco in
  Tuple_v.tuple_of_list tag_bui_l
;;

(** {6 Container_of_tag : Containee Datastructure} *)

let container_of_tag tag_pco =
  let soi_pco = Tag_v.sole_index_off_tag tag_pco in
  let sym_pco = Tag_v.entity_off_tag tag_pco in
  match sym_pco with
  | Property_context_symbol_t.Property_context_sector_symbol sym_pcs ->
      let tag_pcs = Tag_v.make sym_pcs soi_pco in
      Property_context_container_t.Property_context_sector_container
	(Property_context_sector_container_v.container_of_tag tag_pcs)

  | Property_context_symbol_t.Property_context_domain_symbol sym_pcd ->
      let tag_pcd = Tag_v.make sym_pcd soi_pco in
      Property_context_container_t.Property_context_domain_container
	(Property_context_domain_container_v.container_of_tag tag_pcd)

  | Property_context_symbol_t.Property_context_inputbase_symbol sym_pba ->
      let tag_pba = Tag_v.make sym_pba soi_pco in
      Property_context_container_t.Property_context_inputbase_container
	(Property_context_inputbase_container_v.container_of_tag tag_pba)

  | Property_context_symbol_t.Property_context_inputbox_symbol sym_pbo ->
      let tag_pbo = Tag_v.make sym_pbo soi_pco in
      Property_context_container_t.Property_context_inputbox_container
	(Property_context_inputbox_container_v.container_of_tag tag_pbo)
;;

(** {6 Coercing up Container} *)

let property_context_container_of_property_context_sector_container con_pcs =
  Property_context_container_t.Property_context_sector_container con_pcs 
;;

let property_context_container_of_property_context_domain_container con_pcd =
  Property_context_container_t.Property_context_domain_container con_pcd 
;;

let property_context_container_of_property_context_inputbase_container con_pba =
  Property_context_container_t.Property_context_inputbase_container con_pba 
;;

let property_context_container_of_property_context_inputbox_container con_pbo =
  Property_context_container_t.Property_context_inputbox_container con_pbo 
;;

(** {6 Coercing down} *)

let property_context_sector_container_off_property_context_container = function
  | Property_context_container_t.Property_context_sector_container con_pcs -> con_pcs
  | _ -> failwith "Not_one_property_context_sector:Property_context_container.property_context_sector_container_off_property_context_container"
;;

let property_context_domain_container_off_property_context_container = function
  | Property_context_container_t.Property_context_domain_container con_pcd -> con_pcd
  | _ -> failwith "Not_one_property_context_domain:Property_context_container.property_context_domain_container_off_property_context_container"
;;

let property_context_inputbase_container_off_property_context_container = function
  | Property_context_container_t.Property_context_inputbase_container con_pba -> con_pba
  | _ -> failwith "Not_one_property_context_inputbase:Property_context_container.property_context_inputbase_container_off_property_context_container"
;;

let property_context_inputbox_container_off_property_context_container = function
  | Property_context_container_t.Property_context_inputbox_container con_pbo -> con_pbo
  | _ -> failwith "Not_one_property_context_inputbox:Property_context_container.property_context_inputbox_container_off_property_context_container"
;;

(** {6 Fence Tag} *)

let fence_as_list_of_tag tag_pco =
  let tag_pro = property_tag_of_property_context_tag tag_pco in
  Property_fence_by_property_tag_provider_v.provide tag_pro
;;

let fence_as_tuple_of_tag tag_pco =
  let soi_pco = Tag_v.sole_index_off_tag tag_pco in
  let sym_pco = Tag_v.entity_off_tag tag_pco in
  match sym_pco with
  | Property_context_symbol_t.Property_context_sector_symbol sym_pcs ->
      let tag_pcs = Tag_v.make sym_pcs soi_pco in
      (Property_context_sector_container_v.fence_as_tuple_of_tag tag_pcs)
	
  | Property_context_symbol_t.Property_context_domain_symbol sym_pcd ->
      let tag_pcd = Tag_v.make sym_pcd soi_pco in
      (Property_context_domain_container_v.fence_as_tuple_of_tag tag_pcd)
	
  | Property_context_symbol_t.Property_context_inputbase_symbol sym_pba ->
      let tag_pba = Tag_v.make sym_pba soi_pco in
      (Property_context_inputbase_container_v.fence_as_tuple_of_tag tag_pba)
	
  | Property_context_symbol_t.Property_context_inputbox_symbol sym_pbo ->
      let tag_pbo = Tag_v.make sym_pbo soi_pco in
      (Property_context_inputbox_container_v.fence_as_tuple_of_tag tag_pbo)
;;

let fence_as_tuple_list_of_tag tag_pco =
  let fen_l = fence_as_list_of_tag tag_pco in
  Tuple_list_v.make fen_l
;;

(** {6 Naming} *)

let name = function
  | Property_context_container_t.Property_context_sector_container con_pcs ->
      (Property_context_sector_container_v.name con_pcs)
	
  | Property_context_container_t.Property_context_domain_container con_pcd ->
      (Property_context_domain_container_v.name con_pcd)

  | Property_context_container_t.Property_context_inputbase_container con_pba ->
      (Property_context_inputbase_container_v.name con_pba)
	
  | Property_context_container_t.Property_context_inputbox_container con_pbo ->
      (Property_context_inputbox_container_v.name con_pbo)
;;

let string_off = function
  | Property_context_container_t.Property_context_sector_container con_pcs ->
      (Property_context_sector_container_v.string_off con_pcs)
	
  | Property_context_container_t.Property_context_domain_container con_pcd ->
      (Property_context_domain_container_v.string_off con_pcd)

  | Property_context_container_t.Property_context_inputbase_container con_pba ->
      (Property_context_inputbase_container_v.string_off con_pba)
	
  | Property_context_container_t.Property_context_inputbox_container con_pbo ->
      (Property_context_inputbox_container_v.string_off con_pbo)
;;

let longname = function
  | Property_context_container_t.Property_context_sector_container con_pcs ->
      (Property_context_sector_container_v.longname con_pcs)
	
  | Property_context_container_t.Property_context_domain_container con_pcd ->
      (Property_context_domain_container_v.longname con_pcd)

  | Property_context_container_t.Property_context_inputbase_container con_pba ->
      (Property_context_inputbase_container_v.longname con_pba)
	
  | Property_context_container_t.Property_context_inputbox_container con_pbo ->
      (Property_context_inputbox_container_v.longname con_pbo)
;;

let fullname = function
  | Property_context_container_t.Property_context_sector_container con_pcs ->
      (Property_context_sector_container_v.fullname con_pcs)
	
  | Property_context_container_t.Property_context_domain_container con_pcd ->
      (Property_context_domain_container_v.fullname con_pcd)

  | Property_context_container_t.Property_context_inputbase_container con_pba ->
      (Property_context_inputbase_container_v.fullname con_pba)
	
  | Property_context_container_t.Property_context_inputbox_container con_pbo ->
      (Property_context_inputbox_container_v.fullname con_pbo)
;;


(* generated by ./do_container_context_trunc_4sibling_0containee_v.sh property_context pco property_context_sector pcs property_context_domain pcd property_context_inputbase pba property_context_inputbox pbo *)
(* using ./template_container_context_trunc_4sibling_0containee_v.ml *)
(* Done on dimanche 21 mai 2017, 11:00:04 (UTC+0200) *)
