(** {3 Expression_atomic_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Expression_atomic_formula_t.Expression_atomic_digit_formula for_ead ->
  Expression_atomic_symbol_t.Expression_atomic_digit_symbol
      (Expression_atomic_digit_formula_v.symbol_of_formula for_ead)
  | Expression_atomic_formula_t.Variable (s, _ ) ->
    Expression_atomic_symbol_t.Variable s
;;


(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_eat soi_exp =
  let sym_exp = Expression_symbol_v.expression_symbol_of_expression_atomic_symbol sym_eat in
  let tag_exp = Tag_v.make sym_exp soi_exp in
  let sym_str_l = String_symbol_list_by_expression_tag_provider_v.provide tag_exp in
  let soi_str_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_str_l) soi_exp in
  List.map2 Tag_v.make sym_str_l soi_str_l
;;


(** {6 Making_for_formula} *)

let make sym_eat soi_exp =
  match sym_eat with
  | Expression_atomic_symbol_t.Expression_atomic_digit_symbol sym_ead ->
    Expression_atomic_formula_t.Expression_atomic_digit_formula
      (Expression_atomic_digit_formula_v.make sym_ead soi_exp)
  | Expression_atomic_symbol_t.Variable s ->
      let tag_str_l = build_n_store sym_eat soi_exp in
        Expression_atomic_formula_t.Variable (s, tag_str_l)
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_eat =
  let soi_exp = Tag_v.sole_index_off_tag tag_eat in
  let sym_eat = Tag_v.symbol_off_tag tag_eat in
  make sym_eat soi_exp
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_expression_atomic_formula = function
  | Expression_atomic_formula_t.Expression_atomic_digit_formula for_ead ->
      Expression_atomic_digit_formula_v.string_tag_list_off_expression_atomic_digit_formula for_ead
  | Expression_atomic_formula_t.Variable (s, tag_str_l) -> tag_str_l
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_expression_atomic_tag tag_eat =
  let for_eat = retrieve tag_eat in
  string_tag_list_off_expression_atomic_formula for_eat
;;


(** Expression_atomic_formula_v at 9:39:15 on 16 Jul 2013. created by version v2.4 of generator *)



