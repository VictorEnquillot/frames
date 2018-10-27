open Make_test_v;;

testing "Contentfile_tag_v with
   Contentfile_tag_u_chemicalset_tag_atom_zerotied.ml";;

(* toplevel 
   #use "Contentfile_tag_u_chemicalset_tag_atom_zerotied.ml";;

*)

let nam_dos = "chemicalset";;
let nam_cat = "tag";;
let nam_usf = "implementation";;
let nam_cof = "value_alone";;
let nam_enp = "atom_zerotied";;

let sym_enp = Entity_proper_symbol_v.top_has_notopsonleaf nam_enp;;
let sym_enp = Entity_proper_symbol_v.top_has_sometopsonleaf nam_enp;;

let sym_dos = Domainset_symbol_v.make nam_dos "";;
let idx_dos = Domainset_symbol_v.list_index_of_domainset_symbol sym_dos;;
let soi_dos = Sole_index_v.make idx_dos [];;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_register_v.store soi_dos gss_dos;;
let tag_dos = Tag_v.make sym_dos soi_dos;;

let sym_cat = Category_symbol_v.make nam_cat;;
let idx_cat = Category_symbol_v.list_index_of_category_symbol sym_cat;;
let soi_cat = Sole_index_v.make idx_cat soi_dos;;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_register_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

let idx_enp = Entity_proper_symbol_v.list_index_of_entity_proper_symbol sym_enp;;
let soi_enp = Sole_index_v.make idx_enp soi_cat;;
let gss_enp = Generatorset_symbol_v.generatorset_symbol_of_entity_proper_symbol sym_enp;;
Generatorset_symbol_by_sole_index_register_v.store soi_enp gss_enp;;
let tag_enp = Tag_v.make sym_enp soi_enp;;

let sym_cof = Contentfile_symbol_v.make nam_cof;;
let idx_cof = Contentfile_symbol_v.list_index_of_contentfile_symbol sym_cof;;
let soi_cof = Sole_index_v.make idx_cof soi_enp;;
let gss_cof = Generatorset_symbol_v.generatorset_symbol_of_contentfile_symbol sym_cof;;
Generatorset_symbol_by_sole_index_register_v.store soi_cof gss_cof;;
let tag_cof = Tag_v.make sym_cof soi_cof;;

test_number 1 (
tag_cof 
(* : Contentfile_symbol_t.contentfile_symbol Tag_t.tag *)
=
  (Contentfile_symbol_t.Value_alone, [3; 4; 8; 1])
);;

test_number 2 (
tag_enp  
(* : Entity_proper_symbol_t.entity_proper_symbol Tag_t.tag *)
=
  (Entity_proper_symbol_t.Entity_proper_top_symbol
    (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "atom_zerotied"),
   [4; 8; 1])
);;

