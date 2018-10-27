(** {3 A Symbol for a Atom_threetied_conjugated_conjugated_conjugated.} *)

let nam_cod = "atom_threetied_conjugated_conjugated_conjugated_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | A3cccs_t.C_ccc -> "c_ccc"
  | A3cccs_t.N_ccc -> "n_ccc"
;;


let print ppf = function
  | A3cccs_v  ->
      .print ppf 
  | A3cccs_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let c_ccc = A3cccs_t.C_ccc;;

let n_ccc = A3cccs_t.N_ccc;;



(** created by ./generator atom_threetied_conjugated_conjugated_conjugated v symbol at 11:8 26 Apr 2011. *)



