open Make_test_v;;

testing "Entity_proper_symbol_list_by_domain_symbol_provider_v with
   Entity_proper_symbol_list_by_domain_symbol_provider_u_figure.ml";;

(* toplevel 
   #use "Entity_proper_symbol_list_by_domain_symbol_provider_u_figure.ml";; 
         
*)

let nam_dos = "figure";;
let nam_enp = "figure";;

let sym_dos = Domain_symbol_v.make nam_dos "";;

test_number 1 (
sym_dos
(* : Domain_symbol_t.domainset_symbol *)
 =
  Domain_symbol_t.Figure
);;

let sym_enp_l = Entity_proper_symbol_list_by_domain_symbol_provider_v.provide sym_dos;;

test_number 2 (
 sym_enp_l 
(* : Entity_symbol_t.entity_symbol list *)
=
  [Entity_proper_symbol_t.Entity_proper_with_sons "figure";
   Entity_proper_symbol_t.Entity_proper_with_sons "coordinate";
   Entity_proper_symbol_t.Entity_proper_with_sons "coordinate_cartesian";
   Entity_proper_symbol_t.Entity_proper_with_sons "coordinate_cylindrical";
   Entity_proper_symbol_t.Entity_proper_with_sons "coordinate_polar";
   Entity_proper_symbol_t.Entity_proper_with_sons "coordinate_spherical";
   Entity_proper_symbol_t.Entity_proper_with_one_son "point";
   Entity_proper_symbol_t.Entity_proper_with_sons "triangle";
   Entity_proper_symbol_t.Entity_proper_with_sons "triangle_isoceles";
   Entity_proper_symbol_t.Entity_proper_with_sons "triangle_scalene";
   Entity_proper_symbol_t.Entity_proper_with_one_son "vector";
   Entity_proper_symbol_t.Entity_proper_with_one_son "fake";
   Entity_proper_symbol_t.Entity_proper_with_one_son "fake_son"]
);;

let sym_enp = List.find (fun e -> Entity_proper_symbol_v.string_off e = nam_enp) sym_enp_l;;

test_number 3 (
sym_enp
(* : Entity_symbol_t.entity_symbol *)
=
Entity_proper_symbol_t.Entity_proper_with_sons "figure"
);;

