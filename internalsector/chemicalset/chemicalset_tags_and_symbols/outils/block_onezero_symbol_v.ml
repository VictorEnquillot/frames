(** {3 A Symbol for a Block_onezero.} *)

let nam_cod = "block_onezero_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | B10s_t.Onesinglezero -> "onesinglezero"
  | B10s_t.Oneconjugatedzero -> "oneconjugatedzero"
  | B10s_t.Onedoublelezero -> "onedoublelezero"
  | B10s_t.Onetriplezero -> "onetriplezero"
;;


let print ppf = function
  | B10s_v  ->
      .print ppf 
  | B10s_v  ->
      .print ppf 
  | B10s_v  ->
      .print ppf 
  | B10s_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let onesinglezero = B10s_t.Onesinglezero;;

let oneconjugatedzero = B10s_t.Oneconjugatedzero;;

let onedoublelezero = B10s_t.Onedoublelezero;;

let onetriplezero = B10s_t.Onetriplezero;;



(** created by ./generator block_onezero v symbol at 11:8 26 Apr 2011. *)



