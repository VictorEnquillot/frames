(** {3 Semi_closed_left_segment_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Semi_closed_left_segment_formula_t.Z_nh2_s_ch2_s _ ->
      Semi_closed_left_segment_symbol_t.Z_nh2_s_ch2_s
;;


(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_sls soi_scl =
  let sym_scl = Semi_closed_symbol_v.semi_closed_symbol_of_semi_closed_left_segment_symbol sym_sls in
  let tag_scl = Tag_v.make sym_scl soi_scl in
  let sym_str_l = String_symbol_list_by_semi_closed_tag_provider_v.provide tag_scl in
  let soi_str_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_str_l) soi_scl in
  List.map2 Tag_v.make sym_str_l soi_str_l
;;


(** {6 Making_for_formula} *)

let make sym_sls soi_scl =
  match sym_sls with
  | Semi_closed_left_segment_symbol_t.Z_nh2_s_ch2_s ->
      let tag_str_l = build_n_store sym_sls soi_scl in
        Semi_closed_left_segment_formula_t.Z_nh2_s_ch2_s tag_str_l
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_sls =
  let soi_scl = Tag_v.sole_index_off_tag tag_sls in
  let sym_sls = Tag_v.symbol_off_tag tag_sls in
  make sym_sls soi_scl
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_semi_closed_left_segment_formula = function
  | Semi_closed_left_segment_formula_t.Z_nh2_s_ch2_s tag_str_l -> tag_str_l
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_semi_closed_left_segment_tag tag_sls =
  let for_sls = retrieve tag_sls in
  string_tag_list_off_semi_closed_left_segment_formula for_sls
;;


(** Semi_closed_left_segment_formula_v at 15:38:55 on 24 Jun 2013. created by version v2.3 of generator *)



