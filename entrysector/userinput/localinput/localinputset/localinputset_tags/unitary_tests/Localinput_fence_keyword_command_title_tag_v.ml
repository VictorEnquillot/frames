(** {3 Localinput_fence_keyword_command_title_tag_v} *)

let documentation () = 
[
  "Current : TLOC:Localinput_fence_keyword_command_title_tag_v";
  "Needs: ";
  "Needed-by: ";
  "What-is-it: the couple (Localinput_fence_keyword_command_title_symbol, Sole_index)";
  "How-is-it-done: ";
]
;;

(** {6 Naming} *)

let name_as_symbol tag_ttt =
  Tag_v.name_as_entity Localinput_fence_keyword_command_title_symbol_v.name tag_ttt
;;

let as_string tag_ttt =
  Tag_v.as_string Localinput_fence_keyword_command_title_symbol_v.name tag_ttt
;;

let name tag_ttt =
  Tag_v.name Localinput_fence_keyword_command_title_symbol_v.name tag_ttt
;;

let string_off tag_ttt =
  Tag_v.string_off Localinput_fence_keyword_command_title_symbol_v.string_off tag_ttt
;;

let longname tag_ttt =
  Tag_v.longname Localinput_fence_keyword_command_title_symbol_v.longname tag_ttt
;;

let fullname tag_ttt =
  Tag_v.fullname Localinput_fence_keyword_command_title_symbol_v.fullname tag_ttt
;;

(** {6 Making} *)

let make soi_ttt nam_ttt s =
  let sym_ttt = Localinput_fence_keyword_command_title_symbol_v.make nam_ttt s in
  Tag_v.make sym_ttt soi_ttt
;;

(** {6 Coercing} *)

let localinput_tag_of_localinput_fence_keyword_command_title_tag tag_ttt =
  Tag_v.map_entity (* Coerce Up *)
     Localinput_symbol_v.localinput_symbol_of_localinput_fence_keyword_command_title_symbol
    tag_ttt
;;

let localinput_fence_keyword_command_title_tag_off_localinput_tag tag_loc =
  Tag_v.map_entity (* Coerce Down *)
     Localinput_symbol_v.localinput_fence_keyword_command_title_symbol_off_localinput_symbol
    tag_loc
;;


(* Done by generator/./do_tag_v.sh localinput_fence_keyword_command_title *)
(* using generator/template_tag_v.ml *)
(* Done on samedi 29 octobre 2016, 19:33:32 (UTC+0200) *)

