(** {3 A Symbol for a Deoxyribonucleotide_purinic.} *)

let nam_cod = "deoxyribonucleotide_purinic_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | Dpus_t.Deoxyadenosine -> "Deoxyadenosine"
  | Dpus_t.Deoxyguanosine -> "Deoxyguanosine"
;;


let print ppf = function
  | Dpus_v  ->
      .print ppf 
  | Dpus_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let Deoxyadenosine = Dpus_t.Deoxyadenosine;;

let Deoxyguanosine = Dpus_t.Deoxyguanosine;;



(** created by ./generator deoxyribonucleotide_purinic v symbol at 11:8 26 Apr 2011. *)



