open Gentest_v;;

testing "Entity_data_provider_v";;

(* toplevel 
   #use "tentity_data_provider_v.ml";; 
 *)

module End_v = Entity_data_v
module Edp_v = Entity_data_provider_v

let nam_ent = "atom";;
let dat_ent = Edp_v.provide nam_ent;;

testi 0 (
End_v.is_entityname_off_string "atom"
(* : Constructor_symbol_t.constructor_symbol *)
  =
true
);;

testi 1 (
not ( End_v.is_datastructure_off_entityname nam_ent) 
);;

testi 2 (
( End_v.is_entityname_off_string nam_ent)
);;

testi 3 (
not ( End_v.is_singleson_off_entityname nam_ent)
);;

testi 4 (
dat_ent
(* : Entity_data_t.entity_data *)
  =
[
 "atom_zerotied"; 
 "atom_onetied"; 
 "atom_twotied"; 
 "atom_threetied";
 "atom_fourtied"; 
 "atom_fivetied"; 
 "atom_sixtied"
]
);;

testi 5 (
End_v.count_son_of_entityname nam_ent
(* Index_p.index *) 
= 
Index_p.seven
);;

