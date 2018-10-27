(** {3 Elementary_fence_basic_container_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : FELE:Elementary_fence_basic_container_v";
   "Needs : FELE:Elementary_fence_basic_boolean_container_v";
   "Needs : FELE:Elementary_fence_basic_float_container_v";
   "Needs : FELE:Elementary_fence_basic_integer_container_v";
   "Needs : FELE:Elementary_fence_basic_string_container_v";
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
   "What-is-it : it is a Trunc container of a Fence sub-Types and thus a Uno of its own Tag";
 ]
;;

(** {6 Naming} *)

let name = function
  | Elementary_fence_basic_container_t.Elementary_fence_basic_boolean_container con_ebb ->
      (Elementary_fence_basic_boolean_container_v.name con_ebb)
	
  | Elementary_fence_basic_container_t.Elementary_fence_basic_float_container con_ebf ->
      (Elementary_fence_basic_float_container_v.name con_ebf)

  | Elementary_fence_basic_container_t.Elementary_fence_basic_integer_container con_ebi ->
      (Elementary_fence_basic_integer_container_v.name con_ebi)
	
  | Elementary_fence_basic_container_t.Elementary_fence_basic_string_container con_ebs ->
      (Elementary_fence_basic_string_container_v.name con_ebs)
;;

let string_off = function
  | Elementary_fence_basic_container_t.Elementary_fence_basic_boolean_container con_ebb ->
      (Elementary_fence_basic_boolean_container_v.string_off con_ebb)
	
  | Elementary_fence_basic_container_t.Elementary_fence_basic_float_container con_ebf ->
      (Elementary_fence_basic_float_container_v.string_off con_ebf)

  | Elementary_fence_basic_container_t.Elementary_fence_basic_integer_container con_ebi ->
      (Elementary_fence_basic_integer_container_v.string_off con_ebi)
	
  | Elementary_fence_basic_container_t.Elementary_fence_basic_string_container con_ebs ->
      (Elementary_fence_basic_string_container_v.string_off con_ebs)
;;

let longname = function
  | Elementary_fence_basic_container_t.Elementary_fence_basic_boolean_container con_ebb ->
      (Elementary_fence_basic_boolean_container_v.longname con_ebb)
	
  | Elementary_fence_basic_container_t.Elementary_fence_basic_float_container con_ebf ->
      (Elementary_fence_basic_float_container_v.longname con_ebf)

  | Elementary_fence_basic_container_t.Elementary_fence_basic_integer_container con_ebi ->
      (Elementary_fence_basic_integer_container_v.longname con_ebi)
	
  | Elementary_fence_basic_container_t.Elementary_fence_basic_string_container con_ebs ->
      (Elementary_fence_basic_string_container_v.longname con_ebs)
;;

let fullname = function
  | Elementary_fence_basic_container_t.Elementary_fence_basic_boolean_container con_ebb ->
      (Elementary_fence_basic_boolean_container_v.fullname con_ebb)
	
  | Elementary_fence_basic_container_t.Elementary_fence_basic_float_container con_ebf ->
      (Elementary_fence_basic_float_container_v.fullname con_ebf)

  | Elementary_fence_basic_container_t.Elementary_fence_basic_integer_container con_ebi ->
      (Elementary_fence_basic_integer_container_v.fullname con_ebi)
	
  | Elementary_fence_basic_container_t.Elementary_fence_basic_string_container con_ebs ->
      (Elementary_fence_basic_string_container_v.fullname con_ebs)
;;

(** {6 Container as Datastructure} *)

let container_of_tag tag_efb =
  let soi_efb = Tag_v.sole_index_off_tag tag_efb in
  let sym_efb = Tag_v.entity_off_tag tag_efb in
  match sym_efb with
  | Elementary_fence_basic_symbol_t.Elementary_fence_basic_boolean_symbol sym_ebb ->
      let tag_ebb = Tag_v.make sym_ebb soi_efb in
      Elementary_fence_basic_container_t.Elementary_fence_basic_boolean_container
	(Elementary_fence_basic_boolean_container_v.container_of_tag tag_ebb)

  | Elementary_fence_basic_symbol_t.Elementary_fence_basic_float_symbol sym_ebf ->
      let tag_ebf = Tag_v.make sym_ebf soi_efb in
      Elementary_fence_basic_container_t.Elementary_fence_basic_float_container
	(Elementary_fence_basic_float_container_v.container_of_tag tag_ebf)

  | Elementary_fence_basic_symbol_t.Elementary_fence_basic_integer_symbol sym_ebi ->
      let tag_ebi = Tag_v.make sym_ebi soi_efb in
      Elementary_fence_basic_container_t.Elementary_fence_basic_integer_container
	(Elementary_fence_basic_integer_container_v.container_of_tag tag_ebi)

  | Elementary_fence_basic_symbol_t.Elementary_fence_basic_string_symbol sym_ebs ->
      let tag_ebs = Tag_v.make sym_ebs soi_efb in
      Elementary_fence_basic_container_t.Elementary_fence_basic_string_container
	(Elementary_fence_basic_string_container_v.container_of_tag tag_ebs)
;;

(** {6 Coercing Up Tag} *)

let coerce_up_tag tag_efb =
  Tag_v.map_entity 
    Elementary_symbol_v.elementary_symbol_of_elementary_fence_basic_symbol 
    tag_efb
;;

(** {6 Coercing Up Containee} *)

let builder_tag_of_containee_tag tag_ =
  Tag_v.map_entity 
    Elementary_symbol_v.elementary_symbol_of_elementary_fence_basic_symbol 
    tag_
;;

(** {6 Coercing Down Containee} *)

let containee_tag_off_builder_tag tag_ele =
  Tag_v.map_entity
    Elementary_symbol_v.elementary_fence_basic_symbol_off_elementary_symbol
    tag_ele
;;

(** {6 Builder Tag Datastructures : Building} *)

let building_of_tag tag_efb =
  let tag_ele = builder_tag_of_containee_tag tag_efb in
  Uno_v.make tag_ele
;;

let builder_tag_uno tag_efb =
  building_of_tag tag_efb
;;

(** {6 Builder Tag List} *)

let builder_tag_list tag_efb =
  let tag_ele = builder_tag_of_containee_tag tag_efb in
  [tag_ele]
;;

let builder_tag_tuple tag_efb =
  let bug = building_of_tag tag_efb in
  Tuple_v.tuple_of_uno bug
;;

(** {6 Coercing up} *)

let elementary_fence_basic_container_of_elementary_fence_basic_boolean_container con_ebb =
  Elementary_fence_basic_container_t.Elementary_fence_basic_boolean_container con_ebb 
;;

let elementary_fence_basic_container_of_elementary_fence_basic_float_container con_ebf =
  Elementary_fence_basic_container_t.Elementary_fence_basic_float_container con_ebf 
;;

let elementary_fence_basic_container_of_elementary_fence_basic_integer_container con_ebi =
  Elementary_fence_basic_container_t.Elementary_fence_basic_integer_container con_ebi 
;;

let elementary_fence_basic_container_of_elementary_fence_basic_string_container con_ebs =
  Elementary_fence_basic_container_t.Elementary_fence_basic_string_container con_ebs 
;;

(** {6 Coercing down} *)

let elementary_fence_basic_boolean_container_off_elementary_fence_basic_container = function
  | Elementary_fence_basic_container_t.Elementary_fence_basic_boolean_container con_ebb -> con_ebb
  | _ -> failwith "Not_a_elementary_fence_basic_boolean:Elementary_fence_basic_container.elementary_fence_basic_boolean_container_off_elementary_fence_basic_container"
;;

let elementary_fence_basic_float_container_off_elementary_fence_basic_container = function
  | Elementary_fence_basic_container_t.Elementary_fence_basic_float_container con_ebf -> con_ebf
  | _ -> failwith "Not_a_elementary_fence_basic_float:Elementary_fence_basic_container.elementary_fence_basic_float_container_off_elementary_fence_basic_container"
;;

let elementary_fence_basic_integer_container_off_elementary_fence_basic_container = function
  | Elementary_fence_basic_container_t.Elementary_fence_basic_integer_container con_ebi -> con_ebi
  | _ -> failwith "Not_a_elementary_fence_basic_integer:Elementary_fence_basic_container.elementary_fence_basic_integer_container_off_elementary_fence_basic_container"
;;

let elementary_fence_basic_string_container_off_elementary_fence_basic_container = function
  | Elementary_fence_basic_container_t.Elementary_fence_basic_string_container con_ebs -> con_ebs
  | _ -> failwith "Not_a_elementary_fence_basic_string:Elementary_fence_basic_container.elementary_fence_basic_string_container_off_elementary_fence_basic_container"
;;

(** {6 Coercing Up Tag} *)

let elementary_tag_of_elementary_fence_basic_tag tag_efb =
  Tag_v.map_entity 
    Elementary_symbol_v.elementary_symbol_of_elementary_fence_basic_symbol 
    tag_efb 
;;

(** {6 Border *)

let border_as_list tag_efb =
  let tag_ele = coerce_up_tag tag_efb in
  Elementary_border_by_elementary_tag_provider_v.provide tag_ele
;;

let border_as_duo tag_efb =
  let bor_efb = border_as_list tag_efb in
  Duo_v.duo_of_list bor_efb
;;

let border_as_tuple tag_efb =
  let bor_l = border_as_list tag_efb in
  Tuple_v.tuple_of_list bor_l
;;

let border_as_tuple_list tag_efb =
  let bor_l = border_as_list tag_efb in
  Tuple_list_v.make bor_l
;;

(** {6 Fence Tag} *)

let fence_as_list tag_efb =
  let tag_ele = elementary_tag_of_elementary_fence_basic_tag tag_efb in
  [tag_ele]
;;

let fence_as_tuple tag_efb =
  let fen_l = fence_as_list tag_efb in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list tag_efb =
  let fen_l = fence_as_list tag_efb in
  Tuple_list_v.make fen_l
;;


(* generated by ./do_container_as_uno_fence_trunc_4sibling_v.sh elementary_fence_basic efb elementary_fence_basic_boolean ebb elementary_fence_basic_float ebf elementary_fence_basic_integer ebi elementary_fence_basic_string ebs *)
(* using ./template_container_as_uno_fence_trunc_4sibling_v.ml *)
(* Done on mercredi 11 mai 2016, 10:51:49 (UTC+0200) *)

