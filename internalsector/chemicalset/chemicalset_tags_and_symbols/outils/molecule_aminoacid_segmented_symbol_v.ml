(** {3 A Symbol for a Molecule_aminoacid_segmented.} *)

let nam_cod = "molecule_aminoacid_segmented_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v



let name = function
  | Mass_t.Glycine -> "glycine"
;;


let print ppf = function
  | Mass_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

let glycine = Mass_t.Glycine;;



(** created by ./generator molecule_aminoacid_segmented v symbol at 11:8 26 Apr 2011. *)



