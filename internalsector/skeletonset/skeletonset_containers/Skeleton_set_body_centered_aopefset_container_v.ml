(** {3 Skeleton_set_body_centered_aopefset_container_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : FSKE:Skeleton_set_body_centered_aopefset_container_v";
   "Needs : BSKE:Skeleton_any_category_by_sole_index_extractor_v";
   "Needs : BSKE:Skeleton_fence_by_skeleton_tag_provider_v";
   "Needed-by: ";
   "Builder_tag : Skeleton_tag";
   "Containee_tag : None";
   "Definition : a Builder (for an Entity of a Domain) is a son of its B-Tree i.e. Coerced Up";
   "Definition : a Builder of a fence Container is its own Tag Coerced Up";
   "Definition : a Building is the same Datastructure as a Container but filled with Builders"; 
   "Definition : a Containee is a Builder expressed in the lowest subtype compatible with the Datastructure of the Container";
   "Definition : a Containee is an element of the Datastructure of the Container of an Entity";
   "Definition : a Trunc type has only constructors of constructor";
   "Definition : the Containee Tag of a fence Container is its own Tag";
   "Definition : the Fence is the Tag list (Coerced Up) of the Leaf Entities of the B-Tree of any Entity";
   "Fence : Skeleton_tag list";
   "What-is-it : Up_coercion of Container subtype similar to Symbol type Up_coercion";
   "What-is-it : it is a container of a Trunc Type as a List of Containee_Up";
   "Author : François Colonna 05 janvier 2017 at 15:45:29+01:00";
 ]
;;

(** {6 Coercing Up Tag} *)

let skeleton_tag_of_skeleton_set_body_centered_aopefset_tag tag_sas =
  Tag_v.map_entity 
    Skeleton_symbol_v.skeleton_symbol_of_skeleton_set_body_centered_aopefset_symbol 
    tag_sas 
;;

(** {6 Building as Builder Tag list} *)

let building_of_tag tag_sas =
  let soi_sas = Tag_v.sole_index_off_tag tag_sas in
  let sym_sas = Tag_v.entity_off_tag tag_sas in
  match sym_sas with
  | Skeleton_set_body_centered_aopefset_symbol_t.Skeleton_set_body_centered_aopefset_anycenter_symbol sym_sac ->
      let tag_sac = Tag_v.make sym_sac soi_sas in
      (Skeleton_set_body_centered_aopefset_anycenter_container_v.building_of_tag tag_sac)
	
  | Skeleton_set_body_centered_aopefset_symbol_t.Skeleton_set_body_centered_aopefset_onecenter_symbol sym_sce ->
      let tag_sce = Tag_v.make sym_sce soi_sas in
      (Skeleton_set_body_centered_aopefset_onecenter_container_v.building_of_tag tag_sce)
	
  | Skeleton_set_body_centered_aopefset_symbol_t.Skeleton_set_body_centered_aopefset_shellsymmetry_symbol sym_sss ->
      let tag_sss = Tag_v.make sym_sss soi_sas in
      (Skeleton_set_body_centered_aopefset_shellsymmetry_container_v.building_of_tag tag_sss)
	
  | Skeleton_set_body_centered_aopefset_symbol_t.Skeleton_set_body_centered_aopefset_shellordinal_symbol sym_sso ->
      let tag_sso = Tag_v.make sym_sso soi_sas in
      (Skeleton_set_body_centered_aopefset_shellordinal_container_v.building_of_tag tag_sso)
;;

(** {6 Builder Tag Datastructures} *)

let builder_tag_list_of_tag tag_sas =
  building_of_tag tag_sas
;;

let builder_tag_tuple_of_tag tag_sas =
  let tag_bui_l = builder_tag_list_of_tag tag_sas in
  Tuple_v.tuple_of_list tag_bui_l
;;

(** {6 Container_of_tag : Containee Datastructure} *)

let container_of_tag tag_sas =
  let soi_sas = Tag_v.sole_index_off_tag tag_sas in
  let sym_sas = Tag_v.entity_off_tag tag_sas in
  match sym_sas with
  | Skeleton_set_body_centered_aopefset_symbol_t.Skeleton_set_body_centered_aopefset_anycenter_symbol sym_sac ->
      let tag_sac = Tag_v.make sym_sac soi_sas in
      Skeleton_set_body_centered_aopefset_container_t.Skeleton_set_body_centered_aopefset_anycenter_container
	(Skeleton_set_body_centered_aopefset_anycenter_container_v.container_of_tag tag_sac)

  | Skeleton_set_body_centered_aopefset_symbol_t.Skeleton_set_body_centered_aopefset_onecenter_symbol sym_sce ->
      let tag_sce = Tag_v.make sym_sce soi_sas in
      Skeleton_set_body_centered_aopefset_container_t.Skeleton_set_body_centered_aopefset_onecenter_container
	(Skeleton_set_body_centered_aopefset_onecenter_container_v.container_of_tag tag_sce)

  | Skeleton_set_body_centered_aopefset_symbol_t.Skeleton_set_body_centered_aopefset_shellsymmetry_symbol sym_sss ->
      let tag_sss = Tag_v.make sym_sss soi_sas in
      Skeleton_set_body_centered_aopefset_container_t.Skeleton_set_body_centered_aopefset_shellsymmetry_container
	(Skeleton_set_body_centered_aopefset_shellsymmetry_container_v.container_of_tag tag_sss)

  | Skeleton_set_body_centered_aopefset_symbol_t.Skeleton_set_body_centered_aopefset_shellordinal_symbol sym_sso ->
      let tag_sso = Tag_v.make sym_sso soi_sas in
      Skeleton_set_body_centered_aopefset_container_t.Skeleton_set_body_centered_aopefset_shellordinal_container
	(Skeleton_set_body_centered_aopefset_shellordinal_container_v.container_of_tag tag_sso)
;;

(** {6 Coercing up Container} *)

let skeleton_set_body_centered_aopefset_container_of_skeleton_set_body_centered_aopefset_anycenter_container con_sac =
  Skeleton_set_body_centered_aopefset_container_t.Skeleton_set_body_centered_aopefset_anycenter_container con_sac 
;;

let skeleton_set_body_centered_aopefset_container_of_skeleton_set_body_centered_aopefset_onecenter_container con_sce =
  Skeleton_set_body_centered_aopefset_container_t.Skeleton_set_body_centered_aopefset_onecenter_container con_sce 
;;

let skeleton_set_body_centered_aopefset_container_of_skeleton_set_body_centered_aopefset_shellsymmetry_container con_sss =
  Skeleton_set_body_centered_aopefset_container_t.Skeleton_set_body_centered_aopefset_shellsymmetry_container con_sss 
;;

let skeleton_set_body_centered_aopefset_container_of_skeleton_set_body_centered_aopefset_shellordinal_container con_sso =
  Skeleton_set_body_centered_aopefset_container_t.Skeleton_set_body_centered_aopefset_shellordinal_container con_sso 
;;

(** {6 Coercing down} *)

let skeleton_set_body_centered_aopefset_anycenter_container_off_skeleton_set_body_centered_aopefset_container = function
  | Skeleton_set_body_centered_aopefset_container_t.Skeleton_set_body_centered_aopefset_anycenter_container con_sac -> con_sac
  | _ -> failwith "Not_one_skeleton_set_body_centered_aopefset_anycenter:Skeleton_set_body_centered_aopefset_container.skeleton_set_body_centered_aopefset_anycenter_container_off_skeleton_set_body_centered_aopefset_container"
;;

let skeleton_set_body_centered_aopefset_onecenter_container_off_skeleton_set_body_centered_aopefset_container = function
  | Skeleton_set_body_centered_aopefset_container_t.Skeleton_set_body_centered_aopefset_onecenter_container con_sce -> con_sce
  | _ -> failwith "Not_one_skeleton_set_body_centered_aopefset_onecenter:Skeleton_set_body_centered_aopefset_container.skeleton_set_body_centered_aopefset_onecenter_container_off_skeleton_set_body_centered_aopefset_container"
;;

let skeleton_set_body_centered_aopefset_shellsymmetry_container_off_skeleton_set_body_centered_aopefset_container = function
  | Skeleton_set_body_centered_aopefset_container_t.Skeleton_set_body_centered_aopefset_shellsymmetry_container con_sss -> con_sss
  | _ -> failwith "Not_one_skeleton_set_body_centered_aopefset_shellsymmetry:Skeleton_set_body_centered_aopefset_container.skeleton_set_body_centered_aopefset_shellsymmetry_container_off_skeleton_set_body_centered_aopefset_container"
;;

let skeleton_set_body_centered_aopefset_shellordinal_container_off_skeleton_set_body_centered_aopefset_container = function
  | Skeleton_set_body_centered_aopefset_container_t.Skeleton_set_body_centered_aopefset_shellordinal_container con_sso -> con_sso
  | _ -> failwith "Not_one_skeleton_set_body_centered_aopefset_shellordinal:Skeleton_set_body_centered_aopefset_container.skeleton_set_body_centered_aopefset_shellordinal_container_off_skeleton_set_body_centered_aopefset_container"
;;

(** {6 Fence Tag} *)

let fence_as_list_of_tag tag_sas =
  let tag_ske = skeleton_tag_of_skeleton_set_body_centered_aopefset_tag tag_sas in
  Skeleton_fence_by_skeleton_tag_provider_v.provide tag_ske
;;

let fence_as_tuple_of_tag tag_sas =
  let soi_sas = Tag_v.sole_index_off_tag tag_sas in
  let sym_sas = Tag_v.entity_off_tag tag_sas in
  match sym_sas with
  | Skeleton_set_body_centered_aopefset_symbol_t.Skeleton_set_body_centered_aopefset_anycenter_symbol sym_sac ->
      let tag_sac = Tag_v.make sym_sac soi_sas in
      (Skeleton_set_body_centered_aopefset_anycenter_container_v.fence_as_tuple_of_tag tag_sac)
	
  | Skeleton_set_body_centered_aopefset_symbol_t.Skeleton_set_body_centered_aopefset_onecenter_symbol sym_sce ->
      let tag_sce = Tag_v.make sym_sce soi_sas in
      (Skeleton_set_body_centered_aopefset_onecenter_container_v.fence_as_tuple_of_tag tag_sce)
	
  | Skeleton_set_body_centered_aopefset_symbol_t.Skeleton_set_body_centered_aopefset_shellsymmetry_symbol sym_sss ->
      let tag_sss = Tag_v.make sym_sss soi_sas in
      (Skeleton_set_body_centered_aopefset_shellsymmetry_container_v.fence_as_tuple_of_tag tag_sss)
	
  | Skeleton_set_body_centered_aopefset_symbol_t.Skeleton_set_body_centered_aopefset_shellordinal_symbol sym_sso ->
      let tag_sso = Tag_v.make sym_sso soi_sas in
      (Skeleton_set_body_centered_aopefset_shellordinal_container_v.fence_as_tuple_of_tag tag_sso)
;;

let fence_as_tuple_list_of_tag tag_sas =
  let fen_l = fence_as_list_of_tag tag_sas in
  Tuple_list_v.make fen_l
;;

(** {6 Naming} *)

let name = function
  | Skeleton_set_body_centered_aopefset_container_t.Skeleton_set_body_centered_aopefset_anycenter_container con_sac ->
      (Skeleton_set_body_centered_aopefset_anycenter_container_v.name con_sac)
	
  | Skeleton_set_body_centered_aopefset_container_t.Skeleton_set_body_centered_aopefset_onecenter_container con_sce ->
      (Skeleton_set_body_centered_aopefset_onecenter_container_v.name con_sce)

  | Skeleton_set_body_centered_aopefset_container_t.Skeleton_set_body_centered_aopefset_shellsymmetry_container con_sss ->
      (Skeleton_set_body_centered_aopefset_shellsymmetry_container_v.name con_sss)
	
  | Skeleton_set_body_centered_aopefset_container_t.Skeleton_set_body_centered_aopefset_shellordinal_container con_sso ->
      (Skeleton_set_body_centered_aopefset_shellordinal_container_v.name con_sso)
;;

let string_off = function
  | Skeleton_set_body_centered_aopefset_container_t.Skeleton_set_body_centered_aopefset_anycenter_container con_sac ->
      (Skeleton_set_body_centered_aopefset_anycenter_container_v.string_off con_sac)
	
  | Skeleton_set_body_centered_aopefset_container_t.Skeleton_set_body_centered_aopefset_onecenter_container con_sce ->
      (Skeleton_set_body_centered_aopefset_onecenter_container_v.string_off con_sce)

  | Skeleton_set_body_centered_aopefset_container_t.Skeleton_set_body_centered_aopefset_shellsymmetry_container con_sss ->
      (Skeleton_set_body_centered_aopefset_shellsymmetry_container_v.string_off con_sss)
	
  | Skeleton_set_body_centered_aopefset_container_t.Skeleton_set_body_centered_aopefset_shellordinal_container con_sso ->
      (Skeleton_set_body_centered_aopefset_shellordinal_container_v.string_off con_sso)
;;

let longname = function
  | Skeleton_set_body_centered_aopefset_container_t.Skeleton_set_body_centered_aopefset_anycenter_container con_sac ->
      (Skeleton_set_body_centered_aopefset_anycenter_container_v.longname con_sac)
	
  | Skeleton_set_body_centered_aopefset_container_t.Skeleton_set_body_centered_aopefset_onecenter_container con_sce ->
      (Skeleton_set_body_centered_aopefset_onecenter_container_v.longname con_sce)

  | Skeleton_set_body_centered_aopefset_container_t.Skeleton_set_body_centered_aopefset_shellsymmetry_container con_sss ->
      (Skeleton_set_body_centered_aopefset_shellsymmetry_container_v.longname con_sss)
	
  | Skeleton_set_body_centered_aopefset_container_t.Skeleton_set_body_centered_aopefset_shellordinal_container con_sso ->
      (Skeleton_set_body_centered_aopefset_shellordinal_container_v.longname con_sso)
;;

let fullname = function
  | Skeleton_set_body_centered_aopefset_container_t.Skeleton_set_body_centered_aopefset_anycenter_container con_sac ->
      (Skeleton_set_body_centered_aopefset_anycenter_container_v.fullname con_sac)
	
  | Skeleton_set_body_centered_aopefset_container_t.Skeleton_set_body_centered_aopefset_onecenter_container con_sce ->
      (Skeleton_set_body_centered_aopefset_onecenter_container_v.fullname con_sce)

  | Skeleton_set_body_centered_aopefset_container_t.Skeleton_set_body_centered_aopefset_shellsymmetry_container con_sss ->
      (Skeleton_set_body_centered_aopefset_shellsymmetry_container_v.fullname con_sss)
	
  | Skeleton_set_body_centered_aopefset_container_t.Skeleton_set_body_centered_aopefset_shellordinal_container con_sso ->
      (Skeleton_set_body_centered_aopefset_shellordinal_container_v.fullname con_sso)
;;


(* generated by ./do_container_set_body_trunc_4sibling_0containee_v.sh skeleton_set_body_centered_aopefset sas skeleton_set_body_centered_aopefset_anycenter sac skeleton_set_body_centered_aopefset_onecenter sce skeleton_set_body_centered_aopefset_shellsymmetry sss skeleton_set_body_centered_aopefset_shellordinal sso *)
(* using ./template_container_set_body_trunc_4sibling_0containee_v.ml *)
(* Done on jeudi 5 janvier 2017, 19:38:48 (UTC+0100) *)
