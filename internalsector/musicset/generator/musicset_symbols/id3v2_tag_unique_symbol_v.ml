
(** {3 The functionalities for a Symbol for a Id3v2_tag_unique.} *)

let nam_cod = "id3v2_tag_unique_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Id3v2_tag_unique_symbol_t.AENC -> "AENC"
  | Id3v2_tag_unique_symbol_t.APIC -> "APIC"
  | Id3v2_tag_unique_symbol_t.COMM -> "COMM"
  | Id3v2_tag_unique_symbol_t.COMR -> "COMR"
  | Id3v2_tag_unique_symbol_t.ENCR -> "ENCR"
  | Id3v2_tag_unique_symbol_t.ETCO -> "ETCO"
  | Id3v2_tag_unique_symbol_t.GEOB -> "GEOB"
  | Id3v2_tag_unique_symbol_t.GRID -> "GRID"
  | Id3v2_tag_unique_symbol_t.LINK -> "LINK"
  | Id3v2_tag_unique_symbol_t.MCDI -> "MCDI"
  | Id3v2_tag_unique_symbol_t.MLLT -> "MLLT"
  | Id3v2_tag_unique_symbol_t.OWNE -> "OWNE"
  | Id3v2_tag_unique_symbol_t.PCNT -> "PCNT"
  | Id3v2_tag_unique_symbol_t.POPM -> "POPM"
  | Id3v2_tag_unique_symbol_t.POSS -> "POSS"
  | Id3v2_tag_unique_symbol_t.PRIV -> "PRIV"
  | Id3v2_tag_unique_symbol_t.RBUF -> "RBUF"
  | Id3v2_tag_unique_symbol_t.RVRB -> "RVRB"
  | Id3v2_tag_unique_symbol_t.SYLT -> "SYLT"
  | Id3v2_tag_unique_symbol_t.SYTC -> "SYTC"
  | Id3v2_tag_unique_symbol_t.TALB -> "TALB"
  | Id3v2_tag_unique_symbol_t.TBPM -> "TBPM"
  | Id3v2_tag_unique_symbol_t.TCON -> "TCON"
  | Id3v2_tag_unique_symbol_t.TCOP -> "TCOP"
  | Id3v2_tag_unique_symbol_t.TDLY -> "TDLY"
  | Id3v2_tag_unique_symbol_t.TENC -> "TENC"
  | Id3v2_tag_unique_symbol_t.TFLT -> "TFLT"
  | Id3v2_tag_unique_symbol_t.TIT1 -> "TIT1"
  | Id3v2_tag_unique_symbol_t.TIT2 -> "TIT2"
  | Id3v2_tag_unique_symbol_t.TIT3 -> "TIT3"
  | Id3v2_tag_unique_symbol_t.TKEY -> "TKEY"
  | Id3v2_tag_unique_symbol_t.TLAN -> "TLAN"
  | Id3v2_tag_unique_symbol_t.TLEN -> "TLEN"
  | Id3v2_tag_unique_symbol_t.TMED -> "TMED"
  | Id3v2_tag_unique_symbol_t.TOAL -> "TOAL"
  | Id3v2_tag_unique_symbol_t.TOFN -> "TOFN"
  | Id3v2_tag_unique_symbol_t.TOWN -> "TOWN"
  | Id3v2_tag_unique_symbol_t.TPE2 -> "TPE2"
  | Id3v2_tag_unique_symbol_t.TPE3 -> "TPE3"
  | Id3v2_tag_unique_symbol_t.TPE4 -> "TPE4"
  | Id3v2_tag_unique_symbol_t.TPOS -> "TPOS"
  | Id3v2_tag_unique_symbol_t.TPUB -> "TPUB"
  | Id3v2_tag_unique_symbol_t.TRCK -> "TRCK"
  | Id3v2_tag_unique_symbol_t.TRSN -> "TRSN"
  | Id3v2_tag_unique_symbol_t.TRSO -> "TRSO"
  | Id3v2_tag_unique_symbol_t.TSRC -> "TSRC"
  | Id3v2_tag_unique_symbol_t.TSSE -> "TSSE"
  | Id3v2_tag_unique_symbol_t.TXXX -> "TXXX"
  | Id3v2_tag_unique_symbol_t.UFID -> "UFID"
  | Id3v2_tag_unique_symbol_t.USER -> "USER"
  | Id3v2_tag_unique_symbol_t.USLT -> "USLT"
  | Id3v2_tag_unique_symbol_t.WCOM -> "WCOM"
  | Id3v2_tag_unique_symbol_t.WCOP -> "WCOP"
  | Id3v2_tag_unique_symbol_t.WOAF -> "WOAF"
  | Id3v2_tag_unique_symbol_t.WOAR -> "WOAR"
  | Id3v2_tag_unique_symbol_t.WOAS -> "WOAS"
  | Id3v2_tag_unique_symbol_t.WORS -> "WORS"
  | Id3v2_tag_unique_symbol_t.WPAY -> "WPAY"
  | Id3v2_tag_unique_symbol_t.WPUB -> "WPUB"
  | Id3v2_tag_unique_symbol_t.WXXX -> "WXXX"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let AENC = Id3v2_tag_unique_symbol_t.AENC;;

let APIC = Id3v2_tag_unique_symbol_t.APIC;;

let COMM = Id3v2_tag_unique_symbol_t.COMM;;

let COMR = Id3v2_tag_unique_symbol_t.COMR;;

let ENCR = Id3v2_tag_unique_symbol_t.ENCR;;

let ETCO = Id3v2_tag_unique_symbol_t.ETCO;;

let GEOB = Id3v2_tag_unique_symbol_t.GEOB;;

let GRID = Id3v2_tag_unique_symbol_t.GRID;;

let LINK = Id3v2_tag_unique_symbol_t.LINK;;

let MCDI = Id3v2_tag_unique_symbol_t.MCDI;;

let MLLT = Id3v2_tag_unique_symbol_t.MLLT;;

let OWNE = Id3v2_tag_unique_symbol_t.OWNE;;

let PCNT = Id3v2_tag_unique_symbol_t.PCNT;;

let POPM = Id3v2_tag_unique_symbol_t.POPM;;

let POSS = Id3v2_tag_unique_symbol_t.POSS;;

let PRIV = Id3v2_tag_unique_symbol_t.PRIV;;

let RBUF = Id3v2_tag_unique_symbol_t.RBUF;;

let RVRB = Id3v2_tag_unique_symbol_t.RVRB;;

let SYLT = Id3v2_tag_unique_symbol_t.SYLT;;

let SYTC = Id3v2_tag_unique_symbol_t.SYTC;;

let TALB = Id3v2_tag_unique_symbol_t.TALB;;

let TBPM = Id3v2_tag_unique_symbol_t.TBPM;;

let TCON = Id3v2_tag_unique_symbol_t.TCON;;

let TCOP = Id3v2_tag_unique_symbol_t.TCOP;;

let TDLY = Id3v2_tag_unique_symbol_t.TDLY;;

let TENC = Id3v2_tag_unique_symbol_t.TENC;;

let TFLT = Id3v2_tag_unique_symbol_t.TFLT;;

let TIT1 = Id3v2_tag_unique_symbol_t.TIT1;;

let TIT2 = Id3v2_tag_unique_symbol_t.TIT2;;

let TIT3 = Id3v2_tag_unique_symbol_t.TIT3;;

let TKEY = Id3v2_tag_unique_symbol_t.TKEY;;

let TLAN = Id3v2_tag_unique_symbol_t.TLAN;;

let TLEN = Id3v2_tag_unique_symbol_t.TLEN;;

let TMED = Id3v2_tag_unique_symbol_t.TMED;;

let TOAL = Id3v2_tag_unique_symbol_t.TOAL;;

let TOFN = Id3v2_tag_unique_symbol_t.TOFN;;

let TOWN = Id3v2_tag_unique_symbol_t.TOWN;;

let TPE2 = Id3v2_tag_unique_symbol_t.TPE2;;

let TPE3 = Id3v2_tag_unique_symbol_t.TPE3;;

let TPE4 = Id3v2_tag_unique_symbol_t.TPE4;;

let TPOS = Id3v2_tag_unique_symbol_t.TPOS;;

let TPUB = Id3v2_tag_unique_symbol_t.TPUB;;

let TRCK = Id3v2_tag_unique_symbol_t.TRCK;;

let TRSN = Id3v2_tag_unique_symbol_t.TRSN;;

let TRSO = Id3v2_tag_unique_symbol_t.TRSO;;

let TSRC = Id3v2_tag_unique_symbol_t.TSRC;;

let TSSE = Id3v2_tag_unique_symbol_t.TSSE;;

let TXXX = Id3v2_tag_unique_symbol_t.TXXX;;

let UFID = Id3v2_tag_unique_symbol_t.UFID;;

let USER = Id3v2_tag_unique_symbol_t.USER;;

let USLT = Id3v2_tag_unique_symbol_t.USLT;;

let WCOM = Id3v2_tag_unique_symbol_t.WCOM;;

let WCOP = Id3v2_tag_unique_symbol_t.WCOP;;

let WOAF = Id3v2_tag_unique_symbol_t.WOAF;;

let WOAR = Id3v2_tag_unique_symbol_t.WOAR;;

let WOAS = Id3v2_tag_unique_symbol_t.WOAS;;

let WORS = Id3v2_tag_unique_symbol_t.WORS;;

let WPAY = Id3v2_tag_unique_symbol_t.WPAY;;

let WPUB = Id3v2_tag_unique_symbol_t.WPUB;;

let WXXX = Id3v2_tag_unique_symbol_t.WXXX;;


(** {6 Making} *)


let make nam s =
  match String.capitalize nam with
  | "AENC" -> AENC
  | "APIC" -> APIC
  | "COMM" -> COMM
  | "COMR" -> COMR
  | "ENCR" -> ENCR
  | "ETCO" -> ETCO
  | "GEOB" -> GEOB
  | "GRID" -> GRID
  | "LINK" -> LINK
  | "MCDI" -> MCDI
  | "MLLT" -> MLLT
  | "OWNE" -> OWNE
  | "PCNT" -> PCNT
  | "POPM" -> POPM
  | "POSS" -> POSS
  | "PRIV" -> PRIV
  | "RBUF" -> RBUF
  | "RVRB" -> RVRB
  | "SYLT" -> SYLT
  | "SYTC" -> SYTC
  | "TALB" -> TALB
  | "TBPM" -> TBPM
  | "TCON" -> TCON
  | "TCOP" -> TCOP
  | "TDLY" -> TDLY
  | "TENC" -> TENC
  | "TFLT" -> TFLT
  | "TIT1" -> TIT1
  | "TIT2" -> TIT2
  | "TIT3" -> TIT3
  | "TKEY" -> TKEY
  | "TLAN" -> TLAN
  | "TLEN" -> TLEN
  | "TMED" -> TMED
  | "TOAL" -> TOAL
  | "TOFN" -> TOFN
  | "TOWN" -> TOWN
  | "TPE2" -> TPE2
  | "TPE3" -> TPE3
  | "TPE4" -> TPE4
  | "TPOS" -> TPOS
  | "TPUB" -> TPUB
  | "TRCK" -> TRCK
  | "TRSN" -> TRSN
  | "TRSO" -> TRSO
  | "TSRC" -> TSRC
  | "TSSE" -> TSSE
  | "TXXX" -> TXXX
  | "UFID" -> UFID
  | "USER" -> USER
  | "USLT" -> USLT
  | "WCOM" -> WCOM
  | "WCOP" -> WCOP
  | "WOAF" -> WOAF
  | "WOAR" -> WOAR
  | "WOAS" -> WOAS
  | "WORS" -> WORS
  | "WPAY" -> WPAY
  | "WPUB" -> WPUB
  | "WXXX" -> WXXX
  | _ ->
    failwith "Not_Id3v2_tag_unique_symbol:id3v2_tag_unique_symbol_v:make"
;;


(** {6 Extracting} *)



(** {6 Querying} *)




(** created by ./generator id3v2_tag_unique implementation symbol at 17:43 6 Jun 2012. *)



