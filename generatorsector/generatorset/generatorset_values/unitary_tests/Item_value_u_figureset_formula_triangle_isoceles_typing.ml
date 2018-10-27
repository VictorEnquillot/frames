open Make_test_v;;

testing "Item_value_v
   Item_value_u_figureset_formula_triangle_isoceles_typing.ml";;

(* toplevel 
   #use "Item_value_u_figureset_formula_triangle_isoceles_typing.ml";;

*)

let nam_dom = "figure";;
let nam_cat = "formula";;
let nam_ent = "triangle_isoceles";;
let nam_cof = "type_alone";;
let nam_usf = "implementation_for_formula";;
let nam_ite = "typing_for_formula";;

let sym_dom = Domain_symbol_v.make nam_dom "";;
let idx_dom = Domain_symbol_v.list_index_of_domain_symbol sym_dom;;
let soi_dom = Sole_index_v.make idx_dom [];;
let gss_dom = Generatorset_symbol_v.generatorset_symbol_of_domain_symbol sym_dom;;
Generatorset_symbol_by_sole_index_register_v.store soi_dom gss_dom;;
let tag_dom = Tag_v.make sym_dom soi_dom;;

let tag_cat_l = Domain_formula_v.category_tag_list_off_domain_tag tag_dom;;
let sel_cat = (fun c -> Category_symbol_v.name c = nam_cat);;
let tag_cat = Doublet_list_v.find_if_left sel_cat tag_cat_l;;

let tag_ent_l = Category_formula_v.entity_tag_list_off_category_tag tag_cat;;
let sel_ent = (fun e -> Entity_symbol_v.string_off e = nam_ent);;
let tag_ent = Doublet_list_v.find_if_left sel_ent tag_ent_l;;

let tag_cof_l = Entity_formula_v.contentfile_tag_list_off_entity_tag tag_ent;;
let sel_cof = (fun c -> Contentfile_symbol_v.name c = nam_cof);;
let tag_cof = Doublet_list_v.find_if_left sel_cof tag_cof_l;;

let tag_usf_l = Contentfile_formula_v.usagefile_tag_list_off_contentfile_tag tag_cof;;
let sel_usf = (fun u -> Usagefile_symbol_v.name u = nam_usf);;
let tag_usf = Doublet_list_v.find_if_left sel_usf tag_usf_l;;

let tag_ite_l = Usagefile_formula_v.item_tag_list_off_usagefile_tag tag_usf;;
let sel_ite = (fun i -> Item_symbol_v.name i = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite tag_ite_l;;

test_number 1 (
tag_ite
(* : Item_symbol_t.item_symbol * Sole_index_t.sole_index *)
=
  (Item_symbol_t.Item_for_formula_symbol
    (Item_for_formula_symbol_t.Item_for_formula_by_group_topsons_symbol
      Item_for_formula_by_group_topsons_symbol_t.Typing_for_formula),
   [2; 1; 1; 9; 2; 2])
);;

let nam_fil = Item_value_v.fullnameoffile "./" tag_ite;;

test_number 2 (
nam_fil
=
"./Triangle_isoceles_formula_typing_for_formula_t.ml"
);;

Item_value_v.write "./" tag_ite;;

let str_l = Item_value_v.string_list_off_item_tag tag_ite;;

test_number 3 (
 str_l 
(* : string list *)
=
["(** {6 Typing_for_formula} *)"; 
 "type triangle_isoceles_formula =";
 "  | Triangle_isoceles_equilateral of Point_tag_t.point_tag list";
 "  | Triangle_isoceles_right of Point_tag_t.point_tag list";
 "  | Triangle_isoceles_acute of Point_tag_t.point_tag list";
 "  | Triangle_isoceles_obtuse of Point_tag_t.point_tag list"; 
 ";;"]
);;
