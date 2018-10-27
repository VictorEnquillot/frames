(** {3 A Symbol for a Purine_base.} *)

let nam_cod = "purine_base_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | Pus_t.Adenosine -> "Adenosine"
  | Pus_t.Guanine -> "Guanine"
;;


let print ppf = function
  | Pus_v  ->
      .print ppf 
  | Pus_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let Adenosine = Pus_t.Adenosine;;

let Guanine = Pus_t.Guanine;;



(** created by ./generator purine_base v symbol at 11:8 26 Apr 2011. *)



