(** {3 A Symbol for a Block_onesingleonedouble.} *)

let nam_cod = "block_onesingleonedouble_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | B1s1ds_t.Ch_sd -> "ch_sd"
  | B1s1ds_t.N_sd -> "n_sd"
  | B1s1ds_t.N_sd_1p -> "n_sd_1p"
;;


let print ppf = function
  | B1s1ds_v  ->
      .print ppf 
  | B1s1ds_v  ->
      .print ppf 
  | B1s1ds_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let ch_sd = B1s1ds_t.Ch_sd;;

let n_sd = B1s1ds_t.N_sd;;

let n_sd_1p = B1s1ds_t.N_sd_1p;;



(** created by ./generator block_onesingleonedouble v symbol at 11:8 26 Apr 2011. *)



