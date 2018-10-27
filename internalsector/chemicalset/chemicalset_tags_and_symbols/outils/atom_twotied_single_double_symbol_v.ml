(** {3 A Symbol for a Atom_twotied_single_double.} *)

let nam_cod = "atom_twotied_single_double_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | A2sds_t.N_sd -> "n_sd"
;;


let print ppf = function
  | A2sds_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let n_sd = A2sds_t.N_sd;;



(** created by ./generator atom_twotied_single_double v symbol at 11:8 26 Apr 2011. *)



