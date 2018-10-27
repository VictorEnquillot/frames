open Make_test_v;;

testing "Item_value_v
   Item_value_u_figureset_formula_triangle_making.ml";;

(* toplevel 
   #use "Item_value_u_figureset_formula_triangle_making.ml";;

*)

let nam_cod = "Item_value_u_figureset_formula_triangle_making.ml";;

let nam_dom = "figure";;
let nam_cat = "formula";;
let nam_ent = "triangle";;
let nam_cof = "value_alone";;
let nam_usf = "implementation";;
let nam_ite = "making";;

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

test_number 1 (
tag_ent
(* : Entity_symbol_t.entity_proper_symbol * Sole_index_t.sole_index *)
=
  (
    (Entity_symbol_t.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle")),
   [2; 2; 2])
);;

let for_ent = Entity_formula_v.retrieve tag_ent;;

test_number 2 (
for_ent
(* : Contentfile_symbol_t.contentfile_symbol Tag_t.tag list *)
  =
[(Contentfile_symbol_t.Type_alone, [1; 2; 2; 2]);
 (Contentfile_symbol_t.Value_alone, [2; 2; 2; 2])]
);;

let sel_cof = (fun c -> Contentfile_symbol_v.name c = nam_cof);;
let tag_cof = Doublet_list_v.find_if_left sel_cof for_ent;;
let for_cof = Contentfile_formula_v.retrieve tag_cof;;

let sel_usf = (fun u -> Usagefile_symbol_v.name u = nam_usf);;
let tag_usf = Doublet_list_v.find_if_left sel_usf for_cof;;

test_number 3 (
tag_usf 
(* : Usagefile_symbol_t.usagefile_symbol * Sole_index_t.sole_index *)
=
  (Usagefile_symbol_t.Implementation, [1; 2; 2; 2; 2])
);;

let for_usf = Usagefile_formula_v.retrieve tag_usf;;

let idx_ite = 10;;
let tag_ite = List.nth for_usf (idx_ite-1);;

test_number 4 (
tag_ite
(* : Item_symbol_t.item_symbol * Sole_index_t.sole_index *)
=
  (Item_symbol_t.Item_by_group_topsons_symbol Item_by_group_topsons_symbol_t.Making,
   [10; 1; 2; 2; 2; 2])
);;

let for_ite = Item_formula_v.retrieve tag_ite;;

test_number 5 (
for_ite
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
=
   [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       (Camlparagraph_for_any_comment_symbol_t.Item_title "making")),
    [1; 10; 1; 2; 2; 2; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_formula_symbol
     (Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_let_symbol
       (Camlparagraph_for_formula_let_symbol_t.Camlparagraph_for_formula_let_entity_proper_symbol
         Camlparagraph_for_formula_let_entity_proper_symbol_t.Let_make_entity_proper_for_formula)),
    [2; 10; 1; 2; 2; 2; 2])]
);;

let nam_fil = Item_value_v.fullnameoffile "./" tag_ite;;

test_number 6 (
nam_fil
=
"./Triangle_formula_making_v.ml"
);;

let val_ite = Item_value_v.make tag_ite;;

test_number 7 (
val_ite
(* : Item_value_t.item_value *)
=
  [["(** {6 Making} *)"];
   ["let make sym_tri soi_tri =";
    "  match sym_tri with";
    "(* Triangle_isoceles *)";
    "  | Triangle_symbol_t.Triangle_isoceles_symbol sym_tis ->";
    "  Triangle_isoceles_formula_v.make sym_tis soi_tri";
    "(* Triangle_scalene *)";
    "  | Triangle_symbol_t.Triangle_scalene_symbol sym_trs ->";
    "  Triangle_scalene_formula_v.make sym_trs soi_tri";
    ";;"]]
);;

Item_value_v.write "./" tag_ite;; 
