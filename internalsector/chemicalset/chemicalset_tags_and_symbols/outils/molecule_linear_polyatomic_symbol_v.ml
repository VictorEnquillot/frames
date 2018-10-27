(** {3 A Symbol for a Molecule_linear_polyatomic.} *)

let nam_cod = "molecule_linear_polyatomic_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | Mlps_t.Ethane -> "ethane"
  | Mlps_t.Propane -> "propane"
  | Mlps_t.Butane -> "butane"
;;


let print ppf = function
  | Mlps_v  ->
      .print ppf 
  | Mlps_v  ->
      .print ppf 
  | Mlps_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let ethane = Mlps_t.Ethane;;

let propane = Mlps_t.Propane;;

let butane = Mlps_t.Butane;;



(** created by ./generator molecule_linear_polyatomic v symbol at 11:8 26 Apr 2011. *)



