(** {3 Tests for Fagment_formula_v.} *)

open Make_test_v;;

(** {3 Fragment Symbol Formula.} *)

testing "Fragment_formula_v";;

(* toplevel 
   #use "tfragment_formula_v.ml";; 
*)


(** Block Symbol : -Ch3 *)

let sym_frg_ch3 = Fragment_symbol_v.methyl;; 
let for_frg_ch3 = Frf_v.make sym_frg_ch3;;

(** -ChNhC< *)

let sym_frg_a = Fragment_symbol_v.cch_nch_cc;;
let for_frg_a = Frf_v.make sym_frg_a;;

test_number 1 (
 for_frg_ch3 (* : Fragment_formula_t.fragment_formula *)
=
  [(Block_symbol_v.methyl, Sole_index_v.tail)]
);;

test_number 2 (
Frf_v.name for_frg_ch3
=
"(Osz_C_h_3,tail)"
);;

test_number 3 (
Frf_v.atom_tag_list_off_fragment_formula for_frg_ch3
(* : (Atom_symbol_t.atom_symbol, Sole_index_t.sole_index)
    Doublet_list_t.doublet_list *)
=
[(Atom_symbol_t.Atom_core_symbol
   (Atom_symbol_t.Fourtied_atom_symbol Atom_symbol_t.Fo_C),
  Sole_index_t.Spherical_index
   (Sole_index_t.Spherical_tetrahedral_index
     Sole_index_t.St_c));
 (Atom_symbol_t.Atom_onetied_symbol
   (Atom_symbol_t.Single_atom_onetied_symbol Atom_symbol_t.Slf_H),
  Sole_index_t.Spherical_index
   (Sole_index_t.Spherical_tetrahedral_index
     Sole_index_t.St_o));
 (Atom_symbol_t.Atom_onetied_symbol
   (Atom_symbol_t.Single_atom_onetied_symbol Atom_symbol_t.Slf_H),
  Sole_index_t.Spherical_index
   (Sole_index_t.Spherical_tetrahedral_index
     Sole_index_t.St_r));
 (Atom_symbol_t.Atom_onetied_symbol
   (Atom_symbol_t.Single_atom_onetied_symbol Atom_symbol_t.Slf_H),
  Sole_index_t.Spherical_index
   (Sole_index_t.Spherical_tetrahedral_index
     Sole_index_t.St_l))]
);;

test_number 4 (
Frf_v.atom_tag_list_off_fragment_formula for_frg_ch3
(* : (Atom_symbol_t.atom_symbol, Sole_index_t.sole_index)
    Doublet_list_t.doublet_list *)
=
[
 (Atom_symbol_v.fo_c, Sole_index_v.stc);
 (Atom_symbol_v.slf_h, Sole_index_v.sto);
 (Atom_symbol_v.slf_h, Sole_index_v.str);
 (Atom_symbol_v.slf_h, Sole_index_v.stl);
]
);;

test_number 5 (
Frf_v.atom_symbol_list_off_fragment_formula for_frg_ch3
(* : Atom_symbol_t.atom_symbol list *) 
=
[
 Atom_symbol_v.fo_c;
 Atom_symbol_v.slf_h;
 Atom_symbol_v.slf_h;
 Atom_symbol_v.slf_h;
]
);;

test_number 6 (
 for_frg_a (* : Fragment_formula_t.fragment_formula *)
=
[
 (Block_symbol_v.osos_cch_, Sole_index_v.head);
 (Block_symbol_v.osos_nch_, Sole_index_v.two);
 (Block_symbol_v.osbss_cc, Sole_index_v.tail);
]
);;

test_number 7 (
Frf_v.name for_frg_a
=
"(Osos_Cch_,head)(Osos_Nch_,2)(Osbss_Cc,tail)"
);;

test_number 8 (
Frf_v.atom_tag_list_off_fragment_formula for_frg_a
(* : (Atom_symbol_t.atom_symbol, Sole_index_t.sole_index)
    Doublet_list_t.doublet_list *)
=
[(Atom_symbol_t.Atom_core_symbol
   (Atom_symbol_t.Threetied_atom_symbol
     (Atom_symbol_t.Nonsigma_threetied_atom_symbol
       (Atom_symbol_t.Singlenonsigma_threetied_atom_symbol
         Atom_symbol_t.Snth_C))),
  Sole_index_t.Planar_index
   (Sole_index_t.Planar_trigonal_index Sole_index_t.Pt_c));
 (Atom_symbol_t.Atom_onetied_symbol
   (Atom_symbol_t.Single_atom_onetied_symbol Atom_symbol_t.Slf_H),
  Sole_index_t.Planar_index
   (Sole_index_t.Planar_trigonal_index Sole_index_t.Pt_b));
 (Atom_symbol_t.Atom_core_symbol
   (Atom_symbol_t.Threetied_atom_symbol
     (Atom_symbol_t.Nonsigma_threetied_atom_symbol
       (Atom_symbol_t.Singlenonsigma_threetied_atom_symbol
         Atom_symbol_t.Snth_N))),
  Sole_index_t.Planar_index
   (Sole_index_t.Planar_trigonal_index Sole_index_t.Pt_c));
 (Atom_symbol_t.Atom_onetied_symbol
   (Atom_symbol_t.Single_atom_onetied_symbol Atom_symbol_t.Slf_H),
  Sole_index_t.Planar_index
   (Sole_index_t.Planar_trigonal_index Sole_index_t.Pt_b));
 (Atom_symbol_t.Atom_core_symbol
   (Atom_symbol_t.Threetied_atom_symbol
     (Atom_symbol_t.Nonsigma_threetied_atom_symbol
       (Atom_symbol_t.Singlenonsigma_threetied_atom_symbol
         Atom_symbol_t.Snth_C))),
  Sole_index_t.Planar_index
   (Sole_index_t.Planar_trigonal_index Sole_index_t.Pt_c))]
);;

test_number 9 (
Frf_v.atom_tag_list_off_fragment_formula for_frg_a
(* : (Atom_symbol_t.atom_symbol, Sole_index_t.sole_index)
    Doublet_list_t.doublet_list *)
=
[
 (Atom_symbol_v.snth_c, Sole_index_v.ptc);
 (Atom_symbol_v.slf_h, Sole_index_v.ptb);
 (Atom_symbol_v.snth_n, Sole_index_v.ptc);
 (Atom_symbol_v.slf_h, Sole_index_v.ptb);
 (Atom_symbol_v.snth_c, Sole_index_v.ptc);
]
);;

test_number 10 (
Frf_v.atom_symbol_list_off_fragment_formula for_frg_a
(* : Atom_symbol_t.atom_symbol list *) 
=
[
 Atom_symbol_v.snth_c;
 Atom_symbol_v.slf_h;
 Atom_symbol_v.snth_n;
 Atom_symbol_v.slf_h;
 Atom_symbol_v.snth_c;
]
);;

