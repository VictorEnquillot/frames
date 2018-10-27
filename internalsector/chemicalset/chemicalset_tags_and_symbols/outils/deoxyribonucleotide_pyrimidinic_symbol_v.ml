(** {3 A Symbol for a Deoxyribonucleotide_pyrimidinic.} *)

let nam_cod = "deoxyribonucleotide_pyrimidinic_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | Dpys_t.Deoxyuridine -> "Deoxyuridine"
  | Dpys_t.Deoxycytidine -> "Deoxycytidine"
  | Dpys_t.Thymidine -> "Thymidine"
;;


let print ppf = function
  | Dpys_v  ->
      .print ppf 
  | Dpys_v  ->
      .print ppf 
  | Dpys_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let Deoxyuridine = Dpys_t.Deoxyuridine;;

let Deoxycytidine = Dpys_t.Deoxycytidine;;

let Thymidine = Dpys_t.Thymidine;;



(** created by ./generator deoxyribonucleotide_pyrimidinic v symbol at 11:8 26 Apr 2011. *)



