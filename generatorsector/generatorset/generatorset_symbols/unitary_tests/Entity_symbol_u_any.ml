open Make_test_v;;

testing "Entity_symbol_u with
   Entity_symbol_u_any.ml";;

(* toplevel
   #use "Entity_symbol_u_any.ml";;

*)

let sym_ent_f_1m = 
  Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare "f_1m")) ;;

let sym_ent_ato = Entity_symbol_v.make "entity_proper_with_sons" "atom";;
let sym_ent_atz = Entity_symbol_v.make "entity_proper_with_sons" "atom_zerotied";;
let sym_ent_azr = Entity_symbol_v.make "entity_proper_with_sons" "atom_zerotied_raregaz";;
let sym_ent_zc3 = Entity_symbol_v.make "entity_proper_with_sons" "atom_zerotied_cation_plusthree";;

let sym_ent_dat = Entity_symbol_t.Entity_external_symbol
   (Entity_external_symbol_t.Entity_external_datastructure_symbol
     (Entity_external_datastructure_symbol_t.Tuple_recursive "capped_list"))
;;

test_number 1 (
Entity_symbol_v.name sym_ent_f_1m 
(* string *)
= 
"bare"
);;

let str = Entity_symbol_v.longname sym_ent_f_1m;;

test_number 2 (
str
(* string *)
= 
"Entity_symbol_t.Bare"
);;

let str = Entity_symbol_v.string_off sym_ent_f_1m;;
test_number 3 (
str
(* string *)
= 
"f_1m"
);;

let str = Entity_symbol_v.fullname sym_ent_f_1m;;

test_number 4 (
str
(* string *)
= 
"Entity_symbol_t.Bare \"f_1m\""
);;

let str = Entity_symbol_v.name sym_ent_zc3;;

test_number 5 (
Entity_symbol_v.name sym_ent_zc3 
(* string *)
= 
"entity_proper_with_sons"
);;

let str = Entity_symbol_v.longname sym_ent_zc3;;

test_number 6 (
str
(* string *)
= 
"Entity_symbol_t.Entity_proper_with_sons"
);;

let str = Entity_symbol_v.string_off sym_ent_zc3;;

test_number 7 (
str
(* string *)
= 
"atom_zerotied_cation_plusthree"
);;

let str = Entity_symbol_v.fullname sym_ent_zc3;;
test_number 8 (
str
(* string *)
= 
"Entity_symbol_t.Entity_proper_with_sons \"atom_zerotied_cation_plusthree\""
);;

let str = Entity_symbol_v.name sym_ent_ato;;

test_number 9 (
str
(* string *)
= 
"entity_proper_with_sons"
);;

let str = Entity_symbol_v.longname sym_ent_ato;;

test_number 10 (
str
(* string *)
= 
"Entity_symbol_t.Entity_proper_with_sons"
);;

test_number 11 (
Entity_symbol_v.string_off sym_ent_ato 
(* string *)
= 
"atom"
);;

test_number 12 (
Entity_symbol_v.fullname sym_ent_ato 
(* string *)
= 
"Entity_symbol_t.Entity_proper_with_sons \"atom\""
);;

let str = Entity_symbol_v.string_off sym_ent_dat;;
test_number 13 (
str
(* string *)
= 
"capped_list"
);;

let sym_efb = Entity_fictive_basicnullary_symbol_t.Float "4.7";;

let sym_ent = Entity_symbol_v.entity_symbol_of_entity_fictive_basicnullary_symbol sym_efb;;

test_number 14 (
sym_ent
(* : Entity_symbol_t.entity_symbol *)
  =
  Entity_symbol_t.Entity_fictive_symbol
   (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
     (Entity_fictive_basicnullary_symbol_t.Float "4.7"))
);;

