(** {3 This_tag_v} *)

let documentation () = 
[
  "Current : SPFIG:This_tag_v";
  "Needs: ";
  "Needed-by: ";
  "What-is-it: the couple (This_symbol, Sole_index)";
  "How-is-it-done: ";
]
;;

(** {6 Naming} *)

let name_as_symbol tag_ttt =
  Tag_v.name_as_entity This_symbol_v.name tag_ttt
;;

let as_string tag_ttt =
  Tag_v.as_string This_symbol_v.name tag_ttt
;;

let name tag_ttt =
  Tag_v.name This_symbol_v.name tag_ttt
;;

let string_off tag_ttt =
  Tag_v.string_off This_symbol_v.string_off tag_ttt
;;

let longname tag_ttt =
  Tag_v.longname This_symbol_v.longname tag_ttt
;;

let fullname tag_ttt =
  Tag_v.fullname This_symbol_v.fullname tag_ttt
;;

(** {6 Making} *)

let make soi_ttt nam_ttt s =
  let sym_ttt = This_symbol_v.make nam_ttt s in
  Tag_v.make sym_ttt soi_ttt
;;

(** {6 Coercing} *)

let dgn_lexeme_tag_of_this_tag tag_ttt =
  Tag_v.map_entity (* Coerce Up *)
     Figure_symbol_v.dgn_lexeme_symbol_of_this_symbol
    tag_ttt
;;

let this_tag_off_dgn_lexeme_tag tag_fig =
  Tag_v.map_entity (* Coerce Down *)
     Figure_symbol_v.this_symbol_off_dgn_lexeme_symbol
    tag_fig
;;

