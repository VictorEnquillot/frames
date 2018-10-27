(** {3 A Symbol for a Molecule_dendrimer.} *)

let nam_cod = "molecule_dendrimer_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | Mds_t.Fake_d2 -> "Fake_d2"
;;


let print ppf = function
  | Mds_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let Fake_d2 = Mds_t.Fake_d2;;



(** created by ./generator molecule_dendrimer v symbol at 11:8 26 Apr 2011. *)



