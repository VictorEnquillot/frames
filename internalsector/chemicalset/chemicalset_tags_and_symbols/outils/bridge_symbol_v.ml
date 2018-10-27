(** {3 A Symbol for a Bridge.} *)

let nam_cod = "bridge_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | Brs_t.Bc -> "Bc"
  | Brs_t.Bd -> "Bd"
  | Brs_t.Bs -> "Bs"
;;


let print ppf = function
  | Brs_v  ->
      .print ppf 
  | Brs_v  ->
      .print ppf 
  | Brs_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let Bc = Brs_t.Bc;;

let Bd = Brs_t.Bd;;

let Bs = Brs_t.Bs;;



(** created by ./generator bridge v symbol at 11:8 26 Apr 2011. *)



