(** {3 Expression_atomic_digit_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Expression_atomic_digit_formula_t.Zero _ ->
      Expression_atomic_digit_symbol_t.Zero
  | Expression_atomic_digit_formula_t.One _ ->
      Expression_atomic_digit_symbol_t.One
  | Expression_atomic_digit_formula_t.Two _ ->
      Expression_atomic_digit_symbol_t.Two
  | Expression_atomic_digit_formula_t.Three _ ->
      Expression_atomic_digit_symbol_t.Three
  | Expression_atomic_digit_formula_t.Four _ ->
      Expression_atomic_digit_symbol_t.Four
  | Expression_atomic_digit_formula_t.Five _ ->
      Expression_atomic_digit_symbol_t.Five
  | Expression_atomic_digit_formula_t.Six _ ->
      Expression_atomic_digit_symbol_t.Six
  | Expression_atomic_digit_formula_t.Seven _ ->
      Expression_atomic_digit_symbol_t.Seven
  | Expression_atomic_digit_formula_t.Eight _ ->
      Expression_atomic_digit_symbol_t.Eight
  | Expression_atomic_digit_formula_t.Nine _ ->
      Expression_atomic_digit_symbol_t.Nine
;;


(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_ead soi_exp =
  let sym_exp = Expression_symbol_v.expression_symbol_of_expression_atomic_digit_symbol sym_ead in
  let tag_exp = Tag_v.make sym_exp soi_exp in
  let sym_str_l = String_symbol_list_by_expression_tag_provider_v.provide tag_exp in
  let soi_str_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_str_l) soi_exp in
  List.map2 Tag_v.make sym_str_l soi_str_l
;;


(** {6 Making_for_formula} *)

let make sym_ead soi_exp =
  match sym_ead with
  | Expression_atomic_digit_symbol_t.Zero ->
      let tag_str_l = build_n_store sym_ead soi_exp in
        Expression_atomic_digit_formula_t.Zero tag_str_l
  | Expression_atomic_digit_symbol_t.One ->
      let tag_str_l = build_n_store sym_ead soi_exp in
        Expression_atomic_digit_formula_t.One tag_str_l
  | Expression_atomic_digit_symbol_t.Two ->
      let tag_str_l = build_n_store sym_ead soi_exp in
        Expression_atomic_digit_formula_t.Two tag_str_l
  | Expression_atomic_digit_symbol_t.Three ->
      let tag_str_l = build_n_store sym_ead soi_exp in
        Expression_atomic_digit_formula_t.Three tag_str_l
  | Expression_atomic_digit_symbol_t.Four ->
      let tag_str_l = build_n_store sym_ead soi_exp in
        Expression_atomic_digit_formula_t.Four tag_str_l
  | Expression_atomic_digit_symbol_t.Five ->
      let tag_str_l = build_n_store sym_ead soi_exp in
        Expression_atomic_digit_formula_t.Five tag_str_l
  | Expression_atomic_digit_symbol_t.Six ->
      let tag_str_l = build_n_store sym_ead soi_exp in
        Expression_atomic_digit_formula_t.Six tag_str_l
  | Expression_atomic_digit_symbol_t.Seven ->
      let tag_str_l = build_n_store sym_ead soi_exp in
        Expression_atomic_digit_formula_t.Seven tag_str_l
  | Expression_atomic_digit_symbol_t.Eight ->
      let tag_str_l = build_n_store sym_ead soi_exp in
        Expression_atomic_digit_formula_t.Eight tag_str_l
  | Expression_atomic_digit_symbol_t.Nine ->
      let tag_str_l = build_n_store sym_ead soi_exp in
        Expression_atomic_digit_formula_t.Nine tag_str_l
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_ead =
  let soi_exp = Tag_v.sole_index_off_tag tag_ead in
  let sym_ead = Tag_v.symbol_off_tag tag_ead in
  make sym_ead soi_exp
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_expression_atomic_digit_formula = function
  | Expression_atomic_digit_formula_t.Zero tag_str_l -> tag_str_l
  | Expression_atomic_digit_formula_t.One tag_str_l -> tag_str_l
  | Expression_atomic_digit_formula_t.Two tag_str_l -> tag_str_l
  | Expression_atomic_digit_formula_t.Three tag_str_l -> tag_str_l
  | Expression_atomic_digit_formula_t.Four tag_str_l -> tag_str_l
  | Expression_atomic_digit_formula_t.Five tag_str_l -> tag_str_l
  | Expression_atomic_digit_formula_t.Six tag_str_l -> tag_str_l
  | Expression_atomic_digit_formula_t.Seven tag_str_l -> tag_str_l
  | Expression_atomic_digit_formula_t.Eight tag_str_l -> tag_str_l
  | Expression_atomic_digit_formula_t.Nine tag_str_l -> tag_str_l
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_expression_atomic_digit_tag tag_ead =
  let for_ead = retrieve tag_ead in
  string_tag_list_off_expression_atomic_digit_formula for_ead
;;


(** Expression_atomic_digit_formula_v at 9:38:27 on 16 Jul 2013. created by version v2.4 of generator *)



