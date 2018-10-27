(** {3 Closed_grouping_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Closed_grouping_formula_t.Closed_grouping_constructor (s, _ ) ->
    Closed_grouping_symbol_t.Closed_grouping_constructor s
;;


(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_cgr soi_clo =
  let sym_clo = Closed_symbol_v.closed_symbol_of_closed_grouping_symbol sym_cgr in
  let tag_clo = Tag_v.make sym_clo soi_clo in
  let sym_str_l = String_symbol_list_by_closed_tag_provider_v.provide tag_clo in
  let soi_str_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_str_l) soi_clo in
  List.map2 Tag_v.make sym_str_l soi_str_l
;;


(** {6 Making_for_formula} *)

let make sym_cgr soi_clo =
  match sym_cgr with
  | Closed_grouping_symbol_t.Closed_grouping_constructor s ->
      let tag_str_l = build_n_store sym_cgr soi_clo in
        Closed_grouping_formula_t.Closed_grouping_constructor (s, tag_str_l)
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_cgr =
  let soi_clo = Tag_v.sole_index_off_tag tag_cgr in
  let sym_cgr = Tag_v.symbol_off_tag tag_cgr in
  make sym_cgr soi_clo
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_closed_grouping_formula = function
  | Closed_grouping_formula_t.Closed_grouping_constructor (s, tag_str_l) -> tag_str_l
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_closed_grouping_tag tag_cgr =
  let for_cgr = retrieve tag_cgr in
  string_tag_list_off_closed_grouping_formula for_cgr
;;


(** Closed_grouping_formula_v at 15:38:55 on 24 Jun 2013. created by version v2.3 of generator *)



