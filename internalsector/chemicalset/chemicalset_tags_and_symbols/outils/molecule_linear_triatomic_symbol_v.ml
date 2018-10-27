(** {3 A Symbol for a Molecule_linear_triatomic.} *)

let nam_cod = "molecule_linear_triatomic_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | Mlts_t.Hydrogensulfide -> "hydrogensulfide"
  | Mlts_t.Water -> "water"
;;


let print ppf = function
  | Mlts_v  ->
      .print ppf 
  | Mlts_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let hydrogensulfide = Mlts_t.Hydrogensulfide;;

let water = Mlts_t.Water;;



(** created by ./generator molecule_linear_triatomic v symbol at 11:8 26 Apr 2011. *)



