(** {3 A Symbol for a Nucleicacid.} *)

let nam_cod = "nucleicacid_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | Nus_t.Dna -> "Dna"
  | Nus_t.Rna -> "Rna"
;;


let print ppf = function
  | Nus_v  ->
      .print ppf 
  | Nus_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let Dna = Nus_t.Dna;;

let Rna = Nus_t.Rna;;



(** created by ./generator nucleicacid v symbol at 11:8 26 Apr 2011. *)



