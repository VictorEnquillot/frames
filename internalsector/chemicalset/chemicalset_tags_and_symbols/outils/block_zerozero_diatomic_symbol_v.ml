(** {3 A Symbol for a Block_zerozero_diatomic.} *)

let nam_cod = "block_zerozero_diatomic_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | B00ds_t.Co_zz -> "co_zz"
;;


let print ppf = function
  | B00ds_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let co_zz = B00ds_t.Co_zz;;



(** created by ./generator block_zerozero_diatomic v symbol at 11:8 26 Apr 2011. *)



