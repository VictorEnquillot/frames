(** {3 A Symbol for a Atom_twotied_conjugated_conjugated.} *)

let nam_cod = "atom_twotied_conjugated_conjugated_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | A2ccs_t.N_cc -> "n_cc"
  | A2ccs_t.O_cc -> "o_cc"
;;


let print ppf = function
  | A2ccs_v  ->
      .print ppf 
  | A2ccs_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let n_cc = A2ccs_t.N_cc;;

let o_cc = A2ccs_t.O_cc;;



(** created by ./generator atom_twotied_conjugated_conjugated v symbol at 11:8 26 Apr 2011. *)



