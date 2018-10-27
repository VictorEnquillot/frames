(** {3 Zerotied_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Zerotied_formula_t.Zerotied_block_formula for_zbl ->
  Zerotied_symbol_t.Zerotied_block_symbol
      (Zerotied_block_formula_v.symbol_of_formula for_zbl)
;;


(** {6 Making_for_formula} *)

let make sym_zer soi_zer =
  match sym_zer with
  | Zerotied_symbol_t.Zerotied_block_symbol sym_zbl ->
    Zerotied_formula_t.Zerotied_block_formula
      (Zerotied_block_formula_v.make sym_zbl soi_zer)
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_zer =
  let soi_zer = Tag_v.sole_index_off_tag tag_zer in
  let sym_zer = Tag_v.entity_off_tag tag_zer in
  make sym_zer soi_zer
;;


(** {6 Builder_tag_listing_off_formula} *)

let onetied_tag_list_off_zerotied_formula = function
  | Zerotied_formula_t.Zerotied_block_formula for_zbl ->
      Zerotied_block_formula_v.onetied_tag_list_off_zerotied_block_formula for_zbl
;;


(** {6 Builder_tag_listing_off_tag} *)

let onetied_tag_list_off_zerotied_tag tag_zer =
  let for_zer = retrieve tag_zer in
  onetied_tag_list_off_zerotied_formula for_zer
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_zerotied_formula = function
  | Zerotied_formula_t.Zerotied_block_formula for_zbl ->
      Zerotied_block_formula_v.string_tag_list_off_zerotied_block_formula for_zbl
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_zerotied_tag tag_zer =
  let for_zer = retrieve tag_zer in
  string_tag_list_off_zerotied_formula for_zer
;;


(** Zerotied_formula_v at 11:11:58 on 24 Jun 2013. created by version v2.3 of generator *)



