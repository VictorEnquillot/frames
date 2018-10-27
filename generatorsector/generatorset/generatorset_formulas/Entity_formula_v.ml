(** {3 Entity_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Entity_interface_v";
   "Current : FGNR:Entity_formula_v";
   "Needed-by : FGNR:";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_ent =
  match for_ent with
(* ***
  | Entity_formula_t.Entity_external_formula _ ->
      Utilities_v.not_yet_implemented nam_cod "contentfile_tag_list_off_entity_external_formula"

  | Entity_formula_t.Entity_fictive_formula for_enf -> 
      Utilities_v.not_yet_implemented nam_cod "contentfile_tag_list_off_entity_fictive_formula"
      Entity_fictive_formula_v.contentfile_tag_list_off_entity_fictive_formula for_enf
*** *)
  | Entity_formula_t.Entity_proper_formula for_enp ->
      Entity_symbol_t.Entity_proper_symbol 
	(Entity_proper_formula_v.symbol_of_formula for_enp)
;;

(** {6 Naming_for_formula} *)

let name for_ent = 
  let sym_ent = symbol_of_formula for_ent in
  Entity_symbol_v.name sym_ent
;;
(* ***

let string_off for_ent =
  let sym_ent = symbol_of_formula for_ent in
  Entity_symbol_v.string_off sym_ent
;;

let longname for_ent =
  Format.sprintf "Entity_formula_t.%s" 
    (String.capitalize (name for_ent))

let fullname for_ent =
  Format.sprintf "%s \"%s\"" (longname for_ent) (string_off for_ent)
;;
*** *)

(** {6 Building_and_storing} *)

(** {6 Making_for_formula} *)

let make sym_ent soi_ent =
  match sym_ent with 
  | Entity_symbol_t.Entity_external_symbol sym_ext ->
      Utilities_v.not_yet_implemented nam_cod "make Entity_external_symbol"
     (* Entity_external_formula_v.make sym_ext soi_ent*)
	
  | Entity_symbol_t.Entity_fictive_symbol sym_enf -> 
      Utilities_v.not_yet_implemented nam_cod "make Entity_fictive_symbol"
      (* Entity_fictive_formula_v.make sym_enf soi_ent *)

  | Entity_symbol_t.Entity_proper_symbol sym_enp ->
      Entity_formula_t.Entity_proper_formula
	(Entity_proper_formula_v.make sym_enp soi_ent)
;;

(** {6 Retrieving} *)

let retrieve tag_ent =
  let soi_ent = Tag_v.sole_index_off_tag tag_ent in
  let sym_ent = Tag_v.entity_off_tag tag_ent in
  make sym_ent soi_ent 
;; 

(** {6 Builder_tag_listing} *)

let contentfile_tag_list_off_entity_formula for_ent =
  match for_ent with
(* ***
  | Entity_formula_t.Entity_external_formula _ ->
      Utilities_v.not_yet_implemented nam_cod "contentfile_tag_list_off_entity_external_formula"

  | Entity_formula_t.Entity_fictive_formula for_enf -> 
      Utilities_v.not_yet_implemented nam_cod "contentfile_tag_list_off_entity_fictive_formula"
      Entity_fictive_formula_v.contentfile_tag_list_off_entity_fictive_formula for_enf
*** *)
  | Entity_formula_t.Entity_proper_formula for_enp ->
      Entity_proper_formula_v.contentfile_tag_list_off_entity_proper_formula for_enp
;;

let contentfile_tag_list_off_entity_tag tag_ent =
  let for_ent = retrieve tag_ent in
  contentfile_tag_list_off_entity_formula for_ent
;; 

let camlline_tag_list_off_entity_formula for_ent =
  let tag_cof_l = 
    contentfile_tag_list_off_entity_formula 
      for_ent 
  in
  let for_cof_l = List.map
      Contentfile_formula_v.retrieve 
      tag_cof_l 
  in
  let tag_cal_ll = List.map
      Contentfile_formula_v.camlline_tag_list_off_contentfile_formula 
      for_cof_l
  in 
  List.flatten tag_cal_ll
;;

let camlline_tag_list_off_entity_tag tag_ent =
  let for_ent = retrieve tag_ent in
  camlline_tag_list_off_entity_formula for_ent
;; 

(** {6 Iterating_for_formula} *)

let map f_of_tag_cof for_ent = 
  let tag_cof_l = contentfile_tag_list_off_entity_formula for_ent in
  List.map f_of_tag_cof tag_cof_l
;;

let iter f_of_tag_cof for_ent = 
  let tag_cof_l = contentfile_tag_list_off_entity_formula for_ent in
  List.iter f_of_tag_cof tag_cof_l ;;

let map2 f_of_tag_cof for_ent_1 for_ent_2  = 
  let tag_cof_l_1 = contentfile_tag_list_off_entity_formula for_ent_1 in
  let tag_cof_l_2 = contentfile_tag_list_off_entity_formula for_ent_2 in
  List.map2 f_of_tag_cof tag_cof_l_1 tag_cof_l_2
;;

let iter2 f_of_tag_cof for_ent_1 for_ent_2 = 
  let tag_cof_l_1 = contentfile_tag_list_off_entity_formula for_ent_1 in
  let tag_cof_l_2 = contentfile_tag_list_off_entity_formula for_ent_2 in
  List.iter2 f_of_tag_cof tag_cof_l_1 tag_cof_l_2 
;;

