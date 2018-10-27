(** {3 Elementary_stream_tag_v} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Elementary_stream_tag_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name tag_els =
let sym_els = Tag_v.symbol_off_tag tag_els in
  Elementary_stream_symbol_v.name sym_els
;;


(** {6 Extracting_topson} *)


(** {6 Extracting_grandson} *)


(** {6 Querying_topson} *)


(** {6 Querying_grandson} *)


(** {6 Upgrading_topson} *)


(** {6 Upgrading_grandson} *)


(** {6 Abbreviating_grandson} *)


(** {6 Abbreviating_topson} *)

let elementary_stream_audio = Elementary_stream_tag_t.Elementary_stream_audio;;

let elementary_stream_video = Elementary_stream_tag_t.Elementary_stream_video;;

let elementary_stream_closed_caption = Elementary_stream_tag_t.Elementary_stream_closed_caption;;


(** {6 Making} *)

let make soi_els nam_els s =
  let sym_els = Elementary_stream_symbol_v.make nam_els s in
  Tag_v.make sym_els soi_els
;;


(** created by ./generator elementary_stream implementation tag at 11:9 14 Jul 2012. *)



