(** {3 A Symbol for a Atom_twotied_single_triple.} *)

let nam_cod = "atom_twotied_single_triple_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | A2sts_t.C_st -> "c_st"
  | A2sts_t.N_st -> "n_st"
;;


let print ppf = function
  | A2sts_v  ->
      .print ppf 
  | A2sts_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let c_st = A2sts_t.C_st;;

let n_st = A2sts_t.N_st;;



(** created by ./generator atom_twotied_single_triple v symbol at 11:8 26 Apr 2011. *)



