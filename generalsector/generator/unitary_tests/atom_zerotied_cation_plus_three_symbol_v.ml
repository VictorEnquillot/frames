(** {3 A Symbol for a Atom_zerotied_cation_plus_three.} *)

let nam_cod = "atom_zerotied_cation_plus_three_symbol_v.ml";;


(** {6 Modules.} *)


module A0cp3s_t = Atom_zerotied_cation_plus_three_symbol_t



(** {6 Naming.} *)

let name = function
  | A0cp3s_t.Fe_3p -> "fe_3p"
  | A0cp3s_t.Ni_3p -> "ni_3p"
;;


(** {6 Printing.} *)

let print ppf = function
  | A0cp3s_t.Fe_3p  ->
      .print ppf 
  | A0cp3s_t.Ni_3p  ->
      .print ppf 
;;


(** {6 Extracting.} *)



(** {6 Querying.} *)



(** {6 Upgrading.} *)


let fe_3p = atom_zerotied_cation_plus_three_symbol_of_atom_zerotied_cation_plus_three_symbol A0cp3s_t.Fe_3p;;

let ni_3p = atom_zerotied_cation_plus_three_symbol_of_atom_zerotied_cation_plus_three_symbol A0cp3s_t.Ni_3p;;



(** created by ./generator atom_zerotied_cation_plus_three v symbol at 18:46 11 May 2011. *)



