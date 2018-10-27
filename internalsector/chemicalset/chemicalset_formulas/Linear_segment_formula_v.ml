(** {3 Linear_segment_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Linear_segment_formula_t.S_ch2_s_nh_c_co_s _ ->
      Linear_segment_symbol_t.S_ch2_s_nh_c_co_s
  | Linear_segment_formula_t.S_co_c_nh_s_ch2_s _ ->
      Linear_segment_symbol_t.S_co_c_nh_s_ch2_s
;;


(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_lse soi_lin =
  let sym_lin = Linear_symbol_v.linear_symbol_of_linear_segment_symbol sym_lse in
  let tag_lin = Tag_v.make sym_lin soi_lin in
  let sym_str_l = String_symbol_list_by_linear_tag_provider_v.provide tag_lin in
  let soi_str_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_str_l) soi_lin in
  List.map2 Tag_v.make sym_str_l soi_str_l
;;


(** {6 Making_for_formula} *)

let make sym_lse soi_lin =
  match sym_lse with
  | Linear_segment_symbol_t.S_ch2_s_nh_c_co_s ->
      let tag_str_l = build_n_store sym_lse soi_lin in
        Linear_segment_formula_t.S_ch2_s_nh_c_co_s tag_str_l
  | Linear_segment_symbol_t.S_co_c_nh_s_ch2_s ->
      let tag_str_l = build_n_store sym_lse soi_lin in
        Linear_segment_formula_t.S_co_c_nh_s_ch2_s tag_str_l
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_lse =
  let soi_lin = Tag_v.sole_index_off_tag tag_lse in
  let sym_lse = Tag_v.symbol_off_tag tag_lse in
  make sym_lse soi_lin
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_linear_segment_formula = function
  | Linear_segment_formula_t.S_ch2_s_nh_c_co_s tag_str_l -> tag_str_l
  | Linear_segment_formula_t.S_co_c_nh_s_ch2_s tag_str_l -> tag_str_l
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_linear_segment_tag tag_lse =
  let for_lse = retrieve tag_lse in
  string_tag_list_off_linear_segment_formula for_lse
;;


(** Linear_segment_formula_v at 15:38:55 on 24 Jun 2013. created by version v2.3 of generator *)



