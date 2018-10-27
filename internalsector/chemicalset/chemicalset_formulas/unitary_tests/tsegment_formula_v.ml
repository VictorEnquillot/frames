(** {3 Tests for Fagment_formula_v.} *)

open Make_test_v;;

(** {3 Segment Symbol Formula.} *)

testing "Segment_formula_v";;

(* toplevel 
   #use "tsegment_formula_v.ml";; 
*)


(** Gly n-terminal *) 

let sym_gly_n = Polypeptide_sidegroup_symbol_v.peptideca_glycine_nterminal_neutral;;
let for_gly_n = Sgf_v.make sym_gly_n;;

(** Gly embedded *) 

let sym_gly_e = Polypeptide_sidegroup_symbol_v.peptideca_glycine_buried;;
let for_gly_e = Sgf_v.make sym_gly_e;;

test_number 1 (true);;
(*
test_number 2 (
frm_gly_n
(* : Segment_formula_t.segment_formula *)
=
[(Segment_formula_t.Block_symbol_t.Block_zeroone_symbol
   (Segment_formula_t.Block_symbol_t.Zeroonesingle_block_symbol
     Segment_formula_t.Block_symbol_t.Zos_N_h_2),
  Segment_formula_t.Sole_index_t.Sequential_index Segment_formula_t.Sole_index_t.Head);
 (Segment_formula_t.Block_symbol_t.Block_oneone_symbol
   (Segment_formula_t.Block_symbol_t.Onesingleonesingle_block_symbol
     Segment_formula_t.Block_symbol_t.Osos_C_h_2),
  Segment_formula_t.Sole_index_t.Sequential_index Segment_formula_t.Sole_index_t.Tail)]
);;

test_number 3 (
Sgf_v.name for_gly_n
=
"(Zos_N_h_2,head)(Osos_C_h_2,tail)"
);;

test_number 4 (
Sgf_v.atom_tag_list_off_segment_formula for_gly_n 
(* : (Atom_symbol_t.atom_symbol, Sole_index_t.sole_index)
    Doublet_list_t.doublet_list *)
=
[(Atom_symbol_t.Atom_core_symbol
   (Atom_symbol_t.Threetied_atom_symbol
     (Atom_symbol_t.Sigma_threetied_atom_symbol
       (Atom_symbol_t.Single_sigma_threetied_atom_symbol Atom_symbol_t.Ssth_N))),
  Sole_index_t.Spherical_index
   (Sole_index_t.Spherical_pyramidal_index
     Sole_index_t.Sp_c));
 (Atom_symbol_t.Atom_onetied_symbol
   (Atom_symbol_t.Single_atom_onetied_symbol Atom_symbol_t.Slf_H),
  Sole_index_t.Spherical_index
   (Sole_index_t.Spherical_pyramidal_index
     Sole_index_t.Sp_r));
 (Atom_symbol_t.Atom_onetied_symbol
   (Atom_symbol_t.Single_atom_onetied_symbol Atom_symbol_t.Slf_H),
  Sole_index_t.Spherical_index
   (Sole_index_t.Spherical_pyramidal_index
     Sole_index_t.Sp_l));
 (Atom_symbol_t.Atom_core_symbol
   (Atom_symbol_t.Fourtied_atom_symbol Atom_symbol_t.Fo_C),
  Sole_index_t.Spherical_index
   (Sole_index_t.Spherical_tetrahedral_index
     Sole_index_t.St_c));
 (Atom_symbol_t.Atom_onetied_symbol
   (Atom_symbol_t.Single_atom_onetied_symbol Atom_symbol_t.Slf_H),
  Sole_index_t.Spherical_index
   (Sole_index_t.Spherical_tetrahedral_index
     Sole_index_t.St_l));
 (Atom_symbol_t.Atom_onetied_symbol
   (Atom_symbol_t.Single_atom_onetied_symbol Atom_symbol_t.Slf_H),
  Sole_index_t.Spherical_index
   (Sole_index_t.Spherical_tetrahedral_index
     Sole_index_t.St_r))]
);;

test_number 5 (
Sgf_v.atom_tag_list_off_segment_formula for_gly_n 
  =
[(Atom_symbol_v.ssth_n, Sole_index_v.spc); 
 (Atom_symbol_v.slf_h, Sole_index_v.spr); 
 (Atom_symbol_v.slf_h, Sole_index_v.spl); 
 (Atom_symbol_v.fo_c, Sole_index_v.stc);
 (Atom_symbol_v.slf_h, Sole_index_v.stl);
 (Atom_symbol_v.slf_h, Sole_index_v.str);
]
);;

test_number 6 (
Sgf_v.atom_symbol_list_off_segment_formula for_gly_n 
  =
[Atom_symbol_v.ssth_n; 
 Atom_symbol_v.slf_h; 
 Atom_symbol_v.slf_h; 
 Atom_symbol_v.fo_c;
 Atom_symbol_v.slf_h;
 Atom_symbol_v.slf_h;
]
);;

(* glycine embedded *)

test_number 7 (
 for_gly_e
(* : Segment_formula_t.segment_formula *)
=
[(Segment_formula_t.Block_symbol_t.Block_oneone_symbol
   (Segment_formula_t.Block_symbol_t.Onesingleonesingle_block_symbol
     Segment_formula_t.Block_symbol_t.Osos_Ccoc),
  Segment_formula_t.Sole_index_t.Sequential_index Segment_formula_t.Sole_index_t.Head);
 (Segment_formula_t.Block_symbol_t.Block_oneone_symbol
   (Segment_formula_t.Block_symbol_t.Onesingleonesingle_block_symbol
     Segment_formula_t.Block_symbol_t.Osos_Nch_),
  Segment_formula_t.Sole_index_t.Sequential_index
   (Segment_formula_t.Sole_index_t.Ordinal (Segment_formula_t.Sole_index_t.Ord_p.two)));
 (Segment_formula_t.Block_symbol_t.Block_oneone_symbol
   (Segment_formula_t.Block_symbol_t.Onesingleonesingle_block_symbol
     Segment_formula_t.Block_symbol_t.Osos_C_h_2),
  Segment_formula_t.Sole_index_t.Sequential_index Segment_formula_t.Sole_index_t.Tail)]
);;

test_number 8 (
Sgf_v.name for_gly_e
=
"(Osos_Ccoc,head)(Osos_Nch_,2)(Osos_C_h_2,tail)"
);;

test_number 9 (
Sgf_v.atom_tag_list_off_segment_formula for_gly_e
(* : (Atom_symbol_t.atom_symbol, Sole_index_t.sole_index)
    Doublet_list_t.doublet_list *)
=[(Atom_symbol_t.Atom_core_symbol
   (Atom_symbol_t.Threetied_atom_symbol
     (Atom_symbol_t.Nonsigma_threetied_atom_symbol
       (Atom_symbol_t.Singlenonsigma_threetied_atom_symbol
         Atom_symbol_t.Snth_C))),
  Sole_index_t.Planar_index
   (Sole_index_t.Planar_trigonal_index Sole_index_t.Pt_c));
 (Atom_symbol_t.Atom_onetied_symbol
   (Atom_symbol_t.Nonsigma_atom_onetied_symbol Atom_symbol_t.Nlf_O),
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
   (Atom_symbol_t.Fourtied_atom_symbol Atom_symbol_t.Fo_C),
  Sole_index_t.Spherical_index
   (Sole_index_t.Spherical_tetrahedral_index
     Sole_index_t.St_c));
 (Atom_symbol_t.Atom_onetied_symbol
   (Atom_symbol_t.Single_atom_onetied_symbol Atom_symbol_t.Slf_H),
  Sole_index_t.Spherical_index
   (Sole_index_t.Spherical_tetrahedral_index
     Sole_index_t.St_l));
 (Atom_symbol_t.Atom_onetied_symbol
   (Atom_symbol_t.Single_atom_onetied_symbol Atom_symbol_t.Slf_H),
  Sole_index_t.Spherical_index
   (Sole_index_t.Spherical_tetrahedral_index
     Sole_index_t.St_r))]
);;

test_number 10 (
Sgf_v.atom_tag_list_off_segment_formula for_gly_e
  =
[(Atom_symbol_v.snth_c, Sole_index_v.ptc) ; 
 (Atom_symbol_v.nlf_o, Sole_index_v.ptb);
 (Atom_symbol_v.snth_n, Sole_index_v.ptc);
 (Atom_symbol_v.slf_h, Sole_index_v.ptb); 
 (Atom_symbol_v.fo_c, Sole_index_v.stc);
 (Atom_symbol_v.slf_h, Sole_index_v.stl);
 (Atom_symbol_v.slf_h, Sole_index_v.str);
]
);;

test_number 11 (
Sgf_v.atom_symbol_list_off_segment_formula for_gly_e
=
[Atom_symbol_v.snth_c;
 Atom_symbol_v.nlf_o;
 Atom_symbol_v.snth_n;
 Atom_symbol_v.slf_h;
 Atom_symbol_v.fo_c;
 Atom_symbol_v.slf_h;
 Atom_symbol_v.slf_h;
]
);;
*)
