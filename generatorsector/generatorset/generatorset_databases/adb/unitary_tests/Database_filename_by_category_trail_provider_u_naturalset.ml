open Make_test_v;;

testing "Database_filename_by_category_trail_provider_v with
   Database_filename_by_category_trail_provider_u_naturalset.ml";; 

(* toplevel 
   #use "Database_filename_by_category_trail_provider_u_naturalset.ml";; 

*)

let tra_cat = [("category", "symbol"); ("domain", "natural")];;

let nam_fil = Database_filename_by_category_trail_provider_v.nameoffile_of_category_trail tra_cat;;

let fin = Database_filename_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
fin
(* : Filename_p.filename *)
=
Filename_p.filename "/keep/sources/ocaml_top/setup/frames/naturalset/generator/natural_symbols.dat"
);;
