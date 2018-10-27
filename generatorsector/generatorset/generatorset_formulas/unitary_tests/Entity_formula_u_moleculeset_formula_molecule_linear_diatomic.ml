open Make_test_v;;

testing "Entity_formula_v with
   Entity_proper_formula_u_moleculeset_formula_molecule_linear_diatomic.ml";;

(* toplevel 
   #use "Entity_proper_formula_u_moleculeset_formula_molecule_linear_diatomic.ml";;

*)

let nam_dos = "moleculeset";;
let nam_enp = "molecule_linear_diatomic";;

let sel_cat = Category_symbol_v.is_formula_off_category_symbol;;
let sel_enp = (fun e -> Entity_symbol_v.string_off e = nam_enp);;

let sym_dos = Domainset_symbol_v.make nam_dos;;
let idx_dos = Domainset_symbol_v.list_index_of_domainset_symbol sym_dos;;
let soi_dos = Sole_index_v.make idx_dos [];;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_register_v.store_force soi_dos gss_dos;;

let tag_dos = Tag_v.make sym_dos soi_dos;;
let for_dos = Domainset_formula_v.retrieve tag_dos;;

let tag_cat = Doublet_list_v.find_if_left sel_cat for_dos;; 
let for_cat = Category_formula_v.retrieve tag_cat;;

let tag_enp = Doublet_list_v.find_if_left sel_enp for_cat;; 
let for_enp = Entity_formula_v.retrieve tag_enp;;

(*
let knv_l = Register_v.entry_list Generatorset_symbol_by_sole_index_provider_v.generatorset_symbol_by_sole_index_register;;

   Warning : knv_l is modified at each run !
   This is just for checking content
*)

test_number 1 (
tag_enp
(* : Entity_symbol_t.Entity_proper_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Entity_symbol_t.Entity_proper "molecule_linear_diatomic", [8; 2; 7])
);;

test_number 2 (
for_enp 
(* : Contentfile_symbol_t.contentfile_symbol Tag_t.tag list *)
=
[(Contentfile_symbol_t.Type_alone, [1; 8; 2; 7]);
 (Contentfile_symbol_t.Value_alone, [2; 8; 2; 7])]
);;

