(** {3 Property_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FPRO:Property_container_v";
   "Needs : FPRO:Property_command_container_v";
   "Needs : FPRO:Property_context_container_v";
   "Needs : FPRO:Property_operand_container_v";
   "Needs : FPRO:Property_operator_container_v";
   "Needs : FPRO:Property_target_container_v";
   "Needs : DPRO:Property_any_category_by_sole_index_extractor_v";
   "Needs : DPRO:Property_fence_by_property_tag_provider_v";
   "Needed-by: ";
   "Definition : a Builder (for an Entity of a Domain) is a son of its B-Tree i.e. Coerced Up";
   "Definition : a Builder of a fence Container is its own Tag Coerced Up";
   "Builder_tag : Property_tag";
   "Definition : a Building is the same Datastructure as a Container but filled with Builders"; 
   "Definition : a Containee is a Builder expressed in the lowest subtype compatible with the Datastructure of the Container";
   "Definition : a Containee is an element of the Datastructure of the Container of an Entity";
   "Definition : the Containee Tag of a fence Container is its own Tag";
   "Containee_tag : _tag";
   "Definition : the Fence is the Tag list (Coerced Up) of the Leaf Entities of the B-Tree of any Entity";
   "Fence : Property_tag list";
   "What-is-it : Up_coercion to Property type from Property_command and Property_context";
   "What-is-it : it is the Top container as a List of  Tag";
   "Author : François Colonna 21 mai 2017 at 12:02:20+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Builders} *)

(** {6 Building as Builder Tag list} *)

let building_of_tag tag_pro =
  let soi_pro = Tag_v.sole_index_off_tag tag_pro in
  let sym_pro = Tag_v.entity_off_tag tag_pro in
  match sym_pro with
  | Property_symbol_t.Property_command_symbol sym_pcm ->
      let tag_pcm = Tag_v.make sym_pcm soi_pro in
      Property_command_container_v.builder_tag_list_of_tag tag_pcm

  | Property_symbol_t.Property_context_symbol sym_pcn ->
      let tag_pcn = Tag_v.make sym_pcn soi_pro in
      Property_context_container_v.builder_tag_list_of_tag tag_pcn

  | Property_symbol_t.Property_operand_symbol sym_pod ->
      let tag_pod = Tag_v.make sym_pod soi_pro in
      Property_operand_container_v.builder_tag_list_of_tag tag_pod

  | Property_symbol_t.Property_operator_symbol sym_por ->
      let tag_por = Tag_v.make sym_por soi_pro in
      Property_operator_container_v.builder_tag_list_of_tag tag_por

  | Property_symbol_t.Property_target_symbol sym_pta ->
      let tag_pta = Tag_v.make sym_pta soi_pro in
      Property_target_container_v.builder_tag_list_of_tag tag_pta
;;

(** {9 Builder Tag list} *)

let builder_tag_list_of_tag tag_pro =
  building_of_tag tag_pro
;;

(** {9 Builder Tag Tuple} *)

let builder_tag_tuple_of_tag tag_pro =
  let tag_bui_l = builder_tag_list_of_tag tag_pro in
  Tuple_v.tuple_of_list tag_bui_l
;;

(** {6 Container_of_tag : Containee Datastructure} *)

let container_of_tag tag_pro =
  let soi_pro = Tag_v.sole_index_off_tag tag_pro in
  let sym_pro = Tag_v.entity_off_tag tag_pro in
  match sym_pro with
  | Property_symbol_t.Property_command_symbol sym_pcm ->
      let tag_pcm = Tag_v.make sym_pcm soi_pro in
      Property_container_t.Property_command_container
	(Property_command_container_v.container_of_tag tag_pcm)

  | Property_symbol_t.Property_context_symbol sym_pcn ->
      let tag_pcn = Tag_v.make sym_pcn soi_pro in
      Property_container_t.Property_context_container
	(Property_context_container_v.container_of_tag tag_pcn)

  | Property_symbol_t.Property_operand_symbol sym_pod ->
      let tag_pod = Tag_v.make sym_pod soi_pro in
      Property_container_t.Property_operand_container
	(Property_operand_container_v.container_of_tag tag_pod)

  | Property_symbol_t.Property_operator_symbol sym_por ->
      let tag_por = Tag_v.make sym_por soi_pro in
      Property_container_t.Property_operator_container
	(Property_operator_container_v.container_of_tag tag_por)

  | Property_symbol_t.Property_target_symbol sym_pta ->
      let tag_pta = Tag_v.make sym_pta soi_pro in
      Property_container_t.Property_target_container
	(Property_target_container_v.container_of_tag tag_pta)
;;

(** {6 Coercing up Container} *)

let property_container_of_property_command_container con_pcm =
  Property_container_t.Property_command_container con_pcm 
;;

let property_container_of_property_context_container con_pcn =
  Property_container_t.Property_context_container con_pcn 
;;

let property_container_of_property_operand_container con_pod =
  Property_container_t.Property_operand_container con_pod 
;;

let property_container_of_property_operator_container con_por =
  Property_container_t.Property_operator_container con_por 
;;

let property_container_of_property_target_container con_pta =
  Property_container_t.Property_target_container con_pta 
;;

(** {6 Coercing down} *)

let property_command_container_off_property_container = function
  | Property_container_t.Property_command_container con_pcm -> con_pcm
  | _ -> failwith "Not_one_property_command:Property_container.property_command_container_off_property_container"
;;

let property_context_container_off_property_container = function
  | Property_container_t.Property_context_container con_pcn -> con_pcn
  | _ -> failwith "Not_one_property_context:Property_container.property_context_container_off_property_container"
;;

let property_operand_container_off_property_container = function
  | Property_container_t.Property_operand_container con_pod -> con_pod
  | _ -> failwith "Not_one_property_operand:Property_container.property_operand_container_off_property_container"
;;

let property_operator_container_off_property_container = function
  | Property_container_t.Property_operator_container con_por -> con_por
  | _ -> failwith "Not_one_property_operator:Property_container.property_operator_container_off_property_container"
;;

let property_target_container_off_property_container = function
  | Property_container_t.Property_target_container con_pta -> con_pta
  | _ -> failwith "Not_one_property_target:Property_container.property_target_container_off_property_container"
;;

(** {6 Fence *)

let fence_as_list_of_tag tag_pro =
  Property_fence_by_property_tag_provider_v.provide tag_pro
;;

let fence_as_tuple_of_tag tag_pro =
  let fen_l = fence_as_list_of_tag tag_pro in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list_of_tag tag_pro =
  let fen_l = fence_as_list_of_tag tag_pro in
  Tuple_list_v.make fen_l
;;

(** {6 Naming_for_container} *)

let name = function
  | Property_container_t.Property_command_container con_pcm ->
      (Property_command_container_v.name con_pcm)
        
  | Property_container_t.Property_context_container con_pcn ->
      (Property_context_container_v.name con_pcn)

  | Property_container_t.Property_operand_container con_pod ->
      (Property_operand_container_v.name con_pod)
        
  | Property_container_t.Property_operator_container con_por ->
      (Property_operator_container_v.name con_por)

  | Property_container_t.Property_target_container con_pta ->
      (Property_target_container_v.name con_pta)
;;

let string_off = function
  | Property_container_t.Property_command_container con_pcm ->
      (Property_command_container_v.string_off con_pcm)
        
  | Property_container_t.Property_context_container con_pcn ->
      (Property_context_container_v.string_off con_pcn)

  | Property_container_t.Property_operand_container con_pod ->
      (Property_operand_container_v.string_off con_pod)
        
  | Property_container_t.Property_operator_container con_por ->
      (Property_operator_container_v.string_off con_por)

  | Property_container_t.Property_target_container con_pta ->
      (Property_target_container_v.string_off con_pta)
;;

let longname = function
  | Property_container_t.Property_command_container con_pcm ->
      (Property_command_container_v.longname con_pcm)
        
  | Property_container_t.Property_context_container con_pcn ->
      (Property_context_container_v.longname con_pcn)

  | Property_container_t.Property_operand_container con_pod ->
      (Property_operand_container_v.longname con_pod)
        
  | Property_container_t.Property_operator_container con_por ->
      (Property_operator_container_v.longname con_por)

  | Property_container_t.Property_target_container con_pta ->
      (Property_target_container_v.longname con_pta)
;;

let fullname = function
  | Property_container_t.Property_command_container con_pcm ->
      (Property_command_container_v.fullname con_pcm)
        
  | Property_container_t.Property_context_container con_pcn ->
      (Property_context_container_v.fullname con_pcn)

  | Property_container_t.Property_operand_container con_pod ->
      (Property_operand_container_v.fullname con_pod)
        
  | Property_container_t.Property_operator_container con_por ->
      (Property_operator_container_v.fullname con_por)

  | Property_container_t.Property_target_container con_pta ->
      (Property_target_container_v.fullname con_pta)
;;


(* generated by ./do_container_as_list_top_stem_5sibling_0containee_v.sh property pro property_command pcm property_context pcn property_operand pod property_operator por property_target pta *)
(* using template_container_as_list_top_stem_5sibling_0containee_v.ml *)
(* Done on dimanche 21 mai 2017, 11:00:04 (UTC+0200) *)
