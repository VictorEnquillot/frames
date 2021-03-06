(** {3 This_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FMMM:This_container_v";
   "Needs : FMMM:Sibling_1_container_v";
   "Needs : FMMM:Sibling_2_container_v";
   "Needs : FMMM:Sibling_3_container_v";
   "Needs : DMMM:Maint_fence_by_maint_tag_provider_v";
   "Needed-by: ";
   "Definition : for any Entity its B-Tree is the Tree of the Entity Tags necessary to build its value";
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
   "What-is-it : it is a Trunc container of Border sub-Types and thus a Tuple of its Conee_up Tag";
   "Author : François Colonna 21 mai 2017 at 17:18:55+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_container} *)

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

(** {6 Builders} *)

(** {9 Builder Tag list} *)

let builder_tag_list_of_tag tag_ttt =
  let (sym_ttt, soi_ttt) = tag_ttt in
  match sym_ttt with
  | This_symbol_t.Sibling_1_symbol sym_sib_1 ->
      let tag_sib_1 = Tag_v.make sym_sib_1 soi_ttt in
      Sibling_1_container_v.builder_tag_list_of_tag tag_sib_1

  | This_symbol_t.Sibling_2_symbol sym_sib_2 ->
      let tag_sib_2 = Tag_v.make sym_sib_2 soi_ttt in
      Sibling_2_container_v.builder_tag_list_of_tag tag_sib_2

  | This_symbol_t.Sibling_3_symbol sym_sib_3 ->
      let tag_sib_3 = Tag_v.make sym_sib_3 soi_ttt in
      Sibling_3_container_v.builder_tag_list_of_tag tag_sib_3
;;

(** {9 Builder Tag Tuple} *)

let builder_tag_tuple_of_tag tag_ttt =
  let (sym_ttt, soi_ttt) = tag_ttt in
  match sym_ttt with
  | This_symbol_t.Sibling_1_symbol sym_sib_1 ->
      let tag_sib_1 = Tag_v.make sym_sib_1 soi_ttt in
      Sibling_1_container_v.builder_tag_tuple_of_tag tag_sib_1

  | This_symbol_t.Sibling_2_symbol sym_sib_2 ->
      let tag_sib_2 = Tag_v.make sym_sib_2 soi_ttt in
      Sibling_2_container_v.builder_tag_tuple_of_tag tag_sib_2

  | This_symbol_t.Sibling_3_symbol sym_sib_3 ->
      let tag_sib_3 = Tag_v.make sym_sib_3 soi_ttt in
      Sibling_3_container_v.builder_tag_tuple_of_tag tag_sib_3
;;

(** {9 Building as Builder Tag tuple} *)

let building_of_tag tag_ttt =
  builder_tag_tuple_of_tag tag_ttt
;;

(** {6 Container} *)

(** {6 Container_of_tag : Pattern Matching} *)

let container_of_tag tag_ttt =
  let (sym_ttt, soi_ttt) = tag_ttt in
  match sym_ttt with
  | This_symbol_t.Sibling_1_symbol sym_sib_1 ->
      let tag_sib_1 = Tag_v.make sym_sib_1 soi_ttt in
      let con_sib_1 = Sibling_1_container_v.container_of_tag tag_sib_1 in
      This_container_t.Sibling_1_container con_sib_1

  | This_symbol_t.Sibling_2_symbol sym_sib_2 ->
      let tag_sib_2 = Tag_v.make sym_sib_2 soi_ttt in
      let con_sib_2 = Sibling_2_container_v.container_of_tag tag_sib_2 in
      This_container_t.Sibling_2_container con_sib_2

  | This_symbol_t.Sibling_3_symbol sym_sib_3 ->
      let tag_sib_3 = Tag_v.make sym_sib_3 soi_ttt in
      let con_sib_3 = Sibling_3_container_v.container_of_tag tag_sib_3 in
      This_container_t.Sibling_3_container con_sib_3
;;

(** {6 Fence *)

let fence_as_list_of_tag tag_ttt =
  let tag_mmm = This_tag_v.maint_tag_of_this_tag tag_ttt in
  Maint_fence_by_maint_tag_provider_v.provide tag_mmm
;;

let fence_as_tuple_of_tag tag_ttt =
  let fen_l = fence_as_list_of_tag tag_ttt in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list_of_tag tag_ttt =
  let fen_l = fence_as_list_of_tag tag_ttt in
  Tuple_list_v.make fen_l
;;
