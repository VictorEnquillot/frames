(** {3 A Symbol for a Ribonucleotide_purinic.} *)

let nam_cod = "ribonucleotide_purinic_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | Rpus_t.Adenosine -> "Adenosine"
  | Rpus_t.Guanosine -> "Guanosine"
;;


let print ppf = function
  | Rpus_v  ->
      .print ppf 
  | Rpus_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let Adenosine = Rpus_t.Adenosine;;

let Guanosine = Rpus_t.Guanosine;;



(** created by ./generator ribonucleotide_purinic v symbol at 11:8 26 Apr 2011. *)



