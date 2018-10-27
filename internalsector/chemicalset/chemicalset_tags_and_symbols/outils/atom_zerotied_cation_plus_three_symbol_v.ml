(** {3 A Symbol for a Atom_zerotied_cation_plus_three.} *)

let nam_cod = "atom_zerotied_cation_plus_three_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | A0cp3s_t.Fe_3p -> "fe_3p"
  | A0cp3s_t.Ni_3p -> "ni_3p"
;;


let print ppf = function
  | A0cp3s_v  ->
      .print ppf 
  | A0cp3s_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let fe_3p = A0cp3s_t.Fe_3p;;

let ni_3p = A0cp3s_t.Ni_3p;;



(** created by ./generator atom_zerotied_cation_plus_three v symbol at 11:8 26 Apr 2011. *)



