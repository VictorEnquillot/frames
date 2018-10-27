(** {3 A Symbol for a Atom_onetied_triple.} *)

let nam_cod = "atom_onetied_triple_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | A1ts_t.N_t -> "n_t"
  | A1ts_t.O_t -> "o_t"
;;


let print ppf = function
  | A1ts_v  ->
      .print ppf 
  | A1ts_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let n_t = A1ts_t.N_t;;

let o_t = A1ts_t.O_t;;



(** created by ./generator atom_onetied_triple v symbol at 11:8 26 Apr 2011. *)



