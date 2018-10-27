(** {3 The token used in any PDB record.} *)

val date_9_of_string : string -> Tokenpdb_t.date_9
;;
(** converts a string into a 9 character date.*)

val string_of_date_9 : Tokenpdb_t.date_9 -> string
;;

val print_integer_5 : Format.formatter -> Tokenpdb_t.integer_5 -> unit
;;

val print_integer_4 : Format.formatter -> Tokenpdb_t.integer_4 -> unit
;;

val print_integer_2 : Format.formatter -> Tokenpdb_t.integer_2 -> unit
;;

val print_integer_1 : Format.formatter -> Tokenpdb_t.integer_1 -> unit
;;

val print_float_4 : Format.formatter -> Tokenpdb_t.float_4 -> unit
;;

val print_float_5 : Format.formatter -> Tokenpdb_t.float_5 -> unit
;;

val print_float_6 : Format.formatter -> Tokenpdb_t.float_6 -> unit
;;

val print_float_8 : Format.formatter -> Tokenpdb_t.float_8 -> unit
;;

val print_string_8 : Format.formatter -> Tokenpdb_t.string_8 -> unit
;;

val print_string_6 : Format.formatter -> Tokenpdb_t.string_6 -> unit
;;

val print_string_4 : Format.formatter -> Tokenpdb_t.string_4 -> unit
;;

val print_string_3 : Format.formatter -> Tokenpdb_t.string_3 -> unit
;;

val print_date_9 : Format.formatter -> Tokenpdb_t.date_9 -> unit
;;

(** {6 Readings} *)

val skip_char : Scanf.Scanning.scanbuf -> unit
;;

val read_float_4 : Scanf.Scanning.scanbuf -> Tokenpdb_t.float_4
;;

val read_float_5 : Scanf.Scanning.scanbuf -> Tokenpdb_t.float_5
;;

val read_float_6 : Scanf.Scanning.scanbuf -> Tokenpdb_t.float_6
;;

val read_float_8 : Scanf.Scanning.scanbuf -> Tokenpdb_t.float_8
;;

val read_integer_7 : Scanf.Scanning.scanbuf -> Tokenpdb_t.integer_7
;;

val read_integer_6 : Scanf.Scanning.scanbuf -> Tokenpdb_t.integer_6
;;

val read_integer_5 : Scanf.Scanning.scanbuf -> Tokenpdb_t.integer_5
;;

val read_integer_4 : Scanf.Scanning.scanbuf -> Tokenpdb_t.integer_4
;;

val read_integer_1 : Scanf.Scanning.scanbuf -> Tokenpdb_t.integer_1
;;

val read_string_1 : Scanf.Scanning.scanbuf -> Tokenpdb_t.string_1
;;

val read_string_2 : Scanf.Scanning.scanbuf -> Tokenpdb_t.string_2
;;

val read_string_3 : Scanf.Scanning.scanbuf -> Tokenpdb_t.string_3
;;

val read_string_4 : Scanf.Scanning.scanbuf -> string
;;

val read_string_6 : Scanf.Scanning.scanbuf -> string
;;

val read_string_8 : Scanf.Scanning.scanbuf -> string
;;

val read_string_44 : Scanf.Scanning.scanbuf -> string
;;

val read_string_52 : Scanf.Scanning.scanbuf -> Tokenpdb_t.string_52
;;

val read_date_9 : Scanf.Scanning.scanbuf -> Tokenpdb_t.date_9
;;

val integer_5_of_string : string -> Tokenpdb_t.integer_5
;;

val integer_4_of_string : string -> Tokenpdb_t.integer_4
;;

val integer_1_of_int : int -> Tokenpdb_t.integer_1
;;

val integer_4_of_int : int -> Tokenpdb_t.integer_4
;;

val float_4_of_string : string -> Tokenpdb_t.float_4 
;;

val float_5_of_string : string -> Tokenpdb_t.float_5 
;;

val float_6_of_string : string -> Tokenpdb_t.float_6 
;;

val float_8_of_string : string -> Tokenpdb_t.float_8 
;;

