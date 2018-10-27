(** {3 A Symbol for a Atom_twotied_single_conjugated.} *)

let nam_cod = "atom_twotied_single_conjugated_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | A2scs_t.N_sc -> "n_sc"
  | A2scs_t.O_sc -> "o_sc"
;;


let print ppf = function
  | A2scs_v  ->
      .print ppf 
  | A2scs_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let n_sc = A2scs_t.N_sc;;

let o_sc = A2scs_t.O_sc;;



(** created by ./generator atom_twotied_single_conjugated v symbol at 11:8 26 Apr 2011. *)



