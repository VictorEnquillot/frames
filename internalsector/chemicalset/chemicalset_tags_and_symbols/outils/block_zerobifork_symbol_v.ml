(** {3 A Symbol for a Block_zerobifork.} *)

let nam_cod = "block_zerobifork_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | B0bs_t.Ch_zsc -> "ch_zsc"
  | B0bs_t.Ch_zsd -> "ch_zsd"
  | B0bs_t.Nh_zs2 -> "nh_zs2"
;;


let print ppf = function
  | B0bs_v  ->
      .print ppf 
  | B0bs_v  ->
      .print ppf 
  | B0bs_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let ch_zsc = B0bs_t.Ch_zsc;;

let ch_zsd = B0bs_t.Ch_zsd;;

let nh_zs2 = B0bs_t.Nh_zs2;;



(** created by ./generator block_zerobifork v symbol at 11:8 26 Apr 2011. *)



