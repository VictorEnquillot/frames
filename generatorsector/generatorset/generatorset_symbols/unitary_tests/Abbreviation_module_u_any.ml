open Make_test_v;;

testing "Abbreviation_module_v
   Abbreviation_module_u_any.ml";;

(* toplevel
   #use "Abbreviation_module_u_any.ml";;

*)

let sym_ent_ato = Entity_symbol_v.make "entity_proper_with_sons" "atom";;
let sym_ent_atz = Entity_symbol_v.make "entity_proper_with_sons" "atom_zerotied";;
let sym_ent_azr = Entity_symbol_v.make "entity_proper_with_sons" "atom_zerotied_raregaz";;
let sym_ent_zc3 = Entity_symbol_v.make "entity_proper_with_sons" "atom_zerotied_cation_plusthree";;

let sym_cat = Category_symbol_v.symbol;;
let sym_cof_t = Contentfile_symbol_t.Type_alone;;
let sym_cof_p = Contentfile_symbol_t.Type_n_value;;
let sym_cof_u = Contentfile_symbol_t.Value_alone;;

test_number 1 (
Abbreviation_module_v.abbreviation_module_of_entity_symbol sym_ent_ato 
=
"At"
);;

test_number 2 (
Abbreviation_module_v.abbreviation_module_of_entity_symbol sym_ent_atz 
=
"A0"
);;

test_number 3 (
Abbreviation_module_v.abbreviation_module_of_entity_symbol sym_ent_azr 
=
"A0r"
);;

test_number 4 (
Abbreviation_module_v.abbreviation_module_of_entity_symbol sym_ent_zc3 
=
"A0c3"
);;

test_number 5 (
Abbreviation_module_v.abbreviation_module_of_category_symbol_of_entity_symbol sym_cat sym_ent_ato
=
"Ats"
);;

test_number 6 (
Abbreviation_module_v.abbreviation_module_of_category_symbol_of_entity_symbol sym_cat sym_ent_azr
=
"A0rs"
);;

test_number 7 (
Abbreviation_module_v.abbreviation_module_of_category_symbol_of_entity_symbol sym_cat sym_ent_zc3 
=
"A0c3s"
);;

test_number 8 (
Abbreviation_module_v.abbreviation_module_of_contentfile_symbol_of_category_symbol_of_entity_symbol sym_cof_t sym_cat sym_ent_ato
=
"Ats_t"
);;

test_number 9 (
Abbreviation_module_v.abbreviation_module_of_contentfile_symbol_of_category_symbol_of_entity_symbol sym_cof_p sym_cat sym_ent_azr
=
"A0rs_p"
);;

test_number 10 (
Abbreviation_module_v.abbreviation_module_of_contentfile_symbol_of_category_symbol_of_entity_symbol sym_cof_u sym_cat sym_ent_zc3 
=
"A0c3s_v"
);;

