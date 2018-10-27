(** {3 A Symbol for a Molecule_bridged.} *)

let nam_cod = "molecule_bridged_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | Mbs_t.Fake_b -> "Fake_b"
  | Mbs_t.Benzene -> "Benzene"
  | Mbs_t.Phenol -> "Phenol"
  | Mbs_t.Pyrrole -> "Pyrrole"
;;


let print ppf = function
  | Mbs_v  ->
      .print ppf 
  | Mbs_v  ->
      .print ppf 
  | Mbs_v  ->
      .print ppf 
  | Mbs_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let Fake_b = Mbs_t.Fake_b;;

let Benzene = Mbs_t.Benzene;;

let Phenol = Mbs_t.Phenol;;

let Pyrrole = Mbs_t.Pyrrole;;



(** created by ./generator molecule_bridged v symbol at 11:8 26 Apr 2011. *)



