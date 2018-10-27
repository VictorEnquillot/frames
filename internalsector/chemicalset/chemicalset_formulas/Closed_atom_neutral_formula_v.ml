(** {3 Closed_atom_neutral_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Closed_atom_neutral_formula_t.Ar _ ->
      Closed_atom_neutral_symbol_t.Ar
  | Closed_atom_neutral_formula_t.He _ ->
      Closed_atom_neutral_symbol_t.He
  | Closed_atom_neutral_formula_t.Kr _ ->
      Closed_atom_neutral_symbol_t.Kr
  | Closed_atom_neutral_formula_t.Ne _ ->
      Closed_atom_neutral_symbol_t.Ne
  | Closed_atom_neutral_formula_t.Xe _ ->
      Closed_atom_neutral_symbol_t.Xe
;;


(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_can soi_cat =
  let sym_cat = Closed_atom_symbol_v.closed_atom_symbol_of_closed_atom_neutral_symbol sym_can in
  let tag_cat = Tag_v.make sym_cat soi_cat in
  let sym_str_l = String_symbol_list_by_closed_atom_tag_provider_v.provide tag_cat in
  let soi_str_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_str_l) soi_cat in
  List.map2 Tag_v.make sym_str_l soi_str_l
;;


(** {6 Making_for_formula} *)

let make sym_can soi_cat =
  match sym_can with
  | Closed_atom_neutral_symbol_t.Ar ->
      let tag_str_l = build_n_store sym_can soi_cat in
        Closed_atom_neutral_formula_t.Ar tag_str_l
  | Closed_atom_neutral_symbol_t.He ->
      let tag_str_l = build_n_store sym_can soi_cat in
        Closed_atom_neutral_formula_t.He tag_str_l
  | Closed_atom_neutral_symbol_t.Kr ->
      let tag_str_l = build_n_store sym_can soi_cat in
        Closed_atom_neutral_formula_t.Kr tag_str_l
  | Closed_atom_neutral_symbol_t.Ne ->
      let tag_str_l = build_n_store sym_can soi_cat in
        Closed_atom_neutral_formula_t.Ne tag_str_l
  | Closed_atom_neutral_symbol_t.Xe ->
      let tag_str_l = build_n_store sym_can soi_cat in
        Closed_atom_neutral_formula_t.Xe tag_str_l
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_can =
  let soi_cat = Tag_v.sole_index_off_tag tag_can in
  let sym_can = Tag_v.symbol_off_tag tag_can in
  make sym_can soi_cat
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_closed_atom_neutral_formula = function
  | Closed_atom_neutral_formula_t.Ar tag_str_l -> tag_str_l
  | Closed_atom_neutral_formula_t.He tag_str_l -> tag_str_l
  | Closed_atom_neutral_formula_t.Kr tag_str_l -> tag_str_l
  | Closed_atom_neutral_formula_t.Ne tag_str_l -> tag_str_l
  | Closed_atom_neutral_formula_t.Xe tag_str_l -> tag_str_l
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_closed_atom_neutral_tag tag_can =
  let for_can = retrieve tag_can in
  string_tag_list_off_closed_atom_neutral_formula for_can
;;


(** Closed_atom_neutral_formula_v at 12:33:10 on 24 Jun 2013. created by version v2.3 of generator *)



