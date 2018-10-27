(** {3 A Symbol for a Ribonucleotide_pyrimidinic.} *)

let nam_cod = "ribonucleotide_pyrimidinic_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | Rps_t.Uridine -> "Uridine"
  | Rps_t.Cytidine -> "Cytidine"
;;


let print ppf = function
  | Rps_v  ->
      .print ppf 
  | Rps_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let Uridine = Rps_t.Uridine;;

let Cytidine = Rps_t.Cytidine;;



(** created by ./generator ribonucleotide_pyrimidinic v symbol at 11:8 26 Apr 2011. *)



