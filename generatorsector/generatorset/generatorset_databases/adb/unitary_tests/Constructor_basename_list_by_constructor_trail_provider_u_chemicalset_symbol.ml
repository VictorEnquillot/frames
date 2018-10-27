open Make_test_v;;

testing "Constructor_basename_list_by_constructor_trail_provider_v with
   Constructor_basename_list_by_constructor_trail_provider_u_chemicalset_symbol.ml";; 

(* toplevel 
   #use "Constructor_basename_list_by_constructor_trail_provider_u_chemicalset_symbol.ml";; 

*)

let nam_dos = "chemical";;
let nam_cat = "symbol";;

let tra_dos = Trail_v.make "domain" nam_dos [];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;

let nam_ent = "chemical";;
let tra_ent = Trail_v.make "entity" nam_ent tra_cat;;
let nam_ent_l = Constructor_basename_list_by_constructor_trail_provider_v.provide tra_ent;;

test_number 1 (
nam_ent_l
(* : string list *)
=
["atom"]
);;

let nam_ent = "atom";;
let tra_ent = Trail_v.make "entity" nam_ent tra_cat;;
let nam_ent_l = Constructor_basename_list_by_constructor_trail_provider_v.provide tra_ent;;

test_number 2 (
nam_ent_l
(* : string list *)
=
  ["atom_zerotied"; "atom_onetied"; "atom_twotied"; "atom_threetied";
   "atom_fourtied"; "atom_fivetied"; "atom_sixtied"]
);;

let nam_ent = "atom_zerotied";;
let tra_ent = Trail_v.make "entity" nam_ent tra_cat;;
let nam_ent_l = Constructor_basename_list_by_constructor_trail_provider_v.provide tra_ent;;

test_number 3 (
nam_ent_l
(* : string list *)
=
  ["atom_zerotied_anion"; "atom_zerotied_cation"; "atom_zerotied_raregas";
   "atom_zerotied_halfbridge"]
);;

let nam_ent = "atom_zerotied_anion";;
let tra_ent = Trail_v.make "entity" nam_ent tra_cat;;
let nam_ent_l = Constructor_basename_list_by_constructor_trail_provider_v.provide tra_ent;;

test_number 4 (
nam_ent_l
(* : string list *)
=
["atom_zerotied_anion_minusone"; "atom_zerotied_anion_minustwo"]
);;

let nam_ent = "atom_zerotied_anion_minusone";;
let tra_ent = Trail_v.make "entity" nam_ent tra_cat;;
let nam_ent_l = Constructor_basename_list_by_constructor_trail_provider_v.provide tra_ent;;

test_number 5 (
nam_ent_l
(* : string list *)
  =
["fm1"; "hm1"; "clm1"; "brm1"; "im1"]
);;

