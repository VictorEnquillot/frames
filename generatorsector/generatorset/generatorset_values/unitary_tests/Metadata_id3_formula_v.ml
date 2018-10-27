(** {3 Metadata_id3_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Metadata_id3_formula_t.Metadata_id3v1x _ ->
      Metadata_id3_symbol_t.Metadata_id3v1x
  | Metadata_id3_formula_t.Metadata_id3v2x _ ->
      Metadata_id3_symbol_t.Metadata_id3v2x
;;


(** {6 Building_and_storing_proper_sons} *)

let build_n_store sym_mid soi_mid =
  
  let tag_mid = Tag_v.make sym_mid soi_mid in
  let sym_tid_l = Tag_id3_symbol_list_by_metadata_id3_tag_provider_v.provide tag_mid in
  let soi_tid_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_tid_l) soi_mid in
  let dss_of_sym = Music_symbol_v.music_symbol_of_tag_id3_symbol in
  let dss_tid_l = List.map dss_of_sym sym_tid_l in
  List.iter2 Music_symbol_by_sole_index_register_v.store soi_tid_l dss_tid_l;
  List.map2 Tag_v.make sym_tid_l soi_tid_l
;;


(** {6 Making_for_formula} *)

let make sym_mid soi_mid =
  match sym_mid with
  | Metadata_id3_symbol_t.Metadata_id3v1x ->
      let tag_tid_l = build_n_store sym_mid soi_mid in
        Metadata_id3_formula_t.Metadata_id3v1x tag_tid_l
  | Metadata_id3_symbol_t.Metadata_id3v2x ->
      let tag_tid_l = build_n_store sym_mid soi_mid in
        Metadata_id3_formula_t.Metadata_id3v2x tag_tid_l
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_mid =
  let soi_mid = Tag_v.sole_index_off_tag tag_mid in
  let sym_mid = Tag_v.entity_off_tag tag_mid in
  make sym_mid soi_mid
;;


(** {6 Builder_tag_listing_off_formula} *)

let tag_id3_tag_list_off_metadata_id3_formula = function
  | Metadata_id3_formula_t.Metadata_id3v1x tag_tid_l -> tag_tid_l
  | Metadata_id3_formula_t.Metadata_id3v2x tag_tid_l -> tag_tid_l
;;


(** {6 Builder_tag_listing_off_tag} *)

let tag_id3_tag_list_off_metadata_id3_tag tag_mid =
  let for_mid = retrieve tag_mid in
  tag_id3_tag_list_off_metadata_id3_formula for_mid
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_metadata_id3_formula = function
  | Metadata_id3_formula_t.Metadata_id3v1x tag_str_l -> tag_str_l
  | Metadata_id3_formula_t.Metadata_id3v2x tag_str_l -> tag_str_l
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_metadata_id3_tag tag_mid =
  let for_mid = retrieve tag_mid in
  string_tag_list_off_metadata_id3_formula for_mid
;;


(** Metadata_id3_formula_v at 10:33:37 on 25 Jun 2013. created by version v2.3 of generator *)



