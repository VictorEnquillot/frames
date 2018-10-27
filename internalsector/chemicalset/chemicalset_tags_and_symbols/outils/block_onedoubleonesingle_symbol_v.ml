(** {3 A Symbol for a Block_onedoubleonesingle.} *)

let nam_cod = "block_onedoubleonesingle_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | B1d1ss_t.Ch_ds -> "ch_ds"
  | B1d1ss_t.N_ds -> "n_ds"
  | B1d1ss_t.Nh_ds_1p -> "nh_ds_1p"
;;


let print ppf = function
  | B1d1ss_v  ->
      .print ppf 
  | B1d1ss_v  ->
      .print ppf 
  | B1d1ss_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let ch_ds = B1d1ss_t.Ch_ds;;

let n_ds = B1d1ss_t.N_ds;;

let nh_ds_1p = B1d1ss_t.Nh_ds_1p;;



(** created by ./generator block_onedoubleonesingle v symbol at 11:8 26 Apr 2011. *)



