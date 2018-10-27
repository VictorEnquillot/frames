open Make_test_v;;

testing "Summit_record_by_summit_tag_provider_v
   Summit_record_by_summit_tag_provider_u_any.ml";;

(* toplevel 
   #use "Summit_record_by_summit_tag_provider_u_any.ml";;

*)

let nam_cod = "Summit_record_by_summit_tag_provider_u_any.ml";;

let dta_dab_l = Local_database_tag_by_unit_provider_v.provide ();;

(* 2 Database Db_2 *)

let idx_dab = 2;;
let tag_ldb = List.nth dta_dab_l (idx_dab-1);;

test_number 1 ( 
tag_ldb
(* : Database_entity_symbol_t.db_2_symbol Tag_t.tag *)
=
  (Database_entity_symbol_t.Database_entity_db_2_symbol
    (Database_entity_db_2_symbol_t.Database_entity_db_2_database "db_2"),
   [2])
);;

let dta_tri_l = Triangle_isoacuteag_list_by_database_db1_database_tag_provider_v.provide tag_ldb;;

(* 1 Triangle ire *)

let idx_tri = 1;;
let dta_tri = List.nth dta_tri_l (idx_tri-1);;

test_number 2 ( 
dta_tri
(* : Database_entity_symbol_t.db_2_symbol Tag_t.tag *)
=
  (Database_entity_symbol_t.Database_entity_db_2_symbol
    (Database_entity_db_2_symbol_t.Database_entity_db_2_triangle "ire"),
   [1; 2])
);;

let rec_tri_l = Record_list_by_database_db1_component_triangle_isoacuteag_provider_v.provide dta_tri;;

test_number 3 (
rec_tri_l
(* : string list *)
=
  ["name     IRE"; 
   "units    angstroms"; 
   "summit   3. 3. -3.     ";
   "basis    0. 0. -3.   0. 6. -3."]
);;

let dta_sum = Summit_tag_by_database_db1_component_triangle_isoacuteag_provider_v.provide dta_tri;;

test_number 4 ( 
dta_sum
(* : Database_entity_symbol_t.database_entity_symbol Tag_t.tag list *)
=
(Database_entity_symbol_t.Database_entity_db_2_symbol
    (Database_entity_db_2_symbol_t.Database_entity_db_2_summit "ire"),
   [1; 1; 2])

);;

let rec_sum = Summit_record_by_summit_tag_provider_v.provide dta_sum;;

test_number 5 ( 
rec_sum
(* : string *)
=
"summit   3. 3. -3.     "
);;

(* 2 Triangle ISO *)

let idx_tri = 2;;
let dta_tri = List.nth dta_tri_l (idx_tri-1);;

test_number 6 ( 
dta_tri
(* : Database_entity_symbol_t.db_2_symbol Tag_t.tag *)
=
  (Database_entity_symbol_t.Database_entity_db_2_symbol
    (Database_entity_db_2_symbol_t.Database_entity_db_2_triangle "iso"),
   [2; 2])
);;

let rec_tri_l = Record_list_by_database_db1_component_triangle_isoacuteag_provider_v.provide dta_tri;;

test_number 7 (
rec_tri_l
(* : string list *)
=
  ["name     ISO"; 
   "units    Angstroms"; 
   "summit   1. 3. 1. ";
   "basis    1. 1. 1.    1. 4. 1."]
);;

let dta_sum = Summit_tag_by_database_db1_component_triangle_isoacuteag_provider_v.provide dta_tri;;

test_number 8 ( 
dta_sum
(* : Database_entity_symbol_t.db_2_symbol Tag_t.tag *)
=
  (Database_entity_symbol_t.Database_entity_db_2_symbol
    (Database_entity_db_2_symbol_t.Database_entity_db_2_summit "iso"),
   [1; 2; 2])
);;

let rec_sum = Summit_record_by_summit_tag_provider_v.provide dta_sum;;

test_number 9 ( 
rec_sum
(* : string *)
=
"summit   1. 3. 1. "
);;

(* let ent_l = Register_v.entry_list String_by_database_db1_tag_register_v.register ;; *)
(* let ver_l = Doublet_list_v.filter_if_left (fun t -> (List.length (Tag_v.sole_index_off_tag t)) = 3 ) ent_l;; *)

(* let lis =   *)
(*   [((Database_entity_symbol_t.Database_entity_db_2_symbol *)
(*       (Database_entity_db_2_symbol_t.Database_entity_db_2_summit "iso"), *)
(*      [1; 2; 2]), *)
(*     "summit   1. 3. 1. "); *)
(*    ((Database_entity_symbol_t.Database_entity_db_2_symbol *)
(*       (Database_entity_db_2_symbol_t.Database_entity_db_2_summit "ire"), *)
(*      [1; 1; 2]), *)
(*     "summit   3. 3. -3.     ")] *)
(* ;; *)

(* test_number 10 ( *)
(* List_v.are_equivalent_of_list_of_list lis ver_l *)
(* );; *)

(* let ent_l = Register_v.entry_list Database_entity_symbol_by_sole_index_register_v.register ;; *)
(* let ver_l = Doublet_list_v.filter_if_left (fun t -> (List.length t = 3) ) ent_l;; *)

(* let lis =   *)
(*   [([2; 1; 2], *)
(*     Database_entity_symbol_t.Database_entity_db_2_symbol *)
(*      (Database_entity_db_2_symbol_t.Database_entity_db_2_basis "ire")); *)
(*    ([1; 1; 2], *)
(*     Database_entity_symbol_t.Database_entity_db_2_symbol *)
(*      (Database_entity_db_2_symbol_t.Database_entity_db_2_summit "ire")); *)
(*    ([2; 2; 2], *)
(*     Database_entity_symbol_t.Database_entity_db_2_symbol *)
(*      (Database_entity_db_2_symbol_t.Database_entity_db_2_basis "iso")); *)
(*    ([1; 2; 2], *)
(*     Database_entity_symbol_t.Database_entity_db_2_symbol *)
(*      (Database_entity_db_2_symbol_t.Database_entity_db_2_summit "iso"))] *)
(* ;; *)

(* test_number 11 ( *)
(* List_v.are_equivalent_of_list_of_list lis ver_l *)
(* );; *)
