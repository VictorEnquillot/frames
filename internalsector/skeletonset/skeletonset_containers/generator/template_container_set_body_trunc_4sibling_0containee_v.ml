(** {3 This_container_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : FMMM:This_container_v";
   "Needs : BMMM:Maint_any_category_by_sole_index_extractor_v";
   "Needs : BMMM:Maint_fence_by_maint_tag_provider_v";
   "Needed-by: ";
   "Builder_tag : Maint_tag";
   "Containee_tag : None";
   "Definition : a Builder (for an Entity of a Domain) is a son of its B-Tree i.e. Coerced Up";
   "Definition : a Builder of a fence Container is its own Tag Coerced Up";
   "Definition : a Building is the same Datastructure as a Container but filled with Builders"; 
   "Definition : a Containee is a Builder expressed in the lowest subtype compatible with the Datastructure of the Container";
   "Definition : a Containee is an element of the Datastructure of the Container of an Entity";
   "Definition : a Trunc type has only constructors of constructor";
   "Definition : the Containee Tag of a fence Container is its own Tag";
   "Definition : the Fence is the Tag list (Coerced Up) of the Leaf Entities of the B-Tree of any Entity";
   "Fence : Maint_tag list";
   "What-is-it : Up_coercion of Container subtype similar to Symbol type Up_coercion";
   "What-is-it : it is a container of a Trunc Type as a List of Containee_Up";
   "Author : François Colonna 05 janvier 2017 at 15:45:29+01:00";
 ]
;;

(** {6 Coercing Up Tag} *)

let maint_tag_of_this_tag tag_ttt =
  Tag_v.map_entity 
    Maint_symbol_v.maint_symbol_of_this_symbol 
    tag_ttt 
;;

(** {6 Building as Builder Tag list} *)

let building_of_tag tag_ttt =
  let soi_ttt = Tag_v.sole_index_off_tag tag_ttt in
  let sym_ttt = Tag_v.entity_off_tag tag_ttt in
  match sym_ttt with
  | This_symbol_t.Sibling_1_symbol sym_sib_1 ->
      let tag_sib_1 = Tag_v.make sym_sib_1 soi_ttt in
      (Sibling_1_container_v.building_of_tag tag_sib_1)
	
  | This_symbol_t.Sibling_2_symbol sym_sib_2 ->
      let tag_sib_2 = Tag_v.make sym_sib_2 soi_ttt in
      (Sibling_2_container_v.building_of_tag tag_sib_2)
	
  | This_symbol_t.Sibling_3_symbol sym_sib_3 ->
      let tag_sib_3 = Tag_v.make sym_sib_3 soi_ttt in
      (Sibling_3_container_v.building_of_tag tag_sib_3)
	
  | This_symbol_t.Sibling_4_symbol sym_sib_4 ->
      let tag_sib_4 = Tag_v.make sym_sib_4 soi_ttt in
      (Sibling_4_container_v.building_of_tag tag_sib_4)
;;

(** {6 Builder Tag Datastructures} *)

let builder_tag_list_of_tag tag_ttt =
  building_of_tag tag_ttt
;;

let builder_tag_tuple_of_tag tag_ttt =
  let tag_bui_l = builder_tag_list_of_tag tag_ttt in
  Tuple_v.tuple_of_list tag_bui_l
;;

(** {6 Container_of_tag : Containee Datastructure} *)

let container_of_tag tag_ttt =
  let soi_ttt = Tag_v.sole_index_off_tag tag_ttt in
  let sym_ttt = Tag_v.entity_off_tag tag_ttt in
  match sym_ttt with
  | This_symbol_t.Sibling_1_symbol sym_sib_1 ->
      let tag_sib_1 = Tag_v.make sym_sib_1 soi_ttt in
      This_container_t.Sibling_1_container
	(Sibling_1_container_v.container_of_tag tag_sib_1)

  | This_symbol_t.Sibling_2_symbol sym_sib_2 ->
      let tag_sib_2 = Tag_v.make sym_sib_2 soi_ttt in
      This_container_t.Sibling_2_container
	(Sibling_2_container_v.container_of_tag tag_sib_2)

  | This_symbol_t.Sibling_3_symbol sym_sib_3 ->
      let tag_sib_3 = Tag_v.make sym_sib_3 soi_ttt in
      This_container_t.Sibling_3_container
	(Sibling_3_container_v.container_of_tag tag_sib_3)

  | This_symbol_t.Sibling_4_symbol sym_sib_4 ->
      let tag_sib_4 = Tag_v.make sym_sib_4 soi_ttt in
      This_container_t.Sibling_4_container
	(Sibling_4_container_v.container_of_tag tag_sib_4)
;;

(** {6 Coercing up Container} *)

let this_container_of_sibling_1_container con_sib_1 =
  This_container_t.Sibling_1_container con_sib_1 
;;

let this_container_of_sibling_2_container con_sib_2 =
  This_container_t.Sibling_2_container con_sib_2 
;;

let this_container_of_sibling_3_container con_sib_3 =
  This_container_t.Sibling_3_container con_sib_3 
;;

let this_container_of_sibling_4_container con_sib_4 =
  This_container_t.Sibling_4_container con_sib_4 
;;

(** {6 Coercing down} *)

let sibling_1_container_off_this_container = function
  | This_container_t.Sibling_1_container con_sib_1 -> con_sib_1
  | _ -> failwith "Not_one_sibling_1:This_container.sibling_1_container_off_this_container"
;;

let sibling_2_container_off_this_container = function
  | This_container_t.Sibling_2_container con_sib_2 -> con_sib_2
  | _ -> failwith "Not_one_sibling_2:This_container.sibling_2_container_off_this_container"
;;

let sibling_3_container_off_this_container = function
  | This_container_t.Sibling_3_container con_sib_3 -> con_sib_3
  | _ -> failwith "Not_one_sibling_3:This_container.sibling_3_container_off_this_container"
;;

let sibling_4_container_off_this_container = function
  | This_container_t.Sibling_4_container con_sib_4 -> con_sib_4
  | _ -> failwith "Not_one_sibling_4:This_container.sibling_4_container_off_this_container"
;;

(** {6 Fence Tag} *)

let fence_as_list_of_tag tag_ttt =
  let tag_mmm = maint_tag_of_this_tag tag_ttt in
  Maint_fence_by_maint_tag_provider_v.provide tag_mmm
;;

let fence_as_tuple_of_tag tag_ttt =
  let soi_ttt = Tag_v.sole_index_off_tag tag_ttt in
  let sym_ttt = Tag_v.entity_off_tag tag_ttt in
  match sym_ttt with
  | This_symbol_t.Sibling_1_symbol sym_sib_1 ->
      let tag_sib_1 = Tag_v.make sym_sib_1 soi_ttt in
      (Sibling_1_container_v.fence_as_tuple_of_tag tag_sib_1)
	
  | This_symbol_t.Sibling_2_symbol sym_sib_2 ->
      let tag_sib_2 = Tag_v.make sym_sib_2 soi_ttt in
      (Sibling_2_container_v.fence_as_tuple_of_tag tag_sib_2)
	
  | This_symbol_t.Sibling_3_symbol sym_sib_3 ->
      let tag_sib_3 = Tag_v.make sym_sib_3 soi_ttt in
      (Sibling_3_container_v.fence_as_tuple_of_tag tag_sib_3)
	
  | This_symbol_t.Sibling_4_symbol sym_sib_4 ->
      let tag_sib_4 = Tag_v.make sym_sib_4 soi_ttt in
      (Sibling_4_container_v.fence_as_tuple_of_tag tag_sib_4)
;;

let fence_as_tuple_list_of_tag tag_ttt =
  let fen_l = fence_as_list_of_tag tag_ttt in
  Tuple_list_v.make fen_l
;;

(** {6 Naming} *)

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

