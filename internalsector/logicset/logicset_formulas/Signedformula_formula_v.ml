(** {3 Signedformula_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Signedformula_formula_t.Signedformula_constructor _ ->
      Signedformula_symbol_t.Signedformula_constructor
;;


(** {6 Building_and_storing_proper_sons} *)

let build_n_store sym_sig soi_sig =
  
  let tag_sig = Tag_v.make sym_sig soi_sig in
  let sym_tur_l = Turnstile_symbol_list_by_signedformula_tag_provider_v.provide tag_sig in
  let soi_tur_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_tur_l) soi_sig in
  let dss_of_sym = Logic_symbol_v.logic_symbol_of_turnstile_symbol in
  let dss_tur_l = List.map dss_of_sym sym_tur_l in
  List.iter2 Logic_symbol_by_sole_index_register_v.store soi_tur_l dss_tur_l;
  List.map2 Tag_v.make sym_tur_l soi_tur_l
;;


(** {6 Making_for_formula} *)

let make sym_sig soi_sig =
  match sym_sig with
  | Signedformula_symbol_t.Signedformula_constructor ->
      let tag_tur_l = build_n_store sym_sig soi_sig in
        Signedformula_formula_t.Signedformula_constructor tag_tur_l
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_sig =
  let soi_sig = Tag_v.sole_index_off_tag tag_sig in
  let sym_sig = Tag_v.symbol_off_tag tag_sig in
  make sym_sig soi_sig
;;


(** {6 Builder_tag_listing_off_formula} *)

let turnstile_tag_list_off_signedformula_formula = function
  | Signedformula_formula_t.Signedformula_constructor tag_tur_l -> tag_tur_l
;;


(** {6 Builder_tag_listing_off_tag} *)

let turnstile_tag_list_off_signedformula_tag tag_sig =
  let for_sig = retrieve tag_sig in
  turnstile_tag_list_off_signedformula_formula for_sig
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_signedformula_formula = function
  | Signedformula_formula_t.Signedformula_constructor tag_str_l -> tag_str_l
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_signedformula_tag tag_sig =
  let for_sig = retrieve tag_sig in
  string_tag_list_off_signedformula_formula for_sig
;;


(** Signedformula_formula_v at 17:23:11 on 13 Jul 2013. created by version v2.3 of generator *)



