(** {3 A Symbol for a Pyrimidine_base.} *)

let nam_cod = "pyrimidine_base_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | Pys_t.Cytosine -> "Cytosine"
  | Pys_t.Uracil -> "Uracil"
  | Pys_t.Thymine -> "Thymine"
;;


let print ppf = function
  | Pys_v  ->
      .print ppf 
  | Pys_v  ->
      .print ppf 
  | Pys_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let Cytosine = Pys_t.Cytosine;;

let Uracil = Pys_t.Uracil;;

let Thymine = Pys_t.Thymine;;



(** created by ./generator pyrimidine_base v symbol at 11:8 26 Apr 2011. *)



