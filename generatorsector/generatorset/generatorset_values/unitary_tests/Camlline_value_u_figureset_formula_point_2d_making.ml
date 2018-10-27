open Make_test_v;;

testing "Camlline_value_v
   Camlline_value_u_figureset_formula_point_2d_making.ml";;

(* toplevel 
   #use "Camlline_value_u_figureset_formula_point_2d_making.ml";;

*)

let nam_cod = "Camlline_value_u_figureset_formula_point_2d_making.ml";;

let nam_dom = "figure";;
let nam_cat = "formula";;
let nam_ent = "point_2d";;
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
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary
        "point_2d")),
   [20; 2; 2])
);;

let for_ent = Entity_formula_v.retrieve tag_ent;;

test_number 2 (
for_ent
(* : Contentfile_symbol_t.contentfile_symbol Tag_t.tag list *)
  =
[(Contentfile_symbol_t.Type_alone, [1; 20; 2; 2]);
 (Contentfile_symbol_t.Value_alone, [2; 20; 2; 2])]
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
  (Usagefile_symbol_t.Implementation, [1; 2; 20; 2; 2])
);;

let for_usf = Usagefile_formula_v.retrieve tag_usf;;

test_number 4 (
for_usf
(* : Item_symbol_t.item_symbol Tag_t.tag list *)
=
  [(Item_symbol_t.Item_for_any_only_top_symbol Item_for_symbol_only_top_symbol_t.Heading,
    [1; 1; 2; 20; 2; 2]);
   (Item_symbol_t.Item_for_any_only_top_symbol Item_for_symbol_only_top_symbol_t.Documenting,
    [2; 1; 2; 20; 2; 2]);
   (Item_symbol_t.Item_by_group_topsons_symbol Item_by_group_topsons_symbol_t.Naming,
    [3; 1; 2; 20; 2; 2]);
   (Item_symbol_t.Item_by_group_topsons_symbol Item_by_group_topsons_symbol_t.Iterating,
    [4; 1; 2; 20; 2; 2]);
   (Item_symbol_t.Item_by_group_topsons_symbol Item_by_group_topsons_symbol_t.Making,
    [5; 1; 2; 20; 2; 2]);
   (Item_symbol_t.Item_for_any_only_top_symbol Item_for_symbol_only_top_symbol_t.Ending,
    [6; 1; 2; 20; 2; 2])]
);;

let idx_ite = 5;;
let tag_ite = List.nth for_usf (idx_ite-1);;

test_number 5 (
tag_ite
(* : Item_symbol_t.item_symbol * Sole_index_t.sole_index *)
=
  (Item_symbol_t.Item_by_group_topsons_symbol Item_by_group_topsons_symbol_t.Making,
   [5; 1; 2; 20; 2; 2])
);;

let for_ite = Item_formula_v.retrieve tag_ite;;

test_number 6 (
for_ite
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
=
  [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       (Camlparagraph_for_any_comment_symbol_t.Item_title "making")),
    [1; 5; 1; 2; 20; 2; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_formula_symbol
     (Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_let_symbol
       (Camlparagraph_for_formula_let_symbol_t.Camlparagraph_for_formula_let_entity_fictive_nullary_symbol
         Camlparagraph_for_formula_let_entity_fictive_nullary_symbol_t.Let_make_entity_fictive_nullary_for_formula)),
    [2; 5; 1; 2; 20; 2; 2])]
);;

(* Camlparagraph : Type_definition_for_formula *)

let idx_cap = 2;;
let tag_cap = List.nth for_ite (idx_cap-1);;

test_number 7 (
tag_cap
(* : Item_symbol_t.item_symbol * Sole_index_t.sole_index *)
=
  (Camlparagraph_symbol_t.Camlparagraph_for_formula_symbol
    (Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_let_symbol
      (Camlparagraph_for_formula_let_symbol_t.Camlparagraph_for_formula_let_entity_fictive_nullary_symbol
        Camlparagraph_for_formula_let_entity_fictive_nullary_symbol_t.Let_make_entity_fictive_nullary_for_formula)),
   [2; 5; 1; 2; 20; 2; 2])
);;

let for_cap = Camlparagraph_formula_v.retrieve tag_cap;;

test_number 8 (
for_cap
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
=
  [(Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Let_make_sym_as_soi_at_equal),
    [1; 2; 5; 1; 2; 20; 2; 2]);
   (Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_function_symbol
       Camlline_constant_function_symbol_t.Space_let_count_equal_zero),
    [2; 2; 5; 1; 2; 20; 2; 2]);
   (Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_function_symbol
       Camlline_uno_function_symbol_t.Comment_s_comment),
    [3; 2; 5; 1; 2; 20; 2; 2]);
   (Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_function_symbol
       Camlline_constant_function_symbol_t.Space_let_count_increment_in),
    [4; 2; 5; 1; 2; 20; 2; 2]);
   (Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Space_let_ast_equal_Est_vdot_el_in),
    [5; 2; 5; 1; 2; 20; 2; 2]);
   (Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Space_let_dom_of_ste_equal_Dos_vdot_fun_in),
    [6; 2; 5; 1; 2; 20; 2; 2]);
   (Camlline_symbol_t.Camlline_trio_symbol
     Camlline_trio_symbol_t.Space_let_tag_equal_Tools_fdos_vdot_stem_tag_make_n_store_ast,
    [7; 2; 5; 1; 2; 20; 2; 2]);
   (Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_function_symbol
       Camlline_uno_function_symbol_t.Comment_s_comment),
    [8; 2; 5; 1; 2; 20; 2; 2]);
   (Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_function_symbol
       Camlline_constant_function_symbol_t.Space_let_count_increment_in),
    [9; 2; 5; 1; 2; 20; 2; 2]);
   (Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Space_let_ast_equal_Est_vdot_el_in),
    [10; 2; 5; 1; 2; 20; 2; 2]);
   (Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Space_let_dom_of_ste_equal_Dos_vdot_fun_in),
    [11; 2; 5; 1; 2; 20; 2; 2]);
   (Camlline_symbol_t.Camlline_trio_symbol
     Camlline_trio_symbol_t.Space_let_tag_equal_Tools_fdos_vdot_stem_tag_make_n_store_ast,
    [12; 2; 5; 1; 2; 20; 2; 2]);
   (Camlline_symbol_t.Camlline_datastructure_symbol
     (Camlline_datastructure_symbol_t.Camlline_datastructure_function_symbol
       (Camlline_datastructure_function_symbol_t.Camlline_datastructure_function_make_symbol
         (Camlline_datastructure_function_make_symbol_t.Das_vdot_make_tag_a_tag_b
           "doublet"))),
    [13; 2; 5; 1; 2; 20; 2; 2]);
   (Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
       Camlline_constant_pervasive_symbol_t.Double_semicolon),
    [14; 2; 5; 1; 2; 20; 2; 2])]
);;

(* Camlline : 1 Let_make_sym_as_soi_at_equal *)

let idx_cal = 1;;
let tag_cal = List.nth for_cap (idx_cal-1);;

test_number 9 (
tag_cal
=
  (Camlline_symbol_t.Camlline_duo_symbol
    (Camlline_duo_symbol_t.Camlline_duo_function_symbol
      Camlline_duo_function_symbol_t.Let_make_sym_as_soi_at_equal),
   [1; 2; 5; 1; 2; 20; 2; 2])
);;
(********
let sym_cal = Tag_v.entity_off_tag tag_cal;;
let tag_ent_l = Camlline_formula_v.retrieve tag_cal;;
let sym_ent_l = List.map Tag_v.entity_off_tag tag_ent_l;;
let (sym_ent_1, sym_ent_2) = Tools_vgnr_v.duo_off_list nam_cod "make" sym_cal sym_ent_l;;
      let sym_ent_bui = sym_ent_1;;
      let sym_ent_ste = sym_ent_2;;
**)

let for_cal = Camlline_formula_v.retrieve tag_cal;;

test_number 10 (
for_cal
=
  [(Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Nonsonnullary "point_2d")),
    [1; 1; 2; 5; 1; 2; 20; 2; 2]);
   (
     (Entity_symbol_t.Entity_proper "point"),
    [2; 1; 2; 5; 1; 2; 20; 2; 2])]
);;

let nam_fil = Camlline_value_v.fullnameoffile "./" tag_cal;;

test_number 11 (
nam_fil
=
"./Point_2d_formula_making_let_make_entity_fictive_nullary_for_formula_let_make_sym_as_soi_at_equal_v.ml"
);;

let val_cal = Camlline_value_v.make tag_cal;;

test_number 12 (
val_cal 
(* : Camlline_value_t.camlline_value *)
=
 "let make sym_po2 soi_poi ="
);;


(* Camlline : 2 Space_let_count_equal_zero *)

let idx_cal = 2;;
let tag_cal = List.nth for_cap (idx_cal-1);;

test_number 13 (
tag_cal
=
   (Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_function_symbol
      Camlline_constant_function_symbol_t.Space_let_count_equal_zero),
   [2; 2; 5; 1; 2; 20; 2; 2])
);;

let for_cal = Camlline_formula_v.retrieve tag_cal;;

test_number 14 (
for_cal
=
[]
);;

let nam_fil = Camlline_value_v.fullnameoffile "./" tag_cal;;

test_number 15 (
nam_fil
=
 "./Point_2d_formula_making_let_make_entity_fictive_nullary_for_formula_Space_let_count_equal_zero_v.ml"
);;

let val_cal = Camlline_value_v.make tag_cal;;

test_number 16 (
val_cal 
(* : Camlline_value_t.camlline_value *)
=
  "  let count = 0 in"
);;

(* Camlline : 6 Space_let_dom_of_ste_equal_Dos_vdot_fun_in *)

let idx_cal = 6;;
let tag_cal = List.nth for_cap (idx_cal-1);;

test_number 17 (
tag_cal
=
  (Camlline_symbol_t.Camlline_duo_symbol
    (Camlline_duo_symbol_t.Camlline_duo_function_symbol
      Camlline_duo_function_symbol_t.Space_let_dom_of_ste_equal_Dos_vdot_fun_in),
   [6; 2; 5; 1; 2; 20; 2; 2])
);;

let for_cal = Camlline_formula_v.retrieve tag_cal;;

test_number 18 (
for_cal
=
  [(
     (Entity_symbol_t.Entity_proper "coordinate_cartesian_2d"),
    [1; 6; 2; 5; 1; 2; 20; 2; 2]);
   (
     (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "figure")),
    [2; 6; 2; 5; 1; 2; 20; 2; 2])]
);;

let nam_fil = Camlline_value_v.fullnameoffile "./" tag_cal;;

test_number 19 (
nam_fil
=
"./Point_2d_formula_making_let_make_entity_fictive_nullary_for_formula_let_dom_of_ste_equal_dom_vdot_fun_in_v.ml"
);;

let val_cal = Camlline_value_v.make tag_cal;;

test_number 20 (
val_cal 
(* : Camlline_value_t.camlline_value *)
  =
"  let dos_of_ste = Figure_symbol_v.figure_symbol_of_coordinate_cartesian_2d_symbol in"
);; 

(* Camlline : 13 Das_vdot_make_tag_a_tag_b *)

let idx_cal = 13;;
let tag_cal = List.nth for_cap (idx_cal-1);;

test_number 21 (
tag_cal
=
 (Camlline_symbol_t.Camlline_datastructure_symbol
    (Camlline_datastructure_symbol_t.Camlline_datastructure_function_symbol
      (Camlline_datastructure_function_symbol_t.Camlline_datastructure_function_make_symbol
        (Camlline_datastructure_function_make_symbol_t.Das_vdot_make_tag_a_tag_b
          "doublet"))),
   [13; 2; 5; 1; 2; 20; 2; 2])
);;

let for_cal = Camlline_formula_v.retrieve tag_cal;;

test_number 22 (
for_cal
=
  [(Entity_symbol_t.Entity_external_symbol
     (Entity_external_symbol_t.Entity_external_datastructure_symbol
       (Entity_external_datastructure_symbol_t.Tuple "doublet")),
    [1; 13; 2; 5; 1; 2; 20; 2; 2]);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Nonsonnullary "x_2d")),
    [2; 13; 2; 5; 1; 2; 20; 2; 2]);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Nonsonnullary "y_2d")),
    [3; 13; 2; 5; 1; 2; 20; 2; 2])]
);;

let nam_fil = Camlline_value_v.fullnameoffile "./" tag_cal;;

test_number 23 (
nam_fil
=
 "./Point_2d_formula_making_let_make_entity_fictive_nullary_for_formula_das_vdot_make_tag_a_tag_b_v.ml"
);;

let sym_cal = Tag_v.entity_off_tag tag_cal;;
let sym_cfm = Camlline_symbol_v.camlline_datastructure_function_make_symbol_off_camlline_symbol sym_cal;;

test_number 24 (
sym_cfm 
(* : Camlline_datastructure_function_make_symbol_t.camlline_datastructure_function_make_symbol *)
=
  Camlline_datastructure_function_make_symbol_t.Das_vdot_make_tag_a_tag_b "doublet"
);;

let tag_ent_l = Camlline_formula_v.retrieve tag_cal;;
let sym_ent_l = List.map Tag_v.entity_off_tag tag_ent_l;;

test_number 25 (
sym_ent_l 
(* : Entity_symbol_t.entity_symbol list *)
=
  [Entity_symbol_t.Entity_external_symbol
    (Entity_external_symbol_t.Entity_external_datastructure_symbol
      (Entity_external_datastructure_symbol_t.Tuple "doublet"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "x_2d"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "y_2d"))]
);;

let (sym_ent_d, sym_ent_a, sym_ent_b) = Tools_vgnr_v.trio_off_list nam_cod "make" sym_cal sym_ent_l;;
let sym_efn = Entity_symbol_v.entity_fictive_nullary_symbol_off_entity_symbol sym_ent_b;;

test_number 26 (
sym_efn 
(* : Entity_fictive_nullary_symbol_t.entity_fictive_nullary_symbol *)
=
  Entity_fictive_nullary_symbol_t.Nonsonnullary "y_2d"
);;

let str_efn = Entity_fictive_nullary_symbol_v.string_off sym_efn ;;
let abb_efn = Abbreviation_default_v.abbreviation_default_argument_of_string str_efn;;

test_number 27 (
abb_efn
=
"y_2"
);;

let val_cal = Camlline_value_v.make tag_cal;;

test_number 28 (
val_cal 
(* : Camlline_value_t.camlline_value *)
  =
  "  Doublet_v.make tag_x_2 tag_y_2"
);;
