(** {3 The functionalities for a String containing no blank not tabulation} *)

(** {6 Typing.} *)

type word = private string;;

(** {6 Making.} *)

val word :
    string ->
      word
;;

(** {6 Extracting.} *)

val string_off_word :
    word ->
      string
;;

(** {6 Naming} *)

val name :
    word ->
      string
;;

(** {6 Querying.} *)

val has_blank_in_string :
    string ->
      bool
;;

val has_tabulation_in_string :
    string ->
      bool
;;

val has_blank_or_tabulation_in_string :
    string ->
      bool
;;

(** {6 Failing.} *)

val fails_if_has_blank_or_tabulation_in_string :
    string -> 
      string
;;

val stops_if_has_blank_or_tabulation_in_string :
    string ->
      unit
;;
