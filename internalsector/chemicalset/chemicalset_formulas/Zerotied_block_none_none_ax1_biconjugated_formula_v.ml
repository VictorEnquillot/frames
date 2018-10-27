(** {3 Zerotied_block_none_none_ax1_biconjugated_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Zerotied_block_none_none_ax1_biconjugated_formula_t.Z_no_z _ ->
      Zerotied_block_none_none_ax1_biconjugated_symbol_t.Z_no_z
;;


(** {6 Building_and_storing_proper_sons} *)

let build_n_store sym_0ab soi_zer =
  let sym_zer = Zerotied_symbol_v.zerotied_symbol_of_zerotied_block_none_none_ax1_biconjugated_symbol sym_0ab in
  let tag_zer = Tag_v.make sym_zer soi_zer in
  let sym_one_l = Onetied_symbol_list_by_zerotied_tag_provider_v.provide tag_zer in
  let soi_one_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_one_l) soi_zer in
  let dss_of_sym = Chemical_symbol_v.chemical_symbol_of_onetied_symbol in
  let dss_one_l = List.map dss_of_sym sym_one_l in
  List.iter2 Chemical_symbol_by_sole_index_register_v.store soi_one_l dss_one_l;
  List.map2 Tag_v.make sym_one_l soi_one_l
;;


(** {6 Making_for_formula} *)

let make sym_0ab soi_zer =
  match sym_0ab with
  | Zerotied_block_none_none_ax1_biconjugated_symbol_t.Z_no_z ->
      let tag_one_l = build_n_store sym_0ab soi_zer in
        Zerotied_block_none_none_ax1_biconjugated_formula_t.Z_no_z tag_one_l
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_0ab =
  let soi_zer = Tag_v.sole_index_off_tag tag_0ab in
  let sym_0ab = Tag_v.symbol_off_tag tag_0ab in
  make sym_0ab soi_zer
;;


(** {6 Builder_tag_listing_off_formula} *)

let onetied_tag_list_off_zerotied_block_none_none_ax1_biconjugated_formula = function
  | Zerotied_block_none_none_ax1_biconjugated_formula_t.Z_no_z tag_one_l -> tag_one_l
;;


(** {6 Builder_tag_listing_off_tag} *)

let onetied_tag_list_off_zerotied_block_none_none_ax1_biconjugated_tag tag_0ab =
  let for_0ab = retrieve tag_0ab in
  onetied_tag_list_off_zerotied_block_none_none_ax1_biconjugated_formula for_0ab
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_zerotied_block_none_none_ax1_biconjugated_formula = function
  | Zerotied_block_none_none_ax1_biconjugated_formula_t.Z_no_z tag_str_l -> tag_str_l
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_zerotied_block_none_none_ax1_biconjugated_tag tag_0ab =
  let for_0ab = retrieve tag_0ab in
  string_tag_list_off_zerotied_block_none_none_ax1_biconjugated_formula for_0ab
;;


(** Zerotied_block_none_none_ax1_biconjugated_formula_v at 13:32:50 on 23 Jun 2013. created by version v2.2 of generator *)



