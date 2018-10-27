(** {3 A Symbol for a Molecule_aminoacid_segmented_tlc.} *)

let nam_cod = "molecule_aminoacid_segmented_tlc_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | Masts_t.Gly -> "gly"
;;


let print ppf = function
  | Masts_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let gly = Masts_t.Gly;;



(** created by ./generator molecule_aminoacid_segmented_tlc v symbol at 11:8 26 Apr 2011. *)



