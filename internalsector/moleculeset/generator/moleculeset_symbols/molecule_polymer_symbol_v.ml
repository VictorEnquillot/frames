
(** {3 The functionalities for a Symbol for a Molecule_polymer.} *)

let nam_cod = "molecule_polymer_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Molecule_polymer_symbol_t.Polypeptide_fromid _ -> "Polypeptide_fromid"
  | Molecule_polymer_symbol_t.Molecule_polymer_fromid _ -> "Molecule_polymer_fromid"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let polypeptide_fromid s = Molecule_polymer_symbol_t.Polypeptide_fromid s;;

let molecule_polymer_fromid s = Molecule_polymer_symbol_t.Molecule_polymer_fromid s;;


(** {6 Making} *)


let make nam s =
  match String.capitalize nam with
  | "Polypeptide_fromid" -> polypeptide_fromid s
  | "Molecule_polymer_fromid" -> molecule_polymer_fromid s
  | _ ->
    failwith "Not_Molecule_polymer_symbol:molecule_polymer_symbol_v:make"
;;


(** {6 Extracting} *)



(** {6 Querying} *)




(** created by ./generator molecule_polymer implementation symbol at 15:46 22 May 2012. *)



