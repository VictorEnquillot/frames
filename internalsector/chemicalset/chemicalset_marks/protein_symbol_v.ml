(** {3 The functionalities for a Symbol for a Protein.} *)

let nam_cod = "protein_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Protein_symbol_t.Protein_frompdbid _ -> "protein_frompdbid"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let protein_frompdbid s = Protein_symbol_t.Protein_frompdbid s;;


(** {6 Making} *)


let make = function
  | str -> Protein_symbol_t.Protein_frompdbid str
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator protein implementation symbol at 17:29 1 Mar 2012. *)



