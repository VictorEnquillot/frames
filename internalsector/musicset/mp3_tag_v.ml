(** {3 Functionalities for a Type for Mp3 tag} *)

(* http://en.wikipedia.org/wiki/MP3 *)

let make str =
  let stu = String.uppercase str in
  match stu with
  | "AENC" -> Mp3_tag_t.AENC
  | "APIC" -> Mp3_tag_t.APIC
  | "COMM" -> Mp3_tag_t.COMM
  | "COMR" -> Mp3_tag_t.COMR
  | "ENCR" -> Mp3_tag_t.ENCR
  | "EQUA" -> Mp3_tag_t.EQUA
  | "ETCO" -> Mp3_tag_t.ETCO
  | "GEOB" -> Mp3_tag_t.GEOB
  | "GRID" -> Mp3_tag_t.GRID
  | "IPLS" -> Mp3_tag_t.IPLS
  | "LINK" -> Mp3_tag_t.LINK
  | "MCDI" -> Mp3_tag_t.MCDI
  | "MLLT" -> Mp3_tag_t.MLLT
  | "OWNE" -> Mp3_tag_t.OWNE
  | "PCNT" -> Mp3_tag_t.PCNT
  | "POPM" -> Mp3_tag_t.POPM
  | "POSS" -> Mp3_tag_t.POSS
  | "PRIV" -> Mp3_tag_t.PRIV
  | "RBUF" -> Mp3_tag_t.RBUF
  | "RVAD" -> Mp3_tag_t.RVAD
  | "RVRB" -> Mp3_tag_t.RVRB
  | "SYLT" -> Mp3_tag_t.SYLT
  | "SYTC" -> Mp3_tag_t.SYTC
  | "TALB" -> Mp3_tag_t.TALB
  | "TBPM" -> Mp3_tag_t.TBPM
  | "TCOM" -> Mp3_tag_t.TCOM
  | "TCON" -> Mp3_tag_t.TCON
  | "TCOP" -> Mp3_tag_t.TCOP
  | "TDAT" -> Mp3_tag_t.TDAT
  | "TDLY" -> Mp3_tag_t.TDLY
  | "TENC" -> Mp3_tag_t.TENC
  | "TEXT" -> Mp3_tag_t.TEXT
  | "TFLT" -> Mp3_tag_t.TFLT
  | "TIME" -> Mp3_tag_t.TIME
  | "TIT1" -> Mp3_tag_t.TIT1
  | "TIT2" -> Mp3_tag_t.TIT2
  | "TIT3" -> Mp3_tag_t.TIT3
  | "TKEY" -> Mp3_tag_t.TKEY
  | "TLAN" -> Mp3_tag_t.TLAN
  | "TLEN" -> Mp3_tag_t.TLEN
  | "TMED" -> Mp3_tag_t.TMED
  | "TOAL" -> Mp3_tag_t.TOAL
  | "TOFN" -> Mp3_tag_t.TOFN
  | "TOLY" -> Mp3_tag_t.TOLY
  | "TOPE" -> Mp3_tag_t.TOPE
  | "TORY" -> Mp3_tag_t.TORY
  | "TOWN" -> Mp3_tag_t.TOWN
  | "TPE1" -> Mp3_tag_t.TPE1
  | "TPE2" -> Mp3_tag_t.TPE2
  | "TPE3" -> Mp3_tag_t.TPE3
  | "TPE4" -> Mp3_tag_t.TPE4
  | "TPOS" -> Mp3_tag_t.TPOS
  | "TPUB" -> Mp3_tag_t.TPUB
  | "TRCK" -> Mp3_tag_t.TRCK
  | "TRDA" -> Mp3_tag_t.TRDA
  | "TRSN" -> Mp3_tag_t.TRSN
  | "TRSO" -> Mp3_tag_t.TRSO
  | "TSIZ" -> Mp3_tag_t.TSIZ
  | "TSRC" -> Mp3_tag_t.TSRC
  | "TSSE" -> Mp3_tag_t.TSSE
  | "TXXX" -> Mp3_tag_t.TXXX
  | "TYER" -> Mp3_tag_t.TYER
  | "UFID" -> Mp3_tag_t.UFID
  | "USER" -> Mp3_tag_t.USER
  | "USLT" -> Mp3_tag_t.USLT
  | "WCOM" -> Mp3_tag_t.WCOM
  | "WCOP" -> Mp3_tag_t.WCOP
  | "WOAF" -> Mp3_tag_t.WOAF
  | "WOAR" -> Mp3_tag_t.WOAR
  | "WOAS" -> Mp3_tag_t.WOAS
  | "WORS" -> Mp3_tag_t.WORS
  | "WPAY" -> Mp3_tag_t.WPAY
  | "WPUB" -> Mp3_tag_t.WPUB
  | "WXXX" -> Mp3_tag_t.WXXX
  | _ -> 
      failwith "Not_mp3_tag:mp3_tag_v.ml:make"
;;
