(** {3 Usagefile_stem_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Usagefile_stem_formula_v";
   "Needed-by : FGNR:Usagefile_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_iii =
  match for_iii with
  | Usagefile_stem_formula_t.Leaf_1 _ -> 
      Usagefile_stem_symbol_t.Leaf_1

  | Usagefile_stem_formula_t.Leaf_2 _ -> 
      Usagefile_stem_symbol_t.Leaf_2

  | Usagefile_stem_formula_t.Leaf_3 _ -> 
      Usagefile_stem_symbol_t.Leaf_3

  | Usagefile_stem_formula_t.Leaf_4 _ -> 
      Usagefile_stem_symbol_t.Leaf_4

  | Usagefile_stem_formula_t.Leaf_5 _ -> 
      Usagefile_stem_symbol_t.Leaf_5

  | Usagefile_stem_formula_t.Leaf_6 _ -> 
      Usagefile_stem_symbol_t.Leaf_6
;;

(** {6 Naming_for_formula} *)

let name for_iii = 
  let sym_iii = symbol_of_formula for_iii in
  Usagefile_stem_symbol_v.name sym_iii
;;
(* ***

let string_off for_iii =
  let sym_iii = symbol_of_formula for_iii in
  Usagefile_stem_symbol_v.string_off sym_iii
;;

let longname for_iii =
  Format.sprintf "Usagefile_stem_formula_t.%s" 
    (String.capitalize (name for_iii))

let fullname for_iii =
  Format.sprintf "%s \"%s\"" (longname for_iii) (string_off for_iii)
;;
* **)

(** {6 Building_and_storing} *)

let build_n_store sym_uuu soi_usf =
  let tag_uuu = Tag_v.make sym_uuu soi_usf in
  let qui_uuu = 
    Usagefile_stem_tag_v.usagefile_stem_quitup_off_usagefile_stem_tag
      tag_uuu 
  in
  let sym_ite_l = Usagefile_stem_interface_v.make sym_uuu soi_usf in
  let soi_ite_l =               (* Sole_index_datastructure_of_datastructure_of_sole_index *)
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
      1 (List.length sym_ite_l)
      soi_usf
  in

  let gss_of_sym = Generatorset_symbol_v.generatorset_symbol_of_item_symbol in
  Tools_fgnr_v.store_builder_gss_datastructure gss_of_sym sym_ite_l soi_ite_l;
  
  List.map2 Tag_v.make sym_ite_l soi_ite_l in
;;

(** {6 Making_for_formula} *)

let make sym_uuu soi_usf =
  let tag_ite_l = build_n_store sym_uuu soi_usf in

  match sym_uuu with 
  | Usagefile_stem_symbol_t.Leaf_1 -> 
      Usagefile_stem_formula_t.Leaf_1 tag_ite_l

  | Usagefile_stem_symbol_t.Leaf_2 -> 
      Usagefile_stem_formula_t.Leaf_2 tag_ite_l

  | Usagefile_stem_symbol_t.Leaf_3 _ -> 
      Usagefile_stem_formula_t.Leaf_3 tag_ite_l

  | Usagefile_stem_symbol_t.Leaf_4 -> 
      Usagefile_stem_formula_t.Leaf_4 tag_ite_l

  | Usagefile_stem_symbol_t.Leaf_5 -> 
      Usagefile_stem_formula_t.Leaf_5 tag_ite_l

  | Usagefile_stem_symbol_t.Leaf_6 _ -> 
      Usagefile_stem_formula_t.Leaf_6 tag_ite_l

;;

(** {6 Builder_tag_listing} *)

let item_tag_list_off_usagefile_stem_formula for_uuu =
  match for_uuu with
  | Usagefile_stem_formula_t.Leaf_1 tag_ite_l -> 
      tag_ite_l

  | Usagefile_stem_formula_t.Leaf_2 tag_ite_l -> 
      tag_ite_l

  | Usagefile_stem_formula_t.Leaf_3 tag_ite_l -> 
      tag_ite_l

  | Usagefile_stem_formula_t.Leaf_4 tag_ite_l -> 
      tag_ite_l

  | Usagefile_stem_formula_t.Leaf_5 tag_ite_l -> 
      tag_ite_l

  | Usagefile_stem_formula_t.Leaf_6 tag_ite_l -> 
      tag_ite_l

;;

let camlline_tag_list_off_usagefile_stem_formula for_uuu =
  let tag_ite_l = 
    item_tag_list_off_usagefile_stem_formula 
      for_uuu 
  in
  let for_ite_l = List.map
      Item_formula_v.retrieve 
      tag_ite_l 
  in
  let tag_cal_ll = List.map
      Item_formula_v.camlline_tag_list_off_item_formula 
      for_ite_l
  in 
  List.flatten tag_cal_ll
;;

(** {6 Iterating_for_formula_stem.} *)

let map f_of_tag_ite for_uuu = 
  let tag_ite_l = item_tag_list_off_usagefile_stem_formula for_uuu in
  List.map f_of_tag_ite tag_ite_l
;;

let iter f_of_tag_ite for_uuu = 
  let tag_ite_l = item_tag_list_off_usagefile_stem_formula for_uuu in
  List.iter f_of_tag_ite tag_ite_l ;;

let map2 f_of_tag_ite for_uuu_1 for_uuu_2  = 
  let tag_ite_l_1 = item_tag_list_off_usagefile_stem_formula for_uuu_1 in
  let tag_ite_l_2 = item_tag_list_off_usagefile_stem_formula for_uuu_2 in
  List.map2 f_of_tag_ite tag_ite_l_1 tag_ite_l_2
;;

let iter2 f_of_tag_ite for_uuu_1 for_uuu_2 = 
  let tag_ite_l_1 = item_tag_list_off_usagefile_stem_formula for_uuu_1 in
  let tag_ite_l_2 = item_tag_list_off_usagefile_stem_formula for_uuu_2 in
  List.iter2 f_of_tag_ite tag_ite_l_1 tag_ite_l_2 
;;

