(** {3 Tests for Fagment_formula_constrained_v.} *)

open Make_test_v;;

(** {3 Fragment Symbol Formula_Constrained.} *)

testing "Fragment_formula_constrained_v";;

(* toplevel 
   #use "tfragment_formula_constrained_v.ml";; 
*)


(** Closed_fragment Zz_C_h_3Ccoc2 Acetate anion *)

let foc_smb_frg_1 = Fragment_formula_constrained_v.retrieve Fragment_symbol_v.zz_c_h_3ccoc2;;

test_number 1 (true);;
(*
test_number 2 (
frc_smb_frg_1 
(* : Fragment_formula_constrained_t.fragment_formula_constrained *)
=
  Fragment_formula_constrained_t.Capped_leafbooted_list
   (Fragment_formula_constrained_t.Block_symbol_t.Zeroonesingle_block_symbol
     Fragment_formula_constrained_t.Block_symbol_t.Zos_C_h_3,
    [],
    Fragment_formula_constrained_t.Block_symbol_t.Onesinglezero_block_symbol
     Fragment_formula_constrained_t.Block_symbol_t.Osz_Ccoc2)
);;  

(** Halfbridge Hbc *)

test_number 3 (
Fragment_formula_constrained_v.retrieve Fragment_symbol_v.hbc 
(* : Fragment_formula_constrained_t.fragment_formula_constrained *)
=
Fragment_formula_constrained_t.Leaf_fragment
 ([],
  Fragment_formula_constrained_t.Block_symbol_t.Onezerohalfbridge_block_symbol
   Fragment_formula_constrained_t.Block_symbol_t.Halfbridge_symbol_t.Hbc)
);;

(** -Ch2C< Ethcar *)

test_number 4 (
Fragment_formula_constrained_v.retrieve Fragment_symbol_v.ethcar 
(*  : Fragment_formula_constrained_t.fragment_formula_constrained *)
 =
Fragment_formula_constrained_t.Forkbooted_list
 ([Fragment_formula_constrained_t.Block_symbol_t.Onesingleonesingle_block_symbol
    Fragment_formula_constrained_t.Block_symbol_t.Osos_C_h_2],
  Fragment_formula_constrained_t.Block_symbol_t.Onebifork_block_symbol
   (Fragment_formula_constrained_t.Block_symbol_t.Onesinglebiforksinglesingle_block_symbol
     Fragment_formula_constrained_t.Block_symbol_t.Osbss_Cc))
);;

(** -Ch2Ch2SCh3 Dimethenesmethyl *)

test_number 5 (
 Fragment_formula_constrained_v.retrieve Fragment_symbol_v.dimethenesmethyl
(* : Fragment_formula_constrained_t.fragment_formula_constrained *)
 =
Fragment_formula_constrained_t.Leaf_fragment
 ([Fragment_formula_constrained_t.Block_symbol_t.Onesingleonesingle_block_symbol
    Fragment_formula_constrained_t.Block_symbol_t.Osos_C_h_2;
   Fragment_formula_constrained_t.Block_symbol_t.Onesingleonesingle_block_symbol
    Fragment_formula_constrained_t.Block_symbol_t.Osos_C_h_2;
   Fragment_formula_constrained_t.Block_symbol_t.Onesingleonesingle_block_symbol
    Fragment_formula_constrained_t.Block_symbol_t.Osos_S_],
  Fragment_formula_constrained_t.Block_symbol_t.Onesinglezero_block_symbol
   Fragment_formula_constrained_t.Block_symbol_t.Osz_C_h_3)
);;

(** Block Symbol : -Ch3 Methyl *)

test_number 6 (
 Fragment_formula_constrained_v.retrieve Fragment_symbol_v.methyl
(* : Fragment_formula_constrained_t.fragment_formula_constrained *)
 =
Fragment_formula_constrained_t.Leaf_fragment
 ([],
  Fragment_formula_constrained_t.Block_symbol_t.Onesinglezero_block_symbol
   Fragment_formula_constrained_t.Block_symbol_t.Osz_C_h_3)
);;

*)
