(** {3 The functionalities for a Directory Name.} *)

let nam_mod = "Directoryname_v";;

(** {6 Making.} *)

let make str =
  Noslash_string_p.noslash_string str
;;

let make_directoryname_list str_l =
  List.map make str_l 
;;

(** {6 Extracting.} *)

let string_off_directoryname din =
  Noslash_string_p.string_off_noslash_string din
;;

let string_list_off_directoryname din =
  let str = string_off_directoryname din in
  String_v.split_of_character_of_string '/' str
;;

(** {6 Converting.} *)

let name din =
  Noslash_string_p.name din
;;

let short_name din =
  name din
;;

(** {6 Querying.} *)

