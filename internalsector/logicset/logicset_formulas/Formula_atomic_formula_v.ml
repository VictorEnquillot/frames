(** {3 Formula_atomic_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Formula_atomic_formula_t.Variable (s, _ ) ->
    Formula_atomic_symbol_t.Variable s
  | Formula_atomic_formula_t.Formula_true _ ->
      Formula_atomic_symbol_t.Formula_true
  | Formula_atomic_formula_t.Formula_false _ ->
      Formula_atomic_symbol_t.Formula_false
;;


(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_fat soi_for =
  let sym_for = Formula_symbol_v.formula_symbol_of_formula_atomic_symbol sym_fat in
  let tag_for = Tag_v.make sym_for soi_for in
  let sym_str_l = String_symbol_list_by_formula_tag_provider_v.provide tag_for in
  let soi_str_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_str_l) soi_for in
  List.map2 Tag_v.make sym_str_l soi_str_l
;;


(** {6 Making_for_formula} *)

let make sym_fat soi_for =
  match sym_fat with
  | Formula_atomic_symbol_t.Variable s ->
      let tag_str_l = build_n_store sym_fat soi_for in
        Formula_atomic_formula_t.Variable (s, tag_str_l)
  | Formula_atomic_symbol_t.Formula_true ->
      let tag_str_l = build_n_store sym_fat soi_for in
        Formula_atomic_formula_t.Formula_true tag_str_l
  | Formula_atomic_symbol_t.Formula_false ->
      let tag_str_l = build_n_store sym_fat soi_for in
        Formula_atomic_formula_t.Formula_false tag_str_l
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_fat =
  let soi_for = Tag_v.sole_index_off_tag tag_fat in
  let sym_fat = Tag_v.symbol_off_tag tag_fat in
  make sym_fat soi_for
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_formula_atomic_formula = function
  | Formula_atomic_formula_t.Variable (s, tag_str_l) -> tag_str_l
  | Formula_atomic_formula_t.Formula_true tag_str_l -> tag_str_l
  | Formula_atomic_formula_t.Formula_false tag_str_l -> tag_str_l
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_formula_atomic_tag tag_fat =
  let for_fat = retrieve tag_fat in
  string_tag_list_off_formula_atomic_formula for_fat
;;


(** Formula_atomic_formula_v at 17:23:11 on 13 Jul 2013. created by version v2.3 of generator *)



