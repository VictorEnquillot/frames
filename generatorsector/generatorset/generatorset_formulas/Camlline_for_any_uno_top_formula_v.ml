(** {3 Camlline_for_any_uno_top_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_for_any_uno_top_formula_v";
   "Needed-by : FGNR:Camlline_uno_top_formula_v";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "Remark : It is a Stem type";
   "Improve : ";
   "Example : ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_cut =
  match for_cut with
  | Camlline_for_any_uno_top_formula_t.Format_sprintf_doublequote_et_any_tdot_percents_doublequote _ ->
     Camlline_for_any_uno_top_symbol_t.Format_sprintf_doublequote_et_any_tdot_percents_doublequote
  | Camlline_for_any_uno_top_formula_t.Let_fullname_ac_at_equal _ ->
     Camlline_for_any_uno_top_symbol_t.Let_fullname_ac_at_equal
  | Camlline_for_any_uno_top_formula_t.Let_longname_ac_at_equal _ ->
     Camlline_for_any_uno_top_symbol_t.Let_longname_ac_at_equal
  | Camlline_for_any_uno_top_formula_t.Let_name_ac_at_equal _ ->
     Camlline_for_any_uno_top_symbol_t.Let_name_ac_at_equal
  | Camlline_for_any_uno_top_formula_t.Let_retrieve_tag_top_equal _ ->
     Camlline_for_any_uno_top_symbol_t.Let_retrieve_tag_top_equal
  | Camlline_for_any_uno_top_formula_t.Let_string_off_ac_at_equal _ ->
     Camlline_for_any_uno_top_symbol_t.Let_string_off_ac_at_equal
  | Camlline_for_any_uno_top_formula_t.Lpar_string_dot_capitalize_lpar_name_ac_at_rpar_rpar _ ->
     Camlline_for_any_uno_top_symbol_t.Lpar_string_dot_capitalize_lpar_name_ac_at_rpar_rpar
  | Camlline_for_any_uno_top_formula_t.Double_quote_current _ ->
     Camlline_for_any_uno_top_symbol_t.Double_quote_current
  | Camlline_for_any_uno_top_formula_t.Sprintf_for_any_fullname _ ->
     Camlline_for_any_uno_top_symbol_t.Sprintf_for_any_fullname
  | Camlline_for_any_uno_top_formula_t.Sprintf_for_any_longname _ ->
     Camlline_for_any_uno_top_symbol_t.Sprintf_for_any_longname
  | Camlline_for_any_uno_top_formula_t.Try_name_of_topson_bare _ ->
     Camlline_for_any_uno_top_symbol_t.Try_name_of_topson_bare
  | Camlline_for_any_uno_top_formula_t.Try_name_of_topson_notleaf _ ->
     Camlline_for_any_uno_top_symbol_t.Try_name_of_topson_notleaf
  | Camlline_for_any_uno_top_formula_t.Try_name_of_topson_ofstring _ ->
     Camlline_for_any_uno_top_symbol_t.Try_name_of_topson_ofstring
  | Camlline_for_any_uno_top_formula_t.Try_string_off_of_topson_bare _ ->
     Camlline_for_any_uno_top_symbol_t.Try_string_off_of_topson_bare
  | Camlline_for_any_uno_top_formula_t.Try_string_off_of_topson_notleaf _ ->
     Camlline_for_any_uno_top_symbol_t.Try_string_off_of_topson_notleaf
  | Camlline_for_any_uno_top_formula_t.Try_string_off_of_topson_ofstring _ ->
     Camlline_for_any_uno_top_symbol_t.Try_string_off_of_topson_ofstring

;;

(** {6 Naming_for_formula} *)

let name for_cut = 
  let sym_cut = symbol_of_formula for_cut in
  Camlline_for_any_uno_top_symbol_v.name sym_cut
;;
(* ***

let string_off for_cut =
  let sym_cut = symbol_of_formula for_cut in
  Camlline_for_any_uno_top_symbol_v.string_off sym_cut
;;

let longname for_cut =
  Format.sprintf "Camlline_for_any_uno_top_formula_t.%s" 
    (String.capitalize (name for_cut))

let fullname for_cut =
  Format.sprintf "%s \"%s\"" (longname for_cut) (string_off for_cut)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_cut soi_cal =
  let tag_cut = Tag_v.make sym_cut soi_cal in
  let dec_cut = 
    Camlline_for_any_uno_top_tag_v.camlline_for_any_uno_top_dectup_off_camlline_for_any_uno_top_tag 
      tag_cut 
  in
  let sym_ent_top = Decuplet_v.right_third_off_decuplet dec_cut in
  let sym_ent_l = 
    Camlline_for_any_uno_top_interface_v.make 
      sym_cut
      sym_ent_top
  in
  let soi_ent_l =               (* Sole_index_datastructure_of_datastructure_of_sole_index *)
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
      1 (List.length sym_ent_l)
      soi_cal
  in

  let gss_of_sym = Generatorset_symbol_v.generatorset_symbol_of_entity_symbol in
  Tools_fgnr_v.store_builder_gss_datastructure gss_of_sym sym_ent_l soi_ent_l;
  
  List.map2 Tag_v.make sym_ent_l soi_ent_l
;;

(** {6 Making_for_formula} *)

let make sym_cut soi_cal =
  let tag_ent_l = build_n_store sym_cut soi_cal in

  match sym_cut with
  | Camlline_for_any_uno_top_symbol_t.Format_sprintf_doublequote_et_any_tdot_percents_doublequote ->
     Camlline_for_any_uno_top_formula_t.Format_sprintf_doublequote_et_any_tdot_percents_doublequote tag_ent_l
  | Camlline_for_any_uno_top_symbol_t.Let_fullname_ac_at_equal ->
     Camlline_for_any_uno_top_formula_t.Let_fullname_ac_at_equal tag_ent_l
  | Camlline_for_any_uno_top_symbol_t.Let_longname_ac_at_equal ->
     Camlline_for_any_uno_top_formula_t.Let_longname_ac_at_equal tag_ent_l
  | Camlline_for_any_uno_top_symbol_t.Let_name_ac_at_equal ->
     Camlline_for_any_uno_top_formula_t.Let_name_ac_at_equal tag_ent_l
  | Camlline_for_any_uno_top_symbol_t.Let_retrieve_tag_top_equal ->
     Camlline_for_any_uno_top_formula_t.Let_retrieve_tag_top_equal tag_ent_l
  | Camlline_for_any_uno_top_symbol_t.Let_string_off_ac_at_equal ->
     Camlline_for_any_uno_top_formula_t.Let_string_off_ac_at_equal tag_ent_l
  | Camlline_for_any_uno_top_symbol_t.Lpar_string_dot_capitalize_lpar_name_ac_at_rpar_rpar ->
     Camlline_for_any_uno_top_formula_t.Lpar_string_dot_capitalize_lpar_name_ac_at_rpar_rpar tag_ent_l
  | Camlline_for_any_uno_top_symbol_t.Double_quote_current ->
     Camlline_for_any_uno_top_formula_t.Double_quote_current tag_ent_l
  | Camlline_for_any_uno_top_symbol_t.Sprintf_for_any_fullname ->
     Camlline_for_any_uno_top_formula_t.Sprintf_for_any_fullname tag_ent_l
  | Camlline_for_any_uno_top_symbol_t.Sprintf_for_any_longname ->
     Camlline_for_any_uno_top_formula_t.Sprintf_for_any_longname tag_ent_l
  | Camlline_for_any_uno_top_symbol_t.Try_name_of_topson_bare ->
     Camlline_for_any_uno_top_formula_t.Try_name_of_topson_bare tag_ent_l
  | Camlline_for_any_uno_top_symbol_t.Try_name_of_topson_notleaf ->
     Camlline_for_any_uno_top_formula_t.Try_name_of_topson_notleaf tag_ent_l
  | Camlline_for_any_uno_top_symbol_t.Try_name_of_topson_ofstring ->
     Camlline_for_any_uno_top_formula_t.Try_name_of_topson_ofstring tag_ent_l
  | Camlline_for_any_uno_top_symbol_t.Try_string_off_of_topson_bare ->
     Camlline_for_any_uno_top_formula_t.Try_string_off_of_topson_bare tag_ent_l
  | Camlline_for_any_uno_top_symbol_t.Try_string_off_of_topson_notleaf ->
     Camlline_for_any_uno_top_formula_t.Try_string_off_of_topson_notleaf tag_ent_l
  | Camlline_for_any_uno_top_symbol_t.Try_string_off_of_topson_ofstring ->
     Camlline_for_any_uno_top_formula_t.Try_string_off_of_topson_ofstring tag_ent_l

;;

(** {6 Retrieving} *)

let retrieve tag_cut =
  let soi_gro = Tag_v.sole_index_off_tag tag_cut in
  let sym_cut = Tag_v.entity_off_tag tag_cut in
  make sym_cut soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_for_any_uno_top_formula for_cut =
  match for_cut with
  | Camlline_for_any_uno_top_formula_t.Format_sprintf_doublequote_et_any_tdot_percents_doublequote tag_ent_l -> tag_ent_l
  | Camlline_for_any_uno_top_formula_t.Let_fullname_ac_at_equal tag_ent_l -> tag_ent_l
  | Camlline_for_any_uno_top_formula_t.Let_longname_ac_at_equal tag_ent_l -> tag_ent_l
  | Camlline_for_any_uno_top_formula_t.Let_name_ac_at_equal tag_ent_l -> tag_ent_l
  | Camlline_for_any_uno_top_formula_t.Let_retrieve_tag_top_equal tag_ent_l -> tag_ent_l
  | Camlline_for_any_uno_top_formula_t.Let_string_off_ac_at_equal tag_ent_l -> tag_ent_l
  | Camlline_for_any_uno_top_formula_t.Lpar_string_dot_capitalize_lpar_name_ac_at_rpar_rpar tag_ent_l -> tag_ent_l
  | Camlline_for_any_uno_top_formula_t.Double_quote_current tag_ent_l -> tag_ent_l
  | Camlline_for_any_uno_top_formula_t.Sprintf_for_any_fullname tag_ent_l -> tag_ent_l
  | Camlline_for_any_uno_top_formula_t.Sprintf_for_any_longname tag_ent_l -> tag_ent_l
  | Camlline_for_any_uno_top_formula_t.Try_name_of_topson_bare tag_ent_l -> tag_ent_l
  | Camlline_for_any_uno_top_formula_t.Try_name_of_topson_notleaf tag_ent_l -> tag_ent_l
  | Camlline_for_any_uno_top_formula_t.Try_name_of_topson_ofstring tag_ent_l -> tag_ent_l
  | Camlline_for_any_uno_top_formula_t.Try_string_off_of_topson_bare tag_ent_l -> tag_ent_l
  | Camlline_for_any_uno_top_formula_t.Try_string_off_of_topson_notleaf tag_ent_l -> tag_ent_l
  | Camlline_for_any_uno_top_formula_t.Try_string_off_of_topson_ofstring tag_ent_l -> tag_ent_l

;;

let entity_tag_list_off_camlline_for_any_uno_top_tag tag_cut =
  let for_cut = retrieve tag_cut in
  entity_tag_list_off_camlline_for_any_uno_top_formula for_cut
;; 

(** {6 Iterating_for_formula_uno_top_any.} *)

let map f_of_tag_ent for_cut = 
  let tag_ent_l = entity_tag_list_off_camlline_for_any_uno_top_formula for_cut in
  List.map f_of_tag_ent tag_ent_l
;;

let iter f_of_tag_ent for_cut = 
  let tag_ent_l = entity_tag_list_off_camlline_for_any_uno_top_formula for_cut in
  List.iter f_of_tag_ent tag_ent_l ;;

let map2 f_of_tag_ent for_cut_1 for_cut_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_any_uno_top_formula for_cut_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_any_uno_top_formula for_cut_2 in
  List.map2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2
;;

let iter2 f_of_tag_ent for_cut_1 for_cut_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_any_uno_top_formula for_cut_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_any_uno_top_formula for_cut_2 in
  List.iter2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2 
;;
