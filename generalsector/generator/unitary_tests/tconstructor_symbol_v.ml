open Gentest_v;;

testing "constructor_symbol_v";;

(* toplevel 
   #use "tconstructor_symbol_v.ml";; 
 *)

module Amd_v = Abbreviation_module_v
module Cns_t = Constructor_symbol_t
module Cns_v = Constructor_symbol_v
module Ens_v = Entity_symbol_v

;;
testi 0 (
 Cns_v.make (Ens_v.make "atom")
(* : Constructor_symbol_t.constructor_symbol *)
  =
Cns_t.Constructor_proper_symbol
 (Cns_t.Constructor_several_symbol "atom")
);;

testi 1 (
 Cns_v.make (Ens_v.make "atom_zerotied")
(* : Constructor_symbol_t.constructor_symbol *)
  =
Cns_t.Constructor_proper_symbol
 (Cns_t.Constructor_several_symbol "atom_zerotied")
);;

testi 2 (
Cns_v.is_constructor_proper_datastructure_symbol_off_entity_proper_symbol 
(Ens_v.entity_proper_symbol_of_string "polyglycine")
);;

testi 3 (
 Cns_v.make (Ens_v.make "polyglycine")
(* : Constructor_symbol_t.constructor_symbol *)
  =
Constructor_symbol_t.Constructor_proper_symbol
 (Constructor_symbol_t.Constructor_oneline_symbol
   (Constructor_symbol_t.Constructor_proper_datastructure_symbol
     (Constructor_symbol_t.Constructor_proper_doublet_symbol "polyglycine")))
);;

testi 4 (
 Cns_v.make (Ens_v.make "xxxx")
(* : Constructor_symbol_t.constructor_symbol *)
  =
Constructor_symbol_t.Constructor_fictive_symbol
 (Constructor_symbol_t.Constructor_bare_symbol "xxxx")
);;

testi 5 (
 Cns_v.make (Ens_v.make "atom_fivetied")
(* : Constructor_symbol_t.constructor_symbol *)
  =
Constructor_symbol_t.Constructor_proper_symbol
 (Constructor_symbol_t.Constructor_oneline_symbol
   (Constructor_symbol_t.Constructor_nodeoneline_symbol "atom_fivetied"))
);;

testi 6 (
 Cns_v.make (Ens_v.make"protein")
(* : Constructor_symbol_t.constructor_symbol *)
  =
Constructor_symbol_t.Constructor_proper_symbol
 (Constructor_symbol_t.Constructor_several_symbol "protein")
);;

testi 7 (
Amd_v.abbreviation_module_of_constructor_symbol (Cns_v.make (Ens_v.make "atom_zerotied_anion_minus_two"))
=
"Azamt"
);;

testi 8 (
Cns_v.entity_symbol_off_constructor_symbol (Cns_v.make  (Ens_v.make "atom"))
(* : Entity_symbol_t.entity_symbol *)
  = 
Entity_symbol_t.Entity_proper_symbol
 (Entity_symbol_t.Entity_local_symbol "atom")
);;

testi 9 (
Cns_v.entity_symbol_off_constructor_symbol (Cns_v.make  (Ens_v.make "atom_zerotied"))
(* : Entity_symbol_t.entity_symbol *)
  = 
Entity_symbol_t.Entity_proper_symbol
 (Entity_symbol_t.Entity_local_symbol "atom_zerotied")
);;

testi 10 (
Cns_v.make (Ens_v.make "n_sd")
(* : Constructor_symbol_t.constructor_symbol *)
=
Constructor_symbol_t.Constructor_fictive_symbol
 (Constructor_symbol_t.Constructor_bare_symbol "n_sd")
);;

