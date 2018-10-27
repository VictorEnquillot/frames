(** {3 Localinput_set_fence_basic_word_lowercase_tag_v} *)

let documentation () = 
[
  "Current : TLOC:Localinput_set_fence_basic_word_lowercase_tag_v";
  "Needs: ";
  "Needed-by: ";
  "What-is-it: the couple (Localinput_set_fence_basic_word_lowercase_symbol, Sole_index)";
  "How-is-it-done: ";
]
;;

(** {6 Naming} *)

let name_as_symbol tag_ttt =
  Tag_v.name_as_entity Localinput_set_fence_basic_word_lowercase_symbol_v.name tag_ttt
;;

let as_string tag_ttt =
  Tag_v.as_string Localinput_set_fence_basic_word_lowercase_symbol_v.name tag_ttt
;;

let name tag_ttt =
  Tag_v.name Localinput_set_fence_basic_word_lowercase_symbol_v.name tag_ttt
;;

let string_off tag_ttt =
  Tag_v.string_off Localinput_set_fence_basic_word_lowercase_symbol_v.string_off tag_ttt
;;

let longname tag_ttt =
  Tag_v.longname Localinput_set_fence_basic_word_lowercase_symbol_v.longname tag_ttt
;;

let fullname tag_ttt =
  Tag_v.fullname Localinput_set_fence_basic_word_lowercase_symbol_v.fullname tag_ttt
;;

(** {6 Making} *)

let make soi_ttt nam_ttt s =
  let sym_ttt = Localinput_set_fence_basic_word_lowercase_symbol_v.make nam_ttt s in
  Tag_v.make sym_ttt soi_ttt
;;

(** {6 Coercing} *)

let localinput_tag_of_localinput_set_fence_basic_word_lowercase_tag tag_ttt =
  Tag_v.map_entity (* Coerce Up *)
     Localinput_symbol_v.localinput_symbol_of_localinput_set_fence_basic_word_lowercase_symbol
    tag_ttt
;;

let localinput_set_fence_basic_word_lowercase_tag_off_localinput_tag tag_loc =
  Tag_v.map_entity (* Coerce Down *)
     Localinput_symbol_v.localinput_set_fence_basic_word_lowercase_symbol_off_localinput_symbol
    tag_loc
;;


(* Done by generator/./do_tag_v.sh localinput_set_fence_basic_word_lowercase *)
(* using generator/template_tag_v.ml *)
(* Done on lundi 15 mai 2017, 11:22:18 (UTC+0200) *)

