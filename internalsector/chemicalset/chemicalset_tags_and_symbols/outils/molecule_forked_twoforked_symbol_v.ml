(** {3 A Symbol for a Molecule_forked_twoforked.} *)

let nam_cod = "molecule_forked_twoforked_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | Mf2s_t.Fake_2 -> "Fake_2"
;;


let print ppf = function
  | Mf2s_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let Fake_2 = Mf2s_t.Fake_2;;



(** created by ./generator molecule_forked_twoforked v symbol at 11:8 26 Apr 2011. *)



