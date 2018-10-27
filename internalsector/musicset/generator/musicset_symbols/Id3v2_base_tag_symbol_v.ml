(** {3 Id3v2_base_tag_symbol_v} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Id3v2_base_tag_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name = function
  | Id3v2_base_tag_symbol_t.Id3v2_tag_unique_symbol sym_itu ->
      Id3v2_tag_unique_symbol_v.name sym_itu
  | Id3v2_base_tag_symbol_t.Id3v2_tag_multiple_symbol sym_itm ->
      Id3v2_tag_multiple_symbol_v.name sym_itm
;;


(** {6 Extracting_topson} *)

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


(** {6 Extracting_grandson} *)


(** {6 Querying_topson} *)

let is_id3v2_tag_unique_symbol_off_id3v2_base_tag_symbol = function
  | Id3v2_base_tag_symbol_t.Id3v2_tag_unique_symbol _ -> true
  | _ -> false
;;

let is_id3v2_tag_multiple_symbol_off_id3v2_base_tag_symbol = function
  | Id3v2_base_tag_symbol_t.Id3v2_tag_multiple_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson} *)


(** {6 Upgrading_topson} *)

let id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol sym_itu = 
  Id3v2_base_tag_symbol_t.Id3v2_tag_unique_symbol sym_itu
;;

let id3v2_base_tag_symbol_of_id3v2_tag_multiple_symbol sym_itm = 
  Id3v2_base_tag_symbol_t.Id3v2_tag_multiple_symbol sym_itm
;;


(** {6 Upgrading_grandson} *)


(** {6 Abbreviating_topson} *)


(** {6 Abbreviating_grandson} *)

let aenc = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.aenc;;

let apic = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.apic;;

let comm = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.comm;;

let comr = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.comr;;

let encr = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.encr;;

let etco = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.etco;;

let geob = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.geob;;

let grid = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.grid;;

let link = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.link;;

let mcdi = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.mcdi;;

let mllt = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.mllt;;

let owne = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.owne;;

let pcnt = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.pcnt;;

let popm = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.popm;;

let poss = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.poss;;

let priv = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.priv;;

let rbuf = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.rbuf;;

let rvrb = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.rvrb;;

let sylt = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.sylt;;

let sytc = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.sytc;;

let talb = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.talb;;

let tbpm = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.tbpm;;

let tcon = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.tcon;;

let tcop = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.tcop;;

let tdly = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.tdly;;

let tenc = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.tenc;;

let tflt = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.tflt;;

let tit1 = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.tit1;;

let tit2 = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.tit2;;

let tit3 = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.tit3;;

let tkey = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.tkey;;

let tlan = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.tlan;;

let tlen = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.tlen;;

let tmed = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.tmed;;

let toal = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.toal;;

let tofn = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.tofn;;

let town = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.town;;

let tpe2 = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.tpe2;;

let tpe3 = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.tpe3;;

let tpe4 = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.tpe4;;

let tpos = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.tpos;;

let tpub = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.tpub;;

let trck = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.trck;;

let trsn = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.trsn;;

let trso = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.trso;;

let tsrc = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.tsrc;;

let tsse = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.tsse;;

let txxx = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.txxx;;

let ufid = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.ufid;;

let user = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.user;;

let uslt = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.uslt;;

let wcom = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.wcom;;

let wcop = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.wcop;;

let woaf = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.woaf;;

let woar = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.woar;;

let woas = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.woas;;

let wors = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.wors;;

let wpay = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.wpay;;

let wpub = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.wpub;;

let wxxx = id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol Id3v2_tag_unique_symbol_v.wxxx;;

let tpe1 = id3v2_base_tag_symbol_of_id3v2_tag_multiple_symbol Id3v2_tag_multiple_symbol_v.tpe1;;

let tcom = id3v2_base_tag_symbol_of_id3v2_tag_multiple_symbol Id3v2_tag_multiple_symbol_v.tcom;;

let text = id3v2_base_tag_symbol_of_id3v2_tag_multiple_symbol Id3v2_tag_multiple_symbol_v.text;;

let toly = id3v2_base_tag_symbol_of_id3v2_tag_multiple_symbol Id3v2_tag_multiple_symbol_v.toly;;

let tope = id3v2_base_tag_symbol_of_id3v2_tag_multiple_symbol Id3v2_tag_multiple_symbol_v.tope;;


(** {6 Making} *)

let make nam s =
  try id3v2_base_tag_symbol_of_id3v2_tag_unique_symbol
      (Id3v2_tag_unique_symbol_v.make nam s)
  with Failure "Not_Id3v2_tag_unique_symbol:Id3v2_tag_unique_symbol_v:make" ->
  try id3v2_base_tag_symbol_of_id3v2_tag_multiple_symbol
      (Id3v2_tag_multiple_symbol_v.make nam s)
  with Failure "Not_Id3v2_tag_multiple_symbol:Id3v2_tag_multiple_symbol_v:make" ->
    failwith "Not_Id3v2_base_tag_symbol:Id3v2_base_tag_symbol_v:make"
;;


(** created by ./generator id3v2_base_tag implementation symbol at 9:23 14 Jul 2012. *)



