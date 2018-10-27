open Make_test_v;;

testing "Entity_constructor_inner_symbol_list_by_domain_symbol_provider_v with
   Entity_constructor_inner_symbol_list_by_domain_symbol_provider_u_figure_symbol.ml";;

(* toplevel 
   #use "Entity_constructor_inner_symbol_list_by_domain_symbol_provider_u_figure_symbol.ml";; 

*)

let nam_dos = "figure";;
let nam_cat = "symbol";;
let tra_dos = Trail_v.make "domain" nam_dos [];;

let sym_dos = Domain_symbol_v.make nam_dos "";;
let sym_cat = Category_symbol_v.make nam_cat;;


let ref_l =
  [Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate");
   Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate_cartesian");
   Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate_cylindrical");
   Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate_polar");
   Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate_spherical");
   Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_one_son "fake");
   Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_one_son "fake_son");
   Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_one_son "point");
   Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "triangle");
   Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "triangle_isoceles");
   Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "triangle_scalene");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_one_son "vector")]
;;

let sym_ent_l = Entity_constructor_inner_symbol_list_by_domain_symbol_provider_v.provide sym_dos;;

test_number 1 (
List_v.are_equivalent_of_list_of_list sym_ent_l ref_l 
);;
