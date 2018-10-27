open Make_test_v;;

testing "Skeleton_context_tag_triplet_by_database_name_n_databox_name_provider_v with
    Skeleton_context_tag_triplet_by_database_name_n_databox_name_provider_u_test_ao.ml";;

(* Deleting Registers *)


(* Tracing *)


(* Debugging *)


(* toplevel 
   #use "Skeleton_context_tag_triplet_by_database_name_n_databox_name_provider_u_test_ao.ml";; 

*)

(* Database file *)

let nam_dba = "nwchem";;
let nam_dbo = "test_ao";;

Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_dbo;;

(* Argument (nam_dba, nam_dbo) *)

open Skeleton_context_tag_triplet_by_database_name_n_databox_name_provider_v;;
  
let tag_fcd = Skeleton_context_domain_tag_by_unit_provider_v.provide ();;

test_number 1 (
(tag_fcd : Skeleton_context_domain_symbol_t.skeleton_context_domain_symbol Tag_t.tag ) =
  (Skeleton_context_domain_symbol_t.Skeleton_context_domain_constructor "skeleton",
   [8])
);;

let tag_fba = Skeleton_context_database_tag_by_database_name_provider_v.provide nam_dba;;

test_number 2 (
(tag_fba : Skeleton_context_database_symbol_t.skeleton_context_database_symbol Tag_t.tag ) =
  (Skeleton_context_database_symbol_t.Skeleton_context_database_constructor
    "nwchem",
   [1; 8])
);;

let tag_fbo = 
  Skeleton_context_databox_tag_by_database_name_n_databox_name_provider_v.provide 
    (nam_dba, nam_dbo);;

test_number 3 (
(tag_fbo : Skeleton_context_databox_symbol_t.skeleton_context_databox_symbol Tag_t.tag ) =
  (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
    "test_ao",
   [1; 1; 8])
);;
  
let tag_fco_t = Triplet_v.make tag_fcd tag_fba tag_fbo;;

test_number 4 (
(tag_fco_t : (Skeleton_context_domain_symbol_t.skeleton_context_domain_symbol Tag_t.tag,
	      Skeleton_context_database_symbol_t.skeleton_context_database_symbol Tag_t.tag,
	      Skeleton_context_databox_symbol_t.skeleton_context_databox_symbol Tag_t.tag)
   Triplet_t.triplet ) =
((Skeleton_context_domain_symbol_t.Skeleton_context_domain_constructor "skeleton",
  [8]),
 (Skeleton_context_database_symbol_t.Skeleton_context_database_constructor
    "nwchem",
  [1; 8]),
 (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
    "test_ao",
  [1; 1; 8]))
);;

test_number 5 (
tag_fco_t = provide (nam_dba, nam_dbo)
);;
