open Make_test_v;;

testing "Item_value_v
   Item_value_u_figureset_formula_triangle_isoceles_equilateral_making.ml";;

(* toplevel 
   #use "Item_value_u_figureset_formula_triangle_isoceles_equilateral_making.ml";;

*)

let nam_cod = "Item_value_u_figureset_formula_triangle_isoceles_equilateral_making.ml";;

let nam_dos = "figureset";;
let nam_cat = "formula";;
let nam_ent = "triangle_isoceles_equilateral";;
let nam_cof = "value_alone";;
let nam_usf = "implementation";;
let nam_ite = "making";;

let sym_dos = Domainset_symbol_v.make nam_dos;;
let idx_dos = Domainset_symbol_v.list_index_of_domainset_symbol sym_dos;;
let soi_dos = Sole_index_v.make idx_dos [];;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_register_v.store soi_dos gss_dos;;
let tag_dos = Tag_v.make sym_dos soi_dos;;
let for_dos = Domainset_formula_v.retrieve tag_dos;;

let sel_cat = (fun c -> Category_symbol_v.name c = nam_cat);;
let tag_cat = Doublet_list_v.find_if_left sel_cat for_dos;;
let for_cat = Category_formula_v.retrieve tag_cat;;
let tag_ent_l = Category_formula_v.entity_tag_list_off_category_formula for_cat;;

let sel_ent = (fun e -> Entity_symbol_v.string_off e = nam_ent);;
let tag_ent = Doublet_list_v.find_if_left sel_ent tag_ent_l;;

test_number 1 (
tag_ent
(* : Entity_symbol_t.entity_proper_symbol * Sole_index_t.sole_index *)
=
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary
        "triangle_isoceles_equilateral")),
   [28; 2; 2])
);;

let for_ent = Entity_formula_v.retrieve tag_ent;;

test_number 2 (
for_ent
(* : Contentfile_symbol_t.contentfile_symbol Tag_t.tag list *)
  =
[(Contentfile_symbol_t.Type_alone, [1; 28; 2; 2]);
 (Contentfile_symbol_t.Value_alone, [2; 28; 2; 2])]
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
  (Usagefile_symbol_t.Implementation, [1; 2; 28; 2; 2])
);;

let for_usf = Usagefile_formula_v.retrieve tag_usf;;

test_number 4 (
for_usf
(* : Item_symbol_t.item_symbol Tag_t.tag list *)
=
  [(Item_symbol_t.Item_for_any_only_top_symbol Item_for_symbol_only_top_symbol_t.Heading,
    [1; 1; 2; 28; 2; 2]);
   (Item_symbol_t.Item_for_any_only_top_symbol Item_for_symbol_only_top_symbol_t.Documenting,
    [2; 1; 2; 28; 2; 2]);
   (Item_symbol_t.Item_by_group_topsons_symbol Item_by_group_topsons_symbol_t.Naming,
    [3; 1; 2; 28; 2; 2]);
   (Item_symbol_t.Item_by_group_topsons_symbol Item_by_group_topsons_symbol_t.Iterating,
    [4; 1; 2; 28; 2; 2]);
   (Item_symbol_t.Item_by_group_topsons_symbol Item_by_group_topsons_symbol_t.Making,
    [5; 1; 2; 28; 2; 2]);
   (Item_symbol_t.Item_for_any_only_top_symbol Item_for_symbol_only_top_symbol_t.Ending,
    [6; 1; 2; 28; 2; 2])]
);;

let idx_ite = 5;;
let tag_ite = List.nth for_usf (idx_ite-1);;

test_number 5 (
tag_ite
(* : Item_symbol_t.item_symbol * Sole_index_t.sole_index *)
=
  (Item_symbol_t.Item_by_group_topsons_symbol Item_by_group_topsons_symbol_t.Making,
   [5; 1; 2; 28; 2; 2])
);;

let for_ite = Item_formula_v.retrieve tag_ite;;

test_number 6 (
for_ite
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
=
  [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       (Camlparagraph_for_any_comment_symbol_t.Item_title "making")),
    [1; 5; 1; 2; 28; 2; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_formula_symbol
     (Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_let_symbol
       (Camlparagraph_for_formula_let_symbol_t.Camlparagraph_for_formula_let_entity_fictive_nullary_symbol
         Camlparagraph_for_formula_let_entity_fictive_nullary_symbol_t.Let_make_entity_fictive_nullary_for_formula)),
    [2; 5; 1; 2; 28; 2; 2])]
);;

let nam_fil = Item_value_v.fullnameoffile "./" tag_ite;;

test_number 7 (
nam_fil
=
"./Triangle_isoceles_equilateral_formula_making_v.ml"
);;

let val_ite = Item_value_v.make tag_ite;;

test_number 8 (
val_ite
(* : Item_value_t.item_value *)
  =
[["(** {6 Making} *)"];
 ["let make sym_tie soi_tri =";
  "  let count = 0 in";
  "(* Point_3d *)";
  "  let count = Integer_v.increment count in";
  "  let sym_po3 = Point_symbol_v.point_3d in";
  "  let dos_of_ste = Figureset_symbol_v.figureset_symbol_of_point_symbol in";
  "  let tag_po3 = Tools_fgeo_v.stem_tag_make_n_store dos_of_ste soi_tri count sym_po3 in";
  "(* Vector_3d *)";
  "  let count = Integer_v.increment count in";
  "  let sym_ve3 = Vector_symbol_v.vector_3d in";
  "  let dos_of_ste = Figureset_symbol_v.figureset_symbol_of_vector_symbol in";
  "  let tag_ve3 = Tools_fgeo_v.stem_tag_make_n_store dos_of_ste soi_tri count sym_ve3 in";
  "  Doublet_v.make tag_po3 tag_ve3";
  ";;"]]
);;

Item_value_v.write "./" tag_ite;; 
