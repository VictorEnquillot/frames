(** {3 Closed_block_neutral_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Closed_block_neutral_formula_t.Z_fh_z _ ->
      Closed_block_neutral_symbol_t.Z_fh_z
  | Closed_block_neutral_formula_t.Z_h2_z _ ->
      Closed_block_neutral_symbol_t.Z_h2_z
  | Closed_block_neutral_formula_t.Z_sh_z _ ->
      Closed_block_neutral_symbol_t.Z_sh_z
  | Closed_block_neutral_formula_t.Z_o2_z _ ->
      Closed_block_neutral_symbol_t.Z_o2_z
  | Closed_block_neutral_formula_t.Z_no_z _ ->
      Closed_block_neutral_symbol_t.Z_no_z
  | Closed_block_neutral_formula_t.Z_co_z _ ->
      Closed_block_neutral_symbol_t.Z_co_z
  | Closed_block_neutral_formula_t.Z_n2_z _ ->
      Closed_block_neutral_symbol_t.Z_n2_z
;;


(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_cbn soi_cbl =
  let sym_cbl = Closed_block_symbol_v.closed_block_symbol_of_closed_block_neutral_symbol sym_cbn in
  let tag_cbl = Tag_v.make sym_cbl soi_cbl in
  let sym_str_l = String_symbol_list_by_closed_block_tag_provider_v.provide tag_cbl in
  let soi_str_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_str_l) soi_cbl in
  List.map2 Tag_v.make sym_str_l soi_str_l
;;


(** {6 Making_for_formula} *)

let make sym_cbn soi_cbl =
  match sym_cbn with
  | Closed_block_neutral_symbol_t.Z_fh_z ->
      let tag_str_l = build_n_store sym_cbn soi_cbl in
        Closed_block_neutral_formula_t.Z_fh_z tag_str_l
  | Closed_block_neutral_symbol_t.Z_h2_z ->
      let tag_str_l = build_n_store sym_cbn soi_cbl in
        Closed_block_neutral_formula_t.Z_h2_z tag_str_l
  | Closed_block_neutral_symbol_t.Z_sh_z ->
      let tag_str_l = build_n_store sym_cbn soi_cbl in
        Closed_block_neutral_formula_t.Z_sh_z tag_str_l
  | Closed_block_neutral_symbol_t.Z_o2_z ->
      let tag_str_l = build_n_store sym_cbn soi_cbl in
        Closed_block_neutral_formula_t.Z_o2_z tag_str_l
  | Closed_block_neutral_symbol_t.Z_no_z ->
      let tag_str_l = build_n_store sym_cbn soi_cbl in
        Closed_block_neutral_formula_t.Z_no_z tag_str_l
  | Closed_block_neutral_symbol_t.Z_co_z ->
      let tag_str_l = build_n_store sym_cbn soi_cbl in
        Closed_block_neutral_formula_t.Z_co_z tag_str_l
  | Closed_block_neutral_symbol_t.Z_n2_z ->
      let tag_str_l = build_n_store sym_cbn soi_cbl in
        Closed_block_neutral_formula_t.Z_n2_z tag_str_l
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_cbn =
  let soi_cbl = Tag_v.sole_index_off_tag tag_cbn in
  let sym_cbn = Tag_v.symbol_off_tag tag_cbn in
  make sym_cbn soi_cbl
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_closed_block_neutral_formula = function
  | Closed_block_neutral_formula_t.Z_fh_z tag_str_l -> tag_str_l
  | Closed_block_neutral_formula_t.Z_h2_z tag_str_l -> tag_str_l
  | Closed_block_neutral_formula_t.Z_sh_z tag_str_l -> tag_str_l
  | Closed_block_neutral_formula_t.Z_o2_z tag_str_l -> tag_str_l
  | Closed_block_neutral_formula_t.Z_no_z tag_str_l -> tag_str_l
  | Closed_block_neutral_formula_t.Z_co_z tag_str_l -> tag_str_l
  | Closed_block_neutral_formula_t.Z_n2_z tag_str_l -> tag_str_l
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_closed_block_neutral_tag tag_cbn =
  let for_cbn = retrieve tag_cbn in
  string_tag_list_off_closed_block_neutral_formula for_cbn
;;


(** Closed_block_neutral_formula_v at 12:33:10 on 24 Jun 2013. created by version v2.3 of generator *)



