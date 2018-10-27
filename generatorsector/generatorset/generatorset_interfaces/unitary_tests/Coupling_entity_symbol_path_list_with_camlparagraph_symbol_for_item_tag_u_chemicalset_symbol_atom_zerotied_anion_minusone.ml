open Make_test_v;;

testing "Coupling_entity_symbol_path_list_with_camlparagraph_symbol_for_item_tag_u_chemicalset_symbol_atom_zerotied_anion_minusone.ml";;

(* toplevel 
   #use "Coupling_entity_symbol_path_list_with_camlparagraph_symbol_for_item_tag_u_chemicalset_symbol_atom_zerotied_anion_minusone.ml";;
*)

let sym_dos = Domain_symbol_v.make "chemicalset";;
let sym_cat = Category_symbol_v.make nam_cat;;
let sym_enp = Entity_symbol_v.top_has_notopsonleaf "atom_zerotied_anion_minusone";;
let sym_cof = Contentfile_symbol_v.make "value_alone";;
let sym_usf = Usagefile_symbol_v.make "implementation";;

let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

let gss_enp = Generatorset_symbol_v.generatorset_symbol_of_entity_proper_symbol sym_enp;;
Generatorset_symbol_by_sole_index_provider_v.store soi_enp gss_enp;;
let tag_enp = Tag_v.make sym_enp soi_enp;;

let gss_cof = Generatorset_symbol_v.generatorset_symbol_of_contentfile_symbol sym_cof;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cof gss_cof;;
let tag_cof = Tag_v.make sym_cof soi_cof;;

let gss_usf = Generatorset_symbol_v.generatorset_symbol_of_usagefile_symbol sym_usf;;
Generatorset_symbol_by_sole_index_provider_v.store soi_usf gss_usf;;
let tag_usf = Tag_v.make sym_usf soi_usf;;

(* Abbreviating *)

let sym_ite_abb = Item_symbol_v.make "abbreviating";;
let gss_ite_abb = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite_abb;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite_abb gss_ite_abb;;
let tag_ite_abb = Tag_v.make sym_ite_abb soi_ite_abb;;

let pne_n_cps_abb_l = Coupling_entity_symbol_path_list_with_camlparagraph_symbol_for_item_tag_v.couple tag_ite_abb;;

test_number 1 (
tag_ite_abb 
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=
(Item_symbol_v.abbreviating, [8; 1; 2; 6; 1; 1])
);;

test_number 2 (
pne_n_cps_abb_l
(* : (Entity_symbol_t.entity_symbol list list,
     Camlparagraph_symbol_t.camlparagraph_symbol)
    Doublet_t.doublet list *)
=
  [([[Entity_symbol_t.Entity_fictive_symbol
       (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
         (Entity_fictive_nullary_symbol_t.Sonnullary "f_1m"));
      Entity_symbol_t.Entity_proper_symbol
       (Entity_symbol_v.top_has_notopsonleaf "atom_zerotied_anion_minusone")]],
    Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
     (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
       Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_infather));
   ([[Entity_symbol_t.Entity_fictive_symbol
       (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
         (Entity_fictive_nullary_symbol_t.Sonnullary "h_1m"));
      Entity_symbol_t.Entity_proper_symbol
       (Entity_symbol_v.top_has_notopsonleaf "atom_zerotied_anion_minusone")]],
    Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
     (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
       Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_infather));
   ([[Entity_symbol_t.Entity_fictive_symbol
       (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
         (Entity_fictive_nullary_symbol_t.Sonnullary "cl_1m"));
      Entity_symbol_t.Entity_proper_symbol
       (Entity_symbol_v.top_has_notopsonleaf "atom_zerotied_anion_minusone")]],
    Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
     (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
       Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_infather));
   ([[Entity_symbol_t.Entity_fictive_symbol
       (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
         (Entity_fictive_nullary_symbol_t.Sonnullary "br_1m"));
      Entity_symbol_t.Entity_proper_symbol
       (Entity_symbol_v.top_has_notopsonleaf "atom_zerotied_anion_minusone")]],
    Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
     (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
       Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_infather));
   ([[Entity_symbol_t.Entity_fictive_symbol
       (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
         (Entity_fictive_nullary_symbol_t.Sonnullary "i_1m"));
      Entity_symbol_t.Entity_proper_symbol
       (Entity_symbol_v.top_has_notopsonleaf "atom_zerotied_anion_minusone")]],
    Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
     (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
       Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_infather))]
);;

(* Naming *)

let sym_ite_nam = Item_symbol_v.make "naming";;
let gss_ite_nam = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite_nam;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite_nam gss_ite_nam;;
let tag_ite_nam = Tag_v.make sym_ite_nam soi_ite_nam;;

let pne_n_cps_nam_l = Coupling_entity_symbol_path_list_with_camlparagraph_symbol_for_item_tag_v.couple tag_ite_nam;;

test_number 3 (
tag_ite_nam 
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=
(Item_symbol_v.naming, [4; 1; 2; 6; 1; 1])
);;

test_number 4 (
pne_n_cps_nam_l
(* : (Entity_symbol_t.entity_symbol list list,
     Camlparagraph_symbol_t.camlparagraph_symbol)
    Doublet_t.doublet list *)
=
[([
   
   [Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Sonnullary "f_1m"));
    Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_v.top_has_notopsonleaf "atom_zerotied_anion_minusone")];

   [Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Sonnullary "h_1m"));
    Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_v.top_has_notopsonleaf "atom_zerotied_anion_minusone")];

   [Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Sonnullary "cl_1m"));
    Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_v.top_has_notopsonleaf "atom_zerotied_anion_minusone")];

   [Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Sonnullary "br_1m"));
    Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_v.top_has_notopsonleaf "atom_zerotied_anion_minusone")];

   [Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Sonnullary "i_1m"));
    Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_v.top_has_notopsonleaf "atom_zerotied_anion_minusone")]],

  Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_match_symbol
       Camlparagraph_endmarked_let_match_symbol_t.Let_name_equal_function_for_symbol)))]
);;

(* Upgrading *)

let sym_ite_upg = Item_symbol_v.make "upgrading_grandson";;
let gss_ite_upg = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite_upg;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite_upg gss_ite_upg;;
let tag_ite_upg = Tag_v.make sym_ite_upg soi_ite_upg;;

let pne_n_cps_upg_l = Coupling_entity_symbol_path_list_with_camlparagraph_symbol_for_item_tag_v.couple tag_ite_upg;;

test_number 5 (
tag_ite_upg 
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=
(Item_symbol_v.upgrading_grandson, [7; 1; 2; 6; 1; 1])
);;

test_number 6 (
pne_n_cps_upg_l
(* (Entity_symbol_t.entity_symbol list list,
     Camlparagraph_symbol_t.camlparagraph_symbol)
    Doublet_t.doublet list *)
=
[]
);;

(* Extracting *)

let sym_ite_ext = Item_symbol_v.make "extracting";;
let gss_ite_ext = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite_ext;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite_ext gss_ite_ext;;
let tag_ite_ext = Tag_v.make sym_ite_ext soi_ite_ext;;

let pne_n_cps_ext_l = Coupling_entity_symbol_path_list_with_camlparagraph_symbol_for_item_tag_v.couple tag_ite_ext;;

test_number 7 (
tag_ite_ext 
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=
(Item_symbol_v.extracting, [5; 1; 2; 6; 1; 1])
);;

test_number 8 (
pne_n_cps_ext_l
(* : (Entity_symbol_t.entity_symbol list list,
     Camlparagraph_symbol_t.camlparagraph_symbol)
    Doublet_t.doublet list *)
=
[]
);;

(* Type *)

let sym_cof = Contentfile_symbol_v.make "type_alone";;
let sym_usf = Usagefile_symbol_v.make "implementation";;

let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

let gss_enp = Generatorset_symbol_v.generatorset_symbol_of_entity_proper_symbol sym_enp;;
Generatorset_symbol_by_sole_index_provider_v.store soi_enp gss_enp;;
let tag_enp = Tag_v.make sym_enp soi_enp;;

let gss_cof = Generatorset_symbol_v.generatorset_symbol_of_contentfile_symbol sym_cof;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cof gss_cof;;
let tag_cof = Tag_v.make sym_cof soi_cof;;

let gss_usf = Generatorset_symbol_v.generatorset_symbol_of_usagefile_symbol sym_usf;;
Generatorset_symbol_by_sole_index_provider_v.store soi_usf gss_usf;;
let tag_usf = Tag_v.make sym_usf soi_usf;;

(* Typing *)

let sym_ite_typ = Item_symbol_v.make "typing";;
let gss_ite_typ = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite_typ;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite_typ gss_ite_typ;;
let tag_ite_typ = Tag_v.make sym_ite_typ soi_ite_typ;;

let pne_n_cps_typ_l = Coupling_entity_symbol_path_list_with_camlparagraph_symbol_for_item_tag_v.couple tag_ite_typ;;

test_number 9 (
tag_ite_typ 
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=
(Item_symbol_v.typing, [3; 1; 1; 6; 1; 1])
);;

test_number 10 (
pne_n_cps_typ_l
(* : (Entity_symbol_t.entity_symbol list list,
     Camlparagraph_symbol_t.camlparagraph_symbol)
    Doublet_t.doublet list *)
=
[([[Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_v.top_has_notopsonleaf "atom_zerotied_anion_minusone")];

   [Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Sonnullary "f_1m"));
    Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_v.top_has_notopsonleaf "atom_zerotied_anion_minusone")];
   [Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Sonnullary "h_1m"));
    Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_v.top_has_notopsonleaf "atom_zerotied_anion_minusone")];
   [Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Sonnullary "cl_1m"));
    Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_v.top_has_notopsonleaf "atom_zerotied_anion_minusone")];
   [Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Sonnullary "br_1m"));
    Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_v.top_has_notopsonleaf "atom_zerotied_anion_minusone")];
   [Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Sonnullary "i_1m"));
    Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_v.top_has_notopsonleaf "atom_zerotied_anion_minusone")]],
  Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   Camlparagraph_endmarked_symbol_t.camlparagraph_for_symbol_type)]
);;
