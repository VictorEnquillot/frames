open Make_test_v;;

testing "Domain_symbol_v with
   Domain_symbol_u_any.ml";;


Parameters_general_register_v.store_force "trace-store" "true";;
Parameters_general_register_v.store_force "trace-provide" "true";;
Parameters_general_register_v.store_force "trace-extract" "true";;


(* toplevel 
   #use "Domain_symbol_u_any.ml";;

*)

open Domain_symbol_list_v;;

let sym_dom_l = domain_symbol_list "some string";;

test_number 1 (
(sym_dom_l : Domain_symbol_t.domain_symbol list ) =
  [Domain_symbol_t.Chemical;
   Domain_symbol_t.Common;
   Domain_symbol_t.Database "some string";
   Domain_symbol_t.Elementary;
   Domain_symbol_t.Fake;
   Domain_symbol_t.Figure;
   Domain_symbol_t.Generator;
   Domain_symbol_t.Input "some string";
   Domain_symbol_t.Logic;
   Domain_symbol_t.Music;
   Domain_symbol_t.Natural;
   Domain_symbol_t.Operator;
   Domain_symbol_t.Property;
   Domain_symbol_t.Prototype]
);;

let sym_n_idx_dom_l = domain_symbol_n_index_list ();;

test_number 2 (
( sym_n_idx_dom_l : (Domain_symbol_t.domain_symbol * int) list ) =
[(Domain_symbol_t.Chemical, 1);
 (Domain_symbol_t.Common, 2);
 (Domain_symbol_t.Database "some string", 3);
 (Domain_symbol_t.Elementary, 4);
 (Domain_symbol_t.Fake, 5);
 (Domain_symbol_t.Figure, 6);
 (Domain_symbol_t.Generator, 7);
 (Domain_symbol_t.Input "some string", 8);
 (Domain_symbol_t.Logic, 9);
 (Domain_symbol_t.Music, 10);
 (Domain_symbol_t.Natural, 11);
 (Domain_symbol_t.Operator, 12);
 (Domain_symbol_t.Property, 13);
 (Domain_symbol_t.Prototype, 14)]
);;

let name_n_idx_dom_l = domain_name_n_index_list ();;

test_number 3 (
(name_n_idx_dom_l : (string * int) list ) =
[("chemical", 1);
 ("common", 2);
 ("database", 3);
 ("elementary", 4);
 ("fake", 5);
 ("figure", 6);
 ("generator", 7);
 ("input", 8);
 ("logic", 9);
 ("music", 10);
 ("natural", 11);
 ("operator", 12);
 ("property", 13);
 ("prototype", 14)]
);;
