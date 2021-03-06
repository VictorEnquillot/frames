open Make_test_v;;

testing "Camlline_formula_v with
   Camlline_formula_u_figureset_formula_point_making.ml";;

(* toplevel 
   #use "Camlline_formula_u_figureset_formula_point_making.ml";;

*)

let nam_dos = "figureset";;
let nam_cat = "formula";;
let nam_cof = "value_alone";;
let nam_ite = "making";;
let nam_efn = "point";;
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
let tag_efn_l = Category_formula_v.entity_fictive_nullary_tag_list_off_category_formula for_cat;;

test_number 4 (
tag_efn_l 
(* : (Entity_fictive_nullary_symbol_t.entity_fictive_nullary_symbol,
   Sole_index_t.sole_index)  Doublet_list_t.doublet_list *)
=
   [(Entity_fictive_nullary_symbol_t.Bare "cylindrical_phi",
    [10; 2; 2]);
   (Entity_fictive_nullary_symbol_t.Bare "cylindrical_rho",
    [11; 2; 2]);
   (Entity_fictive_nullary_symbol_t.Bare "cylindrical_zed",
    [12; 2; 2]);
   (Entity_fictive_nullary_symbol_t.Ofstring "point", [13; 2; 2]);
   (Entity_fictive_nullary_symbol_t.Bare "polar_rho", [14; 2; 2]);
   (Entity_fictive_nullary_symbol_t.Bare "polar_theta", [15; 2; 2]);
   (Entity_fictive_nullary_symbol_t.Bare "spherical_phi",
    [16; 2; 2]);
   (Entity_fictive_nullary_symbol_t.Bare "spherical_rho",
    [17; 2; 2]);
   (Entity_fictive_nullary_symbol_t.Bare "spherical_theta",
    [18; 2; 2]);
   (Entity_fictive_nullary_symbol_t.Bare "triangle_isoceles_acute",
    [19; 2; 2]);
   (Entity_fictive_nullary_symbol_t.Bare
     "triangle_isoceles_equilateral",
    [20; 2; 2]);
   (Entity_fictive_nullary_symbol_t.Bare "triangle_isoceles_obtuse",
    [21; 2; 2]);
   (Entity_fictive_nullary_symbol_t.Bare "triangle_isoceles_right",
    [22; 2; 2]);
   (Entity_fictive_nullary_symbol_t.Bare "triangle_scalene_acute",
    [23; 2; 2]);
   (Entity_fictive_nullary_symbol_t.Bare "triangle_scalene_obtuse",
    [24; 2; 2]);
   (Entity_fictive_nullary_symbol_t.Bare "triangle_scalene_right",
    [25; 2; 2]);
   (Entity_fictive_nullary_symbol_t.Bare "vector", [26; 2; 2]);
   (Entity_fictive_nullary_symbol_t.Bare "x", [27; 2; 2]);
   (Entity_fictive_nullary_symbol_t.Bare "y", [28; 2; 2]);
   (Entity_fictive_nullary_symbol_t.Bare "z", [29; 2; 2])]
);;

let sel_efn = (fun e -> Entity_fictive_nullary_symbol_v.string_off e = nam_efn);;
let tag_efn = Doublet_list_v.find_if_left sel_efn tag_efn_l;;

test_number 5 (
tag_efn
(* :  * Sole_index_t.sole_index *)
  =
  (Entity_fictive_nullary_symbol_t.Ofstring "point", [13; 2; 2])
);;

let for_efn = Entity_fictive_nullary_formula_v.retrieve tag_efn;;
let sel_cof = (fun c -> Contentfile_symbol_v.name c = nam_cof);;
let tag_cof = Doublet_list_v.find_if_left sel_cof for_efn;;

test_number 6 (
tag_cof
(* : Contentfile_symbol_t.contentfile_symbol * Sole_index_t.sole_index *)
=
(Contentfile_symbol_t.Value_alone, [2; 13; 2; 2])
);;

let for_cof = Contentfile_formula_v.retrieve tag_cof;;
let sel_usf = (fun u -> Usagefile_symbol_v.name u = nam_usf);;
let tag_usf = Doublet_list_v.find_if_left sel_usf for_cof;;

test_number 7 (
tag_usf
(* : Usagefile_symbol_t.usagefile_symbol * Sole_index_t.sole_index *)
=
(Usagefile_symbol_t.Implementation, [1; 2; 13; 2; 2])
);;

let for_usf = Usagefile_formula_v.retrieve tag_usf;;

test_number 8 (
 for_usf 
(* : Item_symbol_t.item_symbol Tag_t.tag list *)
=
  [(Item_symbol_t.Item_only_top_symbol Item_only_top_symbol_t.Heading,
    [1; 1; 2; 13; 2; 2]);
   (Item_symbol_t.Item_only_top_symbol Item_only_top_symbol_t.Documenting,
    [2; 1; 2; 13; 2; 2]);
   (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Naming,
    [3; 1; 2; 13; 2; 2]);
   (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Iterating,
    [4; 1; 2; 13; 2; 2]);
   (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Making,
    [5; 1; 2; 13; 2; 2]);
   (Item_symbol_t.Item_only_top_symbol Item_only_top_symbol_t.Ending,
    [6; 1; 2; 13; 2; 2])]
);;

let sel_ite = (fun i -> String.lowercase (Item_symbol_v.name i) = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite for_usf;; 

test_number 9 (
tag_ite
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Making,
 [5; 1; 2; 13; 2; 2])
);;

let for_ite = Item_formula_v.retrieve tag_ite;;

test_number 10 (
for_ite 
(* : Camlparagraph_symbol_t.camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_symbol Tag_t.tag list *)
=
  [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       (Camlparagraph_for_any_comment_symbol_t.Item_title "making")),
    [1; 5; 1; 2; 13; 2; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_formula_symbol
     (Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_let_symbol
       (Camlparagraph_for_formula_let_symbol_t.Camlparagraph_for_formula_let_entity_fictive_nullary_symbol
         Camlparagraph_for_formula_let_entity_fictive_nullary_symbol_t.Let_make_entity_fictive_nullary_for_formula)),
    [2; 5; 1; 2; 13; 2; 2])]
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
      (Camlparagraph_for_any_comment_symbol_t.Item_title "making")),
   [1; 5; 1; 2; 13; 2; 2])
);;

let for_cap = Camlparagraph_formula_v.retrieve tag_cap;;

test_number 12 (
for_cap
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
       (Camlline_constant_pervasive_symbol_t.Item_title "making")),
    [1; 1; 5; 1; 2; 13; 2; 2])]
);;

(* Camlline : Item_title "making" *)

let idx_cal = 1;;
let tag_cal = List.nth for_cap (idx_cal-1);;

test_number 13 (
 tag_cal 
(* : Camlline_symbol_t.camlline_symbol * Sole_index_t.sole_index *)
=
  (Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
      (Camlline_constant_pervasive_symbol_t.Item_title "making")),
   [1; 1; 5; 1; 2; 13; 2; 2])
);;

let for_cal = Camlline_formula_v.retrieve tag_cal;;

test_number 14 (
 for_cal 
(* :  Tag_t.tag list *)
=
  [(Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       Entity_fictive_nullary_symbol_t.Empty),
    [1; 1; 1; 5; 1; 2; 13; 2; 2])]
);;

(* Camlparagraph : Camlparagraph_for_formula_type *)

let idx_cap = 2;;
let tag_cap = List.nth for_ite (idx_cap-1);;

test_number 15 (
tag_cap
(* : Camlparagraph_symbol_t.camlparagraph_symbol * Sole_index_t.sole_index *)
=
(Camlparagraph_symbol_t.Camlparagraph_for_formula_symbol
   (Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_let_symbol
      (Camlparagraph_for_formula_let_symbol_t.Camlparagraph_for_formula_let_entity_fictive_nullary_symbol
         Camlparagraph_for_formula_let_entity_fictive_nullary_symbol_t.Let_make_entity_fictive_nullary_for_formula)),
 [2; 5; 1; 2; 13; 2; 2])
);;

let for_cap = Camlparagraph_formula_v.retrieve tag_cap;;

let par_1 = List_v.sublist_of_int_of_int_of_list 0 10 for_cap;;

test_number 16 (
par_1
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
 [(Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Let_make_sym_as_soi_at_equal),
    [1; 2; 5; 1; 2; 13; 2; 2]);
   (Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_function_symbol
       Camlline_constant_function_symbol_t.Space_let_count_equal_zero),
    [2; 2; 5; 1; 2; 13; 2; 2]);
   (Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_function_symbol
       Camlline_uno_function_symbol_t.Comment_s_comment),
    [3; 2; 5; 1; 2; 13; 2; 2]);
   (Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_function_symbol
       Camlline_constant_function_symbol_t.Space_let_count_increment_in),
    [4; 2; 5; 1; 2; 13; 2; 2]);
   (Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Space_let_ast_equal_Est_vdot_el_in),
    [5; 2; 5; 1; 2; 13; 2; 2]);
   (Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Space_let_dos_of_ste_equal_Dos_vdot_fun_in),
    [6; 2; 5; 1; 2; 13; 2; 2]);
   (Camlline_symbol_t.Camlline_trio_symbol
     Camlline_trio_symbol_t.Space_let_tag_equal_Tools_fdos_vdot_stem_tag_make_n_store_ast,
    [7; 2; 5; 1; 2; 13; 2; 2]);
   (Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_function_symbol
       Camlline_uno_function_symbol_t.Comment_s_comment),
    [8; 2; 5; 1; 2; 13; 2; 2]);
   (Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_function_symbol
       Camlline_constant_function_symbol_t.Space_let_count_increment_in),
    [9; 2; 5; 1; 2; 13; 2; 2]);
   (Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Space_let_ast_equal_Est_vdot_el_in),
    [10; 2; 5; 1; 2; 13; 2; 2]);
   (Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Space_let_dos_of_ste_equal_Dos_vdot_fun_in),
    [11; 2; 5; 1; 2; 13; 2; 2])]
);;

let par_2 = List_v.sublist_of_int_of_int_of_list 11 20 for_cap;;

test_number 17 (
par_2
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Camlline_symbol_t.Camlline_trio_symbol
     Camlline_trio_symbol_t.Space_let_tag_equal_Tools_fdos_vdot_stem_tag_make_n_store_ast,
    [12; 2; 5; 1; 2; 13; 2; 2]);
   (Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_function_symbol
       Camlline_uno_function_symbol_t.Comment_s_comment),
    [13; 2; 5; 1; 2; 13; 2; 2]);
   (Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_function_symbol
       Camlline_constant_function_symbol_t.Space_let_count_increment_in),
    [14; 2; 5; 1; 2; 13; 2; 2]);
   (Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Space_let_ast_equal_Est_vdot_el_in),
    [15; 2; 5; 1; 2; 13; 2; 2]);
   (Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Space_let_dos_of_ste_equal_Dos_vdot_fun_in),
    [16; 2; 5; 1; 2; 13; 2; 2]);
   (Camlline_symbol_t.Camlline_trio_symbol
     Camlline_trio_symbol_t.Space_let_tag_equal_Tools_fdos_vdot_stem_tag_make_n_store_ast,
    [17; 2; 5; 1; 2; 13; 2; 2]);
   (Camlline_symbol_t.Camlline_datastructure_symbol
     (Camlline_datastructure_symbol_t.Camlline_datastructure_function_symbol
       (Camlline_datastructure_function_symbol_t.Camlline_datastructure_function_make_symbol
         (Camlline_datastructure_function_make_symbol_t.Das_vdot_make_tag_a_tag_b_tag_c
           "triplet"))),
    [18; 2; 5; 1; 2; 13; 2; 2]);
   (Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
       Camlline_constant_pervasive_symbol_t.Double_semicolon),
    [19; 2; 5; 1; 2; 13; 2; 2])]
);;

(* Camlline : Type_eft_equal *)

let idx_cal = 1;;
let tag_cal = List.nth for_cap (idx_cal-1);;

test_number 18 (
 tag_cal 
(* : Camlline_symbol_t.camlline_symbol * Sole_index_t.sole_index *)
=
  (Camlline_symbol_t.Camlline_duo_symbol
    (Camlline_duo_symbol_t.Camlline_duo_function_symbol
      Camlline_duo_function_symbol_t.Let_make_sym_as_soi_at_equal),
   [1; 2; 5; 1; 2; 13; 2; 2])
);;

let for_cal = Camlline_formula_v.retrieve tag_cal;;

test_number 19 (
 for_cal 
(* :  Tag_t.tag list *)
=
  [(Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Ofstring "point")),
    [1; 1; 2; 5; 1; 2; 13; 2; 2]);
   (
     Entity_symbol_t.Entity_proper_empty,
    [2; 1; 2; 5; 1; 2; 13; 2; 2])]
);;

(* Camlline : Pipe_Efl_bof_datastructure *)

let idx_cal = 2;;
let tag_cal = List.nth for_cap (idx_cal-1);;

test_number 20 (
 tag_cal 
(* : Camlline_symbol_t.camlline_symbol * Sole_index_t.sole_index *)
=
  (Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_function_symbol
      Camlline_constant_function_symbol_t.Space_let_count_equal_zero),
   [2; 2; 5; 1; 2; 13; 2; 2])
);;

let oct_cal = Camlline_tag_v.camlline_octtup_off_camlline_tag tag_cal;;
let sym_ent_l = Entity_symbol_list_by_camlline_octtup_provider_v.provide oct_cal;;

test_number 21 (
sym_ent_l
(* :  list *)
=
  []
);;

let sym_cal = Tag_v.symbol_off_tag tag_cal;;
let soi_cal = Tag_v.sole_index_off_tag tag_cal;;
let for_cal = Camlline_formula_v.retrieve tag_cal;;

test_number 22 (
 for_cal 
(* :  Tag_t.tag list *)
=
  []
);;

(* Camlline : Das_vdot_make_tag_a_tag_b *)

let idx_cal = 13;;
let tag_cal = List.nth for_cap (idx_cal-1);;

test_number 23 (
 tag_cal 
(* : Camlline_symbol_t.camlline_symbol * Sole_index_t.sole_index *)
=
  (Camlline_symbol_t.Camlline_uno_symbol
    (Camlline_uno_symbol_t.Camlline_uno_function_symbol
      Camlline_uno_function_symbol_t.Comment_s_comment),
   [13; 2; 5; 1; 2; 13; 2; 2])
);;

let oct_cal = Camlline_tag_v.camlline_octtup_off_camlline_tag tag_cal;;
let sym_ent_l = Entity_symbol_list_by_camlline_octtup_provider_v.provide oct_cal;;

test_number 24 (
sym_ent_l
(* :  list *)
=
 [Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "x"))]
);;

let sym_cal = Tag_v.symbol_off_tag tag_cal;;
let soi_cal = Tag_v.sole_index_off_tag tag_cal;;
let for_cal = Camlline_formula_v.retrieve tag_cal;;

test_number 25 (
for_cal 
(* :  Tag_t.tag list *)
=  
 [(Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare "x")),
    [1; 13; 2; 5; 1; 2; 13; 2; 2])]
 );;
