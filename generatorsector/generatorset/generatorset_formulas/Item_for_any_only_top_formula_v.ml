(** {3 Item_for_any_only_top_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Item_for_any_only_top_interface_v";
   "Current : FGNR:Item_for_any_only_top_formula_v";
   "Needed-by : FGNR:Item_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_ifa =
  match for_ifa with
  | Item_for_any_only_top_formula_t.Ending _ -> 
      Item_for_any_only_top_symbol_t.Ending

  | Item_for_any_only_top_formula_t.Heading _ -> 
      Item_for_any_only_top_symbol_t.Heading
;;

(** {6 Naming_for_formula} *)

let name for_ifa = 
  let sym_ifa = symbol_of_formula for_ifa in
  Item_for_any_only_top_symbol_v.name sym_ifa
;;
(* ***

let string_off for_ifa =
  let sym_ifa = symbol_of_formula for_ifa in
  Item_for_any_only_top_symbol_v.string_off sym_ifa
;;

let longname for_ifa =
  Format.sprintf "Item_for_any_only_top_formula_t.%s" 
    (String.capitalize (name for_ifa))

let fullname for_ifa =
  Format.sprintf "%s \"%s\"" (longname for_ifa) (string_off for_ifa)
;;
* **)

(** {6 Building_and_storing} *)

let build_n_store sym_ifa soi_ite =
  let sym_cap_l = 
    Item_for_any_only_top_interface_v.make
      sym_ifa 
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

let make sym_ifa soi_cap =
  let tag_cap_l = build_n_store sym_ifa soi_cap in

  match sym_ifa with 
  | Item_for_any_only_top_symbol_t.Ending -> 
      Item_for_any_only_top_formula_t.Ending tag_cap_l

  | Item_for_any_only_top_symbol_t.Heading -> 
      Item_for_any_only_top_formula_t.Heading tag_cap_l
;;

(** {6 Builder_tag_listing} *)

let camlparagraph_tag_list_off_item_for_any_only_top_formula for_ifa =
  match for_ifa with
  | Item_for_any_only_top_formula_t.Ending tag_cap_l -> 
      tag_cap_l

  | Item_for_any_only_top_formula_t.Heading tag_cap_l -> 
      tag_cap_l
;;

let camlline_tag_list_off_item_for_any_only_top_formula for_ifa =
  let tag_cap_l = 
    camlparagraph_tag_list_off_item_for_any_only_top_formula 
      for_ifa 
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

(** {6 Iterating_for_formula_only_top_for_any.} *)

let map f_of_tag_cap for_ifa = 
  let tag_cap_l = camlparagraph_tag_list_off_item_for_any_only_top_formula for_ifa in
  List.map f_of_tag_cap tag_cap_l
;;

let iter f_of_tag_cap for_ifa = 
  let tag_cap_l = camlparagraph_tag_list_off_item_for_any_only_top_formula for_ifa in
  List.iter f_of_tag_cap tag_cap_l ;;

let map2 f_of_tag_cap for_ifa_1 for_ifa_2  = 
  let tag_cap_l_1 = camlparagraph_tag_list_off_item_for_any_only_top_formula for_ifa_1 in
  let tag_cap_l_2 = camlparagraph_tag_list_off_item_for_any_only_top_formula for_ifa_2 in
  List.map2 f_of_tag_cap tag_cap_l_1 tag_cap_l_2
;;

let iter2 f_of_tag_cap for_ifa_1 for_ifa_2 = 
  let tag_cap_l_1 = camlparagraph_tag_list_off_item_for_any_only_top_formula for_ifa_1 in
  let tag_cap_l_2 = camlparagraph_tag_list_off_item_for_any_only_top_formula for_ifa_2 in
  List.iter2 f_of_tag_cap tag_cap_l_1 tag_cap_l_2 
;;

