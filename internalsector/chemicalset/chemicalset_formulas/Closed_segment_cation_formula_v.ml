(** {3 Closed_segment_cation_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Closed_segment_cation_formula_t.Closed_segment_cation_constructor (s, _ ) ->
    Closed_segment_cation_symbol_t.Closed_segment_cation_constructor s
;;


(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_csc soi_cse =
  let sym_cse = Closed_segment_symbol_v.closed_segment_symbol_of_closed_segment_cation_symbol sym_csc in
  let tag_cse = Tag_v.make sym_cse soi_cse in
  let sym_str_l = String_symbol_list_by_closed_segment_tag_provider_v.provide tag_cse in
  let soi_str_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_str_l) soi_cse in
  List.map2 Tag_v.make sym_str_l soi_str_l
;;


(** {6 Making_for_formula} *)

let make sym_csc soi_cse =
  match sym_csc with
  | Closed_segment_cation_symbol_t.Closed_segment_cation_constructor s ->
      let tag_str_l = build_n_store sym_csc soi_cse in
        Closed_segment_cation_formula_t.Closed_segment_cation_constructor (s, tag_str_l)
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_csc =
  let soi_cse = Tag_v.sole_index_off_tag tag_csc in
  let sym_csc = Tag_v.symbol_off_tag tag_csc in
  make sym_csc soi_cse
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_closed_segment_cation_formula = function
  | Closed_segment_cation_formula_t.Closed_segment_cation_constructor (s, tag_str_l) -> tag_str_l
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_closed_segment_cation_tag tag_csc =
  let for_csc = retrieve tag_csc in
  string_tag_list_off_closed_segment_cation_formula for_csc
;;


(** Closed_segment_cation_formula_v at 12:33:10 on 24 Jun 2013. created by version v2.3 of generator *)



