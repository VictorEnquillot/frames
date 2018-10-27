(** {3 Forked_fragment_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Forked_fragment_formula_t.S_co_c_nh_s_ch_ss _ ->
      Forked_fragment_symbol_t.S_co_c_nh_s_ch_ss
;;


(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_ffr soi_for =
  let sym_for = Forked_symbol_v.forked_symbol_of_forked_fragment_symbol sym_ffr in
  let tag_for = Tag_v.make sym_for soi_for in
  let sym_str_l = String_symbol_list_by_forked_tag_provider_v.provide tag_for in
  let soi_str_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_str_l) soi_for in
  List.map2 Tag_v.make sym_str_l soi_str_l
;;


(** {6 Making_for_formula} *)

let make sym_ffr soi_for =
  match sym_ffr with
  | Forked_fragment_symbol_t.S_co_c_nh_s_ch_ss ->
      let tag_str_l = build_n_store sym_ffr soi_for in
        Forked_fragment_formula_t.S_co_c_nh_s_ch_ss tag_str_l
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_ffr =
  let soi_for = Tag_v.sole_index_off_tag tag_ffr in
  let sym_ffr = Tag_v.symbol_off_tag tag_ffr in
  make sym_ffr soi_for
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_forked_fragment_formula = function
  | Forked_fragment_formula_t.S_co_c_nh_s_ch_ss tag_str_l -> tag_str_l
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_forked_fragment_tag tag_ffr =
  let for_ffr = retrieve tag_ffr in
  string_tag_list_off_forked_fragment_formula for_ffr
;;


(** Forked_fragment_formula_v at 15:38:55 on 24 Jun 2013. created by version v2.3 of generator *)



