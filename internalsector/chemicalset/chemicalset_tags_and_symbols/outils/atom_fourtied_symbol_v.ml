(** {3 A Symbol for a Atom_fourtied.} *)

let nam_cod = "atom_fourtied_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | A4s_t.C_4s -> "c_4s"
  | A4s_t.N_4s -> "n_4s"
  | A4s_t.S_4s -> "s_4s"
  | A4s_t.Xe_4s -> "xe_4s"
;;


let print ppf = function
  | A4s_v  ->
      .print ppf 
  | A4s_v  ->
      .print ppf 
  | A4s_v  ->
      .print ppf 
  | A4s_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let c_4s = A4s_t.C_4s;;

let n_4s = A4s_t.N_4s;;

let s_4s = A4s_t.S_4s;;

let xe_4s = A4s_t.Xe_4s;;



(** created by ./generator atom_fourtied v symbol at 11:8 26 Apr 2011. *)



