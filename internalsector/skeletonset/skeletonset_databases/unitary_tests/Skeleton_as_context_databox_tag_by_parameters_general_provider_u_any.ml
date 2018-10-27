open Make_test_v;;

testing "Skeleton_as_context_databox_tag_by_parameters_general_provider_v with
    Skeleton_as_context_databox_tag_by_parameters_general_provider_u_any.ml";;

(* Deleting Registers *)





(* Tracing *)


(* toplevel 
   #use "Skeleton_as_context_databox_tag_by_parameters_general_provider_u_any.ml";; 

*)

open Skeleton_as_context_databox_tag_by_parameters_general_provider_v;;

let nam_bas = "lanl2dz";;
let nam_dba = "nwchem";;
Parameters_general_register_v.store "databox-name" nam_bas;;
Parameters_general_register_v.store "database-name" nam_dba;;

let tag_ske_bas = Skeleton_as_context_databox_tag_by_database_name_n_databox_name_provider_v.provide (nam_dba, nam_bas);;

test_number 1 (
(tag_ske_bas : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_context_symbol
    (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
      (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
        "lanl2dz")),
   [5; 5; 19])
);;

let boo = tag_ske_bas = provide ();;

test_number 2 (
boo
);;
