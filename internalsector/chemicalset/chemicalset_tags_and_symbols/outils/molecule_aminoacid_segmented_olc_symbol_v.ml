(** {3 A Symbol for a Molecule_aminoacid_segmented_olc.} *)

let nam_cod = "molecule_aminoacid_segmented_olc_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | Masos_t.G -> "g"
;;


let print ppf = function
  | Masos_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let g = Masos_t.G;;



(** created by ./generator molecule_aminoacid_segmented_olc v symbol at 11:8 26 Apr 2011. *)



