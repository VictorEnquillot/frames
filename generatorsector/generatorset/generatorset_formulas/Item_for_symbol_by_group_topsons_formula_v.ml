(** {3 Item_for_symbol_by_group_topsons_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Item_for_symbol_by_group_topsons_interface_v";
   "Current : FGNR:Item_for_symbol_by_group_topsons_formula_v";
   "Needed-by : FGNR:Item_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_igt =
  match for_igt with
  | Item_for_symbol_by_group_topsons_formula_t.Listing_for_symbol _ ->
     Item_for_symbol_by_group_topsons_symbol_t.Listing_for_symbol
  | Item_for_symbol_by_group_topsons_formula_t.Making_for_symbol _ ->
     Item_for_symbol_by_group_topsons_symbol_t.Making_for_symbol
  | Item_for_symbol_by_group_topsons_formula_t.Making_for_symbol_bare _ ->
     Item_for_symbol_by_group_topsons_symbol_t.Making_for_symbol_bare
  | Item_for_symbol_by_group_topsons_formula_t.Making_for_symbol_notleaf _ ->
     Item_for_symbol_by_group_topsons_symbol_t.Making_for_symbol_notleaf
  | Item_for_symbol_by_group_topsons_formula_t.Making_for_symbol_ofstring _ ->
     Item_for_symbol_by_group_topsons_symbol_t.Making_for_symbol_ofstring
  | Item_for_symbol_by_group_topsons_formula_t.Naming_for_symbol _ ->
     Item_for_symbol_by_group_topsons_symbol_t.Naming_for_symbol
  | Item_for_symbol_by_group_topsons_formula_t.Naming_for_symbol_bare _ ->
     Item_for_symbol_by_group_topsons_symbol_t.Naming_for_symbol_bare
  | Item_for_symbol_by_group_topsons_formula_t.Naming_for_symbol_notleaf _ ->
     Item_for_symbol_by_group_topsons_symbol_t.Naming_for_symbol_notleaf
  | Item_for_symbol_by_group_topsons_formula_t.Naming_for_symbol_ofstring _ ->
     Item_for_symbol_by_group_topsons_symbol_t.Naming_for_symbol_ofstring
  | Item_for_symbol_by_group_topsons_formula_t.String_offing_for_symbol _ ->
     Item_for_symbol_by_group_topsons_symbol_t.String_offing_for_symbol
  | Item_for_symbol_by_group_topsons_formula_t.String_offing_for_symbol_bare _ ->
     Item_for_symbol_by_group_topsons_symbol_t.String_offing_for_symbol_bare
  | Item_for_symbol_by_group_topsons_formula_t.String_offing_for_symbol_notleaf _ ->
     Item_for_symbol_by_group_topsons_symbol_t.String_offing_for_symbol_notleaf
  | Item_for_symbol_by_group_topsons_formula_t.String_offing_for_symbol_ofstring _ ->
     Item_for_symbol_by_group_topsons_symbol_t.String_offing_for_symbol_ofstring
  | Item_for_symbol_by_group_topsons_formula_t.Typing_for_symbol _ ->
     Item_for_symbol_by_group_topsons_symbol_t.Typing_for_symbol

;;

(** {6 Naming_for_formula} *)

let name for_igt = 
  let sym_igt = symbol_of_formula for_igt in
  Item_for_symbol_by_group_topsons_symbol_v.name sym_igt
;;
(* ***

let string_off for_igt =
  let sym_igt = symbol_of_formula for_igt in
  Item_for_symbol_by_group_topsons_symbol_v.string_off sym_igt
;;

let longname for_igt =
  Format.sprintf "Item_for_symbol_by_group_topsons_formula_t.%s" 
    (String.capitalize (name for_igt))

let fullname for_igt =
  Format.sprintf "%s \"%s\"" (longname for_igt) (string_off for_igt)
;;
* **)

(** {6 Building_and_storing} *)

let build_n_store sym_igt soi_ite =
  let sym_cap_l = 
    Item_for_symbol_by_group_topsons_interface_v.make 
      sym_igt
  in
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

let make sym_igt soi_cap =
  let tag_cap_l = build_n_store sym_igt soi_cap in

  match sym_igt with 
  | Item_for_symbol_by_group_topsons_symbol_t.Listing_for_symbol ->
     Item_for_symbol_by_group_topsons_formula_t.Listing_for_symbol tag_cap_l
  | Item_for_symbol_by_group_topsons_symbol_t.Making_for_symbol ->
     Item_for_symbol_by_group_topsons_formula_t.Making_for_symbol tag_cap_l
  | Item_for_symbol_by_group_topsons_symbol_t.Making_for_symbol_bare ->
     Item_for_symbol_by_group_topsons_formula_t.Making_for_symbol_bare tag_cap_l
  | Item_for_symbol_by_group_topsons_symbol_t.Making_for_symbol_notleaf ->
     Item_for_symbol_by_group_topsons_formula_t.Making_for_symbol_notleaf tag_cap_l
  | Item_for_symbol_by_group_topsons_symbol_t.Making_for_symbol_ofstring ->
     Item_for_symbol_by_group_topsons_formula_t.Making_for_symbol_ofstring tag_cap_l
  | Item_for_symbol_by_group_topsons_symbol_t.Naming_for_symbol ->
     Item_for_symbol_by_group_topsons_formula_t.Naming_for_symbol tag_cap_l
  | Item_for_symbol_by_group_topsons_symbol_t.Naming_for_symbol_bare ->
     Item_for_symbol_by_group_topsons_formula_t.Naming_for_symbol_bare tag_cap_l
  | Item_for_symbol_by_group_topsons_symbol_t.Naming_for_symbol_notleaf ->
     Item_for_symbol_by_group_topsons_formula_t.Naming_for_symbol_notleaf tag_cap_l
  | Item_for_symbol_by_group_topsons_symbol_t.Naming_for_symbol_ofstring ->
     Item_for_symbol_by_group_topsons_formula_t.Naming_for_symbol_ofstring tag_cap_l
  | Item_for_symbol_by_group_topsons_symbol_t.String_offing_for_symbol ->
     Item_for_symbol_by_group_topsons_formula_t.String_offing_for_symbol tag_cap_l
  | Item_for_symbol_by_group_topsons_symbol_t.String_offing_for_symbol_bare ->
     Item_for_symbol_by_group_topsons_formula_t.String_offing_for_symbol_bare tag_cap_l
  | Item_for_symbol_by_group_topsons_symbol_t.String_offing_for_symbol_notleaf ->
     Item_for_symbol_by_group_topsons_formula_t.String_offing_for_symbol_notleaf tag_cap_l
  | Item_for_symbol_by_group_topsons_symbol_t.String_offing_for_symbol_ofstring ->
     Item_for_symbol_by_group_topsons_formula_t.String_offing_for_symbol_ofstring tag_cap_l
  | Item_for_symbol_by_group_topsons_symbol_t.Typing_for_symbol ->
     Item_for_symbol_by_group_topsons_formula_t.Typing_for_symbol tag_cap_l

;;

(** {6 Builder_tag_listing} *)

let camlparagraph_tag_list_off_item_for_symbol_by_group_topsons_formula for_igt =
  match for_igt with
  | Item_for_symbol_by_group_topsons_formula_t.Listing_for_symbol tag_cap_l -> tag_cap_l
  | Item_for_symbol_by_group_topsons_formula_t.Making_for_symbol tag_cap_l -> tag_cap_l
  | Item_for_symbol_by_group_topsons_formula_t.Making_for_symbol_bare tag_cap_l -> tag_cap_l
  | Item_for_symbol_by_group_topsons_formula_t.Making_for_symbol_notleaf tag_cap_l -> tag_cap_l
  | Item_for_symbol_by_group_topsons_formula_t.Making_for_symbol_ofstring tag_cap_l -> tag_cap_l
  | Item_for_symbol_by_group_topsons_formula_t.Naming_for_symbol tag_cap_l -> tag_cap_l
  | Item_for_symbol_by_group_topsons_formula_t.Naming_for_symbol_bare tag_cap_l -> tag_cap_l
  | Item_for_symbol_by_group_topsons_formula_t.Naming_for_symbol_notleaf tag_cap_l -> tag_cap_l
  | Item_for_symbol_by_group_topsons_formula_t.Naming_for_symbol_ofstring tag_cap_l -> tag_cap_l
  | Item_for_symbol_by_group_topsons_formula_t.String_offing_for_symbol tag_cap_l -> tag_cap_l
  | Item_for_symbol_by_group_topsons_formula_t.String_offing_for_symbol_bare tag_cap_l -> tag_cap_l
  | Item_for_symbol_by_group_topsons_formula_t.String_offing_for_symbol_notleaf tag_cap_l -> tag_cap_l
  | Item_for_symbol_by_group_topsons_formula_t.String_offing_for_symbol_ofstring tag_cap_l -> tag_cap_l
  | Item_for_symbol_by_group_topsons_formula_t.Typing_for_symbol tag_cap_l -> tag_cap_l

;;

let camlline_tag_list_off_item_for_symbol_by_group_topsons_formula for_igt =
  let tag_cap_l = 
    camlparagraph_tag_list_off_item_for_symbol_by_group_topsons_formula 
      for_igt 
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

(** {6 Iterating_for_formula_by_group_topsons_for_symbol.} *)

let map f_of_tag_cap for_igt = 
  let tag_cap_l = camlline_tag_list_off_item_for_symbol_by_group_topsons_formula for_igt in
  List.map f_of_tag_cap tag_cap_l
;;

let iter f_of_tag_cap for_igt = 
  let tag_cap_l = camlline_tag_list_off_item_for_symbol_by_group_topsons_formula for_igt in
  List.iter f_of_tag_cap tag_cap_l ;;

let map2 f_of_tag_cap for_igt_1 for_igt_2  = 
  let tag_cap_l_1 = camlline_tag_list_off_item_for_symbol_by_group_topsons_formula for_igt_1 in
  let tag_cap_l_2 = camlline_tag_list_off_item_for_symbol_by_group_topsons_formula for_igt_2 in
  List.map2 f_of_tag_cap tag_cap_l_1 tag_cap_l_2
;;

let iter2 f_of_tag_cap for_igt_1 for_igt_2 = 
  let tag_cap_l_1 = camlline_tag_list_off_item_for_symbol_by_group_topsons_formula for_igt_1 in
  let tag_cap_l_2 = camlline_tag_list_off_item_for_symbol_by_group_topsons_formula for_igt_2 in
  List.iter2 f_of_tag_cap tag_cap_l_1 tag_cap_l_2 
;;

