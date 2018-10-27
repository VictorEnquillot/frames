(** {3 Id3_tag_symbol_v} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Id3_tag_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name = function
  | Id3_tag_symbol_t.Id3v1_tag_symbol sym_idt ->
      Id3v1_tag_symbol_v.name sym_idt
  | Id3_tag_symbol_t.Id3v1_1_tag -> "Id3v1_1_tag"
  | Id3_tag_symbol_t.Id3v2_tag_symbol sym_idt ->
      Id3v2_tag_symbol_v.name sym_idt
;;


(** {6 Extracting_topson} *)

let id3v1_tag_symbol_off_id3_tag_symbol = function
  | Id3_tag_symbol_t.Id3v1_tag_symbol sym_idt -> sym_idt
  | sym_idt -> Error_messages_v.print_fatal_error
      nam_cod "id3v1_tag_symbol_off_id3_tag_symbol"
      "Id3v1_tag_symbol"
      (name sym_idt) "check"
;;

let id3v2_tag_symbol_off_id3_tag_symbol = function
  | Id3_tag_symbol_t.Id3v2_tag_symbol sym_idt -> sym_idt
  | sym_idt -> Error_messages_v.print_fatal_error
      nam_cod "id3v2_tag_symbol_off_id3_tag_symbol"
      "Id3v2_tag_symbol"
      (name sym_idt) "check"
;;


(** {6 Extracting_grandson} *)

let id3v1_tag_128_symbol_off_id3_tag_symbol sym_idt = 
  let sym_idt = id3v1_tag_symbol_off_id3_tag_symbol sym_idt in 
    Id3v1_tag_symbol_v.id3v1_tag_128_symbol_off_id3v1_tag_symbol sym_idt
;;

let id3v1_tag_227_symbol_off_id3_tag_symbol sym_idt = 
  let sym_idt = id3v1_tag_symbol_off_id3_tag_symbol sym_idt in 
    Id3v1_tag_symbol_v.id3v1_tag_227_symbol_off_id3v1_tag_symbol sym_idt
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


(** {6 Querying_topson} *)

let is_id3v1_tag_symbol_off_id3_tag_symbol = function
  | Id3_tag_symbol_t.Id3v1_tag_symbol _ -> true
  | _ -> false
;;

let is_id3v2_tag_symbol_off_id3_tag_symbol = function
  | Id3_tag_symbol_t.Id3v2_tag_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson} *)

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


(** {6 Upgrading_topson} *)

let id3_tag_symbol_of_id3v1_tag_symbol sym_idt = 
  Id3_tag_symbol_t.Id3v1_tag_symbol sym_idt
;;

let id3_tag_symbol_of_id3v2_tag_symbol sym_idt = 
  Id3_tag_symbol_t.Id3v2_tag_symbol sym_idt
;;


(** {6 Upgrading_grandson} *)

let id3_tag_symbol_of_id3v1_tag_128_symbol sym_it1 = 
  let sym_idt = Id3v1_tag_symbol_v.id3v1_tag_symbol_of_id3v1_tag_128_symbol sym_it1 in
    id3_tag_symbol_of_id3v1_tag_symbol sym_idt

let id3_tag_symbol_of_id3v1_tag_227_symbol sym_it2 = 
  let sym_idt = Id3v1_tag_symbol_v.id3v1_tag_symbol_of_id3v1_tag_227_symbol sym_it2 in
    id3_tag_symbol_of_id3v1_tag_symbol sym_idt

let id3_tag_symbol_of_id3v2_base_tag_symbol sym_ibt = 
  let sym_idt = Id3v2_tag_symbol_v.id3v2_tag_symbol_of_id3v2_base_tag_symbol sym_ibt in
    id3_tag_symbol_of_id3v2_tag_symbol sym_idt

let id3_tag_symbol_of_id3v2_tag_unique_symbol sym_itu = 
  let sym_idt = Id3v2_tag_symbol_v.id3v2_tag_symbol_of_id3v2_tag_unique_symbol sym_itu in
    id3_tag_symbol_of_id3v2_tag_symbol sym_idt

let id3_tag_symbol_of_id3v2_tag_multiple_symbol sym_itm = 
  let sym_idt = Id3v2_tag_symbol_v.id3v2_tag_symbol_of_id3v2_tag_multiple_symbol sym_itm in
    id3_tag_symbol_of_id3v2_tag_symbol sym_idt

let id3_tag_symbol_of_id3v2_tag_specific_symbol sym_its = 
  let sym_idt = Id3v2_tag_symbol_v.id3v2_tag_symbol_of_id3v2_tag_specific_symbol sym_its in
    id3_tag_symbol_of_id3v2_tag_symbol sym_idt

let id3_tag_symbol_of_id3v2_3_tag_specific_symbol sym_3ts = 
  let sym_idt = Id3v2_tag_symbol_v.id3v2_tag_symbol_of_id3v2_3_tag_specific_symbol sym_3ts in
    id3_tag_symbol_of_id3v2_tag_symbol sym_idt

let id3_tag_symbol_of_id3v2_4_tag_specific_symbol sym_4ts = 
  let sym_idt = Id3v2_tag_symbol_v.id3v2_tag_symbol_of_id3v2_4_tag_specific_symbol sym_4ts in
    id3_tag_symbol_of_id3v2_tag_symbol sym_idt


(** {6 Abbreviating_topson} *)

let id3v1_1_tag = Id3_tag_symbol_t.Id3v1_1_tag;;


(** {6 Abbreviating_grandson} *)

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

let aenc = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.aenc;;

let apic = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.apic;;

let comm = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.comm;;

let comr = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.comr;;

let encr = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.encr;;

let etco = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.etco;;

let geob = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.geob;;

let grid = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.grid;;

let link = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.link;;

let mcdi = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.mcdi;;

let mllt = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.mllt;;

let owne = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.owne;;

let pcnt = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.pcnt;;

let popm = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.popm;;

let poss = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.poss;;

let priv = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.priv;;

let rbuf = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.rbuf;;

let rvrb = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.rvrb;;

let sylt = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.sylt;;

let sytc = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.sytc;;

let talb = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.talb;;

let tbpm = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.tbpm;;

let tcon = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.tcon;;

let tcop = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.tcop;;

let tdly = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.tdly;;

let tenc = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.tenc;;

let tflt = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.tflt;;

let tit1 = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.tit1;;

let tit2 = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.tit2;;

let tit3 = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.tit3;;

let tkey = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.tkey;;

let tlan = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.tlan;;

let tlen = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.tlen;;

let tmed = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.tmed;;

let toal = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.toal;;

let tofn = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.tofn;;

let town = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.town;;

let tpe2 = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.tpe2;;

let tpe3 = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.tpe3;;

let tpe4 = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.tpe4;;

let tpos = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.tpos;;

let tpub = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.tpub;;

let trck = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.trck;;

let trsn = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.trsn;;

let trso = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.trso;;

let tsrc = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.tsrc;;

let tsse = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.tsse;;

let txxx = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.txxx;;

let ufid = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.ufid;;

let user = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.user;;

let uslt = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.uslt;;

let wcom = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.wcom;;

let wcop = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.wcop;;

let woaf = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.woaf;;

let woar = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.woar;;

let woas = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.woas;;

let wors = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.wors;;

let wpay = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.wpay;;

let wpub = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.wpub;;

let wxxx = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.wxxx;;

let tpe1 = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.tpe1;;

let tcom = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.tcom;;

let text = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.text;;

let toly = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.toly;;

let tope = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.tope;;

let equa = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.equa;;

let ipls = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.ipls;;

let rvad = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.rvad;;

let tdat = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.tdat;;

let time = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.time;;

let tory = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.tory;;

let trda = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.trda;;

let tyer = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.tyer;;

let tsiz = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.tsiz;;

let aspi = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.aspi;;

let equ2 = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.equ2;;

let rva2 = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.rva2;;

let seek = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.seek;;

let sign = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.sign;;

let tden = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.tden;;

let tdor = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.tdor;;

let tdrc = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.tdrc;;

let tdrl = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.tdrl;;

let tdtg = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.tdtg;;

let tipl = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.tipl;;

let tmcl = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.tmcl;;

let tmoo = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.tmoo;;

let tpro = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.tpro;;

let tsoa = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.tsoa;;

let tsop = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.tsop;;

let tsot = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.tsot;;

let tsst = id3_tag_symbol_of_id3v2_tag_symbol Id3v2_tag_symbol_v.tsst;;


(** {6 Making} *)

let make nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "id3v1_1_tag" -> id3v1_1_tag
  | _ ->
  try id3_tag_symbol_of_id3v1_tag_symbol
      (Id3v1_tag_symbol_v.make nam s)
  with Failure "Not_Id3v1_tag_symbol:Id3v1_tag_symbol_v:make" ->
  try id3_tag_symbol_of_id3v2_tag_symbol
      (Id3v2_tag_symbol_v.make nam s)
  with Failure "Not_Id3v2_tag_symbol:Id3v2_tag_symbol_v:make" ->
    Error_messages_v.print_fatal_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Id3_tag subtype" nam s)
      "it does not exists"
      "Check file id3_tag_symbol_v.ml" 
;;


(** created by ./generator id3_tag implementation symbol at 9:23 14 Jul 2012. *)



