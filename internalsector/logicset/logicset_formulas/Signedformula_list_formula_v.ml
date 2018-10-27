(** {3 Signedformula_list_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Signedformula_list_formula_t.Signedformula_list_constructor _ ->
      Signedformula_list_symbol_t.Signedformula_list_constructor
;;


(** {6 Building_and_storing_proper_sons} *)

let build_n_store sym_sli soi_sli =
  
  let tag_sli = Tag_v.make sym_sli soi_sli in
  let sym_sig_l = Signedformula_symbol_list_by_signedformula_list_tag_provider_v.provide tag_sli in
  let soi_sig_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_sig_l) soi_sli in
  let dss_of_sym = Logic_symbol_v.logic_symbol_of_signedformula_symbol in
  let dss_sig_l = List.map dss_of_sym sym_sig_l in
  List.iter2 Logic_symbol_by_sole_index_register_v.store soi_sig_l dss_sig_l;
  List.map2 Tag_v.make sym_sig_l soi_sig_l
;;


(** {6 Making_for_formula} *)

let make sym_sli soi_sli =
  match sym_sli with
  | Signedformula_list_symbol_t.Signedformula_list_constructor ->
      let tag_sig_l = build_n_store sym_sli soi_sli in
        Signedformula_list_formula_t.Signedformula_list_constructor tag_sig_l
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_sli =
  let soi_sli = Tag_v.sole_index_off_tag tag_sli in
  let sym_sli = Tag_v.symbol_off_tag tag_sli in
  make sym_sli soi_sli
;;


(** {6 Builder_tag_listing_off_formula} *)

let signedformula_tag_list_off_signedformula_list_formula = function
  | Signedformula_list_formula_t.Signedformula_list_constructor tag_sig_l -> tag_sig_l
;;


(** {6 Builder_tag_listing_off_tag} *)

let signedformula_tag_list_off_signedformula_list_tag tag_sli =
  let for_sli = retrieve tag_sli in
  signedformula_tag_list_off_signedformula_list_formula for_sli
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_signedformula_list_formula = function
  | Signedformula_list_formula_t.Signedformula_list_constructor tag_str_l -> tag_str_l
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_signedformula_list_tag tag_sli =
  let for_sli = retrieve tag_sli in
  string_tag_list_off_signedformula_list_formula for_sli
;;


(** Signedformula_list_formula_v at 17:23:11 on 13 Jul 2013. created by version v2.3 of generator *)



