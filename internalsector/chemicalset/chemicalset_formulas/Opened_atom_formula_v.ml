(** {3 Opened_atom_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Opened_atom_formula_t.S_c_sss _ ->
      Opened_atom_symbol_t.S_c_sss
  | Opened_atom_formula_t.S_c_c _ ->
      Opened_atom_symbol_t.S_c_c
  | Opened_atom_formula_t.S_o_s _ ->
      Opened_atom_symbol_t.S_o_s
  | Opened_atom_formula_t.C_o_c _ ->
      Opened_atom_symbol_t.C_o_c
  | Opened_atom_formula_t.Z_o_d _ ->
      Opened_atom_symbol_t.Z_o_d
;;


(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_oat soi_ope =
  let sym_ope = Opened_symbol_v.opened_symbol_of_opened_atom_symbol sym_oat in
  let tag_ope = Tag_v.make sym_ope soi_ope in
  let sym_str_l = String_symbol_list_by_opened_tag_provider_v.provide tag_ope in
  let soi_str_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_str_l) soi_ope in
  List.map2 Tag_v.make sym_str_l soi_str_l
;;


(** {6 Making_for_formula} *)

let make sym_oat soi_ope =
  match sym_oat with
  | Opened_atom_symbol_t.S_c_sss ->
      let tag_str_l = build_n_store sym_oat soi_ope in
        Opened_atom_formula_t.S_c_sss tag_str_l
  | Opened_atom_symbol_t.S_c_c ->
      let tag_str_l = build_n_store sym_oat soi_ope in
        Opened_atom_formula_t.S_c_c tag_str_l
  | Opened_atom_symbol_t.S_o_s ->
      let tag_str_l = build_n_store sym_oat soi_ope in
        Opened_atom_formula_t.S_o_s tag_str_l
  | Opened_atom_symbol_t.C_o_c ->
      let tag_str_l = build_n_store sym_oat soi_ope in
        Opened_atom_formula_t.C_o_c tag_str_l
  | Opened_atom_symbol_t.Z_o_d ->
      let tag_str_l = build_n_store sym_oat soi_ope in
        Opened_atom_formula_t.Z_o_d tag_str_l
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_oat =
  let soi_ope = Tag_v.sole_index_off_tag tag_oat in
  let sym_oat = Tag_v.symbol_off_tag tag_oat in
  make sym_oat soi_ope
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_opened_atom_formula = function
  | Opened_atom_formula_t.S_c_sss tag_str_l -> tag_str_l
  | Opened_atom_formula_t.S_c_c tag_str_l -> tag_str_l
  | Opened_atom_formula_t.S_o_s tag_str_l -> tag_str_l
  | Opened_atom_formula_t.C_o_c tag_str_l -> tag_str_l
  | Opened_atom_formula_t.Z_o_d tag_str_l -> tag_str_l
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_opened_atom_tag tag_oat =
  let for_oat = retrieve tag_oat in
  string_tag_list_off_opened_atom_formula for_oat
;;


(** Opened_atom_formula_v at 16:7:22 on 24 Jun 2013. created by version v2.3 of generator *)



