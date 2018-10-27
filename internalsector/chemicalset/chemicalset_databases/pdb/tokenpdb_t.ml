(** {3 The token used in any PDB record.} *)

(** A token is a kind of basic data type with a well defined number of characters *)

type integer_7 = int
;;

type integer_6 = int
;;

type integer_5 = int
;;
(** a string representing a 5 digits integer right justified. e.g. "   45". *) 

type integer_4 = int
;;

type integer_2 = int
;;

type integer_1 = int
;;

type float_4 = float
;;

type float_5 = float
;;

type float_6 = float
;;

type float_8 = float
;;

type string_80 = string
;;

type string_52 = string
;;

type string_44 = string
;;

type string_40 = string
;;

type string_8 = string
;;

type string_6 = string
;;

type string_4 = string
;;

type string_3 = string
;;

type string_2 = string 
;;

type string_1 = string 
;;

type date_9 = integer_2 * string_3 * integer_2
;;
(** The date in 9 characters (02-MAR-00). *)

