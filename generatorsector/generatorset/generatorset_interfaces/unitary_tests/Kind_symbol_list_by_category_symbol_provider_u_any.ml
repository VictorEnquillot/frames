open Make_test_v;;

testing "Kind_symbol_list_by_category_symbol_provider_v with
   Kind_symbol_list_by_category_symbol_provider_u_any.ml";;

(* toplevel 
   #use "Kind_symbol_list_by_category_symbol_provider_u_any.ml";;

*)

let sym_cat_sym = Category_symbol_v.make "symbol";;
let sym_kin_l_sym = Kind_symbol_list_by_category_symbol_provider_v.provide sym_cat_sym;;

test_number 1 (
sym_cat_sym 
(* : Category_symbol_t.category_symbol *)
  =
Category_symbol_t.Symbol
);;

test_number 2 (
 sym_kin_l_sym
(* : Trail_t.trail list *)
   =
[Kind_symbol_t.Kind_type; 
 Kind_symbol_t.Kind_type_private;
 Kind_symbol_t.Kind_content; 
 Kind_symbol_t.Kind_description]
);;

let sym_cat_for = Category_symbol_v.make "formula";;
let sym_kin_l_for = Kind_symbol_list_by_category_symbol_provider_v.provide sym_cat_for;;

test_number 3 (
sym_cat_for
(* : Category_symbol_t.category_symbol *)
  =
Category_symbol_t.Formula
);;

test_number 4 (
 sym_kin_l_for
(* : Trail_t.trail list *)
   =
[Kind_symbol_t.Kind_type; 
 Kind_symbol_t.Kind_type_private;
 Kind_symbol_t.Kind_content;
 Kind_symbol_t.Kind_description]
);;

