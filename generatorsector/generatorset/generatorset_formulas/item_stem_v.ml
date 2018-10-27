(** {3 Item_stem_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Item_stem_interface_v";
   "Current : FGNR:Item_stem_formula_v";
   "Needed-by : FGNR:Item_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing_for_formula} *)

let symbol_of_formula for_iii =
  match for_iii with

;;

(** {6 Naming_for_formula} *)

let name for_iii = 
  let sym_iii = symbol_of_formula for_iii in
  Item_stem_symbol_v.name sym_iii
;;
(* ***

let string_off for_iii =
  let sym_iii = symbol_of_formula for_iii in
  Item_stem_symbol_v.string_off sym_iii
;;

let longname for_iii =
  Format.sprintf "Item_stem_formula_t.%s" 
    (String.capitalize (name for_iii))

let fullname for_iii =
  Format.sprintf "%s \"%s\"" (longname for_iii) (string_off for_iii)
;;
* **)

(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_iii soi_ite =
  let tag_iii = Tag_v.make sym_iii soi_ite in
  let sex_iii = 
    Item_stem_tag_v.item_stem_sextup_off_item_stem_tag 
      tag_iii 
  in
  let sym_cap_l = Item_stem_interface_v.make sex_iii in
  let soi_cap_l =               (* Sole_index_datastructure_of_datastructure_of_sole_index *)
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
      1 (List.length sym_cap_l)
      soi_ite
  in

  let gss_of_sym = Generatorset_symbol_v.generatorset_symbol_of_camlparagraph_symbol in
  Tools_fgnr_v.store_builder_gss_datastructure gss_of_sym sym_cap_l soi_cap_l;
  
  List.map2 Tag_v.make sym_cap_l soi_cap_l
;;

(** {6 Making_for_formula} *)

let make sym_iii soi_ite =
  let tag_cap_l = build_n_store sym_iii soi_ite in

  match sym_iii with 

;;

(** {6 Retrieving_for_formula} *)

let retrieve tag_iii =
  let soi_ite = Tag_v.sole_index_off_tag tag_iii in
  let sym_iii = Tag_v.entity_off_tag tag_iii in
  make sym_iii soi_ite 
;; 

(** {6 Builder_tag_listing_off_formula} *)

let camlparagraph_tag_list_off_item_stem_formula for_iii =
  match for_iii with


;;

(** {6 Builder_tag_listing_off_tag} *)

let camlparagraph_tag_list_off_item_stem_tag tag_iii =
  let for_iii = retrieve tag_iii in
  camlparagraph_tag_list_off_item_stem_formula for_iii
;; 

(** {6 Builder_leaf_tag_listing_off_formula} *)

let camlline_tag_list_off_item_stem_formula for_iii =
  let tag_cap_l = 
    camlparagraph_tag_list_off_item_stem_formula 
      for_iii 
  in
  let for_cap_l = List.map
      Camlparagraph_formula_v.retrieve 
      tag_cap_l 
  in
  let tag_cal_ll = List.map
      Camlparagraph_formula_v.camlline_tag_list_off_camlparagraph_formula 
      for_cap_l
  in 
  List.flatten tag_cal_ll
;;

(** {6 Builder_leaf_tag_listing_off_tag} *)

let camlline_tag_list_off_item_stem_tag tag_iii =
  let for_iii = retrieve tag_iii in
  camlline_tag_list_off_item_stem_formula for_iii
;; 

(** {6 Iterating_for_formula} *)

let map f_of_tag_cap for_iii = 
  let tag_cap_l = camlparagraph_tag_list_off_item_stem_formula for_iii in
  List.map f_of_tag_cap tag_cap_l
;;

let iter f_of_tag_cap for_iii = 
  let tag_cap_l = camlparagraph_tag_list_off_item_stem_formula for_iii in
  List.iter f_of_tag_cap tag_cap_l ;;

(** {6 Iterating_two_functions_for_formula} *)

let map2 f_of_tag_cap for_iii_1 for_iii_2  = 
  let tag_cap_l_1 = camlparagraph_tag_list_off_item_stem_formula for_iii_1 in
  let tag_cap_l_2 = camlparagraph_tag_list_off_item_stem_formula for_iii_2 in
  List.map2 f_of_tag_cap tag_cap_l_1 tag_cap_l_2
;;

let iter2 f_of_tag_cap for_iii_1 for_iii_2 = 
  let tag_cap_l_1 = camlparagraph_tag_list_off_item_stem_formula for_iii_1 in
  let tag_cap_l_2 = camlparagraph_tag_list_off_item_stem_formula for_iii_2 in
  List.iter2 f_of_tag_cap tag_cap_l_1 tag_cap_l_2 
;;

