
(** {3 The functionalities for a Symbol for a Id3_tag.} *)

let nam_cod = "id3_tag_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Id3_tag_symbol_t.Id3v1_tag_symbol sym_idt ->
      Id3v1_tag_symbol_v.name sym_idt
  | Id3_tag_symbol_t.Id3v1_1_tag -> "Id3v1_1_tag"
  | Id3_tag_symbol_t.Id3v2_tag_symbol sym_idt ->
      Id3v2_tag_symbol_v.name sym_idt
;;


(** {6 Upgrading} *)


let id3_tag_symbol_of_id3v1_tag_symbol sym_idt = 
  Id3_tag_symbol_t.Id3v1_tag_symbol sym_idt
;;

let id3_tag_symbol_of_id3v1_tag_128_symbol sym_it1 = 
  let sym_idt = Id3v1_tag_symbol_v.id3v1_tag_symbol_of_id3v1_tag_128_symbol sym_it1 in
    id3_tag_symbol_of_id3v1_tag_symbol sym_idt
;;

let id3_tag_symbol_of_id3v1_tag_227_symbol sym_it2 = 
  let sym_idt = Id3v1_tag_symbol_v.id3v1_tag_symbol_of_id3v1_tag_227_symbol sym_it2 in
    id3_tag_symbol_of_id3v1_tag_symbol sym_idt
;;

let id3_tag_symbol_of_id3v2_tag_symbol sym_idt = 
  Id3_tag_symbol_t.Id3v2_tag_symbol sym_idt
;;

let id3_tag_symbol_of_id3v2_base_tag_symbol sym_ibt = 
  let sym_idt = Id3v2_tag_symbol_v.id3v2_tag_symbol_of_id3v2_base_tag_symbol sym_ibt in
    id3_tag_symbol_of_id3v2_tag_symbol sym_idt
;;

let id3_tag_symbol_of_id3v2_tag_unique_symbol sym_itu = 
  let sym_idt = Id3v2_tag_symbol_v.id3v2_tag_symbol_of_id3v2_tag_unique_symbol sym_itu in
    id3_tag_symbol_of_id3v2_tag_symbol sym_idt
;;

let id3_tag_symbol_of_id3v2_tag_multiple_symbol sym_itm = 
  let sym_idt = Id3v2_tag_symbol_v.id3v2_tag_symbol_of_id3v2_tag_multiple_symbol sym_itm in
    id3_tag_symbol_of_id3v2_tag_symbol sym_idt
;;

let id3_tag_symbol_of_id3v2_tag_specific_symbol sym_its = 
  let sym_idt = Id3v2_tag_symbol_v.id3v2_tag_symbol_of_id3v2_tag_specific_symbol sym_its in
    id3_tag_symbol_of_id3v2_tag_symbol sym_idt
;;

let id3_tag_symbol_of_id3v2_3_tag_specific_symbol sym_3ts = 
  let sym_idt = Id3v2_tag_symbol_v.id3v2_tag_symbol_of_id3v2_3_tag_specific_symbol sym_3ts in
    id3_tag_symbol_of_id3v2_tag_symbol sym_idt
;;

let id3_tag_symbol_of_id3v2_4_tag_specific_symbol sym_4ts = 
  let sym_idt = Id3v2_tag_symbol_v.id3v2_tag_symbol_of_id3v2_4_tag_specific_symbol sym_4ts in
    id3_tag_symbol_of_id3v2_tag_symbol sym_idt
;;


(** {6 Abbreviating} *)


let header_3 = id3_tag_symbol_of_id3v1_tag_symbol Id3v1_tag_symbol_v.header_3;;

let title_30 = id3_tag_symbol_of_id3v1_tag_symbol Id3v1_tag_symbol_v.title_30;;

let artist_30 = id3_tag_symbol_of_id3v1_tag_symbol Id3v1_tag_symbol_v.artist_30;;

let album_30 = id3_tag_symbol_of_id3v1_tag_symbol Id3v1_tag_symbol_v.album_30;;

let year_4 = id3_tag_symbol_of_id3v1_tag_symbol Id3v1_tag_symbol_v.year_4;;

let comment_28 = id3_tag_symbol_of_id3v1_tag_symbol Id3v1_tag_symbol_v.comment_28;;

let comment_30 = id3_tag_symbol_of_id3v1_tag_symbol Id3v1_tag_symbol_v.comment_30;;

let zero_byte_1 = id3_tag_symbol_of_id3v1_tag_symbol Id3v1_tag_symbol_v.zero_byte_1;;

let track_1 = id3_tag_symbol_of_id3v1_tag_symbol Id3v1_tag_symbol_v.track_1;;

let genre_1 = id3_tag_symbol_of_id3v1_tag_symbol Id3v1_tag_symbol_v.genre_1;;

let header_4 = id3_tag_symbol_of_id3v1_tag_symbol Id3v1_tag_symbol_v.header_4;;

let title_60 = id3_tag_symbol_of_id3v1_tag_symbol Id3v1_tag_symbol_v.title_60;;

let artist_60 = id3_tag_symbol_of_id3v1_tag_symbol Id3v1_tag_symbol_v.artist_60;;

let album_60 = id3_tag_symbol_of_id3v1_tag_symbol Id3v1_tag_symbol_v.album_60;;

let speed_1 = id3_tag_symbol_of_id3v1_tag_symbol Id3v1_tag_symbol_v.speed_1;;

let genre_30 = id3_tag_symbol_of_id3v1_tag_symbol Id3v1_tag_symbol_v.genre_30;;

let start_time_6 = id3_tag_symbol_of_id3v1_tag_symbol Id3v1_tag_symbol_v.start_time_6;;

let end_time_6 = id3_tag_symbol_of_id3v1_tag_symbol Id3v1_tag_symbol_v.end_time_6;;

let id3v1_1_tag = Id3_tag_symbol_t.Id3v1_1_tag;;

let AENC = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.AENC;;

let APIC = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.APIC;;

let COMM = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.COMM;;

let COMR = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.COMR;;

let ENCR = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.ENCR;;

let ETCO = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.ETCO;;

let GEOB = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.GEOB;;

let GRID = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.GRID;;

let LINK = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.LINK;;

let MCDI = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.MCDI;;

let MLLT = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.MLLT;;

let OWNE = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.OWNE;;

let PCNT = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.PCNT;;

let POPM = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.POPM;;

let POSS = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.POSS;;

let PRIV = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.PRIV;;

let RBUF = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.RBUF;;

let RVRB = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.RVRB;;

let SYLT = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.SYLT;;

let SYTC = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.SYTC;;

let TALB = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TALB;;

let TBPM = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TBPM;;

let TCON = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TCON;;

let TCOP = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TCOP;;

let TDLY = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TDLY;;

let TENC = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TENC;;

let TFLT = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TFLT;;

let TIT1 = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TIT1;;

let TIT2 = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TIT2;;

let TIT3 = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TIT3;;

let TKEY = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TKEY;;

let TLAN = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TLAN;;

let TLEN = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TLEN;;

let TMED = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TMED;;

let TOAL = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TOAL;;

let TOFN = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TOFN;;

let TOWN = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TOWN;;

let TPE2 = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TPE2;;

let TPE3 = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TPE3;;

let TPE4 = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TPE4;;

let TPOS = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TPOS;;

let TPUB = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TPUB;;

let TRCK = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TRCK;;

let TRSN = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TRSN;;

let TRSO = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TRSO;;

let TSRC = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TSRC;;

let TSSE = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TSSE;;

let TXXX = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TXXX;;

let UFID = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.UFID;;

let USER = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.USER;;

let USLT = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.USLT;;

let WCOM = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.WCOM;;

let WCOP = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.WCOP;;

let WOAF = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.WOAF;;

let WOAR = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.WOAR;;

let WOAS = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.WOAS;;

let WORS = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.WORS;;

let WPAY = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.WPAY;;

let WPUB = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.WPUB;;

let WXXX = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.WXXX;;

let TPE1 = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TPE1;;

let TCOM = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TCOM;;

let TEXT = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TEXT;;

let TOLY = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TOLY;;

let TOPE = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TOPE;;

let EQUA = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.EQUA;;

let IPLS = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.IPLS;;

let RVAD = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.RVAD;;

let TDAT = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TDAT;;

let TIME = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TIME;;

let TORY = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TORY;;

let TRDA = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TRDA;;

let TYER = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TYER;;

let TSIZ = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TSIZ;;

let ASPI = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.ASPI;;

let EQU2 = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.EQU2;;

let RVA2 = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.RVA2;;

let SEEK = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.SEEK;;

let SIGN = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.SIGN;;

let TDEN = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TDEN;;

let TDOR = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TDOR;;

let TDRC = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TDRC;;

let TDRL = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TDRL;;

let TDTG = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TDTG;;

let TIPL = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TIPL;;

let TMCL = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TMCL;;

let TMOO = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TMOO;;

let TPRO = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TPRO;;

let TSOA = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TSOA;;

let TSOP = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TSOP;;

let TSOT = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TSOT;;

let TSST = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.TSST;;


(** {6 Making} *)


let make nam s =
  match String.capitalize nam with
  | "Id3v1_1_tag" -> id3v1_1_tag
  | _ ->
  try id3_tag_symbol_of_id3v1_tag_symbol
      (Id3v1_tag_symbol_v.make nam s)
  with Failure "Not_Id3v1_tag_symbol:id3v1_tag_symbol_v:make" ->
  try id3_tag_symbol_of_id3v2_tag_symbol
      (Id3v2_tag_symbol_v.make nam s)
  with Failure "Not_Id3v2_tag_symbol:id3v2_tag_symbol_v:make" ->
    Error_messages_v.print_fatal_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Id3_tag subtype" nam s)
      "it does not exists"
      "Check file id3_tag_symbol_v.ml" 
;;


(** {6 Extracting} *)


let id3v1_tag_symbol_off_id3_tag_symbol = function
  | Id3_tag_symbol_t.Id3v1_tag_symbol sym_idt -> sym_idt
  | sym_idt -> Error_messages_v.print_fatal_error
      nam_cod "id3v1_tag_symbol_off_id3_tag_symbol"
      "Id3v1_tag_symbol"
      (name sym_idt) "check"
;;

let id3v1_tag_128_symbol_off_id3_tag_symbol sym_idt = 
  let sym_idt = id3v1_tag_symbol_off_id3_tag_symbol sym_idt in 
    Id3v1_tag_symbol_v.id3v1_tag_128_symbol_off_id3v1_tag_symbol sym_idt
;;

let id3v1_tag_227_symbol_off_id3_tag_symbol sym_idt = 
  let sym_idt = id3v1_tag_symbol_off_id3_tag_symbol sym_idt in 
    Id3v1_tag_symbol_v.id3v1_tag_227_symbol_off_id3v1_tag_symbol sym_idt
;;

let id3v2_tag_symbol_off_id3_tag_symbol = function
  | Id3_tag_symbol_t.Id3v2_tag_symbol sym_idt -> sym_idt
  | sym_idt -> Error_messages_v.print_fatal_error
      nam_cod "id3v2_tag_symbol_off_id3_tag_symbol"
      "Id3v2_tag_symbol"
      (name sym_idt) "check"
;;

let id3v2_base_tag_symbol_off_id3_tag_symbol sym_idt = 
  let sym_idt = id3v2_tag_symbol_off_id3_tag_symbol sym_idt in 
    Id3v2_tag_symbol_v.id3v2_base_tag_symbol_off_id3v2_tag_symbol sym_idt
;;

let id3v2_tag_unique_symbol_off_id3_tag_symbol sym_idt = 
  let sym_idt = id3v2_tag_symbol_off_id3_tag_symbol sym_idt in 
    Id3v2_tag_symbol_v.id3v2_tag_unique_symbol_off_id3v2_tag_symbol sym_idt
;;

let id3v2_tag_multiple_symbol_off_id3_tag_symbol sym_idt = 
  let sym_idt = id3v2_tag_symbol_off_id3_tag_symbol sym_idt in 
    Id3v2_tag_symbol_v.id3v2_tag_multiple_symbol_off_id3v2_tag_symbol sym_idt
;;

let id3v2_tag_specific_symbol_off_id3_tag_symbol sym_idt = 
  let sym_idt = id3v2_tag_symbol_off_id3_tag_symbol sym_idt in 
    Id3v2_tag_symbol_v.id3v2_tag_specific_symbol_off_id3v2_tag_symbol sym_idt
;;

let id3v2_3_tag_specific_symbol_off_id3_tag_symbol sym_idt = 
  let sym_idt = id3v2_tag_symbol_off_id3_tag_symbol sym_idt in 
    Id3v2_tag_symbol_v.id3v2_3_tag_specific_symbol_off_id3v2_tag_symbol sym_idt
;;

let id3v2_4_tag_specific_symbol_off_id3_tag_symbol sym_idt = 
  let sym_idt = id3v2_tag_symbol_off_id3_tag_symbol sym_idt in 
    Id3v2_tag_symbol_v.id3v2_4_tag_specific_symbol_off_id3v2_tag_symbol sym_idt
;;


(** {6 Querying} *)


let is_id3v1_tag_symbol_off_id3_tag_symbol = function
  | Id3_tag_symbol_t.Id3v1_tag_symbol _ -> true
  | _ -> false
;;

let is_id3v1_tag_128_symbol_off_id3_tag_symbol sym_idt =
  if not (is_id3v1_tag_symbol_off_id3_tag_symbol sym_idt)
  then false
  else
    begin
     let sym_idt = id3v1_tag_symbol_off_id3_tag_symbol sym_idt in 
     Id3v1_tag_symbol_v.is_id3v1_tag_128_symbol_off_id3v1_tag_symbol sym_idt
    end
;;

let is_id3v1_tag_227_symbol_off_id3_tag_symbol sym_idt =
  if not (is_id3v1_tag_symbol_off_id3_tag_symbol sym_idt)
  then false
  else
    begin
     let sym_idt = id3v1_tag_symbol_off_id3_tag_symbol sym_idt in 
     Id3v1_tag_symbol_v.is_id3v1_tag_227_symbol_off_id3v1_tag_symbol sym_idt
    end
;;

let is_id3v2_tag_symbol_off_id3_tag_symbol = function
  | Id3_tag_symbol_t.Id3v2_tag_symbol _ -> true
  | _ -> false
;;

let is_id3v2_base_tag_symbol_off_id3_tag_symbol sym_idt =
  if not (is_id3v2_tag_symbol_off_id3_tag_symbol sym_idt)
  then false
  else
    begin
     let sym_idt = id3v2_tag_symbol_off_id3_tag_symbol sym_idt in 
     Id3v2_tag_symbol_v.is_id3v2_base_tag_symbol_off_id3v2_tag_symbol sym_idt
    end
;;

let is_id3v2_tag_unique_symbol_off_id3_tag_symbol sym_idt =
  if not (is_id3v2_tag_symbol_off_id3_tag_symbol sym_idt)
  then false
  else
    begin
     let sym_idt = id3v2_tag_symbol_off_id3_tag_symbol sym_idt in 
     Id3v2_tag_symbol_v.is_id3v2_tag_unique_symbol_off_id3v2_tag_symbol sym_idt
    end
;;

let is_id3v2_tag_multiple_symbol_off_id3_tag_symbol sym_idt =
  if not (is_id3v2_tag_symbol_off_id3_tag_symbol sym_idt)
  then false
  else
    begin
     let sym_idt = id3v2_tag_symbol_off_id3_tag_symbol sym_idt in 
     Id3v2_tag_symbol_v.is_id3v2_tag_multiple_symbol_off_id3v2_tag_symbol sym_idt
    end
;;

let is_id3v2_tag_specific_symbol_off_id3_tag_symbol sym_idt =
  if not (is_id3v2_tag_symbol_off_id3_tag_symbol sym_idt)
  then false
  else
    begin
     let sym_idt = id3v2_tag_symbol_off_id3_tag_symbol sym_idt in 
     Id3v2_tag_symbol_v.is_id3v2_tag_specific_symbol_off_id3v2_tag_symbol sym_idt
    end
;;

let is_id3v2_3_tag_specific_symbol_off_id3_tag_symbol sym_idt =
  if not (is_id3v2_tag_symbol_off_id3_tag_symbol sym_idt)
  then false
  else
    begin
     let sym_idt = id3v2_tag_symbol_off_id3_tag_symbol sym_idt in 
     Id3v2_tag_symbol_v.is_id3v2_3_tag_specific_symbol_off_id3v2_tag_symbol sym_idt
    end
;;

let is_id3v2_4_tag_specific_symbol_off_id3_tag_symbol sym_idt =
  if not (is_id3v2_tag_symbol_off_id3_tag_symbol sym_idt)
  then false
  else
    begin
     let sym_idt = id3v2_tag_symbol_off_id3_tag_symbol sym_idt in 
     Id3v2_tag_symbol_v.is_id3v2_4_tag_specific_symbol_off_id3v2_tag_symbol sym_idt
    end
;;



(** created by ./generator id3_tag implementation symbol at 17:43 6 Jun 2012. *)



