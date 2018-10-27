open Make_test_v;;

testing "Camlline_duo_function_symbol_value_v
   Camlline_value_u_figureset_symbol_triangle_naming.ml";;

(* toplevel 
   #use "Camlline_value_u_figureset_symbol_triangle_naming.ml";;

*)

let nam_cod = "Camlline_value_u_figureset_symbol_triangle_naming.ml";;

let nam_dom = "figure";;
let nam_cat = "symbol";;
let nam_ent = "triangle";;
let nam_cof = "value_alone";;
let nam_usf = "implementation";;
let nam_ite = "naming";;

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

let sel_ite = (fun i -> Item_symbol_v.name i = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite for_usf;; 

test_number 1 (
tag_ite (* : Item_symbol_t.item_symbol * Sole_index_t.sole_index *)
=
  (Item_symbol_t.Item_by_group_topsons_symbol Item_by_group_topsons_symbol_t.Naming,
   [3; 1; 2; 2; 7; 2])
);;

let for_ite = Item_formula_v.retrieve tag_ite;;

test_number 2 (
for_ite
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
=
  [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       (Camlparagraph_for_any_comment_symbol_t.Item_title "naming")),
    [1; 3; 1; 2; 2; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_match_symbol
         Camlparagraph_for_symbol_let_match_symbol_t.Let_name_equal_function_for_symbol)),
    [2; 3; 1; 2; 2; 7; 2])]
);;

(* Camlparagraph : Let_name_equal_function_for_symbol *)

let idx_cap = 2;;
let tag_cap = List.nth for_ite (idx_cap-1);;

test_number 3 (
tag_cap
(* : Camlparagraph_symbol_t.camlparagraph_symbol * Sole_index_t.sole_index *)
=
  (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
    (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
      (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_match_symbol
        Camlparagraph_for_symbol_let_match_symbol_t.Let_name_equal_function_for_symbol)),
   [2; 3; 1; 2; 2; 7; 2])
);;

let for_cap = Camlparagraph_formula_v.retrieve tag_cap;;

test_number 4 (
for_cap
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_function_symbol
       Camlline_constant_function_symbol_t.Let_name_equal_function),
    [1; 2; 3; 1; 2; 2; 7; 2]);
   (Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Pipe_Est_tdot_Ess_ass_arrow),
    [2; 2; 3; 1; 2; 2; 7; 2]);
   (Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_function_symbol
       Camlline_uno_function_symbol_t.Eas_vdot_name_aas),
    [3; 2; 3; 1; 2; 2; 7; 2]);
   (Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Pipe_Est_tdot_Ess_ass_arrow),
    [4; 2; 3; 1; 2; 2; 7; 2]);
   (Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_function_symbol
       Camlline_uno_function_symbol_t.Eas_vdot_name_aas),
    [5; 2; 3; 1; 2; 2; 7; 2]);
   (Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
       Camlline_constant_pervasive_symbol_t.Double_semicolon),
    [6; 2; 3; 1; 2; 2; 7; 2])]
);;

(* Camlline : Pipe_Est_tdot_Ess_ass_arrow *)

let idx_cal = 2;;
let tag_cal = List.nth for_cap (idx_cal-1);;

test_number 5 (
tag_cal
(* : Camlline_symbol_t.camlline_symbol * Sole_index_t.sole_index *)
=
  (Camlline_symbol_t.Camlline_duo_symbol
    (Camlline_duo_symbol_t.Camlline_duo_function_symbol
      Camlline_duo_function_symbol_t.Pipe_Est_tdot_Ess_ass_arrow),
   [2; 2; 3; 1; 2; 2; 7; 2])
);;

let for_cal = Camlline_formula_v.retrieve tag_cal;;

test_number 6 (
for_cal
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
[(
    (Entity_symbol_t.Entity_proper_son_symbol
       (Entity_proper_son_symbol_t.Notonlyson "triangle_isoceles")),
  [1; 2; 2; 3; 1; 2; 2; 7; 2]);
 (
    (Entity_symbol_t.Entity_proper_top_symbol
       (Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle")),
  [2; 2; 2; 3; 1; 2; 2; 7; 2])]
);;

let val_cal = Camlline_value_v.make tag_cal;;

test_number 7 (
val_cal
(* : string *)
=
"  | Triangle_symbol_t.Triangle_isoceles_symbol sym_tis ->"
);;

let nam_fil = Camlline_value_v.fullnameoffile "./" tag_cal;;
test_number 8 (
nam_fil
  =
"./Triangle_symbol_naming_let_name_equal_function_for_symbol_pipe_est_tdot_ess_ass_arrow_v.ml"
);;


(* Camlline : Eas_vdot_name_aas *)

let idx_cal = 3;;
let tag_cal = List.nth for_cap (idx_cal-1);;

test_number 9 (
tag_cal
(* : Camlline_symbol_t.camlline_symbol * Sole_index_t.sole_index *)
=
 (Camlline_symbol_t.Camlline_uno_symbol
    (Camlline_uno_symbol_t.Camlline_uno_function_symbol
      Camlline_uno_function_symbol_t.Eas_vdot_name_aas),
   [3; 2; 3; 1; 2; 2; 7; 2])
);;

let for_cal = Camlline_formula_v.retrieve tag_cal;;

test_number 10 (
for_cal
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
 [(
     (Entity_symbol_t.Entity_proper_son_symbol
       (Entity_proper_son_symbol_t.Notonlyson "triangle_isoceles")),
    [1; 3; 2; 3; 1; 2; 2; 7; 2])]
);;

let val_cal = Camlline_value_v.make tag_cal;;

test_number 11 (
val_cal
(* : string *)
=
"      Triangle_isoceles_symbol_v.name sym_tis"
);;

let nam_fil = Camlline_value_v.fullnameoffile "./" tag_cal;;

test_number 12(
nam_fil
  =
"./Triangle_symbol_naming_let_name_equal_function_for_symbol_eas_vdot_name_aas_v.ml"
);;

(**
Camlline_value_v.write "./" tag_cal;; 
**)
  

