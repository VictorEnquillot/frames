(** {3 Parameter_set_body_tuple_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FPAR:Parameter_set_body_tuple_container_v";
   "Needs : FPAR:Parameter_set_fence_tag_v";
   "Needs : FPAR:Parameter_set_body_tuple_aopef_container_v";
   "Needs : FPAR:Parameter_set_body_tuple_ecppef_container_v";
   "Needs : DPAR:Parameter_fence_by_parameter_tag_provider_v";
   "Needed-by: ";
   "Definition : for any Entity its B-Tree is the Tree of the Entity Tags necessary to build its value";
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
   "What-is-it : it is a Trunc container of Border sub-Types and thus a Tuple of its Parameter_set_fence Tag";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_container} *)

let name = function
  | Parameter_set_body_tuple_container_t.Parameter_set_body_tuple_aopef_container con_pta ->
      (Parameter_set_body_tuple_aopef_container_v.name con_pta)
        
  | Parameter_set_body_tuple_container_t.Parameter_set_body_tuple_ecppef_container con_pte ->
      (Parameter_set_body_tuple_ecppef_container_v.name con_pte)
;;

let string_off = function
  | Parameter_set_body_tuple_container_t.Parameter_set_body_tuple_aopef_container con_pta ->
      (Parameter_set_body_tuple_aopef_container_v.string_off con_pta)
        
  | Parameter_set_body_tuple_container_t.Parameter_set_body_tuple_ecppef_container con_pte ->
      (Parameter_set_body_tuple_ecppef_container_v.string_off con_pte)
;;

let longname = function
  | Parameter_set_body_tuple_container_t.Parameter_set_body_tuple_aopef_container con_pta ->
      (Parameter_set_body_tuple_aopef_container_v.longname con_pta)
        
  | Parameter_set_body_tuple_container_t.Parameter_set_body_tuple_ecppef_container con_pte ->
      (Parameter_set_body_tuple_ecppef_container_v.longname con_pte)
;;

let fullname = function
  | Parameter_set_body_tuple_container_t.Parameter_set_body_tuple_aopef_container con_pta ->
      (Parameter_set_body_tuple_aopef_container_v.fullname con_pta)
        
  | Parameter_set_body_tuple_container_t.Parameter_set_body_tuple_ecppef_container con_pte ->
      (Parameter_set_body_tuple_ecppef_container_v.fullname con_pte)
;;

(** {6 Coercing Tag} *)

(** {9 Coercing Up Tag} *)

let coerce_up_tag tag_pbt =
  Tag_v.map_entity 
    Parameter_symbol_v.parameter_symbol_of_parameter_set_body_tuple_symbol 
    tag_pbt
;;

(** {9 Coercing Down Builder to Containee} *)

let containee_up_tag_off_builder_tag tag_par =
  Tag_v.map_entity
    Parameter_symbol_v.parameter_set_fence_symbol_off_parameter_symbol
    tag_par
;;

(** {9 Coercing Up Containee_up to Builder} *)

let builder_tag_of_containee_up_tag tag_cnu =
  Tag_v.map_entity 
    Parameter_symbol_v.parameter_symbol_of_parameter_set_fence_symbol
    tag_cnu
;;

(** {6 Builders} *)

(** {9 Builder Tag list} *)

let builder_tag_list_of_tag tag_pbt =
  let (sym_pbt, soi_pbt) = tag_pbt in
  match sym_pbt with
  | Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol sym_pta ->
      let tag_pta = Tag_v.make sym_pta soi_pbt in
      Parameter_set_body_tuple_aopef_container_v.builder_tag_list_of_tag tag_pta

  | Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_ecppef_symbol sym_pte ->
      let tag_pte = Tag_v.make sym_pte soi_pbt in
      Parameter_set_body_tuple_ecppef_container_v.builder_tag_list_of_tag tag_pte
;;

(** {9 Builder Tag Tuple} *)

let builder_tag_tuple_of_tag tag_pbt =
  let (sym_pbt, soi_pbt) = tag_pbt in
  match sym_pbt with
  | Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol sym_pta ->
      let tag_pta = Tag_v.make sym_pta soi_pbt in
      Parameter_set_body_tuple_aopef_container_v.builder_tag_tuple_of_tag tag_pta

  | Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_ecppef_symbol sym_pte ->
      let tag_pte = Tag_v.make sym_pte soi_pbt in
      Parameter_set_body_tuple_ecppef_container_v.builder_tag_tuple_of_tag tag_pte
;;

(** {9 Building as Builder Tag tuple} *)

let building_of_tag tag_pbt =
  builder_tag_tuple_of_tag tag_pbt
;;

(** {6 Container} *)

let containee_up_tag_list tag_pbt =
  let tag_bui_l = builder_tag_list_of_tag tag_pbt in
  List.map containee_up_tag_off_builder_tag tag_bui_l
;;

(** {6 Fence *)

let fence_as_list_of_tag tag_pbt =
  let tag_par = coerce_up_tag tag_pbt in
  Parameter_fence_by_parameter_tag_provider_v.provide tag_par
;;

let fence_as_tuple_of_tag tag_pbt =
  let fen_l = fence_as_list_of_tag tag_pbt in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list_of_tag tag_pbt =
  let fen_l = fence_as_list_of_tag tag_pbt in
  Tuple_list_v.make fen_l
;;

(* generated by ./do_container_as_tuple_body_trunc_2sibling_1containee_v.sh parameter_set_body_tuple pbt parameter_set_body_tuple_aopef pta parameter_set_body_tuple_ecppef pte parameter_set_fence psf *)
(* using ./template_container_as_tuple_body_trunc_2sibling_1containee_v.ml *)
(* Done on mercredi 14 décembre 2016, 16:07:05 (UTC+0100) *)
