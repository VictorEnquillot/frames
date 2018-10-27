(** {3 Id3v2_tag_specific_tag_v} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Id3v2_tag_specific_tag_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name tag_its =
let sym_its = Tag_v.symbol_off_tag tag_its in
  Id3v2_tag_specific_symbol_v.name sym_its
;;


(** {6 Extracting_topson} *)


(** {6 Extracting_grandson} *)


(** {6 Querying_topson} *)


(** {6 Querying_grandson} *)


(** {6 Upgrading_topson} *)


(** {6 Upgrading_grandson} *)


(** {6 Abbreviating_grandson} *)

let equa = id3v2_tag_specific_tag_of_id3v2_3_tag_specific_tag Id3v2_3_tag_specific_tag_v.equa;;

let ipls = id3v2_tag_specific_tag_of_id3v2_3_tag_specific_tag Id3v2_3_tag_specific_tag_v.ipls;;

let rvad = id3v2_tag_specific_tag_of_id3v2_3_tag_specific_tag Id3v2_3_tag_specific_tag_v.rvad;;

let tdat = id3v2_tag_specific_tag_of_id3v2_3_tag_specific_tag Id3v2_3_tag_specific_tag_v.tdat;;

let time = id3v2_tag_specific_tag_of_id3v2_3_tag_specific_tag Id3v2_3_tag_specific_tag_v.time;;

let tory = id3v2_tag_specific_tag_of_id3v2_3_tag_specific_tag Id3v2_3_tag_specific_tag_v.tory;;

let trda = id3v2_tag_specific_tag_of_id3v2_3_tag_specific_tag Id3v2_3_tag_specific_tag_v.trda;;

let tyer = id3v2_tag_specific_tag_of_id3v2_3_tag_specific_tag Id3v2_3_tag_specific_tag_v.tyer;;

let tsiz = id3v2_tag_specific_tag_of_id3v2_3_tag_specific_tag Id3v2_3_tag_specific_tag_v.tsiz;;

let aspi = id3v2_tag_specific_tag_of_id3v2_4_tag_specific_tag Id3v2_4_tag_specific_tag_v.aspi;;

let equ2 = id3v2_tag_specific_tag_of_id3v2_4_tag_specific_tag Id3v2_4_tag_specific_tag_v.equ2;;

let rva2 = id3v2_tag_specific_tag_of_id3v2_4_tag_specific_tag Id3v2_4_tag_specific_tag_v.rva2;;

let seek = id3v2_tag_specific_tag_of_id3v2_4_tag_specific_tag Id3v2_4_tag_specific_tag_v.seek;;

let sign = id3v2_tag_specific_tag_of_id3v2_4_tag_specific_tag Id3v2_4_tag_specific_tag_v.sign;;

let tden = id3v2_tag_specific_tag_of_id3v2_4_tag_specific_tag Id3v2_4_tag_specific_tag_v.tden;;

let tdor = id3v2_tag_specific_tag_of_id3v2_4_tag_specific_tag Id3v2_4_tag_specific_tag_v.tdor;;

let tdrc = id3v2_tag_specific_tag_of_id3v2_4_tag_specific_tag Id3v2_4_tag_specific_tag_v.tdrc;;

let tdrl = id3v2_tag_specific_tag_of_id3v2_4_tag_specific_tag Id3v2_4_tag_specific_tag_v.tdrl;;

let tdtg = id3v2_tag_specific_tag_of_id3v2_4_tag_specific_tag Id3v2_4_tag_specific_tag_v.tdtg;;

let tipl = id3v2_tag_specific_tag_of_id3v2_4_tag_specific_tag Id3v2_4_tag_specific_tag_v.tipl;;

let tmcl = id3v2_tag_specific_tag_of_id3v2_4_tag_specific_tag Id3v2_4_tag_specific_tag_v.tmcl;;

let tmoo = id3v2_tag_specific_tag_of_id3v2_4_tag_specific_tag Id3v2_4_tag_specific_tag_v.tmoo;;

let tpro = id3v2_tag_specific_tag_of_id3v2_4_tag_specific_tag Id3v2_4_tag_specific_tag_v.tpro;;

let tsoa = id3v2_tag_specific_tag_of_id3v2_4_tag_specific_tag Id3v2_4_tag_specific_tag_v.tsoa;;

let tsop = id3v2_tag_specific_tag_of_id3v2_4_tag_specific_tag Id3v2_4_tag_specific_tag_v.tsop;;

let tsot = id3v2_tag_specific_tag_of_id3v2_4_tag_specific_tag Id3v2_4_tag_specific_tag_v.tsot;;

let tsst = id3v2_tag_specific_tag_of_id3v2_4_tag_specific_tag Id3v2_4_tag_specific_tag_v.tsst;;


(** {6 Abbreviating_topson} *)


(** {6 Making} *)

let make soi_its nam_its s =
  let sym_its = Id3v2_tag_specific_symbol_v.make nam_its s in
  Tag_v.make sym_its soi_its
;;


(** created by ./generator id3v2_tag_specific implementation tag at 11:9 14 Jul 2012. *)



