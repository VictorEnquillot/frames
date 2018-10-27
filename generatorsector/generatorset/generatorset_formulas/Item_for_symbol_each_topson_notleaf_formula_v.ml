(** {3 Item_for_symbol_each_topson_notleaf_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Item_for_symbol_each_topson_notleaf_interface_v";
   "Current : FGNR:Item_for_symbol_each_topson_notleaf_formula_v";
   "Needed-by : FGNR:Item_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_iff =
  match for_iff with
  | Item_for_symbol_each_topson_notleaf_formula_t.Extracting_topson_notleaf_for_symbol _ -> 
      Item_for_symbol_each_topson_notleaf_symbol_t.Extracting_topson_notleaf_for_symbol

  | Item_for_symbol_each_topson_notleaf_formula_t.Querying_topson_notleaf_for_symbol _ -> 
      Item_for_symbol_each_topson_notleaf_symbol_t.Querying_topson_notleaf_for_symbol

  | Item_for_symbol_each_topson_notleaf_formula_t.Upgrading_topson_notleaf_for_symbol _ -> 
      Item_for_symbol_each_topson_notleaf_symbol_t.Upgrading_topson_notleaf_for_symbol

;;

(** {6 Naming_for_symbol} *)

let name for_iff = 
  let sym_iff = symbol_of_formula for_iff in
  Item_for_symbol_each_topson_notleaf_symbol_v.name sym_iff
;;
(* ***

let string_off for_iff =
  let sym_iff = symbol_of_formula for_iff in
  Item_for_symbol_each_topson_notleaf_symbol_v.string_off sym_iff
;;

let longname for_iff =
  Format.sprintf "Item_for_symbol_each_topson_notleaf_formula_t.%s" 
    (String.capitalize (name for_iff))

let fullname for_iff =
  Format.sprintf "%s \"%s\"" (longname for_iff) (string_off for_iff)
;;
* **)

(** {6 Building_and_storing} *)

let build_n_store sym_iff soi_ite =
  let tag_iff = Tag_v.make sym_iff soi_ite in
  let sex_iff = 
    Item_for_symbol_each_topson_notleaf_tag_v.item_for_symbol_each_topson_notleaf_sextup_off_item_for_symbol_each_topson_notleaf_tag 
      tag_iff 
  in
  let sym_cap_l = 
    Item_for_symbol_each_topson_notleaf_interface_v.make_of_tuple
      sex_iff
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

(** {6 Making_for_symbol} *)

let make sym_iff soi_cap =
  let tag_cap_l = build_n_store sym_iff soi_cap in

  match sym_iff with 
  | Item_for_symbol_each_topson_notleaf_symbol_t.Extracting_topson_notleaf_for_symbol -> 
      Item_for_symbol_each_topson_notleaf_formula_t.Extracting_topson_notleaf_for_symbol tag_cap_l

  | Item_for_symbol_each_topson_notleaf_symbol_t.Querying_topson_notleaf_for_symbol -> 
      Item_for_symbol_each_topson_notleaf_formula_t.Querying_topson_notleaf_for_symbol tag_cap_l

  | Item_for_symbol_each_topson_notleaf_symbol_t.Upgrading_topson_notleaf_for_symbol -> 
      Item_for_symbol_each_topson_notleaf_formula_t.Upgrading_topson_notleaf_for_symbol tag_cap_l
;;

(** {6 Builder_tag_listing} *)

let camlparagraph_tag_list_off_item_for_symbol_each_topson_notleaf_formula for_iff =
  match for_iff with
  | Item_for_symbol_each_topson_notleaf_formula_t.Extracting_topson_notleaf_for_symbol tag_cap_l -> 
      tag_cap_l

  | Item_for_symbol_each_topson_notleaf_formula_t.Querying_topson_notleaf_for_symbol tag_cap_l -> 
      tag_cap_l

  | Item_for_symbol_each_topson_notleaf_formula_t.Upgrading_topson_notleaf_for_symbol tag_cap_l -> 
      tag_cap_l

;;

let camlline_tag_list_off_item_for_symbol_each_topson_notleaf_formula for_iff =
  let tag_cap_l = 
    camlparagraph_tag_list_off_item_for_symbol_each_topson_notleaf_formula 
      for_iff 
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

(** {6 Iterating_for_symbol_each_topson_notleaf_for_symbol.} *)

let map f_of_tag_cap for_iff = 
  let tag_cap_l = camlline_tag_list_off_item_for_symbol_each_topson_notleaf_formula for_iff in
  List.map f_of_tag_cap tag_cap_l
;;

let iter f_of_tag_cap for_iff = 
  let tag_cap_l = camlline_tag_list_off_item_for_symbol_each_topson_notleaf_formula for_iff in
  List.iter f_of_tag_cap tag_cap_l ;;

let map2 f_of_tag_cap for_iff_1 for_iff_2  = 
  let tag_cap_l_1 = camlline_tag_list_off_item_for_symbol_each_topson_notleaf_formula for_iff_1 in
  let tag_cap_l_2 = camlline_tag_list_off_item_for_symbol_each_topson_notleaf_formula for_iff_2 in
  List.map2 f_of_tag_cap tag_cap_l_1 tag_cap_l_2
;;

let iter2 f_of_tag_cap for_iff_1 for_iff_2 = 
  let tag_cap_l_1 = camlline_tag_list_off_item_for_symbol_each_topson_notleaf_formula for_iff_1 in
  let tag_cap_l_2 = camlline_tag_list_off_item_for_symbol_each_topson_notleaf_formula for_iff_2 in
  List.iter2 f_of_tag_cap tag_cap_l_1 tag_cap_l_2 
;;

