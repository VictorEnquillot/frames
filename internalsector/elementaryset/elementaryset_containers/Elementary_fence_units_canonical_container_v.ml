(** {3 Elementary_fence_units_canonical_container_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : FELE:Elementary_fence_units_canonical_container_v";
   "Needs : FELE:Elementary_fence_units_canonical_classical_container_v";
   "Needs : FELE:Elementary_fence_units_canonical_quantum_container_v";
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
  | Elementary_fence_units_canonical_container_t.Elementary_fence_units_canonical_classical_container con_ecc ->
      (Elementary_fence_units_canonical_classical_container_v.name con_ecc)
	
  | Elementary_fence_units_canonical_container_t.Elementary_fence_units_canonical_quantum_container con_ecq ->
      (Elementary_fence_units_canonical_quantum_container_v.name con_ecq)
;;

let string_off = function
  | Elementary_fence_units_canonical_container_t.Elementary_fence_units_canonical_classical_container con_ecc ->
      (Elementary_fence_units_canonical_classical_container_v.string_off con_ecc)
	
  | Elementary_fence_units_canonical_container_t.Elementary_fence_units_canonical_quantum_container con_ecq ->
      (Elementary_fence_units_canonical_quantum_container_v.string_off con_ecq)
;;

let longname = function
  | Elementary_fence_units_canonical_container_t.Elementary_fence_units_canonical_classical_container con_ecc ->
      (Elementary_fence_units_canonical_classical_container_v.longname con_ecc)
	
  | Elementary_fence_units_canonical_container_t.Elementary_fence_units_canonical_quantum_container con_ecq ->
      (Elementary_fence_units_canonical_quantum_container_v.longname con_ecq)
;;

let fullname = function
  | Elementary_fence_units_canonical_container_t.Elementary_fence_units_canonical_classical_container con_ecc ->
      (Elementary_fence_units_canonical_classical_container_v.fullname con_ecc)
	
  | Elementary_fence_units_canonical_container_t.Elementary_fence_units_canonical_quantum_container con_ecq ->
      (Elementary_fence_units_canonical_quantum_container_v.fullname con_ecq)
;;

(** {6 Container as Datastructure} *)

let container_of_tag tag_euc =
  let soi_euc = Tag_v.sole_index_off_tag tag_euc in
  let sym_euc = Tag_v.entity_off_tag tag_euc in
  match sym_euc with
  | Elementary_fence_units_canonical_symbol_t.Elementary_fence_units_canonical_classical_symbol sym_ecc ->
      let tag_ecc = Tag_v.make sym_ecc soi_euc in
      Elementary_fence_units_canonical_container_t.Elementary_fence_units_canonical_classical_container
	(Elementary_fence_units_canonical_classical_container_v.container_of_tag tag_ecc)

  | Elementary_fence_units_canonical_symbol_t.Elementary_fence_units_canonical_quantum_symbol sym_ecq ->
      let tag_ecq = Tag_v.make sym_ecq soi_euc in
      Elementary_fence_units_canonical_container_t.Elementary_fence_units_canonical_quantum_container
	(Elementary_fence_units_canonical_quantum_container_v.container_of_tag tag_ecq)
;;

(** {6 Coercing Up Tag} *)

let coerce_up_tag tag_euc =
  Tag_v.map_entity 
    Elementary_symbol_v.elementary_symbol_of_elementary_fence_units_canonical_symbol 
    tag_euc
;;

(** {6 Coercing Up Containee} *)

let builder_tag_of_containee_tag tag_euc =
  Tag_v.map_entity 
    Elementary_symbol_v.elementary_symbol_of_elementary_fence_units_canonical_symbol 
    tag_euc
;;

(** {6 Coercing Down Containee} *)

let containee_tag_off_builder_tag tag_ele =
  Tag_v.map_entity
    Elementary_symbol_v.elementary_fence_units_canonical_symbol_off_elementary_symbol
    tag_ele
;;

(** {6 Builder Tag Datastructures : Building} *)

let building_of_tag tag_euc =
  let tag_ele = builder_tag_of_containee_tag tag_euc in
  Uno_v.make tag_ele
;;

let builder_tag_uno tag_euc =
  building_of_tag tag_euc
;;

(** {6 Builder Tag List} *)

let builder_tag_list tag_euc =
  let tag_ele = builder_tag_of_containee_tag tag_euc in
  [tag_ele]
;;

let builder_tag_tuple tag_euc =
  let bug = building_of_tag tag_euc in
  Tuple_v.tuple_of_uno bug
;;

(** {6 Coercing up} *)

let elementary_fence_units_canonical_container_of_elementary_fence_units_canonical_classical_container con_ecc =
  Elementary_fence_units_canonical_container_t.Elementary_fence_units_canonical_classical_container con_ecc 
;;

let elementary_fence_units_canonical_container_of_elementary_fence_units_canonical_quantum_container con_ecq =
  Elementary_fence_units_canonical_container_t.Elementary_fence_units_canonical_quantum_container con_ecq 
;;

(** {6 Coercing down} *)

let elementary_fence_units_canonical_classical_container_off_elementary_fence_units_canonical_container = function
  | Elementary_fence_units_canonical_container_t.Elementary_fence_units_canonical_classical_container con_ecc -> con_ecc
  | _ -> failwith "Not_a_elementary_fence_units_canonical_classical:Elementary_fence_units_canonical_container.elementary_fence_units_canonical_classical_container_off_elementary_fence_units_canonical_container"
;;

let elementary_fence_units_canonical_quantum_container_off_elementary_fence_units_canonical_container = function
  | Elementary_fence_units_canonical_container_t.Elementary_fence_units_canonical_quantum_container con_ecq -> con_ecq
  | _ -> failwith "Not_a_elementary_fence_units_canonical_quantum:Elementary_fence_units_canonical_container.elementary_fence_units_canonical_quantum_container_off_elementary_fence_units_canonical_container"
;;

(** {6 Coercing Up Tag} *)

let elementary_tag_of_elementary_fence_units_canonical_tag tag_euc =
  Tag_v.map_entity 
    Elementary_symbol_v.elementary_symbol_of_elementary_fence_units_canonical_symbol 
    tag_euc 
;;

(** {6 Border *)

let border_as_list tag_euc =
  let tag_ele = coerce_up_tag tag_euc in
  Elementary_border_by_elementary_tag_provider_v.provide tag_ele
;;

let border_as_duo tag_euc =
  let bor_euc = border_as_list tag_euc in
  Duo_v.duo_of_list bor_euc
;;

let border_as_tuple tag_euc =
  let bor_l = border_as_list tag_euc in
  Tuple_v.tuple_of_list bor_l
;;

let border_as_tuple_list tag_euc =
  let bor_l = border_as_list tag_euc in
  Tuple_list_v.make bor_l
;;

(** {6 Fence Tag} *)

let fence_as_list tag_euc =
  let tag_ele = elementary_tag_of_elementary_fence_units_canonical_tag tag_euc in
  [tag_ele]
;;

let fence_as_tuple tag_euc =
  let fen_l = fence_as_list tag_euc in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list tag_euc =
  let fen_l = fence_as_list tag_euc in
  Tuple_list_v.make fen_l
;;


(* generated by ./do_container_as_uno_fence_trunc_2sibling_v.sh elementary_fence_units_canonical euc elementary_fence_units_canonical_classical ecc elementary_fence_units_canonical_quantum ecq *)
(* using ./template_container_as_uno_fence_trunc_2sibling_v.ml *)
(* Done on mercredi 11 mai 2016, 10:51:48 (UTC+0200) *)

