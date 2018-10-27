val empty : string;;

val string_of_string_list : string list -> string;;
(** each string of a string list is separated by ';' character. *)

val string_of_char_list : char list -> string;;

val string_of_char : char -> string;;
val string_of_character : char -> string;;
val string_of_boolean : bool -> string;;
val string_of_string_list : string list -> string;;
val string_of_character_list : char list -> string;;
val string_of_char_list : char list -> string;;

val is_non_zero_dot_float_of_string : string -> bool;;
(** true if the string represents a float without decimal digit before dot. 
    e.g. "-.5" or ".5" *)

val add_zero_of_non_zero_dot_float_string : string -> string;;
(** transforms ".n" into "0.n" for a string representing a float. *)

val substitute_all_string_from_of_string : string -> string -> string -> string;;
(** let su = substitute_all_string_from_of_string s1 s2 s
    substitute all occurrence of [s1] by [s2] in s. *)

val character_of_string : string -> char;;
val two_chars_of_string : string -> string;;
(* for a character 'c' returns "c_" *) 

val reverse_of_string : string -> string;;

val extract_of_string_of_start_of_stop :    string ->       int -> 	int ->	  string;;

val char_list_of_string : string -> char list;;

val column_of_string_list : string list -> string;;
(** each string of a string list is separated by '\n' character. *)

val cut_first_blank_off_string : string -> string;;
(** cut first character if blank in a string. *)

val cut_last_blank_off_string : string -> string;;
(** cut last character if blank in a string. *)

val cut_first_characters_of_count_off_string : int -> string -> string;;
(** cut the first int characters in a string. *)

val cut_first_character_off_string : string -> string;;

val cut_last_character_off_string : string -> string;;

val suppress_leading_string_off_string : string -> string -> string;;

val last_character_off_string : string -> char;;
(** returns the last character of a string as a char. *)

val last_n_characters_off_string : int -> string -> string;;
val last_n_characters_of_count_of_string : int -> string -> string;;
val cut_last_n_characters_of_count_off_string : int -> string -> string;;
val has_extension_of_extension_of_string : string -> string -> bool;;
val trim_head_of_string : string -> string;;
val trim_left_of_string : string -> string;;
(** cut leading blanks of a string. *)

val trim_tail_of_string : string -> string;;
val trim_right_of_string : string -> string;;
(** cut ending blanks of a string. *)

val trim_of_string : string -> string;;
(** cut leading and ending blanks of a string. *)

val substring : string -> int -> int -> string;;
(** Failure ("Not_substring:"^nam_cod^":substring") *)

val word_list_off_string : string -> string list;;
(** splits a string into words. using any space "[ \t]+" as separator. *)

val word_off_string_list : string list -> string;;
val word_off_string : string -> string;;

val split_of_character_of_string : char -> string -> string list;;

val word_n_string_off_string : string -> string * string;;

val first_word_doublet_off_string : string -> string * string;;
val first_word_triplet_off_string : string -> string * string * string;;
val first_string_doublet_of_char_off_string : char -> string -> string * string;;
(** Ex.: ("ab", "cde fgh ijk") = first_split_of_char_off_string ' ' "cde fgh ijk" *)
val first_string_triplet_of_char_off_string : char -> string -> string * string * string;;

val is_once_of_char_of_string : char -> string -> bool
(** char exists once in string *)

val capitalize_of_string : string -> string;; (** aaA Aa *)
val is_capitalized_of_string : string -> bool;; (** aaA Aa *)

val capitalize_strict_of_string : string -> string;; (** Aaa aa *)
val is_capitalized_strict_of_string : string -> bool;; (**Aaa Aa*)

val is_lowercase_of_string : string -> bool;;
val is_uppercase_of_string : string -> bool;;
val is_word_of_string : string -> bool;; (** has no space *)

val is_some_word_of_word_off_string : string -> string -> bool;;

val first_word_of_char_off_string : char -> string -> string;;
val first_word_off_string : string -> string;;
val second_word_of_char_off_string : char -> string -> string;;
val second_word_off_string : string -> string;;
val third_word_of_char_off_string : char -> string -> string;;
val third_word_off_string : string -> string;;
val fourth_word_of_char_off_string : char -> string -> string;;
val fourth_word_off_string : string -> string;;
val fifth_word_of_char_off_string : char -> string -> string;;
val fifth_word_off_string : string -> string;;
val worddouble_off_word_duo : (string * string) -> string;;
val word_duo_of_worddouble : string -> (string * string);;
val leftword_off_worddouble : string -> string;;
val rightword_off_worddouble : string -> string;;

val check_n_characters_at_most : int -> string -> string -> unit;;
(** check_n_characters_at_most n s m;;
    raises "String too long" with message [m]
    if [s] has more than [n] characters. *)

val check_integer_of_string : string -> string -> unit;;
(** check_integer_of_string s m;;
    raises "Not an integer" with message [m]
    if [s] does not represent an integer. *)

val check_generalized_float_of_string : string -> string -> unit;;
(** check_generalized_float_of_string s m;;
    raises "Not a generalized float" with message [m]
    if [s] does not represent a generalized float. *)

val head_of_string_of_char :
    string ->
      char ->
	string
;;

val tail_of_string_of_char :
    string ->
      char ->
	string
;;

val truncate_head_of_string_of_char :
    string ->
      char ->
	string
;;

val truncate_tail_of_string_of_char :
    string ->
      char ->
	string
;;

val head_if_contains_of_string_of_char : string -> char -> string;;
(** "abcd" = head_if_contains_of_string_of_char "abcd#efg" '#' *)
(** "abcd#efg" = head_if_contains_of_string_of_char "abcd#efg" '.' *)

val tail_if_contains_of_string_of_char : string -> char -> string;;
(** "efg" = tail_if_contains_of_string_of_char "abcd#efg" '#' *)
(** "abcd#efg" = tail_if_contains_of_string_of_char "abcd#efg" '.' *)

val string_time : unit -> string
;;
(** [let s = string_time ();;]
    Example #   string_time () gives  "12:24:53:0.04". *)

val string_with_separator_of_string_list : string -> string list -> string;;

val line_80_of_string : string -> string
;;
(** padd a string with blanks on 80 characters. *)

val is_empty_of_string : string -> bool
;;

val check_empty_of_string_of_name : string -> string -> string -> 
  unit;;

val fails_if_empty_nth_character : string -> int -> string -> string ->
  unit;;
(** [fails_if_empty_nth_character s n] fails if character at position [n] 
    of [string] [s] is blank. first is 1. *)

val check_for_empty_character : string -> int list -> string -> string ->  
  unit;;

val regexp_string_for_alphabetic : string;;

val regexp_for_alphabetic : Str.regexp;;

val is_alphabetic_of_string : string -> bool;;

val regexp_string_for_alphanumeric : string;;

val regexp_for_alphanumeric : Str.regexp;;

val is_alphanumeric_of_string : string -> bool;;

val regexp_string_for_integer : string;;

val regexp_for_integer : Str.regexp;;

val is_integer_of_string : string -> bool;;

val is_integer_positive_of_string : string -> bool;;
val is_basictype_name_of_string : string -> bool;;
(**   | "boolean" | "float" | "integer" | "string" -> true *)

val regexp_string_for_float : string;;
val regexp_for_float : Str.regexp;;

val regexp_string_for_generalized_float : string;;
val regexp_for_generalized_float : Str.regexp;;

val is_float_of_string : string -> bool;;
val is_float_positive_of_string : string -> bool;;

val is_generalized_float_of_string : string -> bool;;
(** true is s matches regexp_for_generalized_float *)

val is_first_word_of_what_of_string : string -> string -> bool;;
(** is_first_word_of_what_of_string "abc" "abc def" = true *)

val is_first_word_of_char_of_what_of_string : char -> string -> string -> bool;;
(** is_first_word_of_what_of_string '_' "abc" "abc_def" = true *)

val regexp_string_for_non_zero_dot_float : string;;

val regexp_for_non_zero_dot_float : Str.regexp;;

val name :
    string ->
      string
;;

val first_characters_string_of_underscored_string :
    string ->
      string
;;

val first_character_string_off_string :    string -> string;; (* Empty string is returned *)
val first_character_off_string :    string -> char;;

val first_two_characters_off_string :    string ->      string;;(** Fails if String length < 2 *)

val first_three_characters_off_string :
    string ->
      string
;;(** Fails if String length < 3 *)

val remove_blanks_off_character_list :
  char list ->
  char list
;;

val reduce_blanks_to_one_blank_of_string : string -> string;;

val character_list_off_string :
  string ->
  char list
;;

val remove_blanks_off_string :
  string ->
  string
;;

val is_palindrome_of_string :
  string ->
  bool
;;

val bool_of_string :
    string ->
      bool
;;

val boolean_of_string :
    string ->
      bool
;;

val int_of_string :
    string ->
      int
;;

val integer_of_string : string -> int;;

val string_of_integer : int -> string;;

val float_of_string : string -> float;;

val shortname_of_float : float -> string;;

val string_of_float : float -> string;;

(* is_substring_of_string_of_string : has been moved into List_v 
    string ->
      string ->
	bool
;;
*)

val get_string_until_of_char_of_in_channel : char -> Scanf.Scanning.in_channel -> string;;
