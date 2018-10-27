(** {3 This_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FMMM:This_container_v";
   "Needs : FMMM:Sibling_1_container_v";
   "Needs : FMMM:Sibling_2_container_v";
   "Needs : FMMM:Sibling_3_container_v";
   "Needs : FMMM:Sibling_4_container_v";
   "Needs : FMMM:Sibling_5_container_v";
   "Needs : DMMM:Maint_any_category_by_sole_index_extractor_v";
   "Needs : DMMM:Maint_fence_by_maint_tag_provider_v";
   "Needed-by: ";
   "Definition : a Builder (for an Entity of a Domain) is a son of its B-Tree i.e. Coerced Up";
   "Definition : a Builder of a fence Container is its own Tag Coerced Up";
   "Builder_tag : Maint_tag";
   "Definition : a Building is the same Datastructure as a Container but filled with Builders"; 
   "Definition : a Containee is a Builder expressed in the lowest subtype compatible with the Datastructure of the Container";
   "Definition : a Containee is an element of the Datastructure of the Container of an Entity";
   "Definition : the Containee Tag of a fence Container is its own Tag";
   "Containee_tag : Conee_tag";
   "Definition : the Fence is the Tag list (Coerced Up) of the Leaf Entities of the B-Tree of any Entity";
   "Fence : Maint_tag list";
   "What-is-it : Up_coercion to This type from Sibling_1 and Sibling_2";
   "What-is-it : it is the Top container as a List of Conee Tag";
   "Author : François Colonna 21 mai 2017 at 12:02:20+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Builders} *)

(** {6 Building as Builder Tag list} *)

let building_of_tag tag_ttt =
  let soi_ttt = Tag_v.sole_index_off_tag tag_ttt in
  let sym_ttt = Tag_v.entity_off_tag tag_ttt in
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

  | This_symbol_t.Sibling_4_symbol sym_sib_4 ->
      let tag_sib_4 = Tag_v.make sym_sib_4 soi_ttt in
      Sibling_4_container_v.builder_tag_list_of_tag tag_sib_4

  | This_symbol_t.Sibling_5_symbol sym_sib_5 ->
      let tag_sib_5 = Tag_v.make sym_sib_5 soi_ttt in
      Sibling_5_container_v.builder_tag_list_of_tag tag_sib_5
;;

(** {9 Builder Tag list} *)

let builder_tag_list_of_tag tag_ttt =
  building_of_tag tag_ttt
;;

(** {9 Builder Tag Tuple} *)

let builder_tag_tuple_of_tag tag_ttt =
  let tag_bui_l = builder_tag_list_of_tag tag_ttt in
  Tuple_v.tuple_of_list tag_bui_l
;;

(** {6 Container_of_tag : Containee Datastructure} *)

let container_of_tag tag_ttt =
  let soi_ttt = Tag_v.sole_index_off_tag tag_ttt in
  let sym_ttt = Tag_v.entity_off_tag tag_ttt in
  match sym_ttt with
  | This_symbol_t.Sibling_1_symbol sym_sib_1 ->
      let tag_sib_1 = Tag_v.make sym_sib_1 soi_ttt in
      This_container_t.Sibling_1_container
	(Sibling_1_container_v.container_of_tag tag_sib_1)

  | This_symbol_t.Sibling_2_symbol sym_sib_2 ->
      let tag_sib_2 = Tag_v.make sym_sib_2 soi_ttt in
      This_container_t.Sibling_2_container
	(Sibling_2_container_v.container_of_tag tag_sib_2)

  | This_symbol_t.Sibling_3_symbol sym_sib_3 ->
      let tag_sib_3 = Tag_v.make sym_sib_3 soi_ttt in
      This_container_t.Sibling_3_container
	(Sibling_3_container_v.container_of_tag tag_sib_3)

  | This_symbol_t.Sibling_4_symbol sym_sib_4 ->
      let tag_sib_4 = Tag_v.make sym_sib_4 soi_ttt in
      This_container_t.Sibling_4_container
	(Sibling_4_container_v.container_of_tag tag_sib_4)

  | This_symbol_t.Sibling_5_symbol sym_sib_5 ->
      let tag_sib_5 = Tag_v.make sym_sib_5 soi_ttt in
      This_container_t.Sibling_5_container
	(Sibling_5_container_v.container_of_tag tag_sib_5)
;;

(** {6 Coercing up Container} *)

let this_container_of_sibling_1_container con_sib_1 =
  This_container_t.Sibling_1_container con_sib_1 
;;

let this_container_of_sibling_2_container con_sib_2 =
  This_container_t.Sibling_2_container con_sib_2 
;;

let this_container_of_sibling_3_container con_sib_3 =
  This_container_t.Sibling_3_container con_sib_3 
;;

let this_container_of_sibling_4_container con_sib_4 =
  This_container_t.Sibling_4_container con_sib_4 
;;

let this_container_of_sibling_5_container con_sib_5 =
  This_container_t.Sibling_5_container con_sib_5 
;;

(** {6 Coercing down} *)

let sibling_1_container_off_this_container = function
  | This_container_t.Sibling_1_container con_sib_1 -> con_sib_1
  | _ -> failwith "Not_one_sibling_1:This_container.sibling_1_container_off_this_container"
;;

let sibling_2_container_off_this_container = function
  | This_container_t.Sibling_2_container con_sib_2 -> con_sib_2
  | _ -> failwith "Not_one_sibling_2:This_container.sibling_2_container_off_this_container"
;;

let sibling_3_container_off_this_container = function
  | This_container_t.Sibling_3_container con_sib_3 -> con_sib_3
  | _ -> failwith "Not_one_sibling_3:This_container.sibling_3_container_off_this_container"
;;

let sibling_4_container_off_this_container = function
  | This_container_t.Sibling_4_container con_sib_4 -> con_sib_4
  | _ -> failwith "Not_one_sibling_4:This_container.sibling_4_container_off_this_container"
;;

let sibling_5_container_off_this_container = function
  | This_container_t.Sibling_5_container con_sib_5 -> con_sib_5
  | _ -> failwith "Not_one_sibling_5:This_container.sibling_5_container_off_this_container"
;;

(** {6 Fence *)

let fence_as_list_of_tag tag_ttt =
  Maint_fence_by_maint_tag_provider_v.provide tag_ttt
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
        
  | This_container_t.Sibling_4_container con_sib_4 ->
      (Sibling_4_container_v.name con_sib_4)

  | This_container_t.Sibling_5_container con_sib_5 ->
      (Sibling_5_container_v.name con_sib_5)
;;

let string_off = function
  | This_container_t.Sibling_1_container con_sib_1 ->
      (Sibling_1_container_v.string_off con_sib_1)
        
  | This_container_t.Sibling_2_container con_sib_2 ->
      (Sibling_2_container_v.string_off con_sib_2)

  | This_container_t.Sibling_3_container con_sib_3 ->
      (Sibling_3_container_v.string_off con_sib_3)
        
  | This_container_t.Sibling_4_container con_sib_4 ->
      (Sibling_4_container_v.string_off con_sib_4)

  | This_container_t.Sibling_5_container con_sib_5 ->
      (Sibling_5_container_v.string_off con_sib_5)
;;

let longname = function
  | This_container_t.Sibling_1_container con_sib_1 ->
      (Sibling_1_container_v.longname con_sib_1)
        
  | This_container_t.Sibling_2_container con_sib_2 ->
      (Sibling_2_container_v.longname con_sib_2)

  | This_container_t.Sibling_3_container con_sib_3 ->
      (Sibling_3_container_v.longname con_sib_3)
        
  | This_container_t.Sibling_4_container con_sib_4 ->
      (Sibling_4_container_v.longname con_sib_4)

  | This_container_t.Sibling_5_container con_sib_5 ->
      (Sibling_5_container_v.longname con_sib_5)
;;

let fullname = function
  | This_container_t.Sibling_1_container con_sib_1 ->
      (Sibling_1_container_v.fullname con_sib_1)
        
  | This_container_t.Sibling_2_container con_sib_2 ->
      (Sibling_2_container_v.fullname con_sib_2)

  | This_container_t.Sibling_3_container con_sib_3 ->
      (Sibling_3_container_v.fullname con_sib_3)
        
  | This_container_t.Sibling_4_container con_sib_4 ->
      (Sibling_4_container_v.fullname con_sib_4)

  | This_container_t.Sibling_5_container con_sib_5 ->
      (Sibling_5_container_v.fullname con_sib_5)
;;

