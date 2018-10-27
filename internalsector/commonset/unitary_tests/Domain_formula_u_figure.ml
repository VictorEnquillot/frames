open Make_test_v;;

testing "Domain_formula_v
   Domain_formula_u_figure.ml"

(* toplevel 
   #use "Domain_formula_u_figure.ml";;

*)

let nam_dom = "figure";;
let sym_dom = Domain_symbol_v.make nam_dom "";;
let idx_dom = Domain_symbol_v.list_index_of_domain_symbol sym_dom;; 
let soi_dom = Sole_index_v.make idx_dom [];;
let tag_dom = Tag_v.make sym_dom soi_dom;;

test_number 1 (
tag_dom 
(* : Domain_symbol_t.domain_symbol Tag_t.tag *)
  =
  (Domain_symbol_t.Figure, [3])
);;

let tag_tfi_l = Domain_formula_v.build_n_store sym_dom soi_dom;;

test_number 2 (
tag_tfi_l 
(* : Target_symbol_t.target_symbol Tag_t.tag list *)
=
[(Target_symbol_t.Target_figureset "perimeter_ratio_t_over_u", [1; 3]);
 (Target_symbol_t.Target_figureset "triangle_scalene_right_surface", [2; 3]);
 (Target_symbol_t.Target_figureset "triangle_equilateral_perimeter", [3; 3])]
);;

let tag_tar_l = Domain_formula_v.target_tag_list_off_domain_tag tag_dom;;

test_number 3 (
tag_tar_l 
(* : Target_tag_t.target_tag list *)
=
  [(Target_symbol_t.Target_figureset "perimeter_ratio_t_over_u", [1; 3]);
   (Target_symbol_t.Target_figureset "triangle_scalene_right_surface",
    [2; 3]);
   (Target_symbol_t.Target_figureset "triangle_equilateral_perimeter",
    [3; 3])]
);;

let for_dom = Domain_formula_v.retrieve tag_dom;;

test_number 4 (
for_dom 
(* : Domain_formula_t.domain_formula *)
=
Domain_formula_t.Figure tag_tar_l
);;
