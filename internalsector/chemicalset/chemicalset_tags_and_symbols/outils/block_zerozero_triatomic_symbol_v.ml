(** {3 A Symbol for a Block_zerozero_triatomic.} *)

let nam_cod = "block_zerozero_triatomic_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | B00ts_t.Co2_zz -> "co2_zz"
  | B00ts_t.No2_zz -> "no2_zz"
  | B00ts_t.Oh2_zz -> "oh2_zz"
  | B00ts_t.Sh2_zz -> "sh2_zz"
  | B00ts_t.So2_zz -> "so2_zz"
;;


let print ppf = function
  | B00ts_v  ->
      .print ppf 
  | B00ts_v  ->
      .print ppf 
  | B00ts_v  ->
      .print ppf 
  | B00ts_v  ->
      .print ppf 
  | B00ts_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let co2_zz = B00ts_t.Co2_zz;;

let no2_zz = B00ts_t.No2_zz;;

let oh2_zz = B00ts_t.Oh2_zz;;

let sh2_zz = B00ts_t.Sh2_zz;;

let so2_zz = B00ts_t.So2_zz;;



(** created by ./generator block_zerozero_triatomic v symbol at 11:8 26 Apr 2011. *)



