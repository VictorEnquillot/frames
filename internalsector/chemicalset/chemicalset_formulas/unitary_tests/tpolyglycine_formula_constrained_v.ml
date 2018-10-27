(** {3 Polyglycine Formula Constrained.} *)

open Make_test_v;;

testing "Polyglycine_formula_constrained_v";;

(* toplevel 
   #use "tpolyglycine_formula_constrained_v.ml";; 
*)


(* Polypeptide Symbol *)

let sym_plp = Polypeptide_symbol_v.polyglycine_symbol_of_count Index_p.three;;

(* Polypeptide Symbol Formula  *)

let foc_plp = Polypeptide_formula_constrained_v.retrieve sym_plp;;

test_number 1 (
Polypeptide_sequence_v.name (Polypeptide_sequence_v.make sym_plp)
=
"GGG"
);;

test_number 2 (
Polypeptide_formula_constrained_v.name foc_plp 
(* : string *)
  =
"((Gn,head),(G,2)(G,3)(G,4),(Coo-,tail))"
);;

test_number 3 (
frc_plp
(* : Polypeptide_formula_constrained_t.polypeptide_formula_constrained *)
=
Polypeptide_formula_constrained_t.Polyglycine
 ((Polypeptide_formula_constrained_t.Polyglycine_formula_constrained_t.Peptideca_nterminal_tag_t.Peptideca_nterminal_symbol_t.Glycine
    Polypeptide_formula_constrained_t.Polyglycine_formula_constrained_t.Peptideca_nterminal_tag_t.Peptideca_nterminal_symbol_t.Glycine_neutral,
   
Polypeptide_formula_constrained_t.Polyglycine_formula_constrained_t.Peptideca_nterminal_tag_t.Sole_index_t.Sequential_index
    Polypeptide_formula_constrained_t.Polyglycine_formula_constrained_t.Peptideca_nterminal_tag_t.Sole_index_t.Head),
  [(Polypeptide_formula_constrained_t.Polyglycine_formula_constrained_t.Peptideca_buried_tag_t.Peptideca_buried_symbol_t.Glycine,
    Polypeptide_formula_constrained_t.Polyglycine_formula_constrained_t.Peptideca_buried_tag_t.Sole_index_t.Sequential_index
     (Polypeptide_formula_constrained_t.Polyglycine_formula_constrained_t.Peptideca_buried_tag_t.Sole_index_t.Ordinal
       (Polypeptide_formula_constrained_t.Polyglycine_formula_constrained_t.Peptideca_buried_tag_t.Sole_index_t.Ord_p.make 2)));
   (Polypeptide_formula_constrained_t.Polyglycine_formula_constrained_t.Peptideca_buried_tag_t.Peptideca_buried_symbol_t.Glycine,
    Polypeptide_formula_constrained_t.Polyglycine_formula_constrained_t.Peptideca_buried_tag_t.Sole_index_t.Sequential_index
     (Polypeptide_formula_constrained_t.Polyglycine_formula_constrained_t.Peptideca_buried_tag_t.Sole_index_t.Ordinal
       (Polypeptide_formula_constrained_t.Polyglycine_formula_constrained_t.Peptideca_buried_tag_t.Sole_index_t.Ord_p.make 3)));
   (Polypeptide_formula_constrained_t.Polyglycine_formula_constrained_t.Peptideca_buried_tag_t.Peptideca_buried_symbol_t.Glycine,
    Polypeptide_formula_constrained_t.Polyglycine_formula_constrained_t.Peptideca_buried_tag_t.Sole_index_t.Sequential_index
     (Polypeptide_formula_constrained_t.Polyglycine_formula_constrained_t.Peptideca_buried_tag_t.Sole_index_t.Ordinal
       (Polypeptide_formula_constrained_t.Polyglycine_formula_constrained_t.Peptideca_buried_tag_t.Sole_index_t.Ord_p.make 4)))],
  (Polypeptide_formula_constrained_t.Polyglycine_formula_constrained_t.Cterminal_subunit_subunit_tag_t.Cterminal_subunit_subunit_symbol_t.Carcofferylate,
   Polypeptide_formula_constrained_t.Polyglycine_formula_constrained_t.Cterminal_subunit_subunit_tag_t.Sole_index_t.Sequential_index
    Polypeptide_formula_constrained_t.Polyglycine_formula_constrained_t.Cterminal_subunit_subunit_tag_t.Sole_index_t.Tail))
);;
