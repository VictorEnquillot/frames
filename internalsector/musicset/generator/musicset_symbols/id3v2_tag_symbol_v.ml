
(** {3 The functionalities for a Symbol for a Id3v2_tag.} *)

let nam_cod = "id3v2_tag_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Id3v2_tag_symbol_t.Id3v2_base_tag_symbol sym_ibt ->
      Id3v2_base_tag_symbol_v.name sym_ibt
  | Id3v2_tag_symbol_t.Id3v2_tag_specific_symbol sym_its ->
      Id3v2_tag_specific_symbol_v.name sym_its
;;


(** {6 Upgrading} *)


let id3v2_tag_symbol_of_id3v2_base_tag_symbol sym_ibt = 
  Id3v2_tag_symbol_t.Id3v2_base_tag_symbol sym_ibt
;;

let id3v2_tag_symbol_of_id3v2_tag_unique_symbol sym_itu = 
  let sym_ibt = Id3v2_base_tag_symbol_v.id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol sym_itu in
    id3v2_tag_symbol_of_id3v2_base_tag_symbol sym_ibt
;;

let id3v2_tag_symbol_of_id3v2_tag_multiple_symbol sym_itm = 
  let sym_ibt = Id3v2_base_tag_symbol_v.id3v2_base_tag_symbol_of_id3v2_tag_multiple_symbol sym_itm in
    id3v2_tag_symbol_of_id3v2_base_tag_symbol sym_ibt
;;

let id3v2_tag_symbol_of_id3v2_tag_specific_symbol sym_its = 
  Id3v2_tag_symbol_t.Id3v2_tag_specific_symbol sym_its
;;

let id3v2_tag_symbol_of_id3v2_3_tag_specific_symbol sym_3ts = 
  let sym_its = Id3v2_tag_specific_symbol_v.id3v2_tag_specific_symbol_of_id3v2_3_tag_specific_symbol sym_3ts in
    id3v2_tag_symbol_of_id3v2_tag_specific_symbol sym_its
;;

let id3v2_tag_symbol_of_id3v2_4_tag_specific_symbol sym_4ts = 
  let sym_its = Id3v2_tag_specific_symbol_v.id3v2_tag_specific_symbol_of_id3v2_4_tag_specific_symbol sym_4ts in
    id3v2_tag_symbol_of_id3v2_tag_specific_symbol sym_its
;;


(** {6 Abbreviating} *)


let AENC = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.AENC;;

let APIC = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.APIC;;

let COMM = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.COMM;;

let COMR = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.COMR;;

let ENCR = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.ENCR;;

let ETCO = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.ETCO;;

let GEOB = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.GEOB;;

let GRID = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.GRID;;

let LINK = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.LINK;;

let MCDI = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.MCDI;;

let MLLT = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.MLLT;;

let OWNE = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.OWNE;;

let PCNT = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.PCNT;;

let POPM = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.POPM;;

let POSS = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.POSS;;

let PRIV = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.PRIV;;

let RBUF = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.RBUF;;

let RVRB = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.RVRB;;

let SYLT = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.SYLT;;

let SYTC = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.SYTC;;

let TALB = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.TALB;;

let TBPM = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.TBPM;;

let TCON = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.TCON;;

let TCOP = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.TCOP;;

let TDLY = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.TDLY;;

let TENC = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.TENC;;

let TFLT = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.TFLT;;

let TIT1 = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.TIT1;;

let TIT2 = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.TIT2;;

let TIT3 = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.TIT3;;

let TKEY = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.TKEY;;

let TLAN = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.TLAN;;

let TLEN = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.TLEN;;

let TMED = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.TMED;;

let TOAL = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.TOAL;;

let TOFN = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.TOFN;;

let TOWN = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.TOWN;;

let TPE2 = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.TPE2;;

let TPE3 = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.TPE3;;

let TPE4 = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.TPE4;;

let TPOS = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.TPOS;;

let TPUB = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.TPUB;;

let TRCK = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.TRCK;;

let TRSN = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.TRSN;;

let TRSO = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.TRSO;;

let TSRC = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.TSRC;;

let TSSE = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.TSSE;;

let TXXX = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.TXXX;;

let UFID = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.UFID;;

let USER = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.USER;;

let USLT = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.USLT;;

let WCOM = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.WCOM;;

let WCOP = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.WCOP;;

let WOAF = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.WOAF;;

let WOAR = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.WOAR;;

let WOAS = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.WOAS;;

let WORS = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.WORS;;

let WPAY = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.WPAY;;

let WPUB = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.WPUB;;

let WXXX = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.WXXX;;

let TPE1 = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.TPE1;;

let TCOM = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.TCOM;;

let TEXT = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.TEXT;;

let TOLY = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.TOLY;;

let TOPE = id3v2_tag_symbol_of_id3v2_base_tag_symbol Id3v2_base_tag_symbol_v.TOPE;;

let EQUA = id3v2_tag_symbol_of_id3v2_tag_specific_symbol Id3v2_tag_specific_symbol_v.EQUA;;

let IPLS = id3v2_tag_symbol_of_id3v2_tag_specific_symbol Id3v2_tag_specific_symbol_v.IPLS;;

let RVAD = id3v2_tag_symbol_of_id3v2_tag_specific_symbol Id3v2_tag_specific_symbol_v.RVAD;;

let TDAT = id3v2_tag_symbol_of_id3v2_tag_specific_symbol Id3v2_tag_specific_symbol_v.TDAT;;

let TIME = id3v2_tag_symbol_of_id3v2_tag_specific_symbol Id3v2_tag_specific_symbol_v.TIME;;

let TORY = id3v2_tag_symbol_of_id3v2_tag_specific_symbol Id3v2_tag_specific_symbol_v.TORY;;

let TRDA = id3v2_tag_symbol_of_id3v2_tag_specific_symbol Id3v2_tag_specific_symbol_v.TRDA;;

let TYER = id3v2_tag_symbol_of_id3v2_tag_specific_symbol Id3v2_tag_specific_symbol_v.TYER;;

let TSIZ = id3v2_tag_symbol_of_id3v2_tag_specific_symbol Id3v2_tag_specific_symbol_v.TSIZ;;

let ASPI = id3v2_tag_symbol_of_id3v2_tag_specific_symbol Id3v2_tag_specific_symbol_v.ASPI;;

let EQU2 = id3v2_tag_symbol_of_id3v2_tag_specific_symbol Id3v2_tag_specific_symbol_v.EQU2;;

let RVA2 = id3v2_tag_symbol_of_id3v2_tag_specific_symbol Id3v2_tag_specific_symbol_v.RVA2;;

let SEEK = id3v2_tag_symbol_of_id3v2_tag_specific_symbol Id3v2_tag_specific_symbol_v.SEEK;;

let SIGN = id3v2_tag_symbol_of_id3v2_tag_specific_symbol Id3v2_tag_specific_symbol_v.SIGN;;

let TDEN = id3v2_tag_symbol_of_id3v2_tag_specific_symbol Id3v2_tag_specific_symbol_v.TDEN;;

let TDOR = id3v2_tag_symbol_of_id3v2_tag_specific_symbol Id3v2_tag_specific_symbol_v.TDOR;;

let TDRC = id3v2_tag_symbol_of_id3v2_tag_specific_symbol Id3v2_tag_specific_symbol_v.TDRC;;

let TDRL = id3v2_tag_symbol_of_id3v2_tag_specific_symbol Id3v2_tag_specific_symbol_v.TDRL;;

let TDTG = id3v2_tag_symbol_of_id3v2_tag_specific_symbol Id3v2_tag_specific_symbol_v.TDTG;;

let TIPL = id3v2_tag_symbol_of_id3v2_tag_specific_symbol Id3v2_tag_specific_symbol_v.TIPL;;

let TMCL = id3v2_tag_symbol_of_id3v2_tag_specific_symbol Id3v2_tag_specific_symbol_v.TMCL;;

let TMOO = id3v2_tag_symbol_of_id3v2_tag_specific_symbol Id3v2_tag_specific_symbol_v.TMOO;;

let TPRO = id3v2_tag_symbol_of_id3v2_tag_specific_symbol Id3v2_tag_specific_symbol_v.TPRO;;

let TSOA = id3v2_tag_symbol_of_id3v2_tag_specific_symbol Id3v2_tag_specific_symbol_v.TSOA;;

let TSOP = id3v2_tag_symbol_of_id3v2_tag_specific_symbol Id3v2_tag_specific_symbol_v.TSOP;;

let TSOT = id3v2_tag_symbol_of_id3v2_tag_specific_symbol Id3v2_tag_specific_symbol_v.TSOT;;

let TSST = id3v2_tag_symbol_of_id3v2_tag_specific_symbol Id3v2_tag_specific_symbol_v.TSST;;


(** {6 Making} *)


let make nam s =
  try id3v2_tag_symbol_of_id3v2_base_tag_symbol
      (Id3v2_base_tag_symbol_v.make nam s)
  with Failure "Not_Id3v2_base_tag_symbol:id3v2_base_tag_symbol_v:make" ->
  try id3v2_tag_symbol_of_id3v2_tag_specific_symbol
      (Id3v2_tag_specific_symbol_v.make nam s)
  with Failure "Not_Id3v2_tag_specific_symbol:id3v2_tag_specific_symbol_v:make" ->
    failwith "Not_Id3v2_tag_symbol:id3v2_tag_symbol_v:make"
;;


(** {6 Extracting} *)


let id3v2_base_tag_symbol_off_id3v2_tag_symbol = function
  | Id3v2_tag_symbol_t.Id3v2_base_tag_symbol sym_ibt -> sym_ibt
  | sym_idt -> Error_messages_v.print_fatal_error
      nam_cod "id3v2_base_tag_symbol_off_id3v2_tag_symbol"
      "Id3v2_base_tag_symbol"
      (name sym_idt) "check"
;;

let id3v2_tag_unique_symbol_off_id3v2_tag_symbol sym_idt = 
  let sym_ibt = id3v2_base_tag_symbol_off_id3v2_tag_symbol sym_idt in 
    Id3v2_base_tag_symbol_v.id3v2_tag_unique_symbol_off_id3v2_base_tag_symbol sym_ibt
;;

let id3v2_tag_multiple_symbol_off_id3v2_tag_symbol sym_idt = 
  let sym_ibt = id3v2_base_tag_symbol_off_id3v2_tag_symbol sym_idt in 
    Id3v2_base_tag_symbol_v.id3v2_tag_multiple_symbol_off_id3v2_base_tag_symbol sym_ibt
;;

let id3v2_tag_specific_symbol_off_id3v2_tag_symbol = function
  | Id3v2_tag_symbol_t.Id3v2_tag_specific_symbol sym_its -> sym_its
  | sym_idt -> Error_messages_v.print_fatal_error
      nam_cod "id3v2_tag_specific_symbol_off_id3v2_tag_symbol"
      "Id3v2_tag_specific_symbol"
      (name sym_idt) "check"
;;

let id3v2_3_tag_specific_symbol_off_id3v2_tag_symbol sym_idt = 
  let sym_its = id3v2_tag_specific_symbol_off_id3v2_tag_symbol sym_idt in 
    Id3v2_tag_specific_symbol_v.id3v2_3_tag_specific_symbol_off_id3v2_tag_specific_symbol sym_its
;;

let id3v2_4_tag_specific_symbol_off_id3v2_tag_symbol sym_idt = 
  let sym_its = id3v2_tag_specific_symbol_off_id3v2_tag_symbol sym_idt in 
    Id3v2_tag_specific_symbol_v.id3v2_4_tag_specific_symbol_off_id3v2_tag_specific_symbol sym_its
;;


(** {6 Querying} *)


let is_id3v2_base_tag_symbol_off_id3v2_tag_symbol = function
  | Id3v2_tag_symbol_t.Id3v2_base_tag_symbol _ -> true
  | _ -> false
;;

let is_id3v2_tag_unique_symbol_off_id3v2_tag_symbol sym_idt =
  if not (is_id3v2_base_tag_symbol_off_id3v2_tag_symbol sym_idt)
  then false
  else
    begin
     let sym_ibt = id3v2_base_tag_symbol_off_id3v2_tag_symbol sym_idt in 
     Id3v2_base_tag_symbol_v.is_id3v2_tag_unique_symbol_off_id3v2_base_tag_symbol sym_ibt
    end
;;

let is_id3v2_tag_multiple_symbol_off_id3v2_tag_symbol sym_idt =
  if not (is_id3v2_base_tag_symbol_off_id3v2_tag_symbol sym_idt)
  then false
  else
    begin
     let sym_ibt = id3v2_base_tag_symbol_off_id3v2_tag_symbol sym_idt in 
     Id3v2_base_tag_symbol_v.is_id3v2_tag_multiple_symbol_off_id3v2_base_tag_symbol sym_ibt
    end
;;

let is_id3v2_tag_specific_symbol_off_id3v2_tag_symbol = function
  | Id3v2_tag_symbol_t.Id3v2_tag_specific_symbol _ -> true
  | _ -> false
;;

let is_id3v2_3_tag_specific_symbol_off_id3v2_tag_symbol sym_idt =
  if not (is_id3v2_tag_specific_symbol_off_id3v2_tag_symbol sym_idt)
  then false
  else
    begin
     let sym_its = id3v2_tag_specific_symbol_off_id3v2_tag_symbol sym_idt in 
     Id3v2_tag_specific_symbol_v.is_id3v2_3_tag_specific_symbol_off_id3v2_tag_specific_symbol sym_its
    end
;;

let is_id3v2_4_tag_specific_symbol_off_id3v2_tag_symbol sym_idt =
  if not (is_id3v2_tag_specific_symbol_off_id3v2_tag_symbol sym_idt)
  then false
  else
    begin
     let sym_its = id3v2_tag_specific_symbol_off_id3v2_tag_symbol sym_idt in 
     Id3v2_tag_specific_symbol_v.is_id3v2_4_tag_specific_symbol_off_id3v2_tag_specific_symbol sym_its
    end
;;



(** created by ./generator id3v2_tag implementation symbol at 17:43 6 Jun 2012. *)



