open Gentest_v;;

testing "Figure_set_body_triangle properties_v";;

(* toplevel 
   #use "ttriangle_properties_v.ml";; 
 *)

module Property_closure_provider_v = Property_closure_provider_v
module Target_closure_v = Target_closure_v
module Target_closure_provider_v = Target_closure_provider_v
module Figure_set_body_triangle_formula_t = Figure_set_body_triangle_formula_t
module Figure_set_body_triangle_formula_v = Figure_set_body_triangle_formula_v
module Figure_set_body_triangle_symbol_t = Figure_set_body_triangle_symbol_t
module Figure_set_body_triangle_symbol_v = Figure_set_body_triangle_symbol_v
module Figure_set_body_triangle_tag_v = Figure_set_body_triangle_tag_v
module Figure_set_body_triangle_closure_v = Figure_set_body_triangle_closure_v
module Tree_canonical_index_v = Tree_canonical_index_v

let smb_ioo = Figure_set_body_triangle_symbol_t.Isosceles_oblique_obtuse;;
let smb_iso = Figure_set_body_triangle_symbol_t.Isosceles_oblique smb_ioo;;
let smb_tri = Figure_set_body_triangle_symbol_t.Isosceles smb_iso;;
let tci_tri = Tree_canonical_index_v.make 1 [];;
let tag_tri = Figure_set_body_triangle_tag_v.make smb_tri tci_tri;;
let frm_tri = Figure_set_body_triangle_formula_v.retrieve tag_tri;;
let val_tri = Figure_set_body_triangle_closure_v.make tag_tri;;

let val_tar = Target_closure_provider_v.provide "current";;
let per_tri = Property_closure_provider_v.provide tag_tri "perimeter";; 
let sur_tri = Property_closure_provider_v.provide tag_tri "surface";; 

testi 0 (
tag_tri 
(* : (Figure_set_body_triangle_symbol_t.triangle_symbol, int list) Doublet_t.doublet *)
=
  (Figure_set_body_triangle_symbol_t.Isosceles (Figure_set_body_triangle_symbol_t.Isosceles_oblique Figure_set_body_triangle_symbol_t.Isosceles_oblique_obtuse),
   [1])
);;

testi 1 (
val_tri 
(* : Figure_set_body_triangle_closure_t.triangle_closure *)
=
([(1., "angstrom"); (1., "angstrom"); (0., "angstrom")],
 ([(0., "angstrom"); (0., "angstrom"); (0., "angstrom")],
  [(2., "angstrom"); (0., "angstrom"); (0., "angstrom")]))
);;

testi 2 (
val_tar 
(* : Target_closure_provider_v.Tgv_t.target_closure *)
  =
{Target_closure_provider_v.Tgv_t.database_name = "adb1"; 
 Target_closure_provider_v.Tgv_t.triangle_name = "T";
 Target_closure_provider_v.Tgv_t.property_name_list = ["surface"; "perimeter"]}
);;

testi 3 (
per_tri
=
2. *. (sqrt 2.)
);;

testi 4 (
sur_tri
=
0.5
);;
