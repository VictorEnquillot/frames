(** {3 A Symbol for a Peptideca_buried_segmented.} *)

let nam_cod = "peptideca_buried_segmented_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | Pbss_t.Molecule_aminoacid_glycine -> "molecule_aminoacid_glycine"
;;


let print ppf = function
  | Pbss_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let molecule_aminoacid_glycine = Pbss_t.Molecule_aminoacid_glycine;;



(** created by ./generator peptideca_buried_segmented v symbol at 11:8 26 Apr 2011. *)



