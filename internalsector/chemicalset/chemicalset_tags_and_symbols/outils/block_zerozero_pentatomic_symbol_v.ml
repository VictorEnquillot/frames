(** {3 A Symbol for a Block_zerozero_pentatomic.} *)

let nam_cod = "block_zerozero_pentatomic_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | B00cs_t.Ch4_zz -> "ch4_zz"
  | B00cs_t.Nh4_zz_1p -> "nh4_zz_1p"
;;


let print ppf = function
  | B00cs_v  ->
      .print ppf 
  | B00cs_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let ch4_zz = B00cs_t.Ch4_zz;;

let nh4_zz_1p = B00cs_t.Nh4_zz_1p;;



(** created by ./generator block_zerozero_pentatomic v symbol at 11:8 26 Apr 2011. *)



