(** {3 A Symbol for a Block_onedoubleonedouble.} *)

let nam_cod = "block_onedoubleonedouble_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | B1d1ds_t.C_dd -> "c_dd"
  | B1d1ds_t.N_dd_1p -> "n_dd_1p"
;;


let print ppf = function
  | B1d1ds_v  ->
      .print ppf 
  | B1d1ds_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let c_dd = B1d1ds_t.C_dd;;

let n_dd_1p = B1d1ds_t.N_dd_1p;;



(** created by ./generator block_onedoubleonedouble v symbol at 11:8 26 Apr 2011. *)



