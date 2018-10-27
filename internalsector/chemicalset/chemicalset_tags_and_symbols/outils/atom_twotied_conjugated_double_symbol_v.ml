(** {3 A Symbol for a Atom_twotied_conjugated_double.} *)

let nam_cod = "atom_twotied_conjugated_double_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | A2cds_t.C_cd -> "c_cd"
;;


let print ppf = function
  | A2cds_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let c_cd = A2cds_t.C_cd;;



(** created by ./generator atom_twotied_conjugated_double v symbol at 11:8 26 Apr 2011. *)



