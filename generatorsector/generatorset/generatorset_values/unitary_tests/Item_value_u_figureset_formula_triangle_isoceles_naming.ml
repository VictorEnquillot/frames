open Make_test_v;;

testing "Item_value_v
   Item_value_u_figureset_formula_triangle_isoceles_naming.ml";;

(* toplevel 
   #use "Item_value_u_figureset_formula_triangle_isoceles_naming.ml";;

*)

let nam_cod = "Item_value_u_figureset_formula_triangle_isoceles_naming.ml";;

let nam_dom = "figure";;
let nam_cat = "formula";;
let nam_cof = "value_alone";;
let nam_ite = "naming";;
let nam_enp = "triangle_isoceles";;
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

let tag_enp_l = Category_formula_v.entity_tag_list_off_category_formula for_cat;;
let sel_enp = (fun e -> Entity_symbol_v.string_off e = nam_enp)
let tag_enp = Doublet_list_v.find_if_left sel_enp tag_enp_l;;
let for_enp = Entity_formula_v.retrieve tag_enp;;

let sel_cof = (fun c -> Contentfile_symbol_v.name c = nam_cof);;
let tag_cof = Doublet_list_v.find_if_left sel_cof for_enp;;
let for_cof = Contentfile_formula_v.retrieve tag_cof;;

let sel_usf = (fun u -> Usagefile_symbol_v.name u = nam_usf);;
let tag_usf = Doublet_list_v.find_if_left sel_usf for_cof;;
let for_usf = Usagefile_formula_v.retrieve tag_usf;;

let sel_ite = (fun i -> Item_symbol_v.name i = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite for_usf;; 

test_number 1 (
tag_ite 
(* : Item_symbol_t.item_symbol * Sole_index_t.sole_index *)
=
   (Item_symbol_t.Item_by_group_topsons_symbol Item_by_group_topsons_symbol_t.Naming,
   [3; 1; 2; 3; 2; 2])
);;

let for_ite = Item_formula_v.retrieve tag_ite;;

test_number 2 (
for_ite
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
=
  [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       (Camlparagraph_for_any_comment_symbol_t.Item_title "naming")),
    [1; 3; 1; 2; 3; 2; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_formula_symbol
     (Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_let_symbol
       (Camlparagraph_for_formula_let_symbol_t.Camlparagraph_for_formula_let_entity_proper_symbol
         Camlparagraph_for_formula_let_entity_proper_symbol_t.Let_name_entity_proper_for_formula)),
    [2; 3; 1; 2; 3; 2; 2])]
);;

let nam_fil = Item_value_v.fullnameoffile "./" tag_ite;;

test_number 3 (
nam_fil
=
"./Triangle_isoceles_formula_naming_v.ml"
);;

let val_ite = Item_value_v.make tag_ite;;

test_number 4 (
val_ite
(* : string *)
  =
  [["(** {6 Naming} *)"];
   ["let name = function";
    "(* Triangle_isoceles_equilateral *)";
    "  | Triangle_isoceles_formula_t.Triangle_isoceles_equilateral_formula for_tie ->";
    "  Triangle_isoceles_equilateral_formula_v.name for_tie";
    "(* Triangle_isoceles_right *)";
    "  | Triangle_isoceles_formula_t.Triangle_isoceles_right_formula for_tir ->";
    "  Triangle_isoceles_right_formula_v.name for_tir";
    "(* Triangle_isoceles_acute *)";
    "  | Triangle_isoceles_formula_t.Triangle_isoceles_acute_formula for_tia ->";
    "  Triangle_isoceles_acute_formula_v.name for_tia";
    "(* Triangle_isoceles_obtuse *)";
    "  | Triangle_isoceles_formula_t.Triangle_isoceles_obtuse_formula for_tio ->";
    "  Triangle_isoceles_obtuse_formula_v.name for_tio";
    ";;"]]
);;

Item_value_v.write "./" tag_ite;; 
  

