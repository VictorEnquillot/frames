(** {3 Nwchemdata_context_sector_tag_v} *)

let documentation () = 
[
  "Current : TNWC:Nwchemdata_context_sector_tag_v";
  "Needs: ";
  "Needed-by: ";
  "What-is-it: the couple (Nwchemdata_context_sector_symbol, Sole_index)";
  "How-is-it-done: ";
]
;;

(** {6 Naming} *)

let name_as_symbol tag_ttt =
  Tag_v.name_as_entity Nwchemdata_context_sector_symbol_v.name tag_ttt
;;

let as_string tag_ttt =
  Tag_v.as_string Nwchemdata_context_sector_symbol_v.name tag_ttt
;;

let name tag_ttt =
  Tag_v.name Nwchemdata_context_sector_symbol_v.name tag_ttt
;;

let string_off tag_ttt =
  Tag_v.string_off Nwchemdata_context_sector_symbol_v.string_off tag_ttt
;;

let longname tag_ttt =
  Tag_v.longname Nwchemdata_context_sector_symbol_v.longname tag_ttt
;;

let fullname tag_ttt =
  Tag_v.fullname Nwchemdata_context_sector_symbol_v.fullname tag_ttt
;;

(** {6 Making} *)

let make soi_ttt nam_ttt s =
  let sym_ttt = Nwchemdata_context_sector_symbol_v.make nam_ttt s in
  Tag_v.make sym_ttt soi_ttt
;;

(** {6 Coercing} *)

let nwchemdata_tag_of_nwchemdata_context_sector_tag tag_ttt =
  Tag_v.map_entity (* Coerce Up *)
     Nwchemdata_symbol_v.nwchemdata_symbol_of_nwchemdata_context_sector_symbol
    tag_ttt
;;

let nwchemdata_context_sector_tag_off_nwchemdata_tag tag_nwc =
  Tag_v.map_entity (* Coerce Down *)
     Nwchemdata_symbol_v.nwchemdata_context_sector_symbol_off_nwchemdata_symbol
    tag_nwc
;;


(* Done by generator/./do_tag_v.sh nwchemdata_context_sector *)
(* using generator/template_tag_v.ml *)
(* Done on dimanche 4 décembre 2016, 18:03:34 (UTC+0100) *)

