(** {3 The functionalities for a Symbol for a Molecule_aminoacid_segmented.} *)

let nam_cod = "molecule_aminoacid_segmented_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Molecule_aminoacid_segmented_symbol_t.Glycine -> "glycine"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let glycine = Molecule_aminoacid_segmented_symbol_t.Glycine;;


(** {6 Making} *)


let make s = function
  | "glycine" -> glycine
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator molecule_aminoacid_segmented implementation symbol at 15:48 8 Mar 2012. *)



