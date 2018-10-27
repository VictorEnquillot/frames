(** {3 A Symbol for a Molecule_linear_tetratomic.} *)

let nam_cod = "molecule_linear_tetratomic_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | Mlqs_t.Ammonia -> "ammonia"
;;


let print ppf = function
  | Mlqs_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let ammonia = Mlqs_t.Ammonia;;



(** created by ./generator molecule_linear_tetratomic v symbol at 11:8 26 Apr 2011. *)



