(** {3 The functionalities for a String containing no slash.} *)

(** {6 Typing.} *)

type noslash_string = private string;;

(** {6 Making.} *)

val noslash_string :
    string ->
      noslash_string
;;

(** {6 Extracting.} *)

val string_off_noslash_string :
    noslash_string ->
      string
;;

(** {6 Naming} *)

val name :
  noslash_string ->
    string
;;

val print : Format.formatter ->
  noslash_string ->
    unit
;;

(** {6 Querying.} *)

val has_slash_in_string :
    string ->
      bool
;;

(** {6 Failing.} *)

val fails_if_has_slash_in_string :
    string -> 
      string
;;

val stops_if_has_slash_in_string :
    string ->
      unit
;;
