(** {3 Id3v2_tag_multiple_tag_v} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Id3v2_tag_multiple_tag_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name tag_itm =
let sym_itm = Tag_v.symbol_off_tag tag_itm in
  Id3v2_tag_multiple_symbol_v.name sym_itm
;;


(** {6 Extracting_topson} *)


(** {6 Extracting_grandson} *)


(** {6 Querying_topson} *)


(** {6 Querying_grandson} *)


(** {6 Upgrading_topson} *)


(** {6 Upgrading_grandson} *)


(** {6 Abbreviating_grandson} *)


(** {6 Abbreviating_topson} *)

let tpe1 = Id3v2_tag_multiple_tag_t.Tpe1;;

let tcom = Id3v2_tag_multiple_tag_t.Tcom;;

let text = Id3v2_tag_multiple_tag_t.Text;;

let toly = Id3v2_tag_multiple_tag_t.Toly;;

let tope = Id3v2_tag_multiple_tag_t.Tope;;


(** {6 Making} *)

let make soi_itm nam_itm s =
  let sym_itm = Id3v2_tag_multiple_symbol_v.make nam_itm s in
  Tag_v.make sym_itm soi_itm
;;


(** created by ./generator id3v2_tag_multiple implementation tag at 11:9 14 Jul 2012. *)



