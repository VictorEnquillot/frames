(** {3 Id3_tag_tag_v} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Id3_tag_tag_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name tag_idt =
let sym_idt = Tag_v.symbol_off_tag tag_idt in
  Id3_tag_symbol_v.name sym_idt
;;


(** {6 Extracting_topson} *)


(** {6 Extracting_grandson} *)










(** {6 Querying_topson} *)


(** {6 Querying_grandson} *)










(** {6 Upgrading_topson} *)


(** {6 Upgrading_grandson} *)










(** {6 Abbreviating_grandson} *)

let header_3 = id3_tag_tag_of_id3v1_tag_tag Id3v1_tag_tag_v.header_3;;

let title_30 = id3_tag_tag_of_id3v1_tag_tag Id3v1_tag_tag_v.title_30;;

let artist_30 = id3_tag_tag_of_id3v1_tag_tag Id3v1_tag_tag_v.artist_30;;

let album_30 = id3_tag_tag_of_id3v1_tag_tag Id3v1_tag_tag_v.album_30;;

let year_4 = id3_tag_tag_of_id3v1_tag_tag Id3v1_tag_tag_v.year_4;;

let comment_28 = id3_tag_tag_of_id3v1_tag_tag Id3v1_tag_tag_v.comment_28;;

let comment_30 = id3_tag_tag_of_id3v1_tag_tag Id3v1_tag_tag_v.comment_30;;

let zero_byte_1 = id3_tag_tag_of_id3v1_tag_tag Id3v1_tag_tag_v.zero_byte_1;;

let track_1 = id3_tag_tag_of_id3v1_tag_tag Id3v1_tag_tag_v.track_1;;

let genre_1 = id3_tag_tag_of_id3v1_tag_tag Id3v1_tag_tag_v.genre_1;;

let header_4 = id3_tag_tag_of_id3v1_tag_tag Id3v1_tag_tag_v.header_4;;

let title_60 = id3_tag_tag_of_id3v1_tag_tag Id3v1_tag_tag_v.title_60;;

let artist_60 = id3_tag_tag_of_id3v1_tag_tag Id3v1_tag_tag_v.artist_60;;

let album_60 = id3_tag_tag_of_id3v1_tag_tag Id3v1_tag_tag_v.album_60;;

let speed_1 = id3_tag_tag_of_id3v1_tag_tag Id3v1_tag_tag_v.speed_1;;

let genre_30 = id3_tag_tag_of_id3v1_tag_tag Id3v1_tag_tag_v.genre_30;;

let start_time_6 = id3_tag_tag_of_id3v1_tag_tag Id3v1_tag_tag_v.start_time_6;;

let end_time_6 = id3_tag_tag_of_id3v1_tag_tag Id3v1_tag_tag_v.end_time_6;;

let aenc = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.aenc;;

let apic = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.apic;;

let comm = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.comm;;

let comr = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.comr;;

let encr = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.encr;;

let etco = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.etco;;

let geob = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.geob;;

let grid = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.grid;;

let link = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.link;;

let mcdi = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.mcdi;;

let mllt = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.mllt;;

let owne = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.owne;;

let pcnt = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.pcnt;;

let popm = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.popm;;

let poss = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.poss;;

let priv = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.priv;;

let rbuf = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.rbuf;;

let rvrb = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.rvrb;;

let sylt = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.sylt;;

let sytc = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.sytc;;

let talb = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.talb;;

let tbpm = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.tbpm;;

let tcon = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.tcon;;

let tcop = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.tcop;;

let tdly = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.tdly;;

let tenc = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.tenc;;

let tflt = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.tflt;;

let tit1 = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.tit1;;

let tit2 = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.tit2;;

let tit3 = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.tit3;;

let tkey = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.tkey;;

let tlan = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.tlan;;

let tlen = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.tlen;;

let tmed = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.tmed;;

let toal = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.toal;;

let tofn = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.tofn;;

let town = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.town;;

let tpe2 = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.tpe2;;

let tpe3 = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.tpe3;;

let tpe4 = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.tpe4;;

let tpos = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.tpos;;

let tpub = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.tpub;;

let trck = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.trck;;

let trsn = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.trsn;;

let trso = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.trso;;

let tsrc = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.tsrc;;

let tsse = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.tsse;;

let txxx = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.txxx;;

let ufid = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.ufid;;

let user = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.user;;

let uslt = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.uslt;;

let wcom = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.wcom;;

let wcop = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.wcop;;

let woaf = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.woaf;;

let woar = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.woar;;

let woas = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.woas;;

let wors = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.wors;;

let wpay = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.wpay;;

let wpub = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.wpub;;

let wxxx = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.wxxx;;

let tpe1 = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.tpe1;;

let tcom = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.tcom;;

let text = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.text;;

let toly = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.toly;;

let tope = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.tope;;

let equa = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.equa;;

let ipls = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.ipls;;

let rvad = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.rvad;;

let tdat = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.tdat;;

let time = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.time;;

let tory = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.tory;;

let trda = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.trda;;

let tyer = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.tyer;;

let tsiz = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.tsiz;;

let aspi = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.aspi;;

let equ2 = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.equ2;;

let rva2 = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.rva2;;

let seek = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.seek;;

let sign = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.sign;;

let tden = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.tden;;

let tdor = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.tdor;;

let tdrc = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.tdrc;;

let tdrl = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.tdrl;;

let tdtg = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.tdtg;;

let tipl = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.tipl;;

let tmcl = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.tmcl;;

let tmoo = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.tmoo;;

let tpro = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.tpro;;

let tsoa = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.tsoa;;

let tsop = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.tsop;;

let tsot = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.tsot;;

let tsst = id3_tag_tag_of_id3v2_tag_tag Id3v2_tag_tag_v.tsst;;


(** {6 Abbreviating_topson} *)

let id3v1_1_tag = Id3_tag_tag_t.Id3v1_1_tag;;


(** {6 Making} *)

let make soi_idt nam_idt s =
  let sym_idt = Id3_tag_symbol_v.make nam_idt s in
  Tag_v.make sym_idt soi_idt
;;


(** created by ./generator id3_tag implementation tag at 11:9 14 Jul 2012. *)



