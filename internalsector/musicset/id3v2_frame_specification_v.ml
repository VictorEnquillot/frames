(** {3 Functionalities for a Type for Mp3 tag} *)

(* http://en.wikipedia.org/wiki/MP3 *)

let make str =
  let stu = String.uppercase str in
  match stu with
  | "AENC" -> Id3v2_frame_specification_symbol_t.AENC
  | "APIC" -> Id3v2_frame_specification_symbol_t.APIC
  | "COMM" -> Id3v2_frame_specification_symbol_t.COMM
  | "COMR" -> Id3v2_frame_specification_symbol_t.COMR
  | "ENCR" -> Id3v2_frame_specification_symbol_t.ENCR
  | "EQUA" -> Id3v2_frame_specification_symbol_t.EQUA
  | "ETCO" -> Id3v2_frame_specification_symbol_t.ETCO
  | "GEOB" -> Id3v2_frame_specification_symbol_t.GEOB
  | "GRID" -> Id3v2_frame_specification_symbol_t.GRID
  | "IPLS" -> Id3v2_frame_specification_symbol_t.IPLS
  | "LINK" -> Id3v2_frame_specification_symbol_t.LINK
  | "MCDI" -> Id3v2_frame_specification_symbol_t.MCDI
  | "MLLT" -> Id3v2_frame_specification_symbol_t.MLLT
  | "OWNE" -> Id3v2_frame_specification_symbol_t.OWNE
  | "PCNT" -> Id3v2_frame_specification_symbol_t.PCNT
  | "POPM" -> Id3v2_frame_specification_symbol_t.POPM
  | "POSS" -> Id3v2_frame_specification_symbol_t.POSS
  | "PRIV" -> Id3v2_frame_specification_symbol_t.PRIV
  | "RBUF" -> Id3v2_frame_specification_symbol_t.RBUF
  | "RVAD" -> Id3v2_frame_specification_symbol_t.RVAD
  | "RVRB" -> Id3v2_frame_specification_symbol_t.RVRB
  | "SYLT" -> Id3v2_frame_specification_symbol_t.SYLT
  | "SYTC" -> Id3v2_frame_specification_symbol_t.SYTC
  | "TALB" -> Id3v2_frame_specification_symbol_t.TALB
  | "TBPM" -> Id3v2_frame_specification_symbol_t.TBPM
  | "TCOM" -> Id3v2_frame_specification_symbol_t.TCOM
  | "TCON" -> Id3v2_frame_specification_symbol_t.TCON
  | "TCOP" -> Id3v2_frame_specification_symbol_t.TCOP
  | "TDAT" -> Id3v2_frame_specification_symbol_t.TDAT
  | "TDLY" -> Id3v2_frame_specification_symbol_t.TDLY
  | "TENC" -> Id3v2_frame_specification_symbol_t.TENC
  | "TEXT" -> Id3v2_frame_specification_symbol_t.TEXT
  | "TFLT" -> Id3v2_frame_specification_symbol_t.TFLT
  | "TIME" -> Id3v2_frame_specification_symbol_t.TIME
  | "TIT1" -> Id3v2_frame_specification_symbol_t.TIT1
  | "TIT2" -> Id3v2_frame_specification_symbol_t.TIT2
  | "TIT3" -> Id3v2_frame_specification_symbol_t.TIT3
  | "TKEY" -> Id3v2_frame_specification_symbol_t.TKEY
  | "TLAN" -> Id3v2_frame_specification_symbol_t.TLAN
  | "TLEN" -> Id3v2_frame_specification_symbol_t.TLEN
  | "TMED" -> Id3v2_frame_specification_symbol_t.TMED
  | "TOAL" -> Id3v2_frame_specification_symbol_t.TOAL
  | "TOFN" -> Id3v2_frame_specification_symbol_t.TOFN
  | "TOLY" -> Id3v2_frame_specification_symbol_t.TOLY
  | "TOPE" -> Id3v2_frame_specification_symbol_t.TOPE
  | "TORY" -> Id3v2_frame_specification_symbol_t.TORY
  | "TOWN" -> Id3v2_frame_specification_symbol_t.TOWN
  | "TPE1" -> Id3v2_frame_specification_symbol_t.TPE1
  | "TPE2" -> Id3v2_frame_specification_symbol_t.TPE2
  | "TPE3" -> Id3v2_frame_specification_symbol_t.TPE3
  | "TPE4" -> Id3v2_frame_specification_symbol_t.TPE4
  | "TPOS" -> Id3v2_frame_specification_symbol_t.TPOS
  | "TPUB" -> Id3v2_frame_specification_symbol_t.TPUB
  | "TRCK" -> Id3v2_frame_specification_symbol_t.TRCK
  | "TRDA" -> Id3v2_frame_specification_symbol_t.TRDA
  | "TRSN" -> Id3v2_frame_specification_symbol_t.TRSN
  | "TRSO" -> Id3v2_frame_specification_symbol_t.TRSO
  | "TSIZ" -> Id3v2_frame_specification_symbol_t.TSIZ
  | "TSRC" -> Id3v2_frame_specification_symbol_t.TSRC
  | "TSSE" -> Id3v2_frame_specification_symbol_t.TSSE
  | "TXXX" -> Id3v2_frame_specification_symbol_t.TXXX
  | "TYER" -> Id3v2_frame_specification_symbol_t.TYER
  | "UFID" -> Id3v2_frame_specification_symbol_t.UFID
  | "USER" -> Id3v2_frame_specification_symbol_t.USER
  | "USLT" -> Id3v2_frame_specification_symbol_t.USLT
  | "WCOM" -> Id3v2_frame_specification_symbol_t.WCOM
  | "WCOP" -> Id3v2_frame_specification_symbol_t.WCOP
  | "WOAF" -> Id3v2_frame_specification_symbol_t.WOAF
  | "WOAR" -> Id3v2_frame_specification_symbol_t.WOAR
  | "WOAS" -> Id3v2_frame_specification_symbol_t.WOAS
  | "WORS" -> Id3v2_frame_specification_symbol_t.WORS
  | "WPAY" -> Id3v2_frame_specification_symbol_t.WPAY
  | "WPUB" -> Id3v2_frame_specification_symbol_t.WPUB
  | "WXXX" -> Id3v2_frame_specification_symbol_t.WXXX
  | _ -> 
      failwith "Not_mp3_tag:id3v2_frame_specification_v.ml:make"
;;
