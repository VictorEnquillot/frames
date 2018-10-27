(** {3 Semi_closed_right_grouping_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Semi_closed_right_grouping_formula_t.Semi_closed_right_grouping_constructor (s, _ ) ->
    Semi_closed_right_grouping_symbol_t.Semi_closed_right_grouping_constructor s
;;


(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_srg soi_scl =
  let sym_scl = Semi_closed_symbol_v.semi_closed_symbol_of_semi_closed_right_grouping_symbol sym_srg in
  let tag_scl = Tag_v.make sym_scl soi_scl in
  let sym_str_l = String_symbol_list_by_semi_closed_tag_provider_v.provide tag_scl in
  let soi_str_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_str_l) soi_scl in
  List.map2 Tag_v.make sym_str_l soi_str_l
;;


(** {6 Making_for_formula} *)

let make sym_srg soi_scl =
  match sym_srg with
  | Semi_closed_right_grouping_symbol_t.Semi_closed_right_grouping_constructor s ->
      let tag_str_l = build_n_store sym_srg soi_scl in
        Semi_closed_right_grouping_formula_t.Semi_closed_right_grouping_constructor (s, tag_str_l)
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_srg =
  let soi_scl = Tag_v.sole_index_off_tag tag_srg in
  let sym_srg = Tag_v.symbol_off_tag tag_srg in
  make sym_srg soi_scl
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_semi_closed_right_grouping_formula = function
  | Semi_closed_right_grouping_formula_t.Semi_closed_right_grouping_constructor (s, tag_str_l) -> tag_str_l
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_semi_closed_right_grouping_tag tag_srg =
  let for_srg = retrieve tag_srg in
  string_tag_list_off_semi_closed_right_grouping_formula for_srg
;;


(** Semi_closed_right_grouping_formula_v at 15:38:55 on 24 Jun 2013. created by version v2.3 of generator *)



