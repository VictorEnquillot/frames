
(** {3 The functionalities for a Symbol for a Frequency.} *)

let nam_cod = "frequency_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Frequency_symbol_t.Frequency_00 -> "Frequency_00"
  | Frequency_symbol_t.Frequency_01 -> "Frequency_01"
  | Frequency_symbol_t.Frequency_10 -> "Frequency_10"
  | Frequency_symbol_t.Frequency_11 -> "Frequency_11"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let frequency_00 = Frequency_symbol_t.Frequency_00;;

let frequency_01 = Frequency_symbol_t.Frequency_01;;

let frequency_10 = Frequency_symbol_t.Frequency_10;;

let frequency_11 = Frequency_symbol_t.Frequency_11;;


(** {6 Making} *)


let make nam s =
  match String.capitalize nam with
  | "Frequency_00" -> frequency_00
  | "Frequency_01" -> frequency_01
  | "Frequency_10" -> frequency_10
  | "Frequency_11" -> frequency_11
  | _ ->
    failwith "Not_Frequency_symbol:frequency_symbol_v:make"
;;


(** {6 Extracting} *)



(** {6 Querying} *)




(** created by ./generator frequency implementation symbol at 17:42 2 Jun 2012. *)



