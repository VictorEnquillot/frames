(** {3 Glycine Polypeptide Sidegroup Formula Constrained.} *)

open Make_test_v;;

testing "Glycine Polypeptide_sideroup_formula_constrained_v";;

(* toplevel 
   #use "tglycine_polypeptide_sidegroup_formula_constrained_v.ml";; 
*)


(* Polypeptide_sidegroup Symbol *)

let sym_ama = Molecule_aminoacid_symbol_v.glycine;;

test_raises_some_failure Polypeptide_sidegroup_symbol_v.make sym_ama;;



