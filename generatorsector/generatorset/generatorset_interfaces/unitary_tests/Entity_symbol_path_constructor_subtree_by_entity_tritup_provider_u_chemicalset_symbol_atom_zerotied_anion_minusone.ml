open Make_test_v;;

testing "Entity_symbol_path_constructor_subtree_by_entity_tritup_provider_u_chemicalset_symbol_atom_zerotied_anion_minusone.ml";;

(* toplevel 
   #use "Entity_symbol_path_constructor_subtree_by_entity_tritup_provider_u_chemicalset_symbol_atom_zerotied_anion_minusone.ml";; 
*)

let sym_dos = Domain_symbol_v.make "chemicalset";;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let sym_cat = Category_symbol_v.make nam_cat;;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

let sym_enp = Entity_symbol_v.top_has_notopsonleaf "atom_zerotied_anion_minusone";;
let gss_enp = Generatorset_symbol_v.generatorset_symbol_of_entity_proper_symbol sym_enp;;
Generatorset_symbol_by_sole_index_provider_v.store soi_enp gss_enp;;
let tag_enp = Tag_v.make sym_enp soi_enp;;

(* providers *)

let pat_nam_ent_t = Entity_symbol_path_constructor_subtree_by_entity_tritup_provider_v.provide tag_enp;;

test_number 1 (
pat_nam_ent_t
(* : Entity_symbol_t.entity_symbol list Tree_t.tree *)
=
  Tree_t.Inner
   ([Entity_symbol_t.Entity_proper_symbol
      (Entity_symbol_v.top_has_notopsonleaf "atom_zerotied_anion_minusone")],
   [Tree_t.Leaf
     [Entity_symbol_t.Entity_fictive_symbol
       (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
         (Entity_fictive_nullary_symbol_t.Sonnullary "f_1m"));
      Entity_symbol_t.Entity_proper_symbol
       (Entity_symbol_v.top_has_notopsonleaf "atom_zerotied_anion_minusone")];
    Tree_t.Leaf
     [Entity_symbol_t.Entity_fictive_symbol
       (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
         (Entity_fictive_nullary_symbol_t.Sonnullary "h_1m"));
      Entity_symbol_t.Entity_proper_symbol
       (Entity_symbol_v.top_has_notopsonleaf "atom_zerotied_anion_minusone")];
    Tree_t.Leaf
     [Entity_symbol_t.Entity_fictive_symbol
       (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
         (Entity_fictive_nullary_symbol_t.Sonnullary "cl_1m"));
      Entity_symbol_t.Entity_proper_symbol
       (Entity_symbol_v.top_has_notopsonleaf "atom_zerotied_anion_minusone")];
    Tree_t.Leaf
     [Entity_symbol_t.Entity_fictive_symbol
       (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
         (Entity_fictive_nullary_symbol_t.Sonnullary "br_1m"));
      Entity_symbol_t.Entity_proper_symbol
       (Entity_symbol_v.top_has_notopsonleaf "atom_zerotied_anion_minusone")];
    Tree_t.Leaf
     [Entity_symbol_t.Entity_fictive_symbol
       (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
         (Entity_fictive_nullary_symbol_t.Sonnullary "i_1m"));
      Entity_symbol_t.Entity_proper_symbol
       (Entity_symbol_v.top_has_notopsonleaf "atom_zerotied_anion_minusone")]])
);;

