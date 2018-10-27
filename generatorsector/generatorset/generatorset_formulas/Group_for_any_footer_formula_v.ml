(** {3 Group_for_any_footer_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Group_for_any_footer_formula_v";
   "Needed-by : FGNR:Group_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Builders : Camlline";
   "Builder_data : Camlline";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_gaf =
  match for_gaf with
  | Group_for_any_footer_formula_t.Ending _ -> 
      Group_for_any_footer_symbol_t.Ending

  | Group_for_any_footer_formula_t.Double_semicolon _ -> 
      Group_for_any_footer_symbol_t.Double_semicolon






;;

(** {6 Naming_for_formula} *)

let name for_gaf = 
  let sym_gaf = symbol_of_formula for_gaf in
  Group_for_any_footer_symbol_v.name sym_gaf
;;
(* ***

let string_off for_gaf =
  let sym_gaf = symbol_of_formula for_gaf in
  Group_for_any_footer_symbol_v.string_off sym_gaf
;;

let longname for_gaf =
  Format.sprintf "Group_for_any_footer_formula_t.%s" 
    (String.capitalize (name for_gaf))

let fullname for_gaf =
  Format.sprintf "%s \"%s\"" (longname for_gaf) (string_off for_gaf)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_gaf soi_gro =
(***
  let tag_gaf = Tag_v.make sym_gaf soi_gro in
  let non_gaf = 
    Group_for_any_footer_tag_v.group_for_any_footer_nontup_off_group_for_any_footer_tag 
      tag_gaf 
  in
***)
  let sym_cal_l = Group_for_any_footer_interface_v.make sym_gaf in
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

let make sym_gaf soi_gro =
  let tag_cal_l = build_n_store sym_gaf soi_gro in

  match sym_gaf with 
  | Group_for_any_footer_symbol_t.Ending -> 
      Group_for_any_footer_formula_t.Ending tag_cal_l

  | Group_for_any_footer_symbol_t.Double_semicolon -> 
      Group_for_any_footer_formula_t.Double_semicolon tag_cal_l







;;

(** {6 Retrieving} *)

let retrieve tag_gaf =
  let soi_gro = Tag_v.sole_index_off_tag tag_gaf in
  let sym_gaf = Tag_v.entity_off_tag tag_gaf in
  make sym_gaf soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let camlline_tag_list_off_group_for_any_footer_formula for_gaf =
  match for_gaf with
  | Group_for_any_footer_formula_t.Ending tag_cal_l -> 
      tag_cal_l

  | Group_for_any_footer_formula_t.Double_semicolon tag_cal_l -> 
      tag_cal_l
;;

let camlline_tag_list_off_group_for_any_footer_tag tag_gaf =
  let for_gaf = retrieve tag_gaf in
  camlline_tag_list_off_group_for_any_footer_formula for_gaf
;; 

(** {6 Iterating_for_formula_for_any_footer.} *)

let map f_of_tag_cal for_gaf = 
  let tag_cal_l = camlline_tag_list_off_group_for_any_footer_formula for_gaf in
  List.map f_of_tag_cal tag_cal_l
;;

let iter f_of_tag_cal for_gaf = 
  let tag_cal_l = camlline_tag_list_off_group_for_any_footer_formula for_gaf in
  List.iter f_of_tag_cal tag_cal_l ;;

let map2 f_of_tag_cal for_gaf_1 for_gaf_2  = 
  let tag_cal_l_1 = camlline_tag_list_off_group_for_any_footer_formula for_gaf_1 in
  let tag_cal_l_2 = camlline_tag_list_off_group_for_any_footer_formula for_gaf_2 in
  List.map2 f_of_tag_cal tag_cal_l_1 tag_cal_l_2
;;

let iter2 f_of_tag_cal for_gaf_1 for_gaf_2 = 
  let tag_cal_l_1 = camlline_tag_list_off_group_for_any_footer_formula for_gaf_1 in
  let tag_cal_l_2 = camlline_tag_list_off_group_for_any_footer_formula for_gaf_2 in
  List.iter2 f_of_tag_cal tag_cal_l_1 tag_cal_l_2 
;;

