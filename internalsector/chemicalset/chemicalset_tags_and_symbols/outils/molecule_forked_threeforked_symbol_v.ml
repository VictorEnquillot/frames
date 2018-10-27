(** {3 A Symbol for a Molecule_forked_threeforked.} *)

let nam_cod = "molecule_forked_threeforked_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | Mf3s_t.Fake_3 -> "Fake_3"
;;


let print ppf = function
  | Mf3s_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let Fake_3 = Mf3s_t.Fake_3;;



(** created by ./generator molecule_forked_threeforked v symbol at 11:8 26 Apr 2011. *)



