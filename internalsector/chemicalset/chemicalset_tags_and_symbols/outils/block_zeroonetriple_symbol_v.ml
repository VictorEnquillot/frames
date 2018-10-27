(** {3 A Symbol for a Block_zeroonetriple.} *)

let nam_cod = "block_zeroonetriple_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | B01ts_t.Ch_t -> "ch_t"
;;


let print ppf = function
  | B01ts_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let ch_t = B01ts_t.Ch_t;;



(** created by ./generator block_zeroonetriple v symbol at 11:8 26 Apr 2011. *)



