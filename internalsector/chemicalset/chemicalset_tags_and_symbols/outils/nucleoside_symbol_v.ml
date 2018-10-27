(** {3 A Symbol for a Nucleoside.} *)

let nam_cod = "nucleoside_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | Nss_t.Ribonucleoside -> "ribonucleoside"
  | Nss_t.Deoxyribonucleoside -> "deoxyribonucleoside"
;;


let print ppf = function
  | Nss_v  ->
      .print ppf 
  | Nss_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let ribonucleoside = Nss_t.Ribonucleoside;;

let deoxyribonucleoside = Nss_t.Deoxyribonucleoside;;



(** created by ./generator nucleoside v symbol at 11:8 26 Apr 2011. *)



