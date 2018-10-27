(** {3 This_container_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : FMMM:This_container_v";
   "Needs : FMMM:Sibling_1_container_v";
   "Needs : FMMM:Sibling_2_container_v";
   "Needs : FMMM:Sibling_3_container_v";
   "Needs : DMMM:Maint_fence_by_maint_tag_provider_v";
   "Needed-by :";
   "Definition : the Context gathers entities at the top of the B-Tree of a Domain (Domain, Database, Databox)";
   "Definition : the Body gathers entities of the B-Tree of a Domain being neither Context nor Fence";
   "Definition : the Fence is the Tag list of the Leaf entities of the B-Tree of a Domain";
   "Definition : the Border is the Tag list of the father entities of the Fence of the Elementary Domain";
   "Definition : a Builder (for an Entity of a Domain) is a son of its Builder-Subtree";
   "Definition : a Containee is a Builder expressed in the lowest subtype compatible with the Datastructure of the Container";
   "Definition : a Container is the Datastructure of the Containee of an Entity";
   "Definition : a Containee is an element of the Datastructure of the Container of an Entity";
   "Definition : a Building is the same Datastructure as Container filled with Builders"; 
   "Definition : a Stalk is a type with only one constructor of nothing";
   "Definition : a Bud type is a type with only one constructor of string";
   "Definition : a Stem type has only constructor of string";
   "Definition : a Branch type has only constructors of nothing";
   "Definition : a Trunc type has only constructors of constructor";
   "What-is-it : Up_coercion of Container type as Symbol type up_coercion";
   "What-is-it : it is a Trunc container of Fence sub-Types and thus a Uno of its own Tag";
 ]
;;

(** {6 Naming} *)

let name = function
  | This_container_t.Sibling_1_container con_sib_1 ->
      (Sibling_1_container_v.name con_sib_1)
	
  | This_container_t.Sibling_2_container con_sib_2 ->
      (Sibling_2_container_v.name con_sib_2)

  | This_container_t.Sibling_3_container con_sib_3 ->
      (Sibling_3_container_v.name con_sib_3)
;;

let string_off = function
  | This_container_t.Sibling_1_container con_sib_1 ->
      (Sibling_1_container_v.string_off con_sib_1)
	
  | This_container_t.Sibling_2_container con_sib_2 ->
      (Sibling_2_container_v.string_off con_sib_2)

  | This_container_t.Sibling_3_container con_sib_3 ->
      (Sibling_3_container_v.string_off con_sib_3)
;;

let longname = function
  | This_container_t.Sibling_1_container con_sib_1 ->
      (Sibling_1_container_v.longname con_sib_1)
	
  | This_container_t.Sibling_2_container con_sib_2 ->
      (Sibling_2_container_v.longname con_sib_2)

  | This_container_t.Sibling_3_container con_sib_3 ->
      (Sibling_3_container_v.longname con_sib_3)
;;

let fullname = function
  | This_container_t.Sibling_1_container con_sib_1 ->
      (Sibling_1_container_v.fullname con_sib_1)
	
  | This_container_t.Sibling_2_container con_sib_2 ->
      (Sibling_2_container_v.fullname con_sib_2)

  | This_container_t.Sibling_3_container con_sib_3 ->
      (Sibling_3_container_v.fullname con_sib_3)
;;

(** {6 Container as Datastructure} *)

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
;;

(** {6 Coercing Up Tag} *)

let coerce_up_tag tag_ttt =
  Tag_v.map_entity 
    Maint_symbol_v.maint_symbol_of_this_symbol 
    tag_ttt
;;

(** {6 Coercing Up Containee} *)

let builder_tag_of_containee_tag tag_cnn =
  Tag_v.map_entity 
    Maint_symbol_v.maint_symbol_of_conee_1_symbol 
    tag_cnn
;;

(** {6 Coercing Down Containee} *)

let containee_tag_off_builder_tag tag_mmm =
  Tag_v.map_entity
    Maint_symbol_v.conee_1_symbol_off_maint_symbol
    tag_mmm
;;

(** {6 Builder Tag Datastructures : Building} *)

let building_of_tag tag_ttt =
  let tag_mmm = builder_tag_of_containee_tag tag_ttt in
  Uno_v.make tag_mmm
;;

let builder_tag_uno tag_ttt =
  building_of_tag tag_ttt
;;

(** {6 Builder Tag List} *)

let builder_tag_list tag_ttt =
  let tag_mmm = builder_tag_of_containee_tag tag_ttt in
  [tag_mmm]
;;

let builder_tag_tuple tag_ttt =
  let bug = building_of_tag tag_ttt in
  Tuple_v.tuple_of_uno bug
;;

(** {6 Coercing up} *)

let this_container_of_sibling_1_container con_sib_1 =
  This_container_t.Sibling_1_container con_sib_1 
;;

let this_container_of_sibling_2_container con_sib_2 =
  This_container_t.Sibling_2_container con_sib_2 
;;

let this_container_of_sibling_3_container con_sib_3 =
  This_container_t.Sibling_3_container con_sib_3 
;;

(** {6 Coercing down} *)

let sibling_1_container_off_this_container = function
  | This_container_t.Sibling_1_container con_sib_1 -> con_sib_1
  | _ -> failwith "Not_a_sibling_1:This_container.sibling_1_container_off_this_container"
;;

let sibling_2_container_off_this_container = function
  | This_container_t.Sibling_2_container con_sib_2 -> con_sib_2
  | _ -> failwith "Not_a_sibling_2:This_container.sibling_2_container_off_this_container"
;;

let sibling_3_container_off_this_container = function
  | This_container_t.Sibling_3_container con_sib_3 -> con_sib_3
  | _ -> failwith "Not_a_sibling_3:This_container.sibling_3_container_off_this_container"
;;

(** {6 Coercing Up Tag} *)

let maint_tag_of_this_tag tag_ttt =
  Tag_v.map_entity 
    Maint_symbol_v.maint_symbol_of_this_symbol 
    tag_ttt 
;;

(** {6 Border *)

let border_as_list tag_ttt =
  let tag_ele = coerce_up_tag tag_ttt in
  Maint_border_by_maint_tag_provider_v.provide tag_ele
;;

let border_as_duo tag_ttt =
  let bor_ttt = border_as_list tag_ttt in
  Duo_v.duo_of_list bor_ttt
;;

let border_as_tuple tag_ttt =
  let bor_l = border_as_list tag_ttt in
  Tuple_v.tuple_of_list bor_l
;;

let border_as_tuple_list tag_ttt =
  let bor_l = border_as_list tag_ttt in
  Tuple_list_v.make bor_l
;;

(** {6 Fence Tag} *)

let fence_as_list tag_ttt =
  let tag_mmm = maint_tag_of_this_tag tag_ttt in
  [tag_mmm]
;;

let fence_as_tuple tag_ttt =
  let fen_l = fence_as_list tag_ttt in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list tag_ttt =
  let fen_l = fence_as_list tag_ttt in
  Tuple_list_v.make fen_l
;;

