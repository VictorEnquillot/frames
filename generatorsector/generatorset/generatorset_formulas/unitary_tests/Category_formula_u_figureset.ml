open Make_test_v;;

testing "Category_formula_v with 
   Category_formula_u_figureset.ml";;

(* toplevel 
   #use "Category_formula_u_figureset.ml";;

*)

let nam_dos = "figureset";;

let sym_dos = Domainset_symbol_v.make nam_dos;;
let idx_dos = Domainset_symbol_v.list_index_of_domainset_symbol sym_dos;;
let soi_dos = Sole_index_v.make idx_dos [];;
let tag_dos = Tag_v.make sym_dos soi_dos;;
let tag_cat_l = Domainset_formula_v.category_tag_list_off_domainset_tag tag_dos;;

test_number 1 (
tag_cat_l
(* : Category_symbol_t.category_symbol Tag_t.tag list *)
=
[(Category_symbol_t.Any, [1; 2]);
 (Category_symbol_t.Formula, [2; 2]);
 (Category_symbol_t.Mark, [3; 2]);
 (Category_symbol_t.Path, [4; 2]);
 (Category_symbol_t.Property, [5; 2]);
 (Category_symbol_t.Provider, [6; 2]);
 (Category_symbol_t.Symbol, [7; 2]);
 (Category_symbol_t.Tag, [8; 2]);
 (Category_symbol_t.Value, [9; 2]);
 (Category_symbol_t.Empty, [10; 2])]
);;

let nam_cat = "symbol";;
let sel_cat = (fun c -> Category_symbol_v.name c = nam_cat);;
let tag_cat = Doublet_list_v.find_if_left sel_cat tag_cat_l;;

test_number 2 (
tag_cat
(* : Category_symbol_t.category_symbol * Sole_index_t.sole_index *)
=
(Category_symbol_t.Symbol, [7; 2])
);;
(***
let for_cat_sym = Category_formula_v.retrieve tag_cat;;

test_number 3 (
for_cat_sym
(* : Entity_symbol_t.Entity_proper_symbol Tag_t.tag list *)
=
[]
);;

let nam_cat = "formula";;
let sel_cat = (fun c -> Category_symbol_v.name c = nam_cat);;
let tag_cat = Doublet_list_v.find_if_left sel_cat for_dos;;

test_number 4 (
tag_cat
(* : Category_symbol_t.category_symbol * Sole_index_t.sole_index *)
=
(Category_symbol_t.Formula, [2; 2])
);;

let for_cat_for = Category_formula_v.retrieve tag_cat;;
let tag_efn_l = Category_formula_v.entity_fictive_nullary_tag_list_off_category_formula for_cat_for;;

test_number 5 (
tag_efn_l
(* : (, Sole_index_t.sole_index)
  Doublet_list_t.doublet_list *)
=
  [(Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare "coordinate_1d")),
    [15; 2; 2]);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare "cylindrical_phi")),
    [16; 2; 2]);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare "cylindrical_rho")),
    [17; 2; 2]);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare "cylindrical_zed")),
    [18; 2; 2]);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare "point_1d")),
    [19; 2; 2]);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare "point")),
    [20; 2; 2]);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare "point")),
    [21; 2; 2]);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare "polar_rho")),
    [22; 2; 2]);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare "polar_theta")),
    [23; 2; 2]);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare "spherical_phi")),
    [24; 2; 2]);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare "spherical_rho")),
    [25; 2; 2]);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare "spherical_theta")),
    [26; 2; 2]);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare
         "triangle_isoceles_acute")),
    [27; 2; 2]);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare
         "triangle_isoceles_equilateral")),
    [28; 2; 2]);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare
         "triangle_isoceles_obtuse")),
    [29; 2; 2]);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare
         "triangle_isoceles_right")),
    [30; 2; 2]);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare
         "triangle_scalene_acute")),
    [31; 2; 2]);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare
         "triangle_scalene_obtuse")),
    [32; 2; 2]);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare
         "triangle_scalene_right")),
    [33; 2; 2]);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare "vector_1d")),
    [34; 2; 2]);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare "vector")),
    [35; 2; 2]);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare "vector")),
    [36; 2; 2]);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare "x")),
    [37; 2; 2]);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare "x_3d")),
    [38; 2; 2]);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare "y")),
    [39; 2; 2]);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare "y_3d")),
    [40; 2; 2]);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare "z_3d")),
    [41; 2; 2])]
);;

test_number 6 (
Doublet_list_v.left_list_off_doublet_list (Category_formula_v.entity_proper_tag_list_off_category_formula for_cat_sym)
=
Doublet_list_v.left_list_off_doublet_list (Category_formula_v.entity_proper_tag_list_off_category_formula for_cat_for)
);;
 
*)
