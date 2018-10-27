open Make_test_v;;

testing "Skeleton_as_context_database_tag_by_database_name_provider_v with
    Skeleton_as_context_database_tag_by_database_name_provider_u_any.ml";;

(* Deleting Registers *)





(* Tracing *)


(* toplevel 
   #use "Skeleton_as_context_database_tag_by_database_name_provider_u_any.ml";; 

*)

let nam_dba = "nwchem";;
let nam_bas = "cc_pvtz";;

Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_bas;;

open Skeleton_as_context_database_tag_by_database_name_provider_v;;

let soi_con_dba = Context_sole_index_by_context_name_provider_v.provide nam_dba;;
let soi_dba = List_v.cut_off_last_element_off_list soi_con_dba;;

test_number 1 (
(soi_dba : int list ) = 
[5; 19]
);;

let sym_ske_dba = Skeleton_symbol_v.skeleton_context_database_constructor nam_dba;;

test_number 2 (
(sym_ske_dba : Skeleton_symbol_t.skeleton_symbol ) =
  Skeleton_symbol_t.Skeleton_context_symbol
   (Skeleton_context_symbol_t.Skeleton_context_database_symbol
     (Skeleton_context_database_symbol_t.Skeleton_context_database_constructor
       "nwchem"))
);;

let tag_ske_dba = Tag_v.make sym_ske_dba soi_dba;;

test_number 3 (
( tag_ske_dba : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_context_symbol
    (Skeleton_context_symbol_t.Skeleton_context_database_symbol
      (Skeleton_context_database_symbol_t.Skeleton_context_database_constructor
        "nwchem")),
   [5; 19])
);;

let boo = tag_ske_dba = provide nam_dba;;

test_number 4 (
boo
);;
