open Make_test_v;;

testing "Item_value_v with 
   Item_value_u_chemicalset_symbol_naming_atom_zerotied_anion_minusone.ml";;

(* toplevel 
   #use "Item_value_u_chemicalset_symbol_naming_atom_zerotied_anion_minusone.ml";;
*)

let fnd_cat = Category_symbol_v.is_symbol_off_category_symbol;;
let fnd_enp = (fun e -> Entity_symbol_v.string_off e = "atom_zerotied_anion_minusone")
let fnd_cof = Contentfile_symbol_v.is_contentfile_value_alone_symbol_off_contentfile_symbol;;
let fnd_usf = Usagefile_symbol_v.is_implementation_off_usagefile_symbol;; 
let fnd_ite = Item_symbol_v.is_naming;;

let sym_dom = Domain_symbol_v.make "chemicalset";;
let soi_dom = [1];;
let gss_dom = Generatorset_symbol_v.generatorset_symbol_of_domain_symbol sym_dom;;
Generatorset_symbol_by_sole_index_register_v.store_force soi_dom gss_dom;;
let tag_dom = Tag_v.make sym_dom soi_dom;;
let for_dom = Domain_formula_v.retrieve tag_dom;;

let tag_cat = Doublet_list_v.find_if_left fnd_cat for_dom;;
let for_cat = Category_formula_v.retrieve tag_cat;;

let tag_enp = Doublet_list_v.find_if_left fnd_enp for_cat;;
let for_enp = Entity_formula_v.retrieve tag_enp;;

let tag_cof = Doublet_list_v.find_if_left fnd_cof for_enp;;
let for_cof = Contentfile_formula_v.retrieve tag_cof;;

let tag_usf = Doublet_list_v.find_if_left fnd_usf for_cof;;
let for_usf = Usagefile_formula_v.retrieve tag_usf;;

let tag_ite = Doublet_list_v.find_if_left fnd_ite for_usf;; 
let for_ite = Item_formula_v.retrieve tag_ite;;
let val_ite = Item_value_v.make tag_ite;;

let fnd_cap_a = Camlparagraph_symbol_v.is_item_title;;
let fnd_cap_b = Camlparagraph_symbol_v.is_let_name_function;;

let tag_cap_a = Doublet_list_v.find_if_left fnd_cap_a for_ite;;
let for_cap_a = Camlparagraph_formula_v.retrieve tag_cap_a;;

let tag_cap_b = Doublet_list_v.find_if_left fnd_cap_b for_ite;;
let for_cap_b = Camlparagraph_formula_v.retrieve tag_cap_b;;

let fnd_cal_ba = Camlline_symbol_v.is_let_name_equal_function;;
let fnd_cal_bb = Camlline_symbol_v.is_pipe_est_tdot_esl_arrow_string;;

test_number 1 (
tag_ite
(* : Item_symbol_t.item_symbol * Tag_t.Sid_t.sole_index *)
=
(Item_symbol_t.Item_naming, [4; 1; 2; 6; 1; 1])
);;

test_number 2 (
for_ite
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
=
[(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
    (Camlparagraph_comment_symbol_t.Item_title "naming"),
  [1; 4; 1; 2; 6; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
    (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
       (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_function_symbol
          Camlparagraph_endmarked_let_function_symbol_t.Let_name_function_for_symbol)),
  [2; 4; 1; 2; 6; 1; 1])]
);;

test_number 3 (
tag_cap_a 
(* : Camlparagraph_symbol_t.camlparagraph_symbol * Sole_index_t.sole_index *)
  =
(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
   (Camlparagraph_comment_symbol_t.Item_title "naming"),
 [1; 4; 1; 2; 6; 1; 1])
);;

test_number 4 (
for_cap_a 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
       (Camlline_constant_pervasive_symbol_t.Item_title "naming")),
    [1; 1; 4; 1; 2; 6; 1; 1]);
   (Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
       Camlline_constant_pervasive_symbol_t.Empty_line),
    [2; 1; 4; 1; 2; 6; 1; 1])]
);;

test_number 5 (
tag_cap_b 
(* : Camlparagraph_symbol_t.camlparagraph_symbol * Sole_index_t.sole_index *)
  =
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
    (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
      (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_function_symbol
        Camlparagraph_endmarked_let_function_symbol_t.Let_name_function_for_symbol)),
   [2; 4; 1; 2; 6; 1; 1])
);;

test_number 6 (
for_cap_b
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
 [(Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_function_symbol
       Camlline_constant_function_symbol_t.Let_name_equal_function),
    [1; 2; 4; 1; 2; 6; 1; 1]);
   (Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Pipe_Est_tdot_Esl_arrow_string),
    [2; 2; 4; 1; 2; 6; 1; 1]);
   (Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Pipe_Est_tdot_Esl_arrow_string),
    [3; 2; 4; 1; 2; 6; 1; 1]);
   (Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Pipe_Est_tdot_Esl_arrow_string),
    [4; 2; 4; 1; 2; 6; 1; 1]);
   (Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Pipe_Est_tdot_Esl_arrow_string),
    [5; 2; 4; 1; 2; 6; 1; 1]);
   (Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Pipe_Est_tdot_Esl_arrow_string),
    [6; 2; 4; 1; 2; 6; 1; 1]);
   (Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
       Camlline_constant_pervasive_symbol_t.Double_semicolon),
    [7; 2; 4; 1; 2; 6; 1; 1])]
);;

test_number 7 (
Item_value_v.fullnameoffile "./" tag_ite
=
"./atom_zerotied_anion_minusone_symbol_naming_v.ml"
);;

(*
test_number 8 (
val_ite 
(* : Camlparagraph_value_t.camlparagraph_value list *)
=
[["(** {6 Naming} *)"; 
  ""];
  ["let name = function";
  "  | Atom_zerotied_anion_minusone_symbol_t.F_1m -> \"f_1m\"";
  "  | Atom_zerotied_anion_minusone_symbol_t.H_1m -> \"h_1m\"";
  "  | Atom_zerotied_anion_minusone_symbol_t.Cl_1m -> \"cl_1m\"";
  "  | Atom_zerotied_anion_minusone_symbol_t.Br_1m -> \"br_1m\"";
  "  | Atom_zerotied_anion_minusone_symbol_t.I_1m -> \"i_1m\""; 
  ";;"]]
*)

Item_value_v.write "./" tag_ite;;


