(** {3 Elementary_fence_units_actual_container_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : FELE:Elementary_fence_units_actual_container_v";
   "Needs : FELE:Elementary_fence_units_actual_action_container_v";
   "Needs : FELE:Elementary_fence_units_actual_angle_container_v";
   "Needs : FELE:Elementary_fence_units_actual_charge_container_v";
   "Needs : FELE:Elementary_fence_units_actual_energy_container_v";
   "Needs : FELE:Elementary_fence_units_actual_length_container_v";
   "Needs : FELE:Elementary_fence_units_actual_mass_container_v";
   "Needs : FELE:Elementary_fence_units_actual_temperature_container_v";
   "Needs : FELE:Elementary_fence_units_actual_time_container_v";
   "Needs : FELE:Elementary_fence_units_actual_none_container_v";
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
  | Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_action_container con_eaa ->
      (Elementary_fence_units_actual_action_container_v.name con_eaa)
	
  | Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_angle_container con_eaa ->
      (Elementary_fence_units_actual_angle_container_v.name con_eaa)

  | Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_charge_container con_eac ->
      (Elementary_fence_units_actual_charge_container_v.name con_eac)
	
  | Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_energy_container con_eae ->
      (Elementary_fence_units_actual_energy_container_v.name con_eae)

  | Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_length_container con_eal ->
      (Elementary_fence_units_actual_length_container_v.name con_eal)
	
  | Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_mass_container con_eam ->
      (Elementary_fence_units_actual_mass_container_v.name con_eam)

  | Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_temperature_container con_eat ->
      (Elementary_fence_units_actual_temperature_container_v.name con_eat)
	
  | Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_time_container con_eat ->
      (Elementary_fence_units_actual_time_container_v.name con_eat)

  | Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_none_container con_ean ->
      (Elementary_fence_units_actual_none_container_v.name con_ean)
;;

let string_off = function
  | Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_action_container con_eaa ->
      (Elementary_fence_units_actual_action_container_v.string_off con_eaa)
	
  | Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_angle_container con_eaa ->
      (Elementary_fence_units_actual_angle_container_v.string_off con_eaa)

  | Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_charge_container con_eac ->
      (Elementary_fence_units_actual_charge_container_v.string_off con_eac)
	
  | Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_energy_container con_eae ->
      (Elementary_fence_units_actual_energy_container_v.string_off con_eae)

  | Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_length_container con_eal ->
      (Elementary_fence_units_actual_length_container_v.string_off con_eal)
	
  | Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_mass_container con_eam ->
      (Elementary_fence_units_actual_mass_container_v.string_off con_eam)

  | Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_temperature_container con_eat ->
      (Elementary_fence_units_actual_temperature_container_v.string_off con_eat)
	
  | Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_time_container con_eat ->
      (Elementary_fence_units_actual_time_container_v.string_off con_eat)
	
  | Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_none_container con_ean ->
      (Elementary_fence_units_actual_none_container_v.string_off con_ean)
;;

let longname = function
  | Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_action_container con_eaa ->
      (Elementary_fence_units_actual_action_container_v.longname con_eaa)
	
  | Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_angle_container con_eaa ->
      (Elementary_fence_units_actual_angle_container_v.longname con_eaa)

  | Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_charge_container con_eac ->
      (Elementary_fence_units_actual_charge_container_v.longname con_eac)
	
  | Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_energy_container con_eae ->
      (Elementary_fence_units_actual_energy_container_v.longname con_eae)

  | Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_length_container con_eal ->
      (Elementary_fence_units_actual_length_container_v.longname con_eal)
	
  | Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_mass_container con_eam ->
      (Elementary_fence_units_actual_mass_container_v.longname con_eam)

  | Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_temperature_container con_eat ->
      (Elementary_fence_units_actual_temperature_container_v.longname con_eat)
	
  | Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_time_container con_eat ->
      (Elementary_fence_units_actual_time_container_v.longname con_eat)
	
  | Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_none_container con_ean ->
      (Elementary_fence_units_actual_none_container_v.longname con_ean)
;;

let fullname = function
  | Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_action_container con_eaa ->
      (Elementary_fence_units_actual_action_container_v.fullname con_eaa)
	
  | Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_angle_container con_eaa ->
      (Elementary_fence_units_actual_angle_container_v.fullname con_eaa)

  | Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_charge_container con_eac ->
      (Elementary_fence_units_actual_charge_container_v.fullname con_eac)
	
  | Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_energy_container con_eae ->
      (Elementary_fence_units_actual_energy_container_v.fullname con_eae)

  | Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_length_container con_eal ->
      (Elementary_fence_units_actual_length_container_v.fullname con_eal)
	
  | Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_mass_container con_eam ->
      (Elementary_fence_units_actual_mass_container_v.fullname con_eam)

  | Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_temperature_container con_eat ->
      (Elementary_fence_units_actual_temperature_container_v.fullname con_eat)
	
  | Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_time_container con_eat ->
      (Elementary_fence_units_actual_time_container_v.fullname con_eat)
	
  | Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_none_container con_ean ->
      (Elementary_fence_units_actual_none_container_v.fullname con_ean)
;;

(** {6 Container as Datastructure} *)

let container_of_tag tag_eua =
  let soi_eua = Tag_v.sole_index_off_tag tag_eua in
  let sym_eua = Tag_v.entity_off_tag tag_eua in
  match sym_eua with
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_action_symbol sym_eaa ->
      let tag_eaa = Tag_v.make sym_eaa soi_eua in
      Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_action_container
	(Elementary_fence_units_actual_action_container_v.container_of_tag tag_eaa)

  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_angle_symbol sym_eaa ->
      let tag_eaa = Tag_v.make sym_eaa soi_eua in
      Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_angle_container
	(Elementary_fence_units_actual_angle_container_v.container_of_tag tag_eaa)

  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_charge_symbol sym_eac ->
      let tag_eac = Tag_v.make sym_eac soi_eua in
      Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_charge_container
	(Elementary_fence_units_actual_charge_container_v.container_of_tag tag_eac)

  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_energy_symbol sym_eae ->
      let tag_eae = Tag_v.make sym_eae soi_eua in
      Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_energy_container
	(Elementary_fence_units_actual_energy_container_v.container_of_tag tag_eae)

  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol sym_eal ->
      let tag_eal = Tag_v.make sym_eal soi_eua in
      Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_length_container
	(Elementary_fence_units_actual_length_container_v.container_of_tag tag_eal)

  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_mass_symbol sym_eam ->
      let tag_eam = Tag_v.make sym_eam soi_eua in
      Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_mass_container
	(Elementary_fence_units_actual_mass_container_v.container_of_tag tag_eam)

  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_temperature_symbol sym_eat ->
      let tag_eat = Tag_v.make sym_eat soi_eua in
      Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_temperature_container
	(Elementary_fence_units_actual_temperature_container_v.container_of_tag tag_eat)

  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_time_symbol sym_eat ->
      let tag_eat = Tag_v.make sym_eat soi_eua in
      Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_time_container
	(Elementary_fence_units_actual_time_container_v.container_of_tag tag_eat)

  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_none_symbol sym_ean ->
      let tag_ean = Tag_v.make sym_ean soi_eua in
      Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_none_container
	(Elementary_fence_units_actual_none_container_v.container_of_tag tag_ean)
;;

(** {6 Coercing Up Tag} *)

let coerce_up_tag tag_eua =
  Tag_v.map_entity 
    Elementary_symbol_v.elementary_symbol_of_elementary_fence_units_actual_symbol 
    tag_eua
;;

(** {6 Coercing Up Containee} *)

let builder_tag_of_containee_tag tag_eua =
  Tag_v.map_entity 
    Elementary_symbol_v.elementary_symbol_of_elementary_fence_units_actual_symbol 
    tag_eua
;;

(** {6 Coercing Down Containee} *)

let containee_tag_off_builder_tag tag_ele =
  Tag_v.map_entity
    Elementary_symbol_v.elementary_fence_units_actual_symbol_off_elementary_symbol
    tag_ele
;;

(** {6 Builder Tag Datastructures : Building} *)

let building_of_tag tag_eua =
  let tag_ele = builder_tag_of_containee_tag tag_eua in
  Uno_v.make tag_ele
;;

let builder_tag_uno tag_eua =
  building_of_tag tag_eua
;;

(** {6 Builder Tag List} *)

let builder_tag_list tag_eua =
  let tag_ele = builder_tag_of_containee_tag tag_eua in
  [tag_ele]
;;

let builder_tag_tuple tag_eua =
  let bug = building_of_tag tag_eua in
  Tuple_v.tuple_of_uno bug
;;

(** {6 Coercing up} *)

let elementary_fence_units_actual_container_of_elementary_fence_units_actual_action_container con_eaa =
  Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_action_container con_eaa 
;;

let elementary_fence_units_actual_container_of_elementary_fence_units_actual_angle_container con_eaa =
  Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_angle_container con_eaa 
;;

let elementary_fence_units_actual_container_of_elementary_fence_units_actual_charge_container con_eac =
  Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_charge_container con_eac 
;;

let elementary_fence_units_actual_container_of_elementary_fence_units_actual_energy_container con_eae =
  Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_energy_container con_eae 
;;

let elementary_fence_units_actual_container_of_elementary_fence_units_actual_length_container con_eal =
  Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_length_container con_eal 
;;

let elementary_fence_units_actual_container_of_elementary_fence_units_actual_mass_container con_eam =
  Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_mass_container con_eam 
;;

let elementary_fence_units_actual_container_of_elementary_fence_units_actual_temperature_container con_eat =
  Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_temperature_container con_eat 
;;

let elementary_fence_units_actual_container_of_elementary_fence_units_actual_time_container con_eat =
  Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_time_container con_eat 
;;

let elementary_fence_units_actual_container_of_elementary_fence_units_actual_none_container con_ean =
  Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_none_container con_ean 
;;

(** {6 Coercing down} *)

let elementary_fence_units_actual_action_container_off_elementary_fence_units_actual_container = function
  | Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_action_container con_eaa -> con_eaa
  | _ -> failwith "Not_a_elementary_fence_units_actual_action:Elementary_fence_units_actual_container.elementary_fence_units_actual_action_container_off_elementary_fence_units_actual_container"
;;

let elementary_fence_units_actual_angle_container_off_elementary_fence_units_actual_container = function
  | Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_angle_container con_eaa -> con_eaa
  | _ -> failwith "Not_a_elementary_fence_units_actual_angle:Elementary_fence_units_actual_container.elementary_fence_units_actual_angle_container_off_elementary_fence_units_actual_container"
;;

let elementary_fence_units_actual_charge_container_off_elementary_fence_units_actual_container = function
  | Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_charge_container con_eac -> con_eac
  | _ -> failwith "Not_a_elementary_fence_units_actual_charge:Elementary_fence_units_actual_container.elementary_fence_units_actual_charge_container_off_elementary_fence_units_actual_container"
;;

let elementary_fence_units_actual_energy_container_off_elementary_fence_units_actual_container = function
  | Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_energy_container con_eae -> con_eae
  | _ -> failwith "Not_a_elementary_fence_units_actual_energy:Elementary_fence_units_actual_container.elementary_fence_units_actual_energy_container_off_elementary_fence_units_actual_container"
;;

let elementary_fence_units_actual_length_container_off_elementary_fence_units_actual_container = function
  | Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_length_container con_eal -> con_eal
  | _ -> failwith "Not_a_elementary_fence_units_actual_length:Elementary_fence_units_actual_container.elementary_fence_units_actual_length_container_off_elementary_fence_units_actual_container"
;;

let elementary_fence_units_actual_mass_container_off_elementary_fence_units_actual_container = function
  | Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_mass_container con_eam -> con_eam
  | _ -> failwith "Not_a_elementary_fence_units_actual_mass:Elementary_fence_units_actual_container.elementary_fence_units_actual_mass_container_off_elementary_fence_units_actual_container"
;;

let elementary_fence_units_actual_temperature_container_off_elementary_fence_units_actual_container = function
  | Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_temperature_container con_eat -> con_eat
  | _ -> failwith "Not_a_elementary_fence_units_actual_temperature:Elementary_fence_units_actual_container.elementary_fence_units_actual_temperature_container_off_elementary_fence_units_actual_container"
;;

let elementary_fence_units_actual_time_container_off_elementary_fence_units_actual_container = function
  | Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_time_container con_eat -> con_eat
  | _ -> failwith "Not_a_elementary_fence_units_actual_time:Elementary_fence_units_actual_container.elementary_fence_units_actual_time_container_off_elementary_fence_units_actual_container"
;;

let elementary_fence_units_actual_none_container_off_elementary_fence_units_actual_container = function
  | Elementary_fence_units_actual_container_t.Elementary_fence_units_actual_none_container con_ean -> con_ean
  | _ -> failwith "Not_a_elementary_fence_units_actual_none:Elementary_fence_units_actual_container.elementary_fence_units_actual_none_container_off_elementary_fence_units_actual_container"
;;

(** {6 Coercing Up Tag} *)

let elementary_tag_of_elementary_fence_units_actual_tag tag_eua =
  Tag_v.map_entity 
    Elementary_symbol_v.elementary_symbol_of_elementary_fence_units_actual_symbol 
    tag_eua 
;;

(** {6 Border *)

let border_as_list tag_eua =
  let tag_ele = coerce_up_tag tag_eua in
  Elementary_border_by_elementary_tag_provider_v.provide tag_ele
;;

let border_as_duo tag_eua =
  let bor_eua = border_as_list tag_eua in
  Duo_v.duo_of_list bor_eua
;;

let border_as_tuple tag_eua =
  let bor_l = border_as_list tag_eua in
  Tuple_v.tuple_of_list bor_l
;;

let border_as_tuple_list tag_eua =
  let bor_l = border_as_list tag_eua in
  Tuple_list_v.make bor_l
;;

(** {6 Fence Tag} *)

let fence_as_list tag_eua =
  let tag_ele = elementary_tag_of_elementary_fence_units_actual_tag tag_eua in
  [tag_ele]
;;

let fence_as_tuple tag_eua =
  let fen_l = fence_as_list tag_eua in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list tag_eua =
  let fen_l = fence_as_list tag_eua in
  Tuple_list_v.make fen_l
;;


(* generated by ./do_container_as_uno_fence_trunc_9sibling_v.sh elementary_fence_units_actual eua elementary_fence_units_actual_action eaa elementary_fence_units_actual_angle eaa elementary_fence_units_actual_charge eac elementary_fence_units_actual_energy eae elementary_fence_units_actual_length eal elementary_fence_units_actual_mass eam elementary_fence_units_actual_temperature eat elementary_fence_units_actual_time eat elementary_fence_units_actual_none ean *)
(* using ./template_container_as_uno_fence_trunc_9sibling_v.ml *)
(* Done on mercredi 11 mai 2016, 10:51:48 (UTC+0200) *)

