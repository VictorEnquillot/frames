(** {3 Elementary_fence_units_container_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : FELE:Elementary_fence_units_container_v";
   "Needs : FELE:Elementary_fence_units_actual_container_v";
   "Needs : FELE:Elementary_fence_units_canonical_container_v";
   "Needs : DELE:Elementary_fence_by_elementary_tag_provider_v";
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
  | Elementary_fence_units_container_t.Elementary_fence_units_actual_container con_eua ->
      (Elementary_fence_units_actual_container_v.name con_eua)
	
  | Elementary_fence_units_container_t.Elementary_fence_units_canonical_container con_euc ->
      (Elementary_fence_units_canonical_container_v.name con_euc)
;;

let string_off = function
  | Elementary_fence_units_container_t.Elementary_fence_units_actual_container con_eua ->
      (Elementary_fence_units_actual_container_v.string_off con_eua)
	
  | Elementary_fence_units_container_t.Elementary_fence_units_canonical_container con_euc ->
      (Elementary_fence_units_canonical_container_v.string_off con_euc)
;;

let longname = function
  | Elementary_fence_units_container_t.Elementary_fence_units_actual_container con_eua ->
      (Elementary_fence_units_actual_container_v.longname con_eua)
	
  | Elementary_fence_units_container_t.Elementary_fence_units_canonical_container con_euc ->
      (Elementary_fence_units_canonical_container_v.longname con_euc)
;;

let fullname = function
  | Elementary_fence_units_container_t.Elementary_fence_units_actual_container con_eua ->
      (Elementary_fence_units_actual_container_v.fullname con_eua)
	
  | Elementary_fence_units_container_t.Elementary_fence_units_canonical_container con_euc ->
      (Elementary_fence_units_canonical_container_v.fullname con_euc)
;;

(** {6 Container as Datastructure} *)

let container_of_tag tag_efu =
  let soi_efu = Tag_v.sole_index_off_tag tag_efu in
  let sym_efu = Tag_v.entity_off_tag tag_efu in
  match sym_efu with
  | Elementary_fence_units_symbol_t.Elementary_fence_units_actual_symbol sym_eua ->
      let tag_eua = Tag_v.make sym_eua soi_efu in
      Elementary_fence_units_container_t.Elementary_fence_units_actual_container
	(Elementary_fence_units_actual_container_v.container_of_tag tag_eua)

  | Elementary_fence_units_symbol_t.Elementary_fence_units_canonical_symbol sym_euc ->
      let tag_euc = Tag_v.make sym_euc soi_efu in
      Elementary_fence_units_container_t.Elementary_fence_units_canonical_container
	(Elementary_fence_units_canonical_container_v.container_of_tag tag_euc)
;;

(** {6 Coercing Up Tag} *)

let coerce_up_tag tag_efu =
  Tag_v.map_entity 
    Elementary_symbol_v.elementary_symbol_of_elementary_fence_units_symbol 
    tag_efu
;;

(** {6 Coercing Up Containee} *)

let builder_tag_of_containee_tag tag_efu =
  Tag_v.map_entity 
    Elementary_symbol_v.elementary_symbol_of_elementary_fence_units_symbol 
    tag_efu
;;

(** {6 Coercing Down Containee} *)

let containee_tag_off_builder_tag tag_ele =
  Tag_v.map_entity
    Elementary_symbol_v.elementary_fence_units_symbol_off_elementary_symbol
    tag_ele
;;

(** {6 Builder Tag Datastructures : Building} *)

let building_of_tag tag_efu =
  let tag_ele = builder_tag_of_containee_tag tag_efu in
  Uno_v.make tag_ele
;;

let builder_tag_uno tag_efu =
  building_of_tag tag_efu
;;

(** {6 Builder Tag List} *)

let builder_tag_list tag_efu =
  let tag_ele = builder_tag_of_containee_tag tag_efu in
  [tag_ele]
;;

let builder_tag_tuple tag_efu =
  let bug = building_of_tag tag_efu in
  Tuple_v.tuple_of_uno bug
;;

(** {6 Coercing up} *)

let elementary_fence_units_container_of_elementary_fence_units_actual_container con_eua =
  Elementary_fence_units_container_t.Elementary_fence_units_actual_container con_eua 
;;

let elementary_fence_units_container_of_elementary_fence_units_canonical_container con_euc =
  Elementary_fence_units_container_t.Elementary_fence_units_canonical_container con_euc 
;;

(** {6 Coercing down} *)

let elementary_fence_units_actual_container_off_elementary_fence_units_container = function
  | Elementary_fence_units_container_t.Elementary_fence_units_actual_container con_eua -> con_eua
  | _ -> failwith "Not_a_elementary_fence_units_actual:Elementary_fence_units_container.elementary_fence_units_actual_container_off_elementary_fence_units_container"
;;

let elementary_fence_units_canonical_container_off_elementary_fence_units_container = function
  | Elementary_fence_units_container_t.Elementary_fence_units_canonical_container con_euc -> con_euc
  | _ -> failwith "Not_a_elementary_fence_units_canonical:Elementary_fence_units_container.elementary_fence_units_canonical_container_off_elementary_fence_units_container"
;;

(** {6 Coercing Up Tag} *)

let elementary_tag_of_elementary_fence_units_tag tag_efu =
  Tag_v.map_entity 
    Elementary_symbol_v.elementary_symbol_of_elementary_fence_units_symbol 
    tag_efu 
;;

(** {6 Border *)

let border_as_list tag_efu =
  let tag_ele = coerce_up_tag tag_efu in
  Elementary_border_by_elementary_tag_provider_v.provide tag_ele
;;

let border_as_duo tag_efu =
  let bor_efu = border_as_list tag_efu in
  Duo_v.duo_of_list bor_efu
;;

let border_as_tuple tag_efu =
  let bor_l = border_as_list tag_efu in
  Tuple_v.tuple_of_list bor_l
;;

let border_as_tuple_list tag_efu =
  let bor_l = border_as_list tag_efu in
  Tuple_list_v.make bor_l
;;

(** {6 Fence Tag} *)

let fence_as_list tag_efu =
  let tag_ele = elementary_tag_of_elementary_fence_units_tag tag_efu in
  [tag_ele]
;;

let fence_as_tuple tag_efu =
  let fen_l = fence_as_list tag_efu in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list tag_efu =
  let fen_l = fence_as_list tag_efu in
  Tuple_list_v.make fen_l
;;


(* generated by ./do_container_as_uno_fence_trunc_2sibling_v.sh elementary_fence_units efu elementary_fence_units_actual eua elementary_fence_units_canonical euc *)
(* using ./template_container_as_uno_fence_trunc_2sibling_v.ml *)
(* Done on mercredi 11 mai 2016, 10:51:48 (UTC+0200) *)

