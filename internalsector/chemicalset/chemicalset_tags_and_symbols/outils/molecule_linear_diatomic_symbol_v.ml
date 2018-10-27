(** {3 A Symbol for a Molecule_linear_diatomic.} *)

let nam_cod = "molecule_linear_diatomic_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | Mlds_t.Carbonmonoxide -> "carbonmonoxide"
  | Mlds_t.Dihydrogen -> "dihydrogen"
  | Mlds_t.Dinitrogen -> "dinitrogen"
  | Mlds_t.Dioxygen -> "dioxygen"
  | Mlds_t.Hydrogenchloride -> "hydrogenchloride"
  | Mlds_t.Hydrogenfluoride -> "hydrogenfluoride"
;;


let print ppf = function
  | Mlds_v  ->
      .print ppf 
  | Mlds_v  ->
      .print ppf 
  | Mlds_v  ->
      .print ppf 
  | Mlds_v  ->
      .print ppf 
  | Mlds_v  ->
      .print ppf 
  | Mlds_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let carbonmonoxide = Mlds_t.Carbonmonoxide;;

let dihydrogen = Mlds_t.Dihydrogen;;

let dinitrogen = Mlds_t.Dinitrogen;;

let dioxygen = Mlds_t.Dioxygen;;

let hydrogenchloride = Mlds_t.Hydrogenchloride;;

let hydrogenfluoride = Mlds_t.Hydrogenfluoride;;



(** created by ./generator molecule_linear_diatomic v symbol at 11:8 26 Apr 2011. *)



