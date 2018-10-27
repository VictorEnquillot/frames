open Gentest_v;;

testing "Generator_v";;

(* toplevel 
   #use "tgenerator_v.ml";; 
 *)

module Ccv_v = Caml_line_value_v
module Cns_v = Constructor_symbol_v
(*module Cslp_v = Constructor_symbol_list_by_entity_name_provider_v *)
module Cts_v = Category_symbol_v
module Itf_v = Item_formula_v
module Its_v = Item_symbol_v
module Ivp_v = Target_value_provider_v
module Key_v = Key_v
module Kyl_v = Key_list_v
module Cfs_v = Codefile_symbol_v
module Ens_v = Entity_symbol_v

let key_mod_typ = Key_v.make "codefilename" "atom_symbol_function";; 
let kyl_itm_typ = Kyl_v.make "item" "typing" [key_mod_typ];;
let kyl_cmc_tyd = Kyl_v.make "caml_line" "type_definition" kyl_itm_typ;;

testi 0 (
 Cns_v.make (Ens_v.make "atom")
(* : Constructor_symbol_t.constructor_symbol *)
  =
Constructor_symbol_t.Constructor_proper_symbol
 (Constructor_symbol_t.Constructor_several_symbol "atom")
);;
(*
testi 1 (
Cslp_v.provide "atom"
(* : Cslp_v.Cns_t.constructor_symbol list *)
=
  [
   Cslp_v.Cns_t.Entity "atom_zerotied";
   Cslp_v.Cns_t.Entity "atom_onetied"; 
   Cslp_v.Cns_t.Entity "atom_twotied";
   Cslp_v.Cns_t.Entity "atom_threetied"; 
   Cslp_v.Cns_t.Entity "atom_fourtied";
   Cslp_v.Cns_t.Entity "atom_fivetied"; 
   Cslp_v.Cns_t.Entity "atom_sixtied";
  ]
);;

testi 2 (
Cns_v.constructor_symbol_tree_of_constructor_symbol (Cns_v.make "atom_fourtied")
(* : Constructor_symbol_t.constructor_symbol Tree_t.tree *)
=
Tree_t.Node (Constructor_symbol_t.Entity "atom_fourtied",
	     [Tree_t.Leaf (Constructor_symbol_t.Bare "c_4s");
	      Tree_t.Leaf (Constructor_symbol_t.Bare "n_4s");
	      Tree_t.Leaf (Constructor_symbol_t.Bare "s_4s");
	      Tree_t.Leaf (Constructor_symbol_t.Bare "xe_4s")])
);;

testi 3 (
Cns_v.name (Constructor_symbol_t.Bare "c_4s")
(* : string *)
=
"c_4s"
);;

testi 4 (
Ivp_v.provide "default"
(* : Ivp_v.Inv_t.target_value *)
=
{Ivp_v.Inv_t.entity_name = "atom";
 Ivp_v.Inv_t.category_symbol = Ivp_v.Inv_t.Cts_t.Symbol_symbol;
 Ivp_v.Inv_t.codefile_symbol = Ivp_v.Inv_t.Cfs_t.Type_symbol}
);;

testi 5 (
Itf_v.retrieve kyl_itm_typ
(* : Itf_v.Ccs_t.caml_line_symbol list *)
=
[
 Itf_v.Ccs_t.Comment; 
 Itf_v.Ccs_t.Type_definition;
 Itf_v.Ccs_t.Type_constructor (Itf_v.Ccs_t.Cns_t.Entity "atom_zerotied");
 Itf_v.Ccs_t.Type_constructor (Itf_v.Ccs_t.Cns_t.Entity "atom_onetied");
 Itf_v.Ccs_t.Type_constructor (Itf_v.Ccs_t.Cns_t.Entity "atom_twotied");
 Itf_v.Ccs_t.Type_constructor (Itf_v.Ccs_t.Cns_t.Entity "atom_threetied");
 Itf_v.Ccs_t.Type_constructor (Itf_v.Ccs_t.Cns_t.Entity "atom_fourtied");
 Itf_v.Ccs_t.Type_constructor (Itf_v.Ccs_t.Cns_t.Entity "atom_fivetied");
 Itf_v.Ccs_t.Type_constructor (Itf_v.Ccs_t.Cns_t.Entity "atom_sixtied")
]
);;

testi 6 (
 kyl_cmc_tyd
(* : Key_list_t.key_list *)
 =
[
 ("caml_line", "type_definition"); 
 ("item", "typing");
 ("codefilename", "atom_symbol_function")
]
);;

testi 7 (
Ccv_v.make kyl_cmc_tyd
=
[]
);;

*)
