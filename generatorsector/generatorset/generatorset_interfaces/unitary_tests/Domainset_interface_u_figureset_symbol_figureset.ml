open Make_test_v;;

testing "Domainset_interface_v with
   Domainset_interface_u_figure_symbol_figure.ml";;

(* toplevel 
   #use "Domainset_interface_u_figure_symbol_figure.ml";;

*)

let nam_dos = "figure";;
let sym_dos = Domain_symbol_v.make nam_dos "";;
let sym_cat_l = Domainset_interface_v.make sym_dos;;

test_number 1 (
sym_cat_l 
(* : Category_symbol_t.category_symbol list *)
=
  [Category_symbol_t.Any;
   Category_symbol_t.Formula;
   Category_symbol_t.Mark;
   Category_symbol_t.Path;
   Category_symbol_t.Property;
   Category_symbol_t.Provider;
   Category_symbol_t.Symbol;
   Category_symbol_t.Tag;
   Category_symbol_t.Value;
   Category_symbol_t.Empty]
);;
