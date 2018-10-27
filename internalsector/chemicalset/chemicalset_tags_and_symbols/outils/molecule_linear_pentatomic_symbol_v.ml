(** {3 A Symbol for a Molecule_linear_pentatomic.} *)

let nam_cod = "molecule_linear_pentatomic_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | Mlcs_t.Methane -> "methane"
;;


let print ppf = function
  | Mlcs_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let methane = Mlcs_t.Methane;;



(** created by ./generator molecule_linear_pentatomic v symbol at 11:8 26 Apr 2011. *)



