open Make_test_v;;

testing "Entity_interface_v with
   Entity_proper_interface_u_figure_symbol_figure.ml";;

(* toplevel 
   #use "Entity_proper_interface_u_figure_symbol_figure.ml";;

*)

let nam_dos = "figure";;
let sym_dos = Domain_symbol_v.make nam_dos "";;

let sym_cat_l = Domainset_interface_v.make sym_dos;;

let nam_cat = "symbol";;
let sym_cat = Category_symbol_v.make nam_cat;;
let dou_cat = (sym_cat, sym_dos) ;;

let sym_enp_l = Category_interface_v.make_of_tuple dou_cat;;

let nam_enp = "entity_proper_with_sons";;
let str_enp = "coordinate_cartesian";;
let sym_enp = Entity_proper_symbol_v.make nam_enp str_enp;;
let tri_enp = (sym_enp, sym_cat, sym_dos) ;;

let sym_cof_l = Entity_proper_interface_v.make_of_tuple tri_enp;;

test_number 1 (
sym_cof_l 
(* : Contentfile_symbol_t.contentfile_symbol list *)
=
[Contentfile_symbol_t.Type_alone; 
 Contentfile_symbol_t.Value_alone]
);;
