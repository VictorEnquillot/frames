(** {3 A Symbol for a Bond.} *)

let nam_cod = "bond_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | Bns_t.Bond_covalent -> "bond_covalent"
  | Bns_t.Bond_hydrogen -> "bond_hydrogen"
  | Bns_t.Bond_ionic -> "bond_ionic"
;;


let print ppf = function
  | Bns_v  ->
      .print ppf 
  | Bns_v  ->
      .print ppf 
  | Bns_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let bond_covalent = Bns_t.Bond_covalent;;

let bond_hydrogen = Bns_t.Bond_hydrogen;;

let bond_ionic = Bns_t.Bond_ionic;;



(** created by ./generator bond v symbol at 11:8 26 Apr 2011. *)



