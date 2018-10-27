(** {3 A Symbol for a Atom_threetied_single_conjugated_conjugated.} *)

let nam_cod = "atom_threetied_single_conjugated_conjugated_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | A3sccs_t.C_scc -> "c_scc"
  | A3sccs_t.N_scc -> "n_scc"
;;


let print ppf = function
  | A3sccs_v  ->
      .print ppf 
  | A3sccs_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let c_scc = A3sccs_t.C_scc;;

let n_scc = A3sccs_t.N_scc;;



(** created by ./generator atom_threetied_single_conjugated_conjugated v symbol at 11:8 26 Apr 2011. *)



