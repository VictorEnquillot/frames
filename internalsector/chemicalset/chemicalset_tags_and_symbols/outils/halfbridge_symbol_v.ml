(** {3 A Symbol for a Halfbridge.} *)

let nam_cod = "halfbridge_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | Has_t.Hbc -> "Hbc"
  | Has_t.Hbd -> "Hbd"
  | Has_t.Hbs -> "Hbs"
  | Has_t.Hbt -> "Hbt"
;;


let print ppf = function
  | Has_v  ->
      .print ppf 
  | Has_v  ->
      .print ppf 
  | Has_v  ->
      .print ppf 
  | Has_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let Hbc = Has_t.Hbc;;

let Hbd = Has_t.Hbd;;

let Hbs = Has_t.Hbs;;

let Hbt = Has_t.Hbt;;



(** created by ./generator halfbridge v symbol at 11:8 26 Apr 2011. *)



