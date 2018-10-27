(** {3 This_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FCOO:This_container_v";
   "Needs : FCOO:Sibling_1_tag_v";
   "Needs : FCOO:Sibling_2_tag_v";
   "Needs : FCOO:Sibling_3_tag_v";
   "Needed-by: ";
   "Definition : a Building is the same Datastructure as a Container but filled with Builders"; 
   "Definition : a Containee is a Builder expressed in the lowest subtype compatible with the Datastructure of the Container";
   "Definition : a Container is the Datastructure of the Containee of an Entity";
   "Definition : a Containee is an element of the Datastructure of the Container of an Entity";
   "Definition : a Builder (for an Entity of a Domain) is a son of its B-Tree i.e. Coerced Up";
   "Definition : a Builder of a fence Container is its own Tag Coerced Up";
   "Definition : the Builder list of a fence Container is empty";
   "Definition : a Building is the same Datastructure as a Container but filled with Builders"; 
   "Definition : a Containee is a Builder expressed in the lowest subtype compatible with the Datastructure of the Container";
   "Definition : the Containee Tag of a fence Container is its own Tag";
   "Definition : a fence Container contains an Uno of its Tag";
   "Definition : a non-fence Bud Container is a Datastructure of Containee Tag";
   "Definition : a Bud is a type with only one constructor of string";
   "Definition : a Trunc is a type with only constructors of constructor";
   "What-is-it : Up_coercion of Container type as Symbol type up_coercion";
   "What-is-it : it is a Trunc container of Border sub-Types and thus a Uno of its Elementary_fence_units_actual_length Tag";
   "Improve : Does a Containee has a meaning here ?";
   "Author : François Colonna 18 décembre 2016 at 16:37:06+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Coercing Up Tag} *)

let coerce_up_tag tag_ttt =
  Tag_v.map_entity 
    Maint_symbol_v.maint_symbol_of_this_symbol
    tag_ttt
;;

(** {6 Coercing Down Tag} *)

let coerce_down_tag tag_mmm =
  Tag_v.map_entity 
    Maint_symbol_v.this_symbol_off_maint_symbol
    tag_mmm
;;

(** {6 Builder Tag} *)

let builder_tag_of_tag tag_ttt =
  coerce_up_tag tag_ttt
;;

(** {6 Builder Tag list is empty} *)

let builder_tag_list_of_tag tag_ttt =
  let tag_mmm = coerce_up_tag tag_ttt in
    [tag_mmm]
;;

(** {6 Builder Tag Datastructures} *)

let builder_tag_uno_of_tag tag_ttt =
  let tag_bui_l = builder_tag_list_of_tag tag_ttt in
  Uno_v.uno_of_list tag_bui_l
;;

(** {6 Builder Tag Tuple} *)

let builder_tag_tuple_of_tag tag_ttt =
  let tag_bui_u = builder_tag_uno_of_tag tag_ttt in
  Tuple_v.tuple_of_uno tag_bui_u
;;

(** {6 Building as Builder Tag uno} *)

let building_of_tag tag_ttt =
  builder_tag_uno_of_tag tag_ttt
;;

(** {6 Coercing Down Containee} *)

let containee_tag_off_builder_tag tag_mmm =
  coerce_down_tag tag_mmm 
;;

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

(** {6 Containee Tag Datastructure} *)

let containee_tag_uno_of_tag tag_ttt =
  container_of_tag tag_ttt
;;

(** {6 Containee Tag Tuple} *)

let containee_tag_tuple_of_tag tag_ttt =
  let tag_cne_u = containee_tag_uno_of_tag tag_ttt in
  Tuple_v.tuple_of_uno tag_cne_u
;;

(** {6 Fence *)

let fence_as_list_of_tag tag_ttt =
  let tag_mmm = coerce_up_tag tag_ttt in
  [tag_mmm]
;;

let fence_as_uno_of_tag tag_ttt =
  let fen_ttt = fence_as_list_of_tag tag_ttt in
  Uno_v.uno_of_list fen_ttt
;;

let fence_as_tuple_of_tag tag_ttt =
  let fen_l = fence_as_list_of_tag tag_ttt in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list_of_tag tag_ttt =
  let fen_l = fence_as_list_of_tag tag_ttt in
  Tuple_list_v.make fen_l
;;

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

