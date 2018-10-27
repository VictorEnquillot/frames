(** {3 Group_stem_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Group_stem_interface_v";
   "Current : FGNR:Group_stem_formula_v";
   "Needed-by : FGNR:Group_formula";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_ggg =
  match for_ggg with
  | Group_stem_formula_t.Leaf_1 _ -> 
      Group_stem_symbol_t.Leaf_1

;;

(** {6 Naming_for_formula} *)

let name for_ggg = 
  let sym_ggg = symbol_of_formula for_ggg in
  Group_stem_symbol_v.name sym_ggg
;;
(* ***

let string_off for_ggg =
  let sym_ggg = symbol_of_formula for_ggg in
  Group_stem_symbol_v.string_off sym_ggg
;;

let longname for_ggg =
  Format.sprintf "Group_stem_formula_t.%s" 
    (String.capitalize (name for_ggg))

let fullname for_ggg =
  Format.sprintf "%s \"%s\"" (longname for_ggg) (string_off for_ggg)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_ggg soi_gro =
  let tag_ggg = Tag_v.make sym_ggg soi_gro in
  let non_ggg = 
    Group_stem_tag_v.group_stem_nontup_off_group_stem_tag 
      tag_ggg 
  in
  let sym_cal_l = Group_stem_interface_v.make non_ggg soi_gro in
  let soi_cal_l =               (* Sole_index_datastructure_of_datastructure_of_sole_index *)
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
      1 (List.length sym_cal_l)
      soi_gro
  in

  let gss_of_sym = Generatorset_symbol_v.generatorset_symbol_of_camlline_symbol in
  Tools_fgnr_v.store_builder_gss_datastructure gss_of_sym sym_cal_l soi_cal_l;
  
  List.map2 Tag_v.make sym_cal_l soi_cal_l
;;

(** {6 Making_for_formula} *)

let make sym_ggg soi_gro =
  let tag_cal_l = build_n_store sym_ggg soi_gro in

  match sym_ggg with 
  | Group_stem_symbol_t.Leaf_1 -> 
      Group_stem_formula_t.Leaf_1 tag_cal_l

;;

(** {6 Retrieving} *)

let retrieve tag_ggg =
  let soi_gro = Tag_v.sole_index_off_tag tag_ggg in
  let sym_ggg = Tag_v.entity_off_tag tag_ggg in
  make sym_ggg soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let camlline_tag_list_off_group_stem_formula for_ggg =
  match for_ggg with
  | Group_stem_formula_t.Leaf_1 tag_cal_l -> 
      tag_cal_l
;;

let camlline_tag_list_off_group_stem_tag tag_ggg =
  let for_ggg = retrieve tag_ggg in
  camlline_tag_list_off_group_stem_formula for_ggg
;; 

(** {6 Iterating_for_formula_stem.} *)

let map f_of_tag_cal for_ggg = 
  let tag_cal_l = camlline_tag_list_off_group_stem_formula for_ggg in
  List.map f_of_tag_cal tag_cal_l
;;

let iter f_of_tag_cal for_ggg = 
  let tag_cal_l = camlline_tag_list_off_group_stem_formula for_ggg in
  List.iter f_of_tag_cal tag_cal_l ;;

let map2 f_of_tag_cal for_ggg_1 for_ggg_2  = 
  let tag_cal_l_1 = camlline_tag_list_off_group_stem_formula for_ggg_1 in
  let tag_cal_l_2 = camlline_tag_list_off_group_stem_formula for_ggg_2 in
  List.map2 f_of_tag_cal tag_cal_l_1 tag_cal_l_2
;;

let iter2 f_of_tag_cal for_ggg_1 for_ggg_2 = 
  let tag_cal_l_1 = camlline_tag_list_off_group_stem_formula for_ggg_1 in
  let tag_cal_l_2 = camlline_tag_list_off_group_stem_formula for_ggg_2 in
  List.iter2 f_of_tag_cal tag_cal_l_1 tag_cal_l_2 
;;

