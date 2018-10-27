open Make_test_v;;

testing "Generatorset_symbol_by_sole_index_provider_v with
   Generatorset_symbol_by_sole_index_provider_u_any.ml";;

(* toplevel
   #use "Generatorset_symbol_by_sole_index_provider_u_any.ml";;

*)


let soi_dos = [1];;
let sym_dos = Domainset_symbol_t.Chemicalset;;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_register_v.store soi_dos gss_dos;;
 
let soi_cat = Sole_index_v.make 2 soi_dos;;
let sym_cat = Category_symbol_t.Symbol;;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_register_v.store soi_cat gss_cat;;

let soi_n_gss_l = Register_v.entry_list Generatorset_symbol_by_sole_index_register_v.register;;

test_number 1 (
soi_n_gss_l
(* : (Generatorset_symbol_by_sole_index_provider_v.Sole_index_t.sole_index * Generatorset_symbol_t.generatorset_symbol) list *)
=
[([2; 1], Generatorset_symbol_t.Category_symbol Category_symbol_t.Symbol);
 ([1], Generatorset_symbol_t.Domainset_symbol Domainset_symbol_t.Chemicalset)]
);;

(**
let gss_pre = Generatorset_symbol_v.is_category_symbol_off_generatorset_symbol;;

let soi_n_gss_l = Generatorset_symbol_by_sole_index_provider_v.sole_index_n_generatorset_symbol_list_of_generatorset_symbol_predicate gss_pre;;

test_number 2 (
soi_n_gss_l 
(* : (Sole_index_t.sole_index * Generatorset_symbol_t.generatorset_symbol) list *)
=
  [([2; 1], Generatorset_symbol_t.Category_symbol Category_symbol_t.Symbol)]
);;

let soi_n_gss = Generatorset_symbol_by_sole_index_provider_v.sole_index_n_generatorset_symbol_of_generatorset_symbol_predicate_off_sole_index gss_pre soi_cat;; 

test_number 3 (
soi_n_gss
(* : Generatorset_symbol_by_sole_index_provider_v.Sole_index_t.sole_index * Generatorset_symbol_t.generatorset_symbol *)
=
([2; 1], Generatorset_symbol_t.Category_symbol Category_symbol_t.Symbol)
);;

let soi = Generatorset_symbol_by_sole_index_provider_v.sole_index_of_generatorset_symbol_predicate_off_sole_index gss_pre soi_cat;;

test_number 4 (
soi
(* : Sole_index_t.sole_index *)
=
[2; 1]
);;

let gss = Generatorset_symbol_by_sole_index_provider_v.generatorset_symbol_of_generatorset_symbol_predicate_off_sole_index gss_pre soi_cat;;

test_number 5 (
gss
(* : Generatorset_symbol_t.generatorset_symbol *)
=
Generatorset_symbol_t.Category_symbol Category_symbol_t.Symbol
);;
**)
