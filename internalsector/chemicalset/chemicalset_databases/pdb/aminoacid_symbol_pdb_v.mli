(* $Id: Exp $ *)

(** {3 The Functions to handle Aminoacid_symbol_pdb_v.} *)
(** {6 Aminoacid_symbol_pdb_v.} *)
(** {9 Aminoacid_symbol_pdb_t Printings.} *)

val string_of_extra_aminoacid_symbol_pdb : 
    Aminoacid_symbol_pdb_t.extra_aminoacid_symbol_pdb -> string
;;

val extra_aminoacid_symbol_pdb_of_string : string ->
    Aminoacid_symbol_pdb_t.extra_aminoacid_symbol_pdb 
;;

val string_of_aminoacid_symbol_pdb : 
    Aminoacid_symbol_pdb_t.aminoacid_symbol_pdb -> string
;;
(** let a = string_of_aminoacid_symbol_pdb r;;
    [string] [s] is the expression of aminoacid_symbol_pdb [a] as a string
    example : "Ala" "Arg" ... "Val" "Asx" ... *)

val uppercase_of_aminoacid_symbol_pdb : 
    Aminoacid_symbol_pdb_t.aminoacid_symbol_pdb -> string
;;
(** it is the same as [string_of_aminoacid_symbol_pdb] with a resulting 
    string in uppercase.

    Example : "ALA" "ARG" ... "VAL" "ASX" ... *)

val print : Format.formatter -> 
  Aminoacid_symbol_pdb_t.aminoacid_symbol_pdb -> unit
;;
 
val print_upper : Format.formatter -> 
  Aminoacid_symbol_pdb_t.aminoacid_symbol_pdb -> unit
;;
 
(** {9 Aminoacid_symbol_pdb_t_of_...} *)

val aminoacid_symbol_pdb_of_aminoacid_symbol : 
    Aminoacid_symbol_t.aminoacid_symbol -> 
      Aminoacid_symbol_pdb_t.aminoacid_symbol_pdb 
;;

val aminoacid_symbol_pdb_of_string : string -> 
  Aminoacid_symbol_pdb_t.aminoacid_symbol_pdb
;;
(** [let r = aminoacid_symbol_pdb_of_string s;;]

    [s] is a [string] representing a [aminoacid_symbol_pdb] (First character capital others 
        in lowercase : "Ala")  
    [r] is the [aminoacid_symbol_pdb] corresponding to [s].

    Example : "Ala" -> Ala. "ALA" gives a failure. *)

val aminoacid_symbol_pdb_of_anycase : string -> 
  Aminoacid_symbol_pdb_t.aminoacid_symbol_pdb
;;
(** [let r = of_anycase s;;]
    The same as upper except any case is accepted.
    Example : "ALA" gives Ala. *)

val aminoacid_symbol_pdb_of_char : char -> 
  Aminoacid_symbol_pdb_t.aminoacid_symbol_pdb
;;
(** [let a = aminoacid_symbol_pdb_of_char c;;]

    [c] is a [char] corresponding to a one-letter-code symbol..
     [a] is the [amino_acid] built either with NterPlus if (i=1) 
        or else with Neutral, and corresponding to [c]. 

    Example : [aminoacid_symbol_pdb_of_char A] gives Ala. *)  


val aminoacid_symbol_of_aminoacid_symbol_pdb : 
    Aminoacid_symbol_pdb_t.aminoacid_symbol_pdb -> 
      Aminoacid_symbol_t.aminoacid_symbol
;;

val aminoacid_symbol_pdb_of_aminoacid_symbol : 
    Aminoacid_symbol_t.aminoacid_symbol -> 
      Aminoacid_symbol_pdb_t.aminoacid_symbol_pdb
;;

val name_of_aminoacid_symbol_pdb : 
    Aminoacid_symbol_pdb_t.aminoacid_symbol_pdb -> string
;;
(** The Chemical name of the protein Aminoacid_symbol_pdb_t.aminoacid_pdb of type [Aminoacid_symbol_pdb_t.aminoacid_pdb]. e.g. ALA -> "Alanine". *)

(** {9 Aminoacid_symbol_pdb_t Readings.} *)

val read_aminoacid_symbol_pdb : Scanf.Scanning.scanbuf -> 
  Aminoacid_symbol_pdb_t.aminoacid_symbol_pdb
;;

val read_anycase_aminoacid_symbol_pdb : Scanf.Scanning.scanbuf -> Aminoacid_symbol_pdb_t.aminoacid_symbol_pdb
;;

(** {6 Aminoacid_symbol_pdb_t_symbol.} *)

val extra_aminoacid_symbol_pdb_string_array : unit -> string array
;; 

(** {9 Aminoacid_symbol_pdb_t_symbol Printings} *)
val print_aminoacid_symbol_pdb : Format.formatter -> 
  Aminoacid_symbol_pdb_t.aminoacid_symbol_pdb -> unit
;;

val read_aminoacid_symbol_pdb : Scanf.Scanning.scanbuf -> 
  Aminoacid_symbol_pdb_t.aminoacid_symbol_pdb
;;

(** {9 Aminoacid_symbol_pdb_t_symbol_of_...} *)
 
val aminoacid_symbol_pdb_of_one_letter_code_pdb : 
    One_letter_code_pdb_t.one_letter_code_pdb ->
      Aminoacid_symbol_pdb_t.aminoacid_symbol_pdb
;;

val aminoacid_symbol_pdb_of_aminoacid_symbol : 
    Aminoacid_symbol_t.aminoacid_symbol ->
      Aminoacid_symbol_pdb_t.aminoacid_symbol_pdb
;;

val aminoacid_symbol_pdb_of_string : string -> 
  Aminoacid_symbol_pdb_t.aminoacid_symbol_pdb
;;
(** Example: "ASX_N+" gives [Asx].
    Example: "ASN" gives [Asn].*)

val aminoacid_symbol_pdb_of_anycase : string -> 
  Aminoacid_symbol_pdb_t.aminoacid_symbol_pdb
;;
(** Example: "AsX_N+" gives [Asx].
    Example: "asSN" gives [Asn].*)

val aminoacid_symbol_pdb_of_char : char -> 
  Aminoacid_symbol_pdb_t.aminoacid_symbol_pdb
;;

val chemical_name_of_extra_aminoacid_symbol_pdb : 
    Aminoacid_symbol_pdb_t.extra_aminoacid_symbol_pdb ->
      string
;;
(** {9 Aminoacid_symbol_pdb_t_symbol_to_...} *)
(** {9 ..._of_aminoacid_symbol_pdb *)

val string_of_aminoacid_symbol_pdb : 
    Aminoacid_symbol_pdb_t.aminoacid_symbol_pdb -> string
;;

val string_of_extra_aminoacid_symbol_pdb : 
    Aminoacid_symbol_pdb_t.extra_aminoacid_symbol_pdb -> string
;;

(** {9 One_letter_code_pdb_t.} *)

val one_letter_code_pdb_of_aminoacid_symbol_pdb : 
    Aminoacid_symbol_pdb_t.aminoacid_symbol_pdb ->
      One_letter_code_pdb_t.one_letter_code_pdb
;;

val char_of_one_letter_code_pdb : One_letter_code_pdb_t.one_letter_code_pdb ->
  char
;;

