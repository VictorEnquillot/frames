(** {3 Tag_id3v2_4_specific_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Tag_id3v2_4_specific_formula_t.Aspi _ ->
      Tag_id3v2_4_specific_symbol_t.Aspi
  | Tag_id3v2_4_specific_formula_t.Equ2 _ ->
      Tag_id3v2_4_specific_symbol_t.Equ2
  | Tag_id3v2_4_specific_formula_t.Rva2 _ ->
      Tag_id3v2_4_specific_symbol_t.Rva2
  | Tag_id3v2_4_specific_formula_t.Seek _ ->
      Tag_id3v2_4_specific_symbol_t.Seek
  | Tag_id3v2_4_specific_formula_t.Sign _ ->
      Tag_id3v2_4_specific_symbol_t.Sign
  | Tag_id3v2_4_specific_formula_t.Tden _ ->
      Tag_id3v2_4_specific_symbol_t.Tden
  | Tag_id3v2_4_specific_formula_t.Tdor _ ->
      Tag_id3v2_4_specific_symbol_t.Tdor
  | Tag_id3v2_4_specific_formula_t.Tdrc _ ->
      Tag_id3v2_4_specific_symbol_t.Tdrc
  | Tag_id3v2_4_specific_formula_t.Tdrl _ ->
      Tag_id3v2_4_specific_symbol_t.Tdrl
  | Tag_id3v2_4_specific_formula_t.Tdtg _ ->
      Tag_id3v2_4_specific_symbol_t.Tdtg
  | Tag_id3v2_4_specific_formula_t.Tipl _ ->
      Tag_id3v2_4_specific_symbol_t.Tipl
  | Tag_id3v2_4_specific_formula_t.Tmcl _ ->
      Tag_id3v2_4_specific_symbol_t.Tmcl
  | Tag_id3v2_4_specific_formula_t.Tmoo _ ->
      Tag_id3v2_4_specific_symbol_t.Tmoo
  | Tag_id3v2_4_specific_formula_t.Tpro _ ->
      Tag_id3v2_4_specific_symbol_t.Tpro
  | Tag_id3v2_4_specific_formula_t.Tsoa _ ->
      Tag_id3v2_4_specific_symbol_t.Tsoa
  | Tag_id3v2_4_specific_formula_t.Tsop _ ->
      Tag_id3v2_4_specific_symbol_t.Tsop
  | Tag_id3v2_4_specific_formula_t.Tsot _ ->
      Tag_id3v2_4_specific_symbol_t.Tsot
  | Tag_id3v2_4_specific_formula_t.Tsst _ ->
      Tag_id3v2_4_specific_symbol_t.Tsst
;;


(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_t4s soi_tid =
  let sym_tid = Tag_id3_symbol_v.tag_id3_symbol_of_tag_id3v2_4_specific_symbol sym_t4s in
  let tag_tid = Tag_v.make sym_tid soi_tid in
  let sym_str_l = String_symbol_list_by_tag_id3_tag_provider_v.provide tag_tid in
  let soi_str_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_str_l) soi_tid in
  List.map2 Tag_v.make sym_str_l soi_str_l
;;


(** {6 Making_for_formula} *)

let make sym_t4s soi_tid =
  match sym_t4s with
  | Tag_id3v2_4_specific_symbol_t.Aspi ->
      let tag_str_l = build_n_store sym_t4s soi_tid in
        Tag_id3v2_4_specific_formula_t.Aspi tag_str_l
  | Tag_id3v2_4_specific_symbol_t.Equ2 ->
      let tag_str_l = build_n_store sym_t4s soi_tid in
        Tag_id3v2_4_specific_formula_t.Equ2 tag_str_l
  | Tag_id3v2_4_specific_symbol_t.Rva2 ->
      let tag_str_l = build_n_store sym_t4s soi_tid in
        Tag_id3v2_4_specific_formula_t.Rva2 tag_str_l
  | Tag_id3v2_4_specific_symbol_t.Seek ->
      let tag_str_l = build_n_store sym_t4s soi_tid in
        Tag_id3v2_4_specific_formula_t.Seek tag_str_l
  | Tag_id3v2_4_specific_symbol_t.Sign ->
      let tag_str_l = build_n_store sym_t4s soi_tid in
        Tag_id3v2_4_specific_formula_t.Sign tag_str_l
  | Tag_id3v2_4_specific_symbol_t.Tden ->
      let tag_str_l = build_n_store sym_t4s soi_tid in
        Tag_id3v2_4_specific_formula_t.Tden tag_str_l
  | Tag_id3v2_4_specific_symbol_t.Tdor ->
      let tag_str_l = build_n_store sym_t4s soi_tid in
        Tag_id3v2_4_specific_formula_t.Tdor tag_str_l
  | Tag_id3v2_4_specific_symbol_t.Tdrc ->
      let tag_str_l = build_n_store sym_t4s soi_tid in
        Tag_id3v2_4_specific_formula_t.Tdrc tag_str_l
  | Tag_id3v2_4_specific_symbol_t.Tdrl ->
      let tag_str_l = build_n_store sym_t4s soi_tid in
        Tag_id3v2_4_specific_formula_t.Tdrl tag_str_l
  | Tag_id3v2_4_specific_symbol_t.Tdtg ->
      let tag_str_l = build_n_store sym_t4s soi_tid in
        Tag_id3v2_4_specific_formula_t.Tdtg tag_str_l
  | Tag_id3v2_4_specific_symbol_t.Tipl ->
      let tag_str_l = build_n_store sym_t4s soi_tid in
        Tag_id3v2_4_specific_formula_t.Tipl tag_str_l
  | Tag_id3v2_4_specific_symbol_t.Tmcl ->
      let tag_str_l = build_n_store sym_t4s soi_tid in
        Tag_id3v2_4_specific_formula_t.Tmcl tag_str_l
  | Tag_id3v2_4_specific_symbol_t.Tmoo ->
      let tag_str_l = build_n_store sym_t4s soi_tid in
        Tag_id3v2_4_specific_formula_t.Tmoo tag_str_l
  | Tag_id3v2_4_specific_symbol_t.Tpro ->
      let tag_str_l = build_n_store sym_t4s soi_tid in
        Tag_id3v2_4_specific_formula_t.Tpro tag_str_l
  | Tag_id3v2_4_specific_symbol_t.Tsoa ->
      let tag_str_l = build_n_store sym_t4s soi_tid in
        Tag_id3v2_4_specific_formula_t.Tsoa tag_str_l
  | Tag_id3v2_4_specific_symbol_t.Tsop ->
      let tag_str_l = build_n_store sym_t4s soi_tid in
        Tag_id3v2_4_specific_formula_t.Tsop tag_str_l
  | Tag_id3v2_4_specific_symbol_t.Tsot ->
      let tag_str_l = build_n_store sym_t4s soi_tid in
        Tag_id3v2_4_specific_formula_t.Tsot tag_str_l
  | Tag_id3v2_4_specific_symbol_t.Tsst ->
      let tag_str_l = build_n_store sym_t4s soi_tid in
        Tag_id3v2_4_specific_formula_t.Tsst tag_str_l
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_t4s =
  let soi_tid = Tag_v.sole_index_off_tag tag_t4s in
  let sym_t4s = Tag_v.symbol_off_tag tag_t4s in
  make sym_t4s soi_tid
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_tag_id3v2_4_specific_formula = function
  | Tag_id3v2_4_specific_formula_t.Aspi tag_str_l -> tag_str_l
  | Tag_id3v2_4_specific_formula_t.Equ2 tag_str_l -> tag_str_l
  | Tag_id3v2_4_specific_formula_t.Rva2 tag_str_l -> tag_str_l
  | Tag_id3v2_4_specific_formula_t.Seek tag_str_l -> tag_str_l
  | Tag_id3v2_4_specific_formula_t.Sign tag_str_l -> tag_str_l
  | Tag_id3v2_4_specific_formula_t.Tden tag_str_l -> tag_str_l
  | Tag_id3v2_4_specific_formula_t.Tdor tag_str_l -> tag_str_l
  | Tag_id3v2_4_specific_formula_t.Tdrc tag_str_l -> tag_str_l
  | Tag_id3v2_4_specific_formula_t.Tdrl tag_str_l -> tag_str_l
  | Tag_id3v2_4_specific_formula_t.Tdtg tag_str_l -> tag_str_l
  | Tag_id3v2_4_specific_formula_t.Tipl tag_str_l -> tag_str_l
  | Tag_id3v2_4_specific_formula_t.Tmcl tag_str_l -> tag_str_l
  | Tag_id3v2_4_specific_formula_t.Tmoo tag_str_l -> tag_str_l
  | Tag_id3v2_4_specific_formula_t.Tpro tag_str_l -> tag_str_l
  | Tag_id3v2_4_specific_formula_t.Tsoa tag_str_l -> tag_str_l
  | Tag_id3v2_4_specific_formula_t.Tsop tag_str_l -> tag_str_l
  | Tag_id3v2_4_specific_formula_t.Tsot tag_str_l -> tag_str_l
  | Tag_id3v2_4_specific_formula_t.Tsst tag_str_l -> tag_str_l
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_tag_id3v2_4_specific_tag tag_t4s =
  let for_t4s = retrieve tag_t4s in
  string_tag_list_off_tag_id3v2_4_specific_formula for_t4s
;;


(** Tag_id3v2_4_specific_formula_v at 18:19:40 on 27 Jun 2013. created by version v2.3 of generator *)



