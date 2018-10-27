open Make_test_v;;

testing "Kind_symbol_list_by_category_symbol_provider_v 
   Kind_symbol_list_by_category_symbol_provider_u_figure.ml"

(* toplevel 
   #use "Kind_symbol_list_by_category_symbol_provider_u_figure.ml";;

*)

let nam_dos = "figure";;
let sym_dos = Domain_symbol_v.make nam_dos "";;

let nam_cat = "formula";;
let sym_cat = Category_symbol_v.make nam_cat;;

let sym_kin_l = Kind_symbol_list_by_category_symbol_provider_v.provide sym_cat;;

test_number 1 (
sym_kin_l
(* : Kind_symbol_t.kind_symbol list *)
=
  [Kind_symbol_t.Kind_type; 
   Kind_symbol_t.Kind_type_private;
   Kind_symbol_t.Kind_content; 
   Kind_symbol_t.Kind_description]
);;


let nam_cat = "symbol";;
let sym_cat = Category_symbol_v.make nam_cat;;

let sym_kin_l = Kind_symbol_list_by_category_symbol_provider_v.provide sym_cat;;

test_number 2 (
sym_kin_l
(* : Kind_symbol_t.kind_symbol list *)
=
  [Kind_symbol_t.Kind_type; 
   Kind_symbol_t.Kind_type_private;
   Kind_symbol_t.Kind_content; 
   Kind_symbol_t.Kind_description]
);;

