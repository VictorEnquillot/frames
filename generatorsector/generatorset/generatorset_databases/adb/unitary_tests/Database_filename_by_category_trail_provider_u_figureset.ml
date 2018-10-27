open Make_test_v;;

testing "Database_filename_by_category_trail_provider_v with
   Database_filename_by_category_trail_provider_u_figureset.ml";; 

(* toplevel 
   #use "Database_filename_by_category_trail_provider_u_figureset.ml";; 

*)

let tra_cat = [("category", "symbol"); ("domain", "figure")];;

let nam_fil = Database_filename_by_category_trail_provider_v.nameoffile_of_category_trail tra_cat;;

let fin = Database_filename_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
fin
(* : Filename_p.filename *)
=
Filename_p.filename "/keep/sources/ocaml_top/setup/frames/figureset/generator/figure_symbols.dat"
);;
