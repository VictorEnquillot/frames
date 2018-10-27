open Make_test_v;;

testing "Usagefile_interface_v with
   Usagefile_interface_u_figure_symbol_figure.ml";;

(* toplevel 
   #use "Usagefile_interface_u_figure_symbol_figure.ml";;

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

let nam_cat = "symbol";;
let sym_cat = Category_symbol_v.make nam_cat;;
let dou_cat = (sym_cat, sym_dos) ;;

let sym_enp_l = Category_interface_v.make_of_tuple dou_cat;;

test_number 2 (
 sym_enp_l 
(* : Entity_propert.entity_proper_symbol list *)
=
  [Entity_symbol_t.Entity_proper "figure";
   Entity_symbol_t.Entity_proper "triangle";
   Entity_symbol_t.Entity_proper "triangle_isoceles";
   Entity_symbol_t.Entity_proper "triangle_scalene";
   Entity_symbol_t.Entity_proper "coordinate";
   Entity_symbol_t.Entity_proper "coordinate_cartesian";
   Entity_symbol_t.Entity_proper "coordinate_cylindrical";
   Entity_symbol_t.Entity_proper "coordinate_polar";
   Entity_symbol_t.Entity_proper "coordinate_spherical"]
);;

let nam_enp = "entity_proper";;
let str_enp = "coordinate_cartesian";;
let sym_enp = Entity_symbol_v.make nam_enp str_enp;;
let tri_enp = (sym_enp, sym_cat, sym_dos) ;;

let sym_cof_l = Entity_interface_v.make_of_tuple tri_enp;;

test_number 3 (
sym_cof_l 
(* : Contentfile_symbol_t.contentfile_symbol list *)
=
[Contentfile_symbol_t.Type_alone; 
 Contentfile_symbol_t.Value_alone]
);;

let nam_cof = "type_alone";;
let sym_cof = Contentfile_symbol_v.make nam_cof;;
let qua_cof = (sym_cof, sym_enp, sym_cat, sym_dos) ;;

let sym_usf_l = Contentfile_interface_v.make_of_tuple qua_cof;;

test_number 4 (
sym_usf_l 
(* : Usagefile_symbol_t.usagefile_symbol list *) 
=
[Usagefile_symbol_t.Usagefile_implementation_symbol
   Usagefile_implementation_symbol_t.Implementation_for_symbol]
);;

let nam_cof = "value_alone";;
let sym_cof = Contentfile_symbol_v.make nam_cof;;
let qua_cof = (sym_cof, sym_enp, sym_cat, sym_dos) ;;

let sym_usf_l = Contentfile_interface_v.make_of_tuple qua_cof;;

test_number 5 (
sym_usf_l 
(* : Usagefile_symbol_t.usagefile_symbol list *) 
=
  [Usagefile_symbol_t.Usagefile_implementation_symbol
    Usagefile_implementation_symbol_t.Implementation_for_symbol;
   Usagefile_symbol_t.Usagefile_interface_symbol
    Usagefile_interface_symbol_t.Interface_for_symbol]
);;

let nam_usf = "implementation_for_symbol";;
let sym_usf = Usagefile_symbol_v.make nam_usf;;
let qui_usf = (sym_usf, sym_usf, sym_enp, sym_cat, sym_dos) ;;

let sym_usf_l = Usagefile_interface_v.make qui_usf soi_usf;;

test_number 6 (
sym_usf_l 
(* : Usagefile_symbol_t.usagefile_symbol list *) 
=
[]
);;
