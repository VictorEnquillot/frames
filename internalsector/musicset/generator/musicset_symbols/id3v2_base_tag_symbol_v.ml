
(** {3 The functionalities for a Symbol for a Id3v2_base_tag.} *)

let nam_cod = "id3v2_base_tag_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Id3v2_base_tag_symbol_t.Id3v2_tag_unique_symbol sym_itu ->
      Id3v2_tag_unique_symbol_v.name sym_itu
  | Id3v2_base_tag_symbol_t.Id3v2_tag_multiple_symbol sym_itm ->
      Id3v2_tag_multiple_symbol_v.name sym_itm
;;


(** {6 Upgrading} *)


let id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol sym_itu = 
  Id3v2_base_tag_symbol_t.Id3v2_tag_unique_symbol sym_itu
;;

let id3v2_base_tag_symbol_of_id3v2_tag_multiple_symbol sym_itm = 
  Id3v2_base_tag_symbol_t.Id3v2_tag_multiple_symbol sym_itm
;;


(** {6 Abbreviating} *)


let AENC = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.AENC;;

let APIC = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.APIC;;

let COMM = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.COMM;;

let COMR = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.COMR;;

let ENCR = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.ENCR;;

let ETCO = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.ETCO;;

let GEOB = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.GEOB;;

let GRID = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.GRID;;

let LINK = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.LINK;;

let MCDI = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.MCDI;;

let MLLT = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.MLLT;;

let OWNE = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.OWNE;;

let PCNT = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.PCNT;;

let POPM = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.POPM;;

let POSS = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.POSS;;

let PRIV = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.PRIV;;

let RBUF = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.RBUF;;

let RVRB = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.RVRB;;

let SYLT = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.SYLT;;

let SYTC = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.SYTC;;

let TALB = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.TALB;;

let TBPM = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.TBPM;;

let TCON = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.TCON;;

let TCOP = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.TCOP;;

let TDLY = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.TDLY;;

let TENC = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.TENC;;

let TFLT = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.TFLT;;

let TIT1 = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.TIT1;;

let TIT2 = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.TIT2;;

let TIT3 = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.TIT3;;

let TKEY = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.TKEY;;

let TLAN = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.TLAN;;

let TLEN = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.TLEN;;

let TMED = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.TMED;;

let TOAL = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.TOAL;;

let TOFN = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.TOFN;;

let TOWN = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.TOWN;;

let TPE2 = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.TPE2;;

let TPE3 = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.TPE3;;

let TPE4 = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.TPE4;;

let TPOS = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.TPOS;;

let TPUB = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.TPUB;;

let TRCK = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.TRCK;;

let TRSN = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.TRSN;;

let TRSO = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.TRSO;;

let TSRC = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.TSRC;;

let TSSE = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.TSSE;;

let TXXX = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.TXXX;;

let UFID = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.UFID;;

let USER = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.USER;;

let USLT = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.USLT;;

let WCOM = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.WCOM;;

let WCOP = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.WCOP;;

let WOAF = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.WOAF;;

let WOAR = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.WOAR;;

let WOAS = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.WOAS;;

let WORS = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.WORS;;

let WPAY = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.WPAY;;

let WPUB = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.WPUB;;

let WXXX = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.WXXX;;

let TPE1 = id3v2_base_tag_symbol_of_id3v2_tag_multiple_symbol Id3v2_tag_multiple_symbol_v.TPE1;;

let TCOM = id3v2_base_tag_symbol_of_id3v2_tag_multiple_symbol Id3v2_tag_multiple_symbol_v.TCOM;;

let TEXT = id3v2_base_tag_symbol_of_id3v2_tag_multiple_symbol Id3v2_tag_multiple_symbol_v.TEXT;;

let TOLY = id3v2_base_tag_symbol_of_id3v2_tag_multiple_symbol Id3v2_tag_multiple_symbol_v.TOLY;;

let TOPE = id3v2_base_tag_symbol_of_id3v2_tag_multiple_symbol Id3v2_tag_multiple_symbol_v.TOPE;;


(** {6 Making} *)


let make nam s =
  try id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol
      (Id3v2_tag_unique_symbol_v.make nam s)
  with Failure "Not_Id3v2_tag_unique_symbol:id3v2_tag_unique_symbol_v:make" ->
  try id3v2_base_tag_symbol_of_id3v2_tag_multiple_symbol
      (Id3v2_tag_multiple_symbol_v.make nam s)
  with Failure "Not_Id3v2_tag_multiple_symbol:id3v2_tag_multiple_symbol_v:make" ->
    failwith "Not_Id3v2_base_tag_symbol:id3v2_base_tag_symbol_v:make"
;;


(** {6 Extracting} *)


let id3v2_tag_unique_symbol_off_id3v2_base_tag_symbol = function
  | Id3v2_base_tag_symbol_t.Id3v2_tag_unique_symbol sym_itu -> sym_itu
  | sym_ibt -> Error_messages_v.print_fatal_error
      nam_cod "id3v2_tag_unique_symbol_off_id3v2_base_tag_symbol"
      "Id3v2_tag_unique_symbol"
      (name sym_ibt) "check"
;;

let id3v2_tag_multiple_symbol_off_id3v2_base_tag_symbol = function
  | Id3v2_base_tag_symbol_t.Id3v2_tag_multiple_symbol sym_itm -> sym_itm
  | sym_ibt -> Error_messages_v.print_fatal_error
      nam_cod "id3v2_tag_multiple_symbol_off_id3v2_base_tag_symbol"
      "Id3v2_tag_multiple_symbol"
      (name sym_ibt) "check"
;;


(** {6 Querying} *)


let is_id3v2_tag_unique_symbol_off_id3v2_base_tag_symbol = function
  | Id3v2_base_tag_symbol_t.Id3v2_tag_unique_symbol _ -> true
  | _ -> false
;;

let is_id3v2_tag_multiple_symbol_off_id3v2_base_tag_symbol = function
  | Id3v2_base_tag_symbol_t.Id3v2_tag_multiple_symbol _ -> true
  | _ -> false
;;



(** created by ./generator id3v2_base_tag implementation symbol at 17:43 6 Jun 2012. *)



