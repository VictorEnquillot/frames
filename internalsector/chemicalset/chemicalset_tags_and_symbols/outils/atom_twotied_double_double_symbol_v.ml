(** {3 A Symbol for a Atom_twotied_double_double.} *)

let nam_cod = "atom_twotied_double_double_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | A2dds_t.C_dd -> "c_dd"
  | A2dds_t.S_dd -> "s_dd"
;;


let print ppf = function
  | A2dds_v  ->
      .print ppf 
  | A2dds_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let c_dd = A2dds_t.C_dd;;

let s_dd = A2dds_t.S_dd;;



(** created by ./generator atom_twotied_double_double v symbol at 11:8 26 Apr 2011. *)



