(** {3 A Symbol for a Mendeleev.} *)

let nam_cod = "mendeleev_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | Mes_t.Hand -> "hand"
;;


let print ppf = function
  | Mes_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let hand = Mes_t.Hand;;



(** created by ./generator mendeleev v symbol at 11:8 26 Apr 2011. *)



