(** {3 A Symbol for a Atom_threetied_single_single_double.} *)

let nam_cod = "atom_threetied_single_single_double_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | A3ssds_t.C_ssd -> "c_ssd"
  | A3ssds_t.N_sdd -> "n_sdd"
  | A3ssds_t.S_sdd -> "s_sdd"
;;


let print ppf = function
  | A3ssds_v  ->
      .print ppf 
  | A3ssds_v  ->
      .print ppf 
  | A3ssds_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let c_ssd = A3ssds_t.C_ssd;;

let n_sdd = A3ssds_t.N_sdd;;

let s_sdd = A3ssds_t.S_sdd;;



(** created by ./generator atom_threetied_single_single_double v symbol at 11:8 26 Apr 2011. *)



