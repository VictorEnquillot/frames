(** {3 A Symbol for a Block_zeroonedouble.} *)

let nam_cod = "block_zeroonedouble_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | B01ds_t.Ch2_d -> "ch2_d"
  | B01ds_t.Co_d -> "co_d"
  | B01ds_t.Nh_d -> "nh_d"
  | B01ds_t.Nh2_d_1p -> "nh2_d_1p"
;;


let print ppf = function
  | B01ds_v  ->
      .print ppf 
  | B01ds_v  ->
      .print ppf 
  | B01ds_v  ->
      .print ppf 
  | B01ds_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let ch2_d = B01ds_t.Ch2_d;;

let co_d = B01ds_t.Co_d;;

let nh_d = B01ds_t.Nh_d;;

let nh2_d_1p = B01ds_t.Nh2_d_1p;;



(** created by ./generator block_zeroonedouble v symbol at 11:8 26 Apr 2011. *)



