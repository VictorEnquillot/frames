(** {3 Tests for Segment_formula_constrained_v.} *)

open Make_test_v;;

(** {3 Segment Formula Constrained.} *)

testing "Segment_formula_constrained_v";;

(* toplevel 
   #use "tsegment_formula_constrained_v.ml";; 
*)


(** Gly n-terminal *) 

let sym_gly_hh = Polypeptide_sidegroup_symbol_v.peptideca_glycine_nterminal_neutral_h;;
let sym_gly_h = Polypeptide_sidegroup_symbol_v.peptideca_glycine_nterminal_neutral;;
let foc_gly_h = Polypeptide_sidegroup_formula_constrained_v.retrieve sym_gly_h;;

(** Gly buried *) 

let sym_gly_bb = Polypeptide_sidegroup_symbol_v.peptideca_glycine_buried_b;;
let sym_gly_b = Polypeptide_sidegroup_symbol_v.peptideca_glycine_buried;;
let foc_gly_b = Polypeptide_sidegroup_formula_constrained_v.retrieve sym_gly_b;;

test_number 1 (
smb_gly_h (* : Segment_symbol_t.segment_symbol *)
=
Segment_symbol_t.Head_segment_symbol
 (Segment_symbol_t.Zeroone_segment_symbol Segment_symbol_t.Zo_N_h_2C_h_2)
);;  

test_number 2 (
frc_gly_h (* : Segment_formula_constrained_t.segment_formula_constrained *)
=
Segment_formula_constrained_t.Head_segment_formula_constrained
  ((Block_symbol_v.zo_n_h_2, Sole_index_v.head),
  [(Block_symbol_v.oo_c_h_2, Sole_index_v.tail)] )
);;

test_number 3 (
Polypeptide_sidegroup_formula_constrained_v.name foc_gly_h
=
"((Zos_N_h_2,head),(Osos_C_h_2,tail))"
);;

test_number 4 (
Polypeptide_sidegroup_formula_constrained_v.block_symbol_list_of_segment_symbol sym_gly_h 
(* : Block_symbol_t.block_symbol list *)
=
[Block_symbol_v.zos_n_h_2; Block_symbol_v.osos_c_h_2]
);;

test_number 5 (
smb_gly_b (* : Segment_symbol_t.segment_symbol *)
=
Segment_symbol_t.Buried_segment_symbol
 (Segment_symbol_t.Oneone_segment_symbol Segment_symbol_t.Oo_CcocNch_C_h_2)
);;  

test_number 6 (
frc_gly_b 
(* : Segment_formula_constrained_t.segment_symbol_formula_constrained *)
=
Segment_formula_constrained_t.Buried_segment_formula_constrained
 [(Block_symbol_v.oo_ccoc, Sole_index_v.head);
  (Block_symbol_v.oo_nch_, Sole_index_v.two);
  (Block_symbol_v.oo_c_h_2, Sole_index_v.tail)]
);;

test_number 7 (
Polypeptide_sidegroup_formula_constrained_v.name foc_gly_b
=
"(Osos_Ccoc,head); (Osos_Nch_,2); (Osos_C_h_2,tail)"
);;

test_number 8 (
Polypeptide_sidegroup_formula_constrained_v.block_symbol_list_of_segment_symbol sym_gly_b
(* : Block_symbol_t.block_oneone_symbol list *)
=
[Block_symbol_v.osos_ccoc; Block_symbol_v.osos_nch_; Block_symbol_v.osos_c_h_2]
);;
