open Make_test_v;;

testing "Item_symbol_value_v
   Item_value_u_figureset_symbol_figureset_abbreviating.ml";;

(* toplevel 
   #use "Item_value_u_figureset_symbol_figureset_abbreviating.ml";;

*)

let nam_cod = "Item_value_u_figureset_symbol_figureset_abbreviating.ml";;

let nam_dom = "figure";;
let nam_cat = "symbol";;
let nam_ent = "figure";;
let nam_cof = "value_alone";;
let nam_usf = "implementation";;

let sym_dom = Domain_symbol_v.make nam_dom "";;
let idx_dom = Domain_symbol_v.list_index_of_domain_symbol sym_dom;;
let soi_dom = Sole_index_v.make idx_dom [];;
let gss_dom = Generatorset_symbol_v.generatorset_symbol_of_domain_symbol sym_dom;;
Generatorset_symbol_by_sole_index_register_v.store soi_dom gss_dom;;
let tag_dom = Tag_v.make sym_dom soi_dom;;
let for_dom = Domain_formula_v.retrieve tag_dom;;

let sel_cat = (fun c -> Category_symbol_v.name c = nam_cat);;
let tag_cat = Doublet_list_v.find_if_left sel_cat for_dom;;
let for_cat = Category_formula_v.retrieve tag_cat;;
let tag_ent_l = Category_formula_v.entity_tag_list_off_category_formula for_cat;;

let sel_ent = (fun e -> Entity_symbol_v.string_off e = nam_ent);;
let tag_ent = Doublet_list_v.find_if_left sel_ent tag_ent_l;;
let for_ent = Entity_formula_v.retrieve tag_ent;;

let sel_cof = (fun c -> Contentfile_symbol_v.name c = nam_cof);;
let tag_cof = Doublet_list_v.find_if_left sel_cof for_ent;;
let for_cof = Contentfile_formula_v.retrieve tag_cof;;

let sel_usf = (fun u -> Usagefile_symbol_v.name u = nam_usf);;
let tag_usf = Doublet_list_v.find_if_left sel_usf for_cof;;
let for_usf = Usagefile_formula_v.retrieve tag_usf;;

test_number 1 (
for_usf 
(* : Item_symbol_t.item_symbol Tag_t.tag list *)
=
  [(Item_symbol_t.Item_for_any_only_top_symbol Item_for_symbol_only_top_symbol_t.Heading,
    [1; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_for_any_only_top_symbol Item_for_symbol_only_top_symbol_t.Documenting,
    [2; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_by_group_topsons_symbol Item_by_group_topsons_symbol_t.Naming,
    [3; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_topson_notleaf_symbol
     Item_each_topson_notleaf_symbol_t.Extracting_topson_for_symbol,
    [4; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_grandson_notleaf_symbol
     Item_each_grandson_notleaf_symbol_t.Extracting_grandson_for_symbol,
    [5; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_topson_notleaf_symbol
     Item_each_topson_notleaf_symbol_t.Querying_topson,
    [6; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_grandson_notleaf_symbol
     Item_each_grandson_notleaf_symbol_t.Querying_grandson,
    [7; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_topson_notleaf_symbol
     Item_each_topson_notleaf_symbol_t.Upgrading_topson,
    [8; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_grandson_notleaf_symbol
     Item_each_grandson_notleaf_symbol_t.Upgrading_grandson,
    [9; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_leaf_symbol
     Item_each_leaf_symbol_t.Abbreviating_topson,
    [10; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_leaf_symbol
     Item_each_leaf_symbol_t.Abbreviating_grandson,
    [11; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_by_group_topsons_symbol Item_by_group_topsons_symbol_t.Making,
    [12; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_for_any_only_top_symbol Item_for_symbol_only_top_symbol_t.Ending,
    [13; 1; 2; 1; 7; 2])]
);;

let nam_ite = "abbreviating_topson";;
let sel_ite = (fun i -> Item_symbol_v.name i = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite for_usf;; 

test_number 2 (
tag_ite 
(* : Item_symbol_t.item_symbol * Sole_index_t.sole_index *)
=
  (Item_symbol_t.Item_each_leaf_symbol
    Item_each_leaf_symbol_t.Abbreviating_topson,
   [10; 1; 2; 1; 7; 2])
);;

let for_ite = Item_formula_v.retrieve tag_ite;;

test_number 3 (
for_ite
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
=
  [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       (Camlparagraph_for_any_comment_symbol_t.Item_title
         "abbreviating_topson")),
    [1; 10; 1; 2; 1; 7; 2])]
);;

let val_ite = Item_value_v.make tag_ite;;

test_number 4 (
val_ite
(* : Item_value_t.item_value *)
  =  
 [["(** {6 Abbreviating_topson} *)"]]
);;

let nam_ite = "abbreviating_grandson";;
let sel_ite = (fun i -> Item_symbol_v.name i = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite for_usf;; 

test_number 5 (
tag_ite 
(* : Item_symbol_t.item_symbol * Sole_index_t.sole_index *)
=
(Item_symbol_t.Item_each_leaf_symbol
   Item_each_leaf_symbol_t.Abbreviating_grandson,
 [11; 1; 2; 1; 7; 2])
);;

let for_ite = Item_formula_v.retrieve tag_ite;;

test_number 6 (
List_v.sublist_of_int_of_int_of_list 0 9 for_ite
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
=
[(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
   (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
     (Camlparagraph_for_any_comment_symbol_t.Item_title
       "abbreviating_grandson")),
  [1; 11; 1; 2; 1; 7; 2]);
 (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
   (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
     (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
       Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_nullary)),
  [2; 11; 1; 2; 1; 7; 2]);
 (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
   (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
     (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
       Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_nullary)),
  [3; 11; 1; 2; 1; 7; 2]);
 (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
   (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
     (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
       Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_nullary)),
  [4; 11; 1; 2; 1; 7; 2]);
 (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
   (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
     (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
       Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_nullary)),
  [5; 11; 1; 2; 1; 7; 2]);
 (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
   (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
     (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
       Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_nullary)),
  [6; 11; 1; 2; 1; 7; 2]);
 (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
   (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
     (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
       Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_nullary)),
  [7; 11; 1; 2; 1; 7; 2]);
 (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
   (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
     (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
       Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_nullary)),
  [8; 11; 1; 2; 1; 7; 2]);
 (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
   (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
     (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
       Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_nullary)),
  [9; 11; 1; 2; 1; 7; 2]);
 (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
   (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
     (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
       Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_nullary)),
  [10; 11; 1; 2; 1; 7; 2])]
);;

let val_ite = Item_value_v.make tag_ite;;

test_number 7 (
val_ite
(* : string *)
  =  
  [["(** {6 Abbreviating_grandson} *)"];
   ["let triangle_isoceles_equilateral = figure_symbol_of_triangle_symbol Triangle_symbol_v.triangle_isoceles_equilateral;;"];
   ["let triangle_isoceles_right = figure_symbol_of_triangle_symbol Triangle_symbol_v.triangle_isoceles_right;;"];
   ["let triangle_isoceles_acute = figure_symbol_of_triangle_symbol Triangle_symbol_v.triangle_isoceles_acute;;"];
   ["let triangle_isoceles_obtuse = figure_symbol_of_triangle_symbol Triangle_symbol_v.triangle_isoceles_obtuse;;"];
   ["let triangle_scalene_right = figure_symbol_of_triangle_symbol Triangle_symbol_v.triangle_scalene_right;;"];
   ["let triangle_scalene_acute = figure_symbol_of_triangle_symbol Triangle_symbol_v.triangle_scalene_acute;;"];
   ["let triangle_scalene_obtuse = figure_symbol_of_triangle_symbol Triangle_symbol_v.triangle_scalene_obtuse;;"];
   ["let vector_3d = figure_symbol_of_vector_symbol Vector_symbol_v.vector_3d;;"];
   ["let vector_2d = figure_symbol_of_vector_symbol Vector_symbol_v.vector_2d;;"];
   ["let vector_1d = figure_symbol_of_vector_symbol Vector_symbol_v.vector_1d;;"];
   ["let point_3d = figure_symbol_of_point_symbol Point_symbol_v.point_3d;;"];
   ["let point_2d = figure_symbol_of_point_symbol Point_symbol_v.point_2d;;"];
   ["let point_1d = figure_symbol_of_point_symbol Point_symbol_v.point_1d;;"];
   ["let x_3d = figure_symbol_of_coordinate_symbol Coordinate_symbol_v.x_3d;;"];
   ["let y_3d = figure_symbol_of_coordinate_symbol Coordinate_symbol_v.y_3d;;"];
   ["let z_3d = figure_symbol_of_coordinate_symbol Coordinate_symbol_v.z_3d;;"];
   ["let cylindrical_rho = figure_symbol_of_coordinate_symbol Coordinate_symbol_v.cylindrical_rho;;"];
   ["let cylindrical_phi = figure_symbol_of_coordinate_symbol Coordinate_symbol_v.cylindrical_phi;;"];
   ["let cylindrical_zed = figure_symbol_of_coordinate_symbol Coordinate_symbol_v.cylindrical_zed;;"];
   ["let spherical_rho = figure_symbol_of_coordinate_symbol Coordinate_symbol_v.spherical_rho;;"];
   ["let spherical_phi = figure_symbol_of_coordinate_symbol Coordinate_symbol_v.spherical_phi;;"];
   ["let spherical_theta = figure_symbol_of_coordinate_symbol Coordinate_symbol_v.spherical_theta;;"];
   ["let x_2d = figure_symbol_of_coordinate_symbol Coordinate_symbol_v.x_2d;;"];
   ["let y_2d = figure_symbol_of_coordinate_symbol Coordinate_symbol_v.y_2d;;"];
   ["let polar_rho = figure_symbol_of_coordinate_symbol Coordinate_symbol_v.polar_rho;;"];
   ["let polar_theta = figure_symbol_of_coordinate_symbol Coordinate_symbol_v.polar_theta;;"];
   ["let coordinate_1d = figure_symbol_of_coordinate_symbol Coordinate_symbol_v.coordinate_1d;;"]]
);;

test_number 8 (
Item_value_v.fullnameoffile "./" tag_ite
=
"./Figure_symbol_abbreviating_grandson_v.ml"
);;

Item_value_v.write "./" tag_ite;; 
  

