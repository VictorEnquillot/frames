(** {3 The functionalities for a Symbol for a Residue_buried_segmented.} *)

let nam_cod = "residue_buried_segmented_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Residue_buried_segmented_symbol_t.Glycine -> "glycine"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let glycine = Residue_buried_segmented_symbol_t.Glycine;;


(** {6 Making} *)


let make = function
  | "glycine" -> glycine
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator residue_buried_segmented implementation symbol at 17:29 1 Mar 2012. *)



