(** {3 Id3v2_4_tag_specific_tag_v} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Id3v2_4_tag_specific_tag_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name tag_4ts =
let sym_4ts = Tag_v.symbol_off_tag tag_4ts in
  Id3v2_4_tag_specific_symbol_v.name sym_4ts
;;


(** {6 Extracting_topson} *)


(** {6 Extracting_grandson} *)


(** {6 Querying_topson} *)


(** {6 Querying_grandson} *)


(** {6 Upgrading_topson} *)


(** {6 Upgrading_grandson} *)


(** {6 Abbreviating_grandson} *)


(** {6 Abbreviating_topson} *)

let aspi = Id3v2_4_tag_specific_tag_t.Aspi;;

let equ2 = Id3v2_4_tag_specific_tag_t.Equ2;;

let rva2 = Id3v2_4_tag_specific_tag_t.Rva2;;

let seek = Id3v2_4_tag_specific_tag_t.Seek;;

let sign = Id3v2_4_tag_specific_tag_t.Sign;;

let tden = Id3v2_4_tag_specific_tag_t.Tden;;

let tdor = Id3v2_4_tag_specific_tag_t.Tdor;;

let tdrc = Id3v2_4_tag_specific_tag_t.Tdrc;;

let tdrl = Id3v2_4_tag_specific_tag_t.Tdrl;;

let tdtg = Id3v2_4_tag_specific_tag_t.Tdtg;;

let tipl = Id3v2_4_tag_specific_tag_t.Tipl;;

let tmcl = Id3v2_4_tag_specific_tag_t.Tmcl;;

let tmoo = Id3v2_4_tag_specific_tag_t.Tmoo;;

let tpro = Id3v2_4_tag_specific_tag_t.Tpro;;

let tsoa = Id3v2_4_tag_specific_tag_t.Tsoa;;

let tsop = Id3v2_4_tag_specific_tag_t.Tsop;;

let tsot = Id3v2_4_tag_specific_tag_t.Tsot;;

let tsst = Id3v2_4_tag_specific_tag_t.Tsst;;


(** {6 Making} *)

let make soi_4ts nam_4ts s =
  let sym_4ts = Id3v2_4_tag_specific_symbol_v.make nam_4ts s in
  Tag_v.make sym_4ts soi_4ts
;;


(** created by ./generator id3v2_4_tag_specific implementation tag at 11:9 14 Jul 2012. *)



