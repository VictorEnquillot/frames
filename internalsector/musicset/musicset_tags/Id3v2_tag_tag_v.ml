(** {3 Id3v2_tag_tag_v} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Id3v2_tag_tag_v";
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
  Id3v2_tag_symbol_v.name sym_idt
;;


(** {6 Extracting_topson} *)


(** {6 Extracting_grandson} *)






(** {6 Querying_topson} *)


(** {6 Querying_grandson} *)






(** {6 Upgrading_topson} *)


(** {6 Upgrading_grandson} *)






(** {6 Abbreviating_grandson} *)

let aenc = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.aenc;;

let apic = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.apic;;

let comm = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.comm;;

let comr = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.comr;;

let encr = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.encr;;

let etco = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.etco;;

let geob = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.geob;;

let grid = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.grid;;

let link = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.link;;

let mcdi = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.mcdi;;

let mllt = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.mllt;;

let owne = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.owne;;

let pcnt = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.pcnt;;

let popm = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.popm;;

let poss = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.poss;;

let priv = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.priv;;

let rbuf = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.rbuf;;

let rvrb = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.rvrb;;

let sylt = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.sylt;;

let sytc = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.sytc;;

let talb = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.talb;;

let tbpm = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.tbpm;;

let tcon = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.tcon;;

let tcop = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.tcop;;

let tdly = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.tdly;;

let tenc = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.tenc;;

let tflt = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.tflt;;

let tit1 = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.tit1;;

let tit2 = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.tit2;;

let tit3 = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.tit3;;

let tkey = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.tkey;;

let tlan = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.tlan;;

let tlen = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.tlen;;

let tmed = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.tmed;;

let toal = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.toal;;

let tofn = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.tofn;;

let town = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.town;;

let tpe2 = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.tpe2;;

let tpe3 = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.tpe3;;

let tpe4 = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.tpe4;;

let tpos = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.tpos;;

let tpub = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.tpub;;

let trck = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.trck;;

let trsn = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.trsn;;

let trso = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.trso;;

let tsrc = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.tsrc;;

let tsse = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.tsse;;

let txxx = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.txxx;;

let ufid = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.ufid;;

let user = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.user;;

let uslt = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.uslt;;

let wcom = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.wcom;;

let wcop = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.wcop;;

let woaf = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.woaf;;

let woar = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.woar;;

let woas = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.woas;;

let wors = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.wors;;

let wpay = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.wpay;;

let wpub = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.wpub;;

let wxxx = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.wxxx;;

let tpe1 = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.tpe1;;

let tcom = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.tcom;;

let text = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.text;;

let toly = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.toly;;

let tope = id3v2_tag_tag_of_id3v2_base_tag_tag Id3v2_base_tag_tag_v.tope;;

let equa = id3v2_tag_tag_of_id3v2_tag_specific_tag Id3v2_tag_specific_tag_v.equa;;

let ipls = id3v2_tag_tag_of_id3v2_tag_specific_tag Id3v2_tag_specific_tag_v.ipls;;

let rvad = id3v2_tag_tag_of_id3v2_tag_specific_tag Id3v2_tag_specific_tag_v.rvad;;

let tdat = id3v2_tag_tag_of_id3v2_tag_specific_tag Id3v2_tag_specific_tag_v.tdat;;

let time = id3v2_tag_tag_of_id3v2_tag_specific_tag Id3v2_tag_specific_tag_v.time;;

let tory = id3v2_tag_tag_of_id3v2_tag_specific_tag Id3v2_tag_specific_tag_v.tory;;

let trda = id3v2_tag_tag_of_id3v2_tag_specific_tag Id3v2_tag_specific_tag_v.trda;;

let tyer = id3v2_tag_tag_of_id3v2_tag_specific_tag Id3v2_tag_specific_tag_v.tyer;;

let tsiz = id3v2_tag_tag_of_id3v2_tag_specific_tag Id3v2_tag_specific_tag_v.tsiz;;

let aspi = id3v2_tag_tag_of_id3v2_tag_specific_tag Id3v2_tag_specific_tag_v.aspi;;

let equ2 = id3v2_tag_tag_of_id3v2_tag_specific_tag Id3v2_tag_specific_tag_v.equ2;;

let rva2 = id3v2_tag_tag_of_id3v2_tag_specific_tag Id3v2_tag_specific_tag_v.rva2;;

let seek = id3v2_tag_tag_of_id3v2_tag_specific_tag Id3v2_tag_specific_tag_v.seek;;

let sign = id3v2_tag_tag_of_id3v2_tag_specific_tag Id3v2_tag_specific_tag_v.sign;;

let tden = id3v2_tag_tag_of_id3v2_tag_specific_tag Id3v2_tag_specific_tag_v.tden;;

let tdor = id3v2_tag_tag_of_id3v2_tag_specific_tag Id3v2_tag_specific_tag_v.tdor;;

let tdrc = id3v2_tag_tag_of_id3v2_tag_specific_tag Id3v2_tag_specific_tag_v.tdrc;;

let tdrl = id3v2_tag_tag_of_id3v2_tag_specific_tag Id3v2_tag_specific_tag_v.tdrl;;

let tdtg = id3v2_tag_tag_of_id3v2_tag_specific_tag Id3v2_tag_specific_tag_v.tdtg;;

let tipl = id3v2_tag_tag_of_id3v2_tag_specific_tag Id3v2_tag_specific_tag_v.tipl;;

let tmcl = id3v2_tag_tag_of_id3v2_tag_specific_tag Id3v2_tag_specific_tag_v.tmcl;;

let tmoo = id3v2_tag_tag_of_id3v2_tag_specific_tag Id3v2_tag_specific_tag_v.tmoo;;

let tpro = id3v2_tag_tag_of_id3v2_tag_specific_tag Id3v2_tag_specific_tag_v.tpro;;

let tsoa = id3v2_tag_tag_of_id3v2_tag_specific_tag Id3v2_tag_specific_tag_v.tsoa;;

let tsop = id3v2_tag_tag_of_id3v2_tag_specific_tag Id3v2_tag_specific_tag_v.tsop;;

let tsot = id3v2_tag_tag_of_id3v2_tag_specific_tag Id3v2_tag_specific_tag_v.tsot;;

let tsst = id3v2_tag_tag_of_id3v2_tag_specific_tag Id3v2_tag_specific_tag_v.tsst;;


(** {6 Abbreviating_topson} *)


(** {6 Making} *)

let make soi_idt nam_idt s =
  let sym_idt = Id3v2_tag_symbol_v.make nam_idt s in
  Tag_v.make sym_idt soi_idt
;;


(** created by ./generator id3v2_tag implementation tag at 11:9 14 Jul 2012. *)



