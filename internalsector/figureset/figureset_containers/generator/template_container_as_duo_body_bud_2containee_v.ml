(** {3 This_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FMMM:This_container_v";
   "Needs : FMMM:Conee_1_tag_v";
   "Needs : FMMM:Conee_2_tag_v";
   "Needs : FMMM:Conee_up for son list predicate";
   "Needs : DMMM:Maint_any_category_by_sole_index_extractor_v";
   "Needs : DMMM:Maint_fence_by_maint_tag_provider_v";
   "Definition : for any Entity its B-Tree is the Tree of the Entity Tags necessary to build its value";
   "Definition : the Context gathers entities at the top of the B-Tree of a Domain (Domain, Database, Databox)";
   "Definition : the Body gathers entities of the B-Tree of a Domain being neither Context nor Fence";
   "Definition : the Fence is the Tag list of the Leaf entities of the B-Tree of a Domain";
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
   "What-is-it : it is a Body Bud container as a Duo of Conee_up : Conee_1 and Conee_2";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_container} *)

let name con_ttt =
  Duo_v.name 
    Conee_1_tag_v.name
    con_ttt
;;

let string_off con_ttt =
  Duo_v.name 
    Conee_1_tag_v.string_off
    con_ttt
;;

let longname con_ttt =
  Duo_v.name 
    Conee_1_tag_v.longname
    con_ttt
;;

let fullname con_ttt =
  Duo_v.name 
    Conee_1_tag_v.fullname
    con_ttt
;;

(** {6 Coercing Up Tag} *)

let coerce_up_tag tag_ttt =
  Tag_v.map_entity 
    Maint_symbol_v.maint_symbol_of_this_symbol 
    tag_ttt
;;

(** {6 Builders} *)

(** {9 Builder Tag list} *)

let builder_tag_list_of_tag tag_ttt =
  let tag_ele = coerce_up_tag tag_ttt in
  Maint_any_category_by_sole_index_extractor_v.son_maint_tag_list_of_string_predicate_of_father_tag 
    "is_conee_up_symbol_off_maint_symbol"
    tag_ele
;;

(** {9 Builder Tag Datastructures} *)

let builder_tag_duo tag_ttt =
  let tag_bui_l = builder_tag_list_of_tag tag_ttt in
  Duo_v.duo_of_list tag_bui_l
;;

(** {9 Builder Tag Tuple} *)

let builder_tag_tuple tag_ttt =
  let tag_bui_d = builder_tag_duo tag_ttt in
  Tuple_v.tuple_of_duo tag_bui_d
;;

(** {9 Building as Builder Tag duo} *)

let building_of_tag tag_ttt =
  builder_tag_duo tag_ttt
;;

(** {6 Container} *)

(** {9 Coercing Up Containee_up Tag to Builder Tag} *)

let builder_tag_of_containee_tag tag_cnu =
  Tag_v.map_entity 
    Maint_symbol_v.maint_symbol_of_conee_up_symbol
    tag_cnu
;;

(** {9 Coercing Down Builder Tag to Containee_up Tag} *)

let containee_tag_off_builder_tag tag_bui =
  Tag_v.map_entity 
    Maint_symbol_v.conee_up_symbol_off_maint_symbol
    tag_bui
;;

(** {9 Containee_up Tag list} *)

let containee_tag_list_of_tag tag_ttt =
  let tag_bui_l = builder_tag_list_of_tag tag_ttt in
  List.map containee_tag_off_builder_tag tag_bui_l 
;;

(** {9 Containee_up Tag Duo} *)

let containee_tag_duo tag_ttt =
  let tag_cnu_l = containee_tag_list_of_tag tag_ttt in
  Duo_v.duo_of_list tag_cnu_l
;;

(** {9 Extracting Containees off Containee_up} *)

let first_containee_tag_off_containee_tag tag_cnu =
  let (sym_cnu, soi_cnu) = tag_cnu in
  match sym_cnu with 
  | Conee_up_symbol_t.Conee_1_symbol sym_cnn_1 ->
      Tag_v.make sym_cnn_1 soi_cnu
	
  | _ -> 
      failwith "Not_a_Conee_1_symbol:Conee_up_container_v.first_containee_tag_off_containee_tag"
;;

let second_containee_tag_off_containee_tag tag_cnu =
  let (sym_cnu, soi_cnu) = tag_cnu in
  match sym_cnu with 
  | Conee_up_symbol_t.Conee_2_symbol sym_cnn_2 ->
      Tag_v.make sym_cnn_2 soi_cnu
	
  | _ -> 
      failwith "Not_a_Conee_2_symbol:Conee_up_container_v.seond_containee_tag_off_containee_tag"
;;

(** {9 Container_of_tag : Containee Datastructure} *)

let container_of_tag tag_ttt =
  let tag_cnu_d = containee_tag_duo tag_ttt in
  Duo_v.duo_of_duo
    first_containee_tag_off_containee_tag
    second_containee_tag_off_containee_tag
    tag_cnu_d
;;

(** {9 Extracting Containees off Tag} *)

let first_containee_tag tag_ttt =
  let con_ttt = container_of_tag tag_ttt in
  Duo_v.first_off_duo con_ttt
;;

let second_containee_tag tag_ttt =
  let con_ttt = container_of_tag tag_ttt in
  Duo_v.second_off_duo con_ttt
;;

(** {6 Fence *)

let fence_as_list_of_tag tag_ttt =
  let tag_ele = coerce_up_tag tag_ttt in
  Maint_fence_by_maint_tag_provider_v.provide tag_ele
;;

let fence_as_duo tag_ttt =
  let fen_ttt = fence_as_list_of_tag tag_ttt in
  Duo_v.duo_of_list fen_ttt
;;

let fence_as_tuple_of_tag tag_ttt =
  let fen_l = fence_as_list_of_tag tag_ttt in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list_of_tag tag_ttt =
  let fen_l = fence_as_list_of_tag tag_ttt in
  Tuple_list_v.make fen_l
;;
