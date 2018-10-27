open Make_test_v;;

testing "Camlline_formula_v with
   Camlline_formula_u_figureset_formula_triangle_isoceles_typing.ml";;

(* toplevel 
   #use "Camlline_formula_u_figureset_formula_triangle_isoceles_typing.ml";;

*)

let nam_dos = "figureset";;
let nam_cat = "formula";;
let nam_cof = "type_alone";;
let nam_ite = "typing";;
let nam_enp = "triangle_isoceles";;
let nam_usf = "implementation";;

let sym_dos = Domainset_symbol_v.make nam_dos;;
let idx_dos = Domainset_symbol_v.list_index_of_domainset_symbol sym_dos;;
let soi_dos = Sole_index_v.make idx_dos [];;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_register_v.store soi_dos gss_dos;;
let tag_dos = Tag_v.make sym_dos soi_dos;;

test_number 1 (
tag_dos
(* : Domainset_symbol_t.domainset_symbol Tag_t.tag *)
= 
(Domainset_symbol_t.Figureset, [2])
);;

let for_dos = Domainset_formula_v.retrieve tag_dos;;

test_number 2 (
for_dos
(* : Category_symbol_t.category_symbol Tag_t.tag list *)
 =
[(Category_symbol_t.Any, [1; 2]); (Category_symbol_t.Formula, [2; 2]);
 (Category_symbol_t.Mark, [3; 2]); (Category_symbol_t.Path, [4; 2]);
 (Category_symbol_t.Property, [5; 2]); (Category_symbol_t.Provider, [6; 2]);
 (Category_symbol_t.Symbol, [7; 2]); (Category_symbol_t.Tag, [8; 2]);
 (Category_symbol_t.Value, [9; 2]); (Category_symbol_t.Empty, [10; 2])]
);;

let sel_cat = (fun c -> Category_symbol_v.name c = nam_cat);;
let tag_cat = Doublet_list_v.find_if_left sel_cat for_dos;;

test_number 3 (
tag_cat
(* : Category_symbol_v.Category_symbol_t.category_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Category_symbol_t.Formula, [2; 2])
);;

let for_cat = Category_formula_v.retrieve tag_cat;;
let tag_ent_l = Category_formula_v.entity_proper_tag_list_off_category_formula for_cat;;

test_number 4 (
tag_ent_l 
(* : Entity_symbol_t.Entity_proper_symbol Tag_t.tag list *)
=
[(Entity_symbol_t.Entity_proper_top_symbol
   (Entity_proper_top_symbol_t.Top_has_notopsonleaf "figureset"),
  [1; 2; 2]);
 (Entity_symbol_t.Entity_proper_top_symbol
   (Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle"),
  [2; 2; 2]);
 (Entity_symbol_t.Entity_proper_top_symbol
   (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "triangle_isoceles"),
  [3; 2; 2]);
 (Entity_symbol_t.Entity_proper_top_symbol
   (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "triangle_scalene"),
  [4; 2; 2]);
 (Entity_symbol_t.Entity_proper_top_symbol
   (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "vector"),
  [5; 2; 2]);
 (Entity_symbol_t.Entity_proper_top_symbol
   (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "point"),
  [6; 2; 2]);
 (Entity_symbol_t.Entity_proper_top_symbol
   (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "coordinate"),
  [7; 2; 2]);
 (Entity_symbol_t.Entity_proper_top_symbol
   (Entity_proper_top_symbol_t.Top_has_notopsonleaf "coordinate_3d"),
  [8; 2; 2]);
 (Entity_symbol_t.Entity_proper_top_symbol
   (Entity_proper_top_symbol_t.Top_has_sometopsonleaf
     "coordinate_cartesian_3d"),
  [9; 2; 2]);
 (Entity_symbol_t.Entity_proper_top_symbol
   (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "coordinate_cylindrical"),
  [10; 2; 2]);
 (Entity_symbol_t.Entity_proper_top_symbol
   (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "coordinate_spherical"),
  [11; 2; 2]);
 (Entity_symbol_t.Entity_proper_top_symbol
   (Entity_proper_top_symbol_t.Top_has_notopsonleaf "coordinate_2d"),
  [12; 2; 2]);
 (Entity_symbol_t.Entity_proper_top_symbol
   (Entity_proper_top_symbol_t.Top_has_sometopsonleaf
     "coordinate_cartesian_2d"),
  [13; 2; 2]);
 (Entity_symbol_t.Entity_proper_top_symbol
   (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "coordinate_polar"),
  [14; 2; 2])]
);;

let sel_enp = (fun e -> Entity_symbol_v.string_off e = nam_enp);;
let tag_enp = Doublet_list_v.find_if_left sel_enp tag_ent_l;;
let for_enp = Entity_formula_v.retrieve tag_enp;;

test_number 5 (
tag_enp
(* : Entity_symbol_t.Entity_proper_symbol * Sole_index_t.sole_index *)
  =
(Entity_symbol_t.Entity_proper_top_symbol
  (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "triangle_isoceles"),
 [3; 2; 2])
);;

let sel_cof = (fun c -> Contentfile_symbol_v.name c = nam_cof);;
let tag_cof = Doublet_list_v.find_if_left sel_cof for_enp;;
let for_cof = Contentfile_formula_v.retrieve tag_cof;;

test_number 6 (
tag_cof
(* : Contentfile_symbol_t.contentfile_symbol * Sole_index_t.sole_index *)
=
(Contentfile_symbol_t.Type_alone, [1; 3; 2; 2])
);;

let sel_usf = (fun u -> Usagefile_symbol_v.name u = nam_usf);;
let tag_usf = Doublet_list_v.find_if_left sel_usf for_cof;;

test_number 7 (
tag_usf
(* : Usagefile_symbol_t.usagefile_symbol * Sole_index_t.sole_index *)
=
(Usagefile_symbol_t.Implementation, [1; 1; 3; 2; 2])
);;

let for_usf = Usagefile_formula_v.retrieve tag_usf;;

test_number 8 (
 for_usf 
(* : Item_symbol_t.item_symbol Tag_t.tag list *)
=
[(Item_symbol_t.Item_only_top_symbol Item_only_top_symbol_t.Heading,
  [1; 1; 1; 3; 2; 2]);
 (Item_symbol_t.Item_only_top_symbol Item_only_top_symbol_t.Documenting,
  [2; 1; 1; 3; 2; 2]);
 (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Typing,
  [3; 1; 1; 3; 2; 2]);
 (Item_symbol_t.Item_only_top_symbol Item_only_top_symbol_t.Ending,
  [4; 1; 1; 3; 2; 2])]
);;

let sel_ite = (fun i -> String.lowercase (Item_symbol_v.name i) = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite for_usf;; 

test_number 9 (
tag_ite
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Typing,
 [3; 1; 1; 3; 2; 2])
);;

let for_ite = Item_formula_v.retrieve tag_ite;;

test_number 10 (
for_ite 
(* : Camlparagraph_symbol_t.camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_symbol Tag_t.tag list *)
=
  [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       (Camlparagraph_for_any_comment_symbol_t.Item_title "typing")),
    [1; 3; 1; 1; 3; 2; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_formula_symbol
     Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_entity_proper_type,
    [2; 3; 1; 1; 3; 2; 2])]
);;

(* Camlparagraph : Item_title *)

let idx_cap = 1;;
let tag_cap = List.nth for_ite (idx_cap-1);;

test_number 11 (
tag_cap
(* : Camlparagraph_symbol_t.camlparagraph_symbol * Sole_index_t.sole_index *)
=
  (Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
    (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
      (Camlparagraph_for_any_comment_symbol_t.Item_title "typing")),
   [1; 3; 1; 1; 3; 2; 2])
);;

let for_cap = Camlparagraph_formula_v.retrieve tag_cap;;

test_number 12 (
for_cap
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
       (Camlline_constant_pervasive_symbol_t.Item_title "typing")),
    [1; 1; 3; 1; 1; 3; 2; 2])]
);;

(* Camlline : Item_title "typing" *)

let idx_cal = 1;;
let tag_cal = List.nth for_cap (idx_cal-1);;

test_number 13 (
 tag_cal 
(* : Camlline_symbol_t.camlline_symbol * Sole_index_t.sole_index *)
=
  (Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
      (Camlline_constant_pervasive_symbol_t.Item_title "typing")),
   [1; 1; 3; 1; 1; 3; 2; 2])
);;

let for_cal = Camlline_formula_v.retrieve tag_cal;;

test_number 14 (
 for_cal 
(* :  Tag_t.tag list *)
=
  [(Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       Entity_fictive_nullary_symbol_t.Empty),
    [1; 1; 1; 3; 1; 1; 3; 2; 2])]
);;

(* Camlparagraph : Camlparagraph_for_formula_type *)

let idx_cap = 2;;
let tag_cap = List.nth for_ite (idx_cap-1);;

test_number 15 (
tag_cap
(* : Camlparagraph_symbol_t.camlparagraph_symbol * Sole_index_t.sole_index *)
=
  (Camlparagraph_symbol_t.Camlparagraph_for_formula_symbol
    Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_entity_proper_type,
   [2; 3; 1; 1; 3; 2; 2])
);;

let for_cap = Camlparagraph_formula_v.retrieve tag_cap;;

test_number 16 (
for_cap
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
       Camlline_uno_camltype_symbol_t.Type_eft_equal),
    [1; 2; 3; 1; 1; 3; 2; 2]);
   (Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
       Camlline_uno_camltype_symbol_t.Pipe_Efs_bof_Efs_tdot_efs),
    [2; 2; 3; 1; 1; 3; 2; 2]);
   (Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
       Camlline_uno_camltype_symbol_t.Pipe_Efs_bof_Efs_tdot_efs),
    [3; 2; 3; 1; 1; 3; 2; 2]);
   (Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
       Camlline_uno_camltype_symbol_t.Pipe_Efs_bof_Efs_tdot_efs),
    [4; 2; 3; 1; 1; 3; 2; 2]);
   (Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
       Camlline_uno_camltype_symbol_t.Pipe_Efs_bof_Efs_tdot_efs),
    [5; 2; 3; 1; 1; 3; 2; 2]);
   (Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
       Camlline_constant_pervasive_symbol_t.Double_semicolon),
    [6; 2; 3; 1; 1; 3; 2; 2])]
);;

(* Camlline : Type_eft_equal *)

let idx_cal = 1;;
let tag_cal = List.nth for_cap (idx_cal-1);;

test_number 17 (
 tag_cal 
(* : Camlline_symbol_t.camlline_symbol * Sole_index_t.sole_index *)
=
  (Camlline_symbol_t.Camlline_uno_symbol
    (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
      Camlline_uno_camltype_symbol_t.Type_eft_equal),
   [1; 2; 3; 1; 1; 3; 2; 2])
);;

let for_cal = Camlline_formula_v.retrieve tag_cal;;

test_number 18 (
 for_cal 
(* :  Tag_t.tag list *)
=
[(
   (Entity_symbol_t.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "triangle_isoceles")),
  [1; 1; 2; 3; 1; 1; 3; 2; 2])]
);;

(* Camlline : Pipe_Efl_bof_datastructure *)

let idx_cal = 2;;
let tag_cal = List.nth for_cap (idx_cal-1);;

test_number 19 (
 tag_cal 
(* : Camlline_symbol_t.camlline_symbol * Sole_index_t.sole_index *)
=
(Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
      Camlline_uno_camltype_symbol_t.Pipe_Efs_bof_Efs_tdot_efs),
 [2; 2; 3; 1; 1; 3; 2; 2])
);;

let for_cal = Camlline_formula_v.retrieve tag_cal;;

test_number 20 (
 for_cal 
(* :  Tag_t.tag list *)
=
[(Entity_symbol_t.Entity_fictive_symbol
   (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
     (Entity_fictive_nullary_symbol_t.Sonnullary
       "triangle_isoceles_equilateral")),
  [1; 2; 2; 3; 1; 1; 3; 2; 2])]
);;
