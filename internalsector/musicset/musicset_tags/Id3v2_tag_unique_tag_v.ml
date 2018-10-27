(** {3 Id3v2_tag_unique_tag_v} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Id3v2_tag_unique_tag_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name tag_itu =
let sym_itu = Tag_v.symbol_off_tag tag_itu in
  Id3v2_tag_unique_symbol_v.name sym_itu
;;


(** {6 Extracting_topson} *)


(** {6 Extracting_grandson} *)


(** {6 Querying_topson} *)


(** {6 Querying_grandson} *)


(** {6 Upgrading_topson} *)


(** {6 Upgrading_grandson} *)


(** {6 Abbreviating_grandson} *)


(** {6 Abbreviating_topson} *)

let aenc = Id3v2_tag_unique_tag_t.Aenc;;

let apic = Id3v2_tag_unique_tag_t.Apic;;

let comm = Id3v2_tag_unique_tag_t.Comm;;

let comr = Id3v2_tag_unique_tag_t.Comr;;

let encr = Id3v2_tag_unique_tag_t.Encr;;

let etco = Id3v2_tag_unique_tag_t.Etco;;

let geob = Id3v2_tag_unique_tag_t.Geob;;

let grid = Id3v2_tag_unique_tag_t.Grid;;

let link = Id3v2_tag_unique_tag_t.Link;;

let mcdi = Id3v2_tag_unique_tag_t.Mcdi;;

let mllt = Id3v2_tag_unique_tag_t.Mllt;;

let owne = Id3v2_tag_unique_tag_t.Owne;;

let pcnt = Id3v2_tag_unique_tag_t.Pcnt;;

let popm = Id3v2_tag_unique_tag_t.Popm;;

let poss = Id3v2_tag_unique_tag_t.Poss;;

let priv = Id3v2_tag_unique_tag_t.Priv;;

let rbuf = Id3v2_tag_unique_tag_t.Rbuf;;

let rvrb = Id3v2_tag_unique_tag_t.Rvrb;;

let sylt = Id3v2_tag_unique_tag_t.Sylt;;

let sytc = Id3v2_tag_unique_tag_t.Sytc;;

let talb = Id3v2_tag_unique_tag_t.Talb;;

let tbpm = Id3v2_tag_unique_tag_t.Tbpm;;

let tcon = Id3v2_tag_unique_tag_t.Tcon;;

let tcop = Id3v2_tag_unique_tag_t.Tcop;;

let tdly = Id3v2_tag_unique_tag_t.Tdly;;

let tenc = Id3v2_tag_unique_tag_t.Tenc;;

let tflt = Id3v2_tag_unique_tag_t.Tflt;;

let tit1 = Id3v2_tag_unique_tag_t.Tit1;;

let tit2 = Id3v2_tag_unique_tag_t.Tit2;;

let tit3 = Id3v2_tag_unique_tag_t.Tit3;;

let tkey = Id3v2_tag_unique_tag_t.Tkey;;

let tlan = Id3v2_tag_unique_tag_t.Tlan;;

let tlen = Id3v2_tag_unique_tag_t.Tlen;;

let tmed = Id3v2_tag_unique_tag_t.Tmed;;

let toal = Id3v2_tag_unique_tag_t.Toal;;

let tofn = Id3v2_tag_unique_tag_t.Tofn;;

let town = Id3v2_tag_unique_tag_t.Town;;

let tpe2 = Id3v2_tag_unique_tag_t.Tpe2;;

let tpe3 = Id3v2_tag_unique_tag_t.Tpe3;;

let tpe4 = Id3v2_tag_unique_tag_t.Tpe4;;

let tpos = Id3v2_tag_unique_tag_t.Tpos;;

let tpub = Id3v2_tag_unique_tag_t.Tpub;;

let trck = Id3v2_tag_unique_tag_t.Trck;;

let trsn = Id3v2_tag_unique_tag_t.Trsn;;

let trso = Id3v2_tag_unique_tag_t.Trso;;

let tsrc = Id3v2_tag_unique_tag_t.Tsrc;;

let tsse = Id3v2_tag_unique_tag_t.Tsse;;

let txxx = Id3v2_tag_unique_tag_t.Txxx;;

let ufid = Id3v2_tag_unique_tag_t.Ufid;;

let user = Id3v2_tag_unique_tag_t.User;;

let uslt = Id3v2_tag_unique_tag_t.Uslt;;

let wcom = Id3v2_tag_unique_tag_t.Wcom;;

let wcop = Id3v2_tag_unique_tag_t.Wcop;;

let woaf = Id3v2_tag_unique_tag_t.Woaf;;

let woar = Id3v2_tag_unique_tag_t.Woar;;

let woas = Id3v2_tag_unique_tag_t.Woas;;

let wors = Id3v2_tag_unique_tag_t.Wors;;

let wpay = Id3v2_tag_unique_tag_t.Wpay;;

let wpub = Id3v2_tag_unique_tag_t.Wpub;;

let wxxx = Id3v2_tag_unique_tag_t.Wxxx;;


(** {6 Making} *)

let make soi_itu nam_itu s =
  let sym_itu = Id3v2_tag_unique_symbol_v.make nam_itu s in
  Tag_v.make sym_itu soi_itu
;;


(** created by ./generator id3v2_tag_unique implementation tag at 11:9 14 Jul 2012. *)



