(** {3 Fake_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Fake_formula_t.Fake_son_formula for_fas ->
    Fake_formula_t.Fake_son_formula
      (Fake_son_formula_v.symbol_of_formula for_fas)
;;


(** {6 Making_for_formula} *)

let make sym_fak soi_fak =
  match sym_fak with
  | Fake_symbol_t.Fake_son_symbol sym_fas ->
    Fake_formula_t.Fake_son_formula
      (Fake_son_formula_v.make sym_fas soi_fak)
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_fak =
  let soi_fak = Tag_v.sole_index_off_tag tag_fak in
  let sym_fak = Fake_tag_v.symbol_off_tag tag_fak in
  make sym_fak soi_fak
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_fake_formula for_fak =
  | Fake_formula_t.Fake_son_formula for_fas ->
      Fake_son_formula_v.string_tag_list_off_fake_son_formula for_fas
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_fake_tag tag_fak =
  let for_fak = retrieve tag_fak in
  string_tag_list_off_fake_formula for_fak
;;


(** created by version v1.12 of ./generator fake implementation_for_formula formula at 14:33 3 May 2013. *)



