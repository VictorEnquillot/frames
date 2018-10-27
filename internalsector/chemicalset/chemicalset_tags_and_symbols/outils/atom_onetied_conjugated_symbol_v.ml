(** {3 A Symbol for a Atom_onetied_conjugated.} *)

let nam_cod = "atom_onetied_conjugated_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | A1cs_t.O_c -> "o_c"
;;


let print ppf = function
  | A1cs_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let o_c = A1cs_t.O_c;;



(** created by ./generator atom_onetied_conjugated v symbol at 11:8 26 Apr 2011. *)



