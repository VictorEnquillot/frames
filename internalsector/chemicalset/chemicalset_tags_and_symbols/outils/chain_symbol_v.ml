(** {3 A Symbol for a Chain.} *)

let nam_cod = "chain_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | Chs_t.Blank -> "Blank"
  | Chs_t.A -> "A"
  | Chs_t.B -> "B"
  | Chs_t.C -> "C"
  | Chs_t.D -> "D"
  | Chs_t.E -> "E"
  | Chs_t.F -> "F"
  | Chs_t.G -> "G"
  | Chs_t.H -> "H"
;;


let print ppf = function
  | Chs_v  ->
      .print ppf 
  | Chs_v  ->
      .print ppf 
  | Chs_v  ->
      .print ppf 
  | Chs_v  ->
      .print ppf 
  | Chs_v  ->
      .print ppf 
  | Chs_v  ->
      .print ppf 
  | Chs_v  ->
      .print ppf 
  | Chs_v  ->
      .print ppf 
  | Chs_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let Blank = Chs_t.Blank;;

let A = Chs_t.A;;

let B = Chs_t.B;;

let C = Chs_t.C;;

let D = Chs_t.D;;

let E = Chs_t.E;;

let F = Chs_t.F;;

let G = Chs_t.G;;

let H = Chs_t.H;;



(** created by ./generator chain v symbol at 11:8 26 Apr 2011. *)



