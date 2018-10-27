(** {3 Test for formula_database_filename_provider_v} *)

open Make_test_v;;

testing "Formula_database_filename_provider_v with
   tformula_database_filename_provider_v.ml";; 

(* toplevel 
   #use "tformula_database_filename_provider_v.ml";; 
*)

let env_chm = Unix.getenv "CHM";;

test_number 1 (
Formula_database_filename_provider_v.provide ()
(* : Formula_database_filename_provider_v.Filename_p.filename *)
=
Filename_p.filename (env_chm ^ "/chemicalset_databases/ldb/chemicalset_formulas.ldb")
);;

