(** {3 A Symbol for a Block_zerozero_tetratomic.} *)

let nam_cod = "block_zerozero_tetratomic_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | B00qs_t.Cho2_1m -> "cho2_1m"
  | B00qs_t.Nh2 -> "nh2"
;;


let print ppf = function
  | B00qs_v  ->
      .print ppf 
  | B00qs_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let cho2_1m = B00qs_t.Cho2_1m;;

let nh2 = B00qs_t.Nh2;;



(** created by ./generator block_zerozero_tetratomic v symbol at 11:8 26 Apr 2011. *)



