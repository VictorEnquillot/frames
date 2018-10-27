(** {3 Block Formula.} *)

open Make_test_v;;

testing "Block_none_singlesinglesinglesingle_tetrahedral_formula_v
   tblock_none_singlesinglesinglesingle_tetrahedral_formula_v.ml";;

(* toplevel 
   #use "tblock_none_singlesinglesinglesingle_tetrahedral_formula_v.ml";;
*)

let sym_nst = Block_none_singlesinglesinglesingle_tetrahedral_symbol_v.n_c_ssss;;  
let for_nst = Block_none_singlesinglesinglesingle_tetrahedral_formula_v.make sym_nst;;

test_number 1 (
for_nst
(* (Atom_core_symbol_t.atom_core_symbol Mark_t.mark, 'a)
  Capped_list_t.capped_list *)
=
((Atom_core_symbol_t.Atom_fourtied_symbol Atom_fourtied_symbol_t.C_ssss,
  Vsepr_index_t.Tetrahedral_index Vsepr_index_t.Tet_c),
 [])
);;

