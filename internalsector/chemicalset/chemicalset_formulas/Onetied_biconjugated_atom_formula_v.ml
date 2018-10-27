(** {3 Onetied_biconjugated_atom_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Onetied_biconjugated_atom_formula_t.Z_n_b _ ->
      Onetied_biconjugated_atom_symbol_t.Z_n_b
  | Onetied_biconjugated_atom_formula_t.Z_o_b _ ->
      Onetied_biconjugated_atom_symbol_t.Z_o_b
;;


(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_1ba soi_one =
  let sym_one = Onetied_symbol_v.onetied_symbol_of_onetied_biconjugated_atom_symbol sym_1ba in
  let tag_one = Tag_v.make sym_one soi_one in
  let sym_str_l = String_symbol_list_by_onetied_tag_provider_v.provide tag_one in
  let soi_str_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_str_l) soi_one in
  List.map2 Tag_v.make sym_str_l soi_str_l
;;


(** {6 Making_for_formula} *)

let make sym_1ba soi_one =
  match sym_1ba with
  | Onetied_biconjugated_atom_symbol_t.Z_n_b ->
      let tag_str_l = build_n_store sym_1ba soi_one in
        Onetied_biconjugated_atom_formula_t.Z_n_b tag_str_l
  | Onetied_biconjugated_atom_symbol_t.Z_o_b ->
      let tag_str_l = build_n_store sym_1ba soi_one in
        Onetied_biconjugated_atom_formula_t.Z_o_b tag_str_l
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_1ba =
  let soi_one = Tag_v.sole_index_off_tag tag_1ba in
  let sym_1ba = Tag_v.symbol_off_tag tag_1ba in
  make sym_1ba soi_one
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_onetied_biconjugated_atom_formula = function
  | Onetied_biconjugated_atom_formula_t.Z_n_b tag_str_l -> tag_str_l
  | Onetied_biconjugated_atom_formula_t.Z_o_b tag_str_l -> tag_str_l
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_onetied_biconjugated_atom_tag tag_1ba =
  let for_1ba = retrieve tag_1ba in
  string_tag_list_off_onetied_biconjugated_atom_formula for_1ba
;;


(** Onetied_biconjugated_atom_formula_v at 12:18:0 on 23 Jun 2013. created by version v2.2 of generator *)



