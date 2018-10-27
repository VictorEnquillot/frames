(** {3 Formula_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Formula_formula_t.Formula_atomic_formula for_fat ->
  Formula_symbol_t.Formula_atomic_symbol
      (Formula_atomic_formula_v.symbol_of_formula for_fat)
  | Formula_formula_t.Formula_composite _ ->
      Formula_symbol_t.Formula_composite
;;


(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_for soi_for =
  
  let tag_for = Tag_v.make sym_for soi_for in
  let sym_str_l = String_symbol_list_by_formula_tag_provider_v.provide tag_for in
  let soi_str_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_str_l) soi_for in
  List.map2 Tag_v.make sym_str_l soi_str_l
;;


(** {6 Making_for_formula} *)

let make sym_for soi_for =
  match sym_for with
  | Formula_symbol_t.Formula_atomic_symbol sym_fat ->
    Formula_formula_t.Formula_atomic_formula
      (Formula_atomic_formula_v.make sym_fat soi_for)
  | Formula_symbol_t.Formula_composite ->
      let tag_str_l = build_n_store sym_for soi_for in
        Formula_formula_t.Formula_composite tag_str_l
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_for =
  let soi_for = Tag_v.sole_index_off_tag tag_for in
  let sym_for = Tag_v.symbol_off_tag tag_for in
  make sym_for soi_for
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_formula_formula = function
  | Formula_formula_t.Formula_atomic_formula for_fat ->
      Formula_atomic_formula_v.string_tag_list_off_formula_atomic_formula for_fat
  | Formula_formula_t.Formula_composite tag_str_l -> tag_str_l
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_formula_tag tag_for =
  let for_for = retrieve tag_for in
  string_tag_list_off_formula_formula for_for
;;


(** Formula_formula_v at 17:23:11 on 13 Jul 2013. created by version v2.3 of generator *)



