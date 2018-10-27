open Make_test_v;;

testing "Entity_fictive_symbol_entity_stem_symbol_doublet_list_by_domain_symbol_provider_v with
   Entity_fictive_symbol_entity_stem_symbol_doublet_list_by_domain_symbol_provider_u_figure.ml";;

(* toplevel 
   #use "Entity_fictive_symbol_entity_stem_symbol_doublet_list_by_domain_symbol_provider_u_figure.ml";;

*)

let nam_dos = "figure";;
let nam_enp = "figure";;

let sym_enp = Entity_symbol_v.top_has_notopsonleaf nam_enp;;

let sym_dos = Domain_symbol_v.make nam_dos "";;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let sym_lea_sym_ste_dol = Entity_fictive_symbol_entity_stem_symbol_doublet_list_by_domain_symbol_provider_v.provide sym_dos;;

test_number 1 (
sym_lea_sym_ste_dol
(*  (Entity_fictive_symbol_t.entity_fictive_symbol,
   Entity_propert.entity_proper_symbol)
  Doublet_list_t.doublet_list *)
=
  [(Entity_fictive_symbol_t.Nonsonnullary "triangle_isoceles_equilateral",
    Entity_symbol_t.Entity_proper "triangle_isoceles");
   (Entity_fictive_symbol_t.Nonsonnullary "triangle_isoceles_right",
    Entity_symbol_t.Entity_proper "triangle_isoceles");
   (Entity_fictive_symbol_t.Nonsonnullary "triangle_isoceles_acute",
    Entity_symbol_t.Entity_proper "triangle_isoceles");
   (Entity_fictive_symbol_t.Nonsonnullary "triangle_isoceles_obtuse",
    Entity_symbol_t.Entity_proper "triangle_isoceles");
   (Entity_fictive_symbol_t.Nonsonnullary "triangle_scalene_right",
    Entity_symbol_t.Entity_proper "triangle_scalene");
   (Entity_fictive_symbol_t.Nonsonnullary "triangle_scalene_acute",
    Entity_symbol_t.Entity_proper "triangle_scalene");
   (Entity_fictive_symbol_t.Nonsonnullary "triangle_scalene_obtuse",
    Entity_symbol_t.Entity_proper "triangle_scalene");
   (Entity_fictive_symbol_t.Nonsonnullary "vector",
    Entity_symbol_t.Entity_proper "vector");
   (Entity_fictive_symbol_t.Nonsonnullary "vector",
    Entity_symbol_t.Entity_proper "vector");
   (Entity_fictive_symbol_t.Nonsonnullary "vector_1d",
    Entity_symbol_t.Entity_proper "vector");
   (Entity_fictive_symbol_t.Nonsonnullary "point_3d",
    Entity_symbol_t.Entity_proper "point");
   (Entity_fictive_symbol_t.Nonsonnullary "point",
    Entity_symbol_t.Entity_proper "point");
   (Entity_fictive_symbol_t.Nonsonnullary "point_1d",
    Entity_symbol_t.Entity_proper "point");
   (Entity_fictive_symbol_t.Nonsonnullary "x_3d",
    Entity_symbol_t.Entity_proper "coordinate_cartesian_3d");
   (Entity_fictive_symbol_t.Nonsonnullary "y_3d",
    Entity_symbol_t.Entity_proper "coordinate_cartesian_3d");
   (Entity_fictive_symbol_t.Nonsonnullary "z_3d",
    Entity_symbol_t.Entity_proper "coordinate_cartesian_3d");
   (Entity_fictive_symbol_t.Nonsonnullary "cylindrical_rho",
    Entity_symbol_t.Entity_proper "coordinate_cylindrical");
   (Entity_fictive_symbol_t.Nonsonnullary "cylindrical_phi",
    Entity_symbol_t.Entity_proper "coordinate_cylindrical");
   (Entity_fictive_symbol_t.Nonsonnullary "cylindrical_zed",
    Entity_symbol_t.Entity_proper "coordinate_cylindrical");
   (Entity_fictive_symbol_t.Nonsonnullary "spherical_rho",
    Entity_symbol_t.Entity_proper "coordinate_spherical");
   (Entity_fictive_symbol_t.Nonsonnullary "spherical_phi",
    Entity_symbol_t.Entity_proper "coordinate_spherical");
   (Entity_fictive_symbol_t.Nonsonnullary "spherical_theta",
    Entity_symbol_t.Entity_proper "coordinate_spherical");
   (Entity_fictive_symbol_t.Nonsonnullary "x",
    Entity_symbol_t.Entity_proper "coordinate_cartesian_2d");
   (Entity_fictive_symbol_t.Nonsonnullary "y_2d",
    Entity_symbol_t.Entity_proper "coordinate_cartesian_2d");
   (Entity_fictive_symbol_t.Nonsonnullary "polar_rho",
    Entity_symbol_t.Entity_proper "coordinate_polar");
   (Entity_fictive_symbol_t.Nonsonnullary "polar_theta",
    Entity_symbol_t.Entity_proper "coordinate_polar");
   (Entity_fictive_symbol_t.Nonsonnullary "coordinate_1d",
    Entity_symbol_t.Entity_proper "coordinate")]
);;

