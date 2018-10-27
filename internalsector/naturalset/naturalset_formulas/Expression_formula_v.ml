(** {3 Expression_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Expression_formula_t.Expression_atomic_formula for_eat ->
  Expression_symbol_t.Expression_atomic_symbol
      (Expression_atomic_formula_v.symbol_of_formula for_eat)
  | Expression_formula_t.Expression_composite _ ->
      Expression_symbol_t.Expression_composite
;;


(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_exp soi_exp =
  
  let tag_exp = Tag_v.make sym_exp soi_exp in
  let sym_str_l = String_symbol_list_by_expression_tag_provider_v.provide tag_exp in
  let soi_str_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_str_l) soi_exp in
  List.map2 Tag_v.make sym_str_l soi_str_l
;;


(** {6 Making_for_formula} *)

let make sym_exp soi_exp =
  match sym_exp with
  | Expression_symbol_t.Expression_atomic_symbol sym_eat ->
    Expression_formula_t.Expression_atomic_formula
      (Expression_atomic_formula_v.make sym_eat soi_exp)
  | Expression_symbol_t.Expression_composite ->
      let tag_str_l = build_n_store sym_exp soi_exp in
        Expression_formula_t.Expression_composite tag_str_l
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_exp =
  let soi_exp = Tag_v.sole_index_off_tag tag_exp in
  let sym_exp = Tag_v.symbol_off_tag tag_exp in
  make sym_exp soi_exp
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_expression_formula = function
  | Expression_formula_t.Expression_atomic_formula for_eat ->
      Expression_atomic_formula_v.string_tag_list_off_expression_atomic_formula for_eat
  | Expression_formula_t.Expression_composite tag_str_l -> tag_str_l
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_expression_tag tag_exp =
  let for_exp = retrieve tag_exp in
  string_tag_list_off_expression_formula for_exp
;;


(** Expression_formula_v at 9:39:15 on 16 Jul 2013. created by version v2.4 of generator *)



