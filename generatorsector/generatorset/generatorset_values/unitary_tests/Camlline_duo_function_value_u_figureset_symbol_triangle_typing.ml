open Make_test_v;;

testing "Camlline_duo_function_symbol_value_v
   Camlline_duo_function_value_u_figureset_symbol_triangle_typing.ml";;

(* toplevel 
   #use "Camlline_duo_function_value_u_figureset_symbol_triangle_typing.ml";;

*)

let nam_cod = "Camlline_duo_function_value_u_figureset_symbol_triangle_typing.ml";;
let nam_dom = "figure";;
let nam_cat = "symbol";;
let nam_cof = "type_alone";;
let nam_ite = "typing";;
let nam_enp = "triangle";;

let sym_dom = Domain_symbol_v.make nam_dom "";;
let idx_dom = Domain_symbol_v.list_index_of_domain_symbol sym_dom;;
let soi_dom = Sole_index_v.make idx_dom [];;
let gss_dom = Generatorset_symbol_v.generatorset_symbol_of_domain_symbol sym_dom;;
Generatorset_symbol_by_sole_index_register_v.store soi_dom gss_dom;;
let tag_dom = Tag_v.make sym_dom soi_dom;;
let for_dom = Domain_formula_v.retrieve tag_dom;;

let sel_cat = (fun s -> Category_symbol_v.name s = nam_cat);;
let tag_cat = Doublet_list_v.find_if_left sel_cat for_dom;;
let for_cat = Category_formula_v.retrieve tag_cat;;

let sel_enp = (fun e -> Entity_symbol_v.string_off e = nam_enp);;
let tag_enp = Doublet_list_v.find_if_left sel_enp for_cat;;
let for_enp = Entity_formula_v.retrieve tag_enp;;

test_number 1 (
tag_enp
(* : Entity_symbol_t.entity_proper_symbol * Sole_index_t.sole_index *)
=
(Entity_symbol_t.Entity_proper_top_symbol
   (Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle"),
 [2; 7; 2])
);;

test_number 2 (
for_enp
(* : Contentfile_symbol_t.contentfile_symbol Tag_t.tag list *)
=
  [(Contentfile_symbol_t.Type_alone, [1; 2; 7; 2]);
   (Contentfile_symbol_t.Value_alone, [2; 2; 7; 2])]
);;

let sel_cof = (fun c -> Contentfile_symbol_v.name c = nam_cof);;
let tag_cof = Doublet_list_v.find_if_left sel_cof for_enp;;
let for_cof = Contentfile_formula_v.retrieve tag_cof;;

let sel_usf = Usagefile_symbol_v.is_implementation_off_usagefile_symbol;; 
let tag_usf = Doublet_list_v.find_if_left sel_usf for_cof;;
let for_usf = Usagefile_formula_v.retrieve tag_usf;;

let sel_ite = (fun i -> Item_symbol_v.name i = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite for_usf;; 
let for_ite = Item_formula_v.retrieve tag_ite;;

test_number 3 (
tag_ite 
(* : Item_symbol_t.item_symbol * Sole_index_t.sole_index *)
=
  (Item_symbol_t.Item_by_group_topsons_symbol Item_by_group_topsons_symbol_t.Typing,
   [3; 1; 1; 2; 7; 2])
);;

test_number 4 (
for_ite
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
=
  [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       (Camlparagraph_for_any_comment_symbol_t.Item_title "typing")),
    [1; 3; 1; 1; 2; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_type,
    [2; 3; 1; 1; 2; 7; 2])]
);;

(* Camlparagraph : Type_definition_for_symbol *)

let idx_cap = 2;;
let tag_cap = List.nth for_ite (idx_cap-1);;

test_number 5 (
tag_cap
(* : Camlparagraph_symbol_t.camlparagraph_symbol * Sole_index_t.sole_index *)
=
(Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_type,
    [2; 3; 1; 1; 2; 7; 2])
);;

let for_cap = Camlparagraph_formula_v.retrieve tag_cap;;

test_number 6 (
for_cap
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
       Camlline_uno_camltype_symbol_t.Type_est_equal),
    [1; 2; 3; 1; 1; 2; 7; 2]);
   (Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
       Camlline_uno_camltype_symbol_t.Pipe_Ess_bof_Ess_tdot_ess),
    [2; 2; 3; 1; 1; 2; 7; 2]);
   (Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
       Camlline_uno_camltype_symbol_t.Pipe_Ess_bof_Ess_tdot_ess),
    [3; 2; 3; 1; 1; 2; 7; 2]);
   (Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
       Camlline_constant_pervasive_symbol_t.Double_semicolon),
    [4; 2; 3; 1; 1; 2; 7; 2])]
);;

(* Camlline : Type_est_equal *)

let idx_cal = 1;;
let tag_cal = List.nth for_cap (idx_cal-1);;

test_number 7 (
tag_cal
(* : Camlline_symbol_t.camlline_symbol * Sole_index_t.sole_index *)
=
  (Camlline_symbol_t.Camlline_uno_symbol
    (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
      Camlline_uno_camltype_symbol_t.Type_est_equal),
   [1; 2; 3; 1; 1; 2; 7; 2])
);;

let for_cal = Camlline_formula_v.retrieve tag_cal;;

test_number 8 (
for_cal
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  [(
     (Entity_symbol_t.Entity_proper_top_symbol
       (Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle")),
    [1; 1; 2; 3; 1; 1; 2; 7; 2])]
);;

let val_cal = Camlline_value_v.make tag_cal;;

test_number 9 (
val_cal
(* : string *)
=
"type triangle_symbol ="
);;

test_number 10 (
Camlline_value_v.fullnameoffile "./" tag_cal
=
"./Triangle_symbol_typing_camlparagraph_for_symbol_type_type_est_equal_t.ml"
);;

(* Camlline : Pipe_Ess_bof_Ess_tdot_ess *)

let idx_cal = 2;;
let tag_cal = List.nth for_cap (idx_cal-1);;

test_number 11 (
tag_cal
(* : Camlline_symbol_t.camlline_symbol * Sole_index_t.sole_index *)
=
(Camlline_symbol_t.Camlline_uno_symbol
  (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
    Camlline_uno_camltype_symbol_t.Pipe_Ess_bof_Ess_tdot_ess),
 [2; 2; 3; 1; 1; 2; 7; 2])
);;

let for_cal = Camlline_formula_v.retrieve tag_cal;;

test_number 12 (
for_cal
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
[(
   (Entity_symbol_t.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "triangle_isoceles")),
  [1; 2; 2; 3; 1; 1; 2; 7; 2])]
);;

let val_cal = Camlline_value_v.make tag_cal;;

test_number 13 (
val_cal
(* : string *)
=
"  | Triangle_isoceles_symbol of Triangle_isoceles_symbol_t.triangle_isoceles_symbol"
);;

test_number 14 (
Camlline_value_v.fullnameoffile "./" tag_cal
=
"./Triangle_symbol_typing_camlparagraph_for_symbol_type_pipe_ess_bof_ess_tdot_ess_t.ml"
);;

(**

Camlline_value_v.write tag_cal;; 

**)
  

