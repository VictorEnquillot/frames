open Make_test_v;;

testing "Database_filename_by_category_trail_provider_v with
   Database_filename_by_category_trail_provider_u_generatorset_item.ml";; 

(* toplevel 
   #use "Database_filename_by_category_trail_provider_u_generatorset_item.ml";; 

*)

let tra_cat = [("category", "symbol"); ("domain", "generatorset")];;
let fin = Database_filename_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
fin
(* : Filename_p.filename *)
=
Filename_p.filename "/keep/sources/ocaml_top/setup/frames/generatorset/generator/generatorset_symbols.set"
);;
