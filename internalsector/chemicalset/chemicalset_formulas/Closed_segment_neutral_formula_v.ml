(** {3 Closed_segment_neutral_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Closed_segment_neutral_formula_t.Closed_segment_neutral_constructor (s, _ ) ->
    Closed_segment_neutral_symbol_t.Closed_segment_neutral_constructor s
;;


(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_csn soi_cse =
  let sym_cse = Closed_segment_symbol_v.closed_segment_symbol_of_closed_segment_neutral_symbol sym_csn in
  let tag_cse = Tag_v.make sym_cse soi_cse in
  let sym_str_l = String_symbol_list_by_closed_segment_tag_provider_v.provide tag_cse in
  let soi_str_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_str_l) soi_cse in
  List.map2 Tag_v.make sym_str_l soi_str_l
;;


(** {6 Making_for_formula} *)

let make sym_csn soi_cse =
  match sym_csn with
  | Closed_segment_neutral_symbol_t.Closed_segment_neutral_constructor s ->
      let tag_str_l = build_n_store sym_csn soi_cse in
        Closed_segment_neutral_formula_t.Closed_segment_neutral_constructor (s, tag_str_l)
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_csn =
  let soi_cse = Tag_v.sole_index_off_tag tag_csn in
  let sym_csn = Tag_v.symbol_off_tag tag_csn in
  make sym_csn soi_cse
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_closed_segment_neutral_formula = function
  | Closed_segment_neutral_formula_t.Closed_segment_neutral_constructor (s, tag_str_l) -> tag_str_l
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_closed_segment_neutral_tag tag_csn =
  let for_csn = retrieve tag_csn in
  string_tag_list_off_closed_segment_neutral_formula for_csn
;;


(** Closed_segment_neutral_formula_v at 12:33:10 on 24 Jun 2013. created by version v2.3 of generator *)



