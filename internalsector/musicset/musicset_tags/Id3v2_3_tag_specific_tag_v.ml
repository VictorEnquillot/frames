(** {3 Id3v2_3_tag_specific_tag_v} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Id3v2_3_tag_specific_tag_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name tag_3ts =
let sym_3ts = Tag_v.symbol_off_tag tag_3ts in
  Id3v2_3_tag_specific_symbol_v.name sym_3ts
;;


(** {6 Extracting_topson} *)


(** {6 Extracting_grandson} *)


(** {6 Querying_topson} *)


(** {6 Querying_grandson} *)


(** {6 Upgrading_topson} *)


(** {6 Upgrading_grandson} *)


(** {6 Abbreviating_grandson} *)


(** {6 Abbreviating_topson} *)

let equa = Id3v2_3_tag_specific_tag_t.Equa;;

let ipls = Id3v2_3_tag_specific_tag_t.Ipls;;

let rvad = Id3v2_3_tag_specific_tag_t.Rvad;;

let tdat = Id3v2_3_tag_specific_tag_t.Tdat;;

let time = Id3v2_3_tag_specific_tag_t.Time;;

let tory = Id3v2_3_tag_specific_tag_t.Tory;;

let trda = Id3v2_3_tag_specific_tag_t.Trda;;

let tyer = Id3v2_3_tag_specific_tag_t.Tyer;;

let tsiz = Id3v2_3_tag_specific_tag_t.Tsiz;;


(** {6 Making} *)

let make soi_3ts nam_3ts s =
  let sym_3ts = Id3v2_3_tag_specific_symbol_v.make nam_3ts s in
  Tag_v.make sym_3ts soi_3ts
;;


(** created by ./generator id3v2_3_tag_specific implementation tag at 11:9 14 Jul 2012. *)



