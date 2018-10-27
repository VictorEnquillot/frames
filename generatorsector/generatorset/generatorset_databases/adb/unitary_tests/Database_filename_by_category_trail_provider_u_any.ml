(** {3 Test for database_filename_by_category_trail_provider_v} *)

open Make_test_v;;

testing "Database_filename_by_category_trail_provider_v with
   Database_filename_by_category_trail_provider_u_any.ml";; 

(* toplevel 
   #use "Database_filename_by_category_trail_provider_u_any.ml";; 

*)

let env_fra = Unix.getenv "FRA";;

let tra_cat_sym_che = [("category", "symbol"); ("domain", "chemicalset")];;
let tra_cat_sym_geo = [("category", "symbol"); ("domain", "figure")];;
let tra_cat_sym_gen = [("category", "symbol"); ("domain", "generatorset")];;

let tra_cat_for_che = [("category", "formula"); ("domain", "chemicalset")];;
let tra_cat_for_geo = [("category", "formula"); ("domain", "figure")];;
let tra_cat_for_gen = [("category", "formula"); ("domain", "generatorset")];;

let tra_cat_tag_che = [("category", "tag"); ("domain", "chemicalset")];;
let tra_cat_tag_geo = [("category", "tag"); ("domain", "figure")];;
let tra_cat_tag_gen = [("category", "tag"); ("domain", "generatorset")];;

test_number 1 (
Database_filename_by_category_trail_provider_v.provide tra_cat_sym_che
(* : Database_filename_by_category_trail_provider_v.Filename_p.filename *)
=
Filename_p.filename (env_fra ^ "/chemicalset/generator/chemicalset_symbols.set")
);;

test_number 2 (
Database_filename_by_category_trail_provider_v.provide tra_cat_sym_geo
(* : Database_filename_by_category_trail_provider_v.Filename_p.filename *)
=
Filename_p.filename (env_fra ^ "/figureset/generator/figureset_symbols.set")
);;

test_number 3 (
Database_filename_by_category_trail_provider_v.provide tra_cat_sym_gen
(* : Database_filename_by_category_trail_provider_v.Filename_p.filename *)
=
Filename_p.filename (env_fra ^ "/generatorset/generator/generatorset_symbols.set")
);;

test_number 4 (
Database_filename_by_category_trail_provider_v.provide tra_cat_for_che
(* : Database_filename_by_category_trail_provider_v.Filename_p.filename *)
=
Filename_p.filename (env_fra ^ "/chemicalset/generator/chemicalset_formulas.set")
);;

test_number 5 (
Database_filename_by_category_trail_provider_v.provide tra_cat_for_geo
(* : Database_filename_by_category_trail_provider_v.Filename_p.filename *)
=
Filename_p.filename (env_fra ^ "/figureset/generator/figureset_formulas.set")
);;

test_number 6 (
Database_filename_by_category_trail_provider_v.provide tra_cat_for_gen
(* : Database_filename_by_category_trail_provider_v.Filename_p.filename *)
=
Filename_p.filename (env_fra ^ "/generatorset/generator/generatorset_formulas.set")
);;

test_number 7 (
Database_filename_by_category_trail_provider_v.provide tra_cat_tag_che
(* : Database_filename_by_category_trail_provider_v.Filename_p.filename *)
=
Filename_p.filename (env_fra ^ "/chemicalset/generator/chemicalset_symbols.set")
);;

test_number 8 (
Database_filename_by_category_trail_provider_v.provide tra_cat_tag_geo
(* : Database_filename_by_category_trail_provider_v.Filename_p.filename *)
=
Filename_p.filename (env_fra ^ "/figureset/generator/figureset_symbols.set")
);;

test_number 9 (
Database_filename_by_category_trail_provider_v.provide tra_cat_tag_gen
(* : Database_filename_by_category_trail_provider_v.Filename_p.filename *)
=
Filename_p.filename (env_fra ^ "/generatorset/generator/generatorset_symbols.set")
);;
