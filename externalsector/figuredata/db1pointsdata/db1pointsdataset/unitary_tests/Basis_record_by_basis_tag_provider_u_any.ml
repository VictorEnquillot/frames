open Make_test_v;;

testing "Basis_record_by_basis_tag_provider_v
   Basis_record_by_basis_tag_provider_u_any.ml";;

(* toplevel 
   #use "Basis_record_by_basis_tag_provider_u_any.ml";;

*)

let nam_cod = "Basis_record_by_basis_tag_provider_u_any.ml";;

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

let tag_bas = Basis_tag_by_database_db1_component_triangle_isoacuteag_provider_v.provide dta_tri;;

test_number 4 ( 
tag_bas
(* : Database_entity_symbol_t.database_entity_symbol Tag_t.tag list *)
=
(Database_entity_symbol_t.Database_entity_db_2_symbol
    (Database_entity_db_2_symbol_t.Database_entity_db_2_basis "ire"),
   [2; 1; 2])

);;

let rec_bas = Basis_record_by_basis_tag_provider_v.provide tag_bas;;

test_number 5 ( 
rec_bas
(* : string *)
=
"basis    0. 0. -3.   0. 6. -3."
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

let tag_bas = Basis_tag_by_database_db1_component_triangle_isoacuteag_provider_v.provide dta_tri;;

test_number 8 ( 
tag_bas
(* : Database_entity_symbol_t.db_2_symbol Tag_t.tag *)
=
  (Database_entity_symbol_t.Database_entity_db_2_symbol
    (Database_entity_db_2_symbol_t.Database_entity_db_2_basis "iso"),
   [2; 2; 2])
);;

let rec_bas = Basis_record_by_basis_tag_provider_v.provide tag_bas;;

test_number 9 ( 
rec_bas
(* : string *)
=
"basis    1. 1. 1.    1. 4. 1."
);;

let ent_l = Register_v.entry_list String_by_database_db1_tag_register_v.register ;;
let ver_l = Doublet_list_v.filter_if_left (fun t -> (List.length (Tag_v.sole_index_off_tag t)) = 3 ) ent_l;;

test_number 10 (
ver_l
(* : (Db_tag_t.db_tag * string) list *)
=
 [((Database_entity_symbol_t.Database_entity_db_2_symbol
      (Database_entity_db_2_symbol_t.Database_entity_db_2_basis "iso"),
     [2; 2; 2]),
    "basis    1. 1. 1.    1. 4. 1.");
   ((Database_entity_symbol_t.Database_entity_db_2_symbol
      (Database_entity_db_2_symbol_t.Database_entity_db_2_basis "ire"),
     [2; 1; 2]),
    "basis    0. 0. -3.   0. 6. -3.")]
);;

let ent_l = Register_v.entry_list Database_entity_symbol_by_sole_index_register_v.register;;
let sor_l = List.sort (fun (s1, d1) (s2, d2) -> Sole_index_v.compare s1 s2) ent_l;;  
let ver_l = Doublet_list_v.filter_if_left (fun t -> (List.length t = 3) ) sor_l;;

(* test_number 11 ( *)
(* ver_l *)
(* (\* : (Sole_index_t.sole_index, *)
(*    Database_entity_symbol_t.alien_database_entity_symbol) *)
(*   Doublet_list_t.doublet_list *\) *)
(* =  *)
(*  [([1; 1; 2], *)
(*    Database_entity_symbol_t.Database_entity_db_2_symbol *)
(*      (Database_entity_db_2_symbol_t.Database_entity_db_2_summit "ire")); *)
(*   ([2; 1; 2], *)
(*    Database_entity_symbol_t.Database_entity_db_2_symbol *)
(*      (Database_entity_db_2_symbol_t.Database_entity_db_2_basis "ire")); *)
(*   ([1; 2; 2], *)
(*    Database_entity_symbol_t.Database_entity_db_2_symbol *)
(*      (Database_entity_db_2_symbol_t.Database_entity_db_2_summit "iso")); *)
(*   ([2; 2; 2], *)
(*    Database_entity_symbol_t.Database_entity_db_2_symbol *)
(*      (Database_entity_db_2_symbol_t.Database_entity_db_2_basis "iso"))] *)
(* );; *)
