(** {3 Tag_id3v2_base_unique_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Tag_id3v2_base_unique_formula_t.Aenc _ ->
      Tag_id3v2_base_unique_symbol_t.Aenc
  | Tag_id3v2_base_unique_formula_t.Apic _ ->
      Tag_id3v2_base_unique_symbol_t.Apic
  | Tag_id3v2_base_unique_formula_t.Comm _ ->
      Tag_id3v2_base_unique_symbol_t.Comm
  | Tag_id3v2_base_unique_formula_t.Comr _ ->
      Tag_id3v2_base_unique_symbol_t.Comr
  | Tag_id3v2_base_unique_formula_t.Encr _ ->
      Tag_id3v2_base_unique_symbol_t.Encr
  | Tag_id3v2_base_unique_formula_t.Etco _ ->
      Tag_id3v2_base_unique_symbol_t.Etco
  | Tag_id3v2_base_unique_formula_t.Geob _ ->
      Tag_id3v2_base_unique_symbol_t.Geob
  | Tag_id3v2_base_unique_formula_t.Grid _ ->
      Tag_id3v2_base_unique_symbol_t.Grid
  | Tag_id3v2_base_unique_formula_t.Link _ ->
      Tag_id3v2_base_unique_symbol_t.Link
  | Tag_id3v2_base_unique_formula_t.Mcdi _ ->
      Tag_id3v2_base_unique_symbol_t.Mcdi
  | Tag_id3v2_base_unique_formula_t.Mllt _ ->
      Tag_id3v2_base_unique_symbol_t.Mllt
  | Tag_id3v2_base_unique_formula_t.Owne _ ->
      Tag_id3v2_base_unique_symbol_t.Owne
  | Tag_id3v2_base_unique_formula_t.Pcnt _ ->
      Tag_id3v2_base_unique_symbol_t.Pcnt
  | Tag_id3v2_base_unique_formula_t.Popm _ ->
      Tag_id3v2_base_unique_symbol_t.Popm
  | Tag_id3v2_base_unique_formula_t.Poss _ ->
      Tag_id3v2_base_unique_symbol_t.Poss
  | Tag_id3v2_base_unique_formula_t.Priv _ ->
      Tag_id3v2_base_unique_symbol_t.Priv
  | Tag_id3v2_base_unique_formula_t.Rbuf _ ->
      Tag_id3v2_base_unique_symbol_t.Rbuf
  | Tag_id3v2_base_unique_formula_t.Rvrb _ ->
      Tag_id3v2_base_unique_symbol_t.Rvrb
  | Tag_id3v2_base_unique_formula_t.Sylt _ ->
      Tag_id3v2_base_unique_symbol_t.Sylt
  | Tag_id3v2_base_unique_formula_t.Sytc _ ->
      Tag_id3v2_base_unique_symbol_t.Sytc
  | Tag_id3v2_base_unique_formula_t.Talb _ ->
      Tag_id3v2_base_unique_symbol_t.Talb
  | Tag_id3v2_base_unique_formula_t.Tbpm _ ->
      Tag_id3v2_base_unique_symbol_t.Tbpm
  | Tag_id3v2_base_unique_formula_t.Tcon _ ->
      Tag_id3v2_base_unique_symbol_t.Tcon
  | Tag_id3v2_base_unique_formula_t.Tcop _ ->
      Tag_id3v2_base_unique_symbol_t.Tcop
  | Tag_id3v2_base_unique_formula_t.Tdly _ ->
      Tag_id3v2_base_unique_symbol_t.Tdly
  | Tag_id3v2_base_unique_formula_t.Tenc _ ->
      Tag_id3v2_base_unique_symbol_t.Tenc
  | Tag_id3v2_base_unique_formula_t.Tflt _ ->
      Tag_id3v2_base_unique_symbol_t.Tflt
  | Tag_id3v2_base_unique_formula_t.Tit1 _ ->
      Tag_id3v2_base_unique_symbol_t.Tit1
  | Tag_id3v2_base_unique_formula_t.Tit2 _ ->
      Tag_id3v2_base_unique_symbol_t.Tit2
  | Tag_id3v2_base_unique_formula_t.Tit3 _ ->
      Tag_id3v2_base_unique_symbol_t.Tit3
  | Tag_id3v2_base_unique_formula_t.Tkey _ ->
      Tag_id3v2_base_unique_symbol_t.Tkey
  | Tag_id3v2_base_unique_formula_t.Tlan _ ->
      Tag_id3v2_base_unique_symbol_t.Tlan
  | Tag_id3v2_base_unique_formula_t.Tlen _ ->
      Tag_id3v2_base_unique_symbol_t.Tlen
  | Tag_id3v2_base_unique_formula_t.Tmed _ ->
      Tag_id3v2_base_unique_symbol_t.Tmed
  | Tag_id3v2_base_unique_formula_t.Toal _ ->
      Tag_id3v2_base_unique_symbol_t.Toal
  | Tag_id3v2_base_unique_formula_t.Tofn _ ->
      Tag_id3v2_base_unique_symbol_t.Tofn
  | Tag_id3v2_base_unique_formula_t.Town _ ->
      Tag_id3v2_base_unique_symbol_t.Town
  | Tag_id3v2_base_unique_formula_t.Tpe2 _ ->
      Tag_id3v2_base_unique_symbol_t.Tpe2
  | Tag_id3v2_base_unique_formula_t.Tpe3 _ ->
      Tag_id3v2_base_unique_symbol_t.Tpe3
  | Tag_id3v2_base_unique_formula_t.Tpe4 _ ->
      Tag_id3v2_base_unique_symbol_t.Tpe4
  | Tag_id3v2_base_unique_formula_t.Tpos _ ->
      Tag_id3v2_base_unique_symbol_t.Tpos
  | Tag_id3v2_base_unique_formula_t.Tpub _ ->
      Tag_id3v2_base_unique_symbol_t.Tpub
  | Tag_id3v2_base_unique_formula_t.Trck _ ->
      Tag_id3v2_base_unique_symbol_t.Trck
  | Tag_id3v2_base_unique_formula_t.Trsn _ ->
      Tag_id3v2_base_unique_symbol_t.Trsn
  | Tag_id3v2_base_unique_formula_t.Trso _ ->
      Tag_id3v2_base_unique_symbol_t.Trso
  | Tag_id3v2_base_unique_formula_t.Tsrc _ ->
      Tag_id3v2_base_unique_symbol_t.Tsrc
  | Tag_id3v2_base_unique_formula_t.Tsse _ ->
      Tag_id3v2_base_unique_symbol_t.Tsse
  | Tag_id3v2_base_unique_formula_t.Txxx _ ->
      Tag_id3v2_base_unique_symbol_t.Txxx
  | Tag_id3v2_base_unique_formula_t.Ufid _ ->
      Tag_id3v2_base_unique_symbol_t.Ufid
  | Tag_id3v2_base_unique_formula_t.User _ ->
      Tag_id3v2_base_unique_symbol_t.User
  | Tag_id3v2_base_unique_formula_t.Uslt _ ->
      Tag_id3v2_base_unique_symbol_t.Uslt
  | Tag_id3v2_base_unique_formula_t.Wcom _ ->
      Tag_id3v2_base_unique_symbol_t.Wcom
  | Tag_id3v2_base_unique_formula_t.Wcop _ ->
      Tag_id3v2_base_unique_symbol_t.Wcop
  | Tag_id3v2_base_unique_formula_t.Woaf _ ->
      Tag_id3v2_base_unique_symbol_t.Woaf
  | Tag_id3v2_base_unique_formula_t.Woar _ ->
      Tag_id3v2_base_unique_symbol_t.Woar
  | Tag_id3v2_base_unique_formula_t.Woas _ ->
      Tag_id3v2_base_unique_symbol_t.Woas
  | Tag_id3v2_base_unique_formula_t.Wors _ ->
      Tag_id3v2_base_unique_symbol_t.Wors
  | Tag_id3v2_base_unique_formula_t.Wpay _ ->
      Tag_id3v2_base_unique_symbol_t.Wpay
  | Tag_id3v2_base_unique_formula_t.Wpub _ ->
      Tag_id3v2_base_unique_symbol_t.Wpub
  | Tag_id3v2_base_unique_formula_t.Wxxx _ ->
      Tag_id3v2_base_unique_symbol_t.Wxxx
;;


(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_tbu soi_tid =
  let sym_tid = Tag_id3_symbol_v.tag_id3_symbol_of_tag_id3v2_base_unique_symbol sym_tbu in
  let tag_tid = Tag_v.make sym_tid soi_tid in
  let sym_str_l = String_symbol_list_by_tag_id3_tag_provider_v.provide tag_tid in
  let soi_str_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_str_l) soi_tid in
  List.map2 Tag_v.make sym_str_l soi_str_l
;;


(** {6 Making_for_formula} *)

let make sym_tbu soi_tid =
  match sym_tbu with
  | Tag_id3v2_base_unique_symbol_t.Aenc ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Aenc tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Apic ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Apic tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Comm ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Comm tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Comr ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Comr tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Encr ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Encr tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Etco ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Etco tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Geob ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Geob tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Grid ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Grid tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Link ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Link tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Mcdi ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Mcdi tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Mllt ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Mllt tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Owne ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Owne tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Pcnt ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Pcnt tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Popm ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Popm tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Poss ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Poss tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Priv ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Priv tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Rbuf ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Rbuf tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Rvrb ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Rvrb tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Sylt ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Sylt tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Sytc ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Sytc tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Talb ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Talb tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Tbpm ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Tbpm tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Tcon ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Tcon tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Tcop ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Tcop tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Tdly ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Tdly tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Tenc ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Tenc tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Tflt ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Tflt tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Tit1 ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Tit1 tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Tit2 ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Tit2 tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Tit3 ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Tit3 tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Tkey ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Tkey tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Tlan ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Tlan tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Tlen ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Tlen tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Tmed ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Tmed tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Toal ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Toal tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Tofn ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Tofn tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Town ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Town tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Tpe2 ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Tpe2 tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Tpe3 ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Tpe3 tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Tpe4 ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Tpe4 tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Tpos ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Tpos tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Tpub ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Tpub tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Trck ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Trck tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Trsn ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Trsn tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Trso ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Trso tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Tsrc ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Tsrc tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Tsse ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Tsse tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Txxx ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Txxx tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Ufid ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Ufid tag_str_l
  | Tag_id3v2_base_unique_symbol_t.User ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.User tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Uslt ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Uslt tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Wcom ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Wcom tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Wcop ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Wcop tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Woaf ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Woaf tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Woar ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Woar tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Woas ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Woas tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Wors ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Wors tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Wpay ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Wpay tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Wpub ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Wpub tag_str_l
  | Tag_id3v2_base_unique_symbol_t.Wxxx ->
      let tag_str_l = build_n_store sym_tbu soi_tid in
        Tag_id3v2_base_unique_formula_t.Wxxx tag_str_l
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_tbu =
  let soi_tid = Tag_v.sole_index_off_tag tag_tbu in
  let sym_tbu = Tag_v.symbol_off_tag tag_tbu in
  make sym_tbu soi_tid
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_tag_id3v2_base_unique_formula = function
  | Tag_id3v2_base_unique_formula_t.Aenc tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Apic tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Comm tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Comr tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Encr tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Etco tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Geob tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Grid tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Link tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Mcdi tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Mllt tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Owne tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Pcnt tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Popm tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Poss tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Priv tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Rbuf tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Rvrb tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Sylt tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Sytc tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Talb tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Tbpm tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Tcon tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Tcop tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Tdly tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Tenc tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Tflt tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Tit1 tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Tit2 tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Tit3 tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Tkey tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Tlan tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Tlen tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Tmed tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Toal tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Tofn tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Town tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Tpe2 tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Tpe3 tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Tpe4 tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Tpos tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Tpub tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Trck tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Trsn tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Trso tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Tsrc tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Tsse tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Txxx tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Ufid tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.User tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Uslt tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Wcom tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Wcop tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Woaf tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Woar tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Woas tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Wors tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Wpay tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Wpub tag_str_l -> tag_str_l
  | Tag_id3v2_base_unique_formula_t.Wxxx tag_str_l -> tag_str_l
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_tag_id3v2_base_unique_tag tag_tbu =
  let for_tbu = retrieve tag_tbu in
  string_tag_list_off_tag_id3v2_base_unique_formula for_tbu
;;


(** Tag_id3v2_base_unique_formula_v at 18:19:41 on 27 Jun 2013. created by version v2.3 of generator *)



