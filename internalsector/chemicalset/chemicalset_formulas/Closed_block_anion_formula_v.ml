(** {3 Closed_block_anion_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Closed_block_anion_formula_t.Closed_block_anion_constructor (s, _ ) ->
    Closed_block_anion_symbol_t.Closed_block_anion_constructor s
;;


(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_cba soi_cbl =
  let sym_cbl = Closed_block_symbol_v.closed_block_symbol_of_closed_block_anion_symbol sym_cba in
  let tag_cbl = Tag_v.make sym_cbl soi_cbl in
  let sym_str_l = String_symbol_list_by_closed_block_tag_provider_v.provide tag_cbl in
  let soi_str_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_str_l) soi_cbl in
  List.map2 Tag_v.make sym_str_l soi_str_l
;;


(** {6 Making_for_formula} *)

let make sym_cba soi_cbl =
  match sym_cba with
  | Closed_block_anion_symbol_t.Closed_block_anion_constructor s ->
      let tag_str_l = build_n_store sym_cba soi_cbl in
        Closed_block_anion_formula_t.Closed_block_anion_constructor (s, tag_str_l)
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_cba =
  let soi_cbl = Tag_v.sole_index_off_tag tag_cba in
  let sym_cba = Tag_v.symbol_off_tag tag_cba in
  make sym_cba soi_cbl
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_closed_block_anion_formula = function
  | Closed_block_anion_formula_t.Closed_block_anion_constructor (s, tag_str_l) -> tag_str_l
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_closed_block_anion_tag tag_cba =
  let for_cba = retrieve tag_cba in
  string_tag_list_off_closed_block_anion_formula for_cba
;;


(** Closed_block_anion_formula_v at 12:33:10 on 24 Jun 2013. created by version v2.3 of generator *)


