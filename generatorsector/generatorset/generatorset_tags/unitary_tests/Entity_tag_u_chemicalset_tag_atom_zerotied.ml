open Make_test_v;;

testing "Entity_tag_v with
   Entity_tag_u_chemicalset_tag_atom_zerotied.ml";;

(* toplevel 
   #use "Entity_tag_u_chemicalset_tag_atom_zerotied.ml";;

*)


let nam_dos = "chemicalset";;
let sym_dos = Domainset_symbol_v.make nam_dos "";;
let soi_dos = [1];; (* fake *)
let gss_dos = Generatorset_symbol_t.Domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_register_v.store_force soi_dos gss_dos;;
let tag_dos = Tag_v.make sym_dos soi_dos;;

let nam_cat = "symbol";;
let sym_cat = Category_symbol_v.make nam_cat;;
let soi_cat = Sole_index_v.make 1 soi_dos;; (* fake *)
let gss_cat = Generatorset_symbol_t.Category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_register_v.store_force soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

let nam_enp_s = "atom_zerotied";;
let sym_enp_s = Entity_symbol_t.Entity_son_symbol (Entity_son_symbol_t.Notonlyson nam_enp_s);;
let soi_enp_s = Sole_index_v.make 2 soi_cat;; (* fake *)
let sym_ent_s = Entity_symbol_v.entity_symbol_of_entity_symbol sym_enp_s;;
let gss_ent_s = Generatorset_symbol_t.Entity_symbol sym_ent_s;;
Generatorset_symbol_by_sole_index_register_v.store_force soi_enp_s gss_ent_s;;
let tag_enp_s = Tag_v.make sym_enp_s soi_enp_s;;

let nam_enp_c = "atom_zerotied_cation";;
let sym_enp_c = Entity_symbol_t.Currententity nam_enp_c;;
let soi_enp_c = Sole_index_v.make 3 soi_cat;; (* fake *)
let sym_ent_c = Entity_symbol_v.entity_symbol_of_entity_symbol sym_enp_c;;
let gss_ent_c = Generatorset_symbol_t.Entity_symbol sym_ent_c;;
Generatorset_symbol_by_sole_index_register_v.store_force soi_enp_c gss_ent_c;;
let tag_enp_c = Tag_v.make sym_enp_c soi_enp_c;;

test_number 1 (
tag_enp_s
(* : Entity_symbol_t.entity_symbol Tag_t.tag *)
=
(Entity_symbol_t.Entity_son_symbol
   (Entity_son_symbol_t.Notonlyson "atom_zerotied"),
 [2; 1; 1])
);;

test_number 2 (
tag_enp_c
(* : Entity_symbol_t.entity_symbol Tag_t.tag *)
=
(Entity_symbol_t.Currententity "atom_zerotied_cation",
 [3; 1; 1])
);;

test_number 3 (
Entity_tag_v.category_tag_off_entity_tag tag_enp_s
(* : Category_tag_t.category_tag *)
= 
(Category_symbol_t.Symbol, [1; 1])
);;

test_number 4 (
Entity_tag_v.domainset_tag_off_entity_tag tag_enp_s
(* : Domainset_tag_t.domainset_tag *)
= 
(Domainset_symbol_t.Chemicalset, [1])
);;

