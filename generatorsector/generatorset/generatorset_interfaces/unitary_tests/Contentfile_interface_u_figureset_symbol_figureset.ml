open Make_test_v;;

testing "Contentfile_interface_v with
   Contentfile_interface_u_figure_symbol_figure.ml";;

(* toplevel 
   #use "Contentfile_interface_u_figure_symbol_figure.ml";;

*)

let nam_dos = "figure";;
let sym_dos = Domain_symbol_v.make nam_dos "";;

let sym_cat_l = Domainset_interface_v.make sym_dos;;

let nam_cat = "symbol";;
let sym_cat = Category_symbol_v.make nam_cat;;
let dou_cat = (sym_cat, sym_dos) ;;

let enp_l = Category_interface_v.make_of_tuple dou_cat;;

let nam_ent = "entity_proper_with_sons";;
let str = "coordinate_cartesian";;
let sym_ent = Entity_symbol_v.make nam_ent str;;
let tri_ent = (sym_ent, sym_cat, sym_dos) ;;

let sym_cof_l = Entity_interface_v.make_of_tuple tri_ent;;

test_number 1 (
sym_cof_l 
(* : Contentfile_symbol_t.contentfile_symbol list *)
=
[Contentfile_symbol_t.Type_alone; 
 Contentfile_symbol_t.Value_alone]
);;

let nam_cof = "type_alone";;
let sym_cof = Contentfile_symbol_v.make nam_cof;;
let qua_cof = (sym_cof, sym_ent, sym_cat, sym_dos) ;;

let sym_usf_l = Contentfile_interface_v.make_of_tuple qua_cof;;

test_number 2 (
sym_usf_l 
(* : Usagefile_symbol_t.usagefile_symbol list *) 
=
  [Usagefile_symbol_t.Usagefile_for_symbol_symbol
    Usagefile_for_symbol_symbol_t.Implementation_for_symbol]
);;

let nam_cof = "value_alone";;
let sym_cof = Contentfile_symbol_v.make nam_cof;;
let qua_cof = (sym_cof, sym_ent, sym_cat, sym_dos) ;;

let sym_usf_l = Contentfile_interface_v.make_of_tuple qua_cof;;

test_number 3 (
sym_usf_l 
(* : Usagefile_implementation_symbol_t.usagefile_implementation_symbol list *) 
=
  [Usagefile_symbol_t.Usagefile_for_symbol_symbol
    Usagefile_for_symbol_symbol_t.Implementation_for_symbol;
   Usagefile_symbol_t.Usagefile_for_symbol_symbol
    Usagefile_for_symbol_symbol_t.Interface_for_symbol]
);;

