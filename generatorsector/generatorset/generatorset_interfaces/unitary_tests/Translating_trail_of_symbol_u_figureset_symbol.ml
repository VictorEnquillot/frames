open Make_test_v;;

testing "Translating_trail_of_symbol_v with
   Translating_trail_of_symbol_u_figure_symbol.ml";;

(* toplevel 
   #use "Translating_trail_of_symbol_u_figure_symbol.ml";; 

*)

let nam_dos = "figure";;
let sym_dos = Domain_symbol_v.make nam_dos "";;
let tra_dos = Translating_trail_of_symbol_v.domainset_trail_of_domainset_symbol sym_dos;;

test_number 1 (
tra_dos
(* : Trail_t.trail *)
= 
[("domain", "figure")]
);;


let nam_cat = "symbol";;
let sym_cat = Category_symbol_v.make nam_cat;;
let tra_cat = Translating_trail_of_symbol_v.category_trail_of_domainset_symbol_of_category_symbol sym_dos sym_cat;;

test_number 2 (
tra_cat
(* : Trail_t.trail *)
= 
  [("category", "symbol"); ("domain", "figure")]
);;

let sym_ent = Entity_symbol_v.ofstring "point_constructor";;
let ban_ent = Translating_trail_of_symbol_v.entity_basename_for_trail sym_ent;;

test_number 3 (
ban_ent
(* : string *)
=
 "point_constructor:ofstring"
);;

let tri_ent = (sym_ent, sym_cat, sym_dos);;
let tra_ent = Translating_trail_of_symbol_v.entity_trail_of_entity_tritup tri_ent;;

test_number 4 (
tra_ent 
(* : Trail_t.trail *)
=
  [("entity", "point_constructor:ofstring"); 
   ("category", "symbol");
   ("domain", "figure")]
);;
