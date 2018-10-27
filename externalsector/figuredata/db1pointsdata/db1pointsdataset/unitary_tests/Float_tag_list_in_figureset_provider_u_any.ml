open Make_test_v;;

testing "Float_tag_list_by_unit_provider_v
   Float_tag_list_by_unit_provider_u_any.ml";;

(* toplevel 
   #use "Float_tag_list_by_unit_provider_u_any.ml";;

*)

let nam_cod = "Float_tag_list_by_unit_provider_u_any.ml";;

let nam_dos = "figureset";;
let db_tag_dos = Database_entity_symbol_by_sole_index_provider_v.domainset_tag_of_domainset_name nam_dos;;
let sym_dos = Tag_v.symbol_off_tag db_tag_dos;;

let db_tag_flo_l = Float_tag_list_by_unit_provider_v.provide db_tag_dos;;

let cut_l = List_v.sublist_of_int_of_int_of_list 0 8 db_tag_flo_l;;

test_number 1 (
cut_l
(* : (Database_entity_symbol_t.alien_database_entity_symbol,
   Sole_index_t.sole_index)
  Doublet_t.doublet list *)
=
  [(Database_entity_symbol_t.Float "1.",  [1; 1; 1; 1]);
   (Database_entity_symbol_t.Float "1.",  [2; 1; 1; 1]);
   (Database_entity_symbol_t.Float "-2.", [3; 1; 1; 1]);
   (Database_entity_symbol_t.Float "0.",  [1; 2; 1; 1]);
   (Database_entity_symbol_t.Float "0.",  [2; 2; 1; 1]);
   (Database_entity_symbol_t.Float "-2.", [3; 2; 1; 1]);
   (Database_entity_symbol_t.Float "2.",  [1; 3; 1; 1]);
   (Database_entity_symbol_t.Float "0.",  [2; 3; 1; 1]);
   (Database_entity_symbol_t.Float "-2.", [3; 3; 1; 1]);]
);;

let cut_l = List_v.sublist_of_int_of_int_of_list 9 17 db_tag_flo_l;;

test_number 2 (
cut_l
(* : (Database_entity_symbol_t.alien_database_entity_symbol,
   Sole_index_t.sole_index)
  Doublet_t.doublet list *)
=
[(Database_entity_symbol_t.Float "0.", [1; 1; 2; 1]);
 (Database_entity_symbol_t.Float "0.", [2; 1; 2; 1]);
 (Database_entity_symbol_t.Float "-3.", [3; 1; 2; 1]);
 
 (Database_entity_symbol_t.Float "0.", [1; 2; 2; 1]);
 (Database_entity_symbol_t.Float "1.", [2; 2; 2; 1]);
 (Database_entity_symbol_t.Float "-3.", [3; 2; 2; 1]);
 
 (Database_entity_symbol_t.Float "1.", [1; 3; 2; 1]);
 (Database_entity_symbol_t.Float "0.", [2; 3; 2; 1]);
 (Database_entity_symbol_t.Float "-3.", [3; 3; 2; 1])]
);;
