(** {3 Onetied_single_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Onetied_single_formula_t.Onetied_single_atom_formula for_1sa ->
  Onetied_single_symbol_t.Onetied_single_atom_symbol
      (Onetied_single_atom_formula_v.symbol_of_formula for_1sa)
;;


(** {6 Making_for_formula} *)

let make sym_osi soi_one =
  match sym_osi with
  | Onetied_single_symbol_t.Onetied_single_atom_symbol sym_1sa ->
    Onetied_single_formula_t.Onetied_single_atom_formula
      (Onetied_single_atom_formula_v.make sym_1sa soi_one)
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_osi =
  let soi_one = Tag_v.sole_index_off_tag tag_osi in
  let sym_osi = Tag_v.symbol_off_tag tag_osi in
  make sym_osi soi_one
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_onetied_single_formula = function
  | Onetied_single_formula_t.Onetied_single_atom_formula for_1sa ->
      Onetied_single_atom_formula_v.string_tag_list_off_onetied_single_atom_formula for_1sa
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_onetied_single_tag tag_osi =
  let for_osi = retrieve tag_osi in
  string_tag_list_off_onetied_single_formula for_osi
;;


(** Onetied_single_formula_v at 12:18:0 on 23 Jun 2013. created by version v2.2 of generator *)



