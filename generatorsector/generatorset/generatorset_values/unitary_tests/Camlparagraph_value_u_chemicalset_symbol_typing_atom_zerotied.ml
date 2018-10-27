open Make_test_v;;

testing "Camlparagraph_endmarked_type_value_v with
   Camlparagraph_value_u_chemicalset_symbol_typing_atom_zerotied.ml";;

(* toplevel 
   #use "Camlparagraph_value_u_chemicalset_symbol_typing_atom_zerotied.ml";;
*)

let nam_cod = "Camlparagraph_value_u_chemicalset_symbol_typing_atom_zerotied.ml";;

let fnd_cat = Category_symbol_v.is_symbol_off_category_symbol;;
let fnd_enp = (fun e -> Entity_symbol_v.string_off e = "atom_zerotied")
let fnd_cof = Contentfile_symbol_v.is_type_alone;;
let fnd_usf = Usagefile_symbol_v.is_implementation_off_usagefile_symbol;; 
let fnd_ite = Item_symbol_v.is_typing;;
let fnd_cap = Camlparagraph_symbol_v.is_type_definition_for_symbol;;
let fnd_cal = Camlline_symbol_v.is_pipe_ess_bof_ess_tdot_ess;;

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

let tag_cap = Doublet_list_v.find_if_left fnd_cap for_ite;;
let for_cap = Camlparagraph_formula_v.retrieve tag_cap;;

test_number 1 (
tag_cap
(* Camlparagraph_symbol_t.camlparagraph_symbol * Sole_index_t.sole_index *)
=
  (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
    Camlparagraph_endmarked_symbol_t.Type_definition_for_symbol,
   [2; 3; 1; 1; 3; 1; 1])
);;

test_number 2 (
for_ite
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
=
[(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
   (Camlparagraph_comment_symbol_t.Item_title "typing"),
  [1; 3; 1; 1; 3; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   Camlparagraph_endmarked_symbol_t.Type_definition_for_symbol,
  [2; 3; 1; 1; 3; 1; 1])]
);;

test_number 3 (
for_cap
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
[(Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Type_est_equal),
  [1; 2; 3; 1; 1; 3; 1; 1]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Ess_bof_Ess_tdot_ess),
  [2; 2; 3; 1; 1; 3; 1; 1]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Ess_bof_Ess_tdot_ess),
  [3; 2; 3; 1; 1; 3; 1; 1]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Ess_bof_Ess_tdot_ess),
  [4; 2; 3; 1; 1; 3; 1; 1]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Ess_bof_Ess_tdot_ess),
  [5; 2; 3; 1; 1; 3; 1; 1]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Double_semicolon),
  [6; 2; 3; 1; 1; 3; 1; 1])]
);;

let val_cap = Camlparagraph_value_v.make tag_cap;;

test_number 4 (
val_cap
(* : string list list *)
=
["type atom_zerotied_symbol =";
 "  | Atom_zerotied_raregas_symbol of Atom_zerotied_raregas_symbol_t.atom_zerotied_raregas_symbol";
 "  | Atom_zerotied_anion_symbol of Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol";
 "  | Atom_zerotied_cation_symbol of Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol";
 "  | Halfbridge_symbol of Halfbridge_symbol_t.halfbridge_symbol"; ";;"]
);;

test_number 5 (
Camlparagraph_value_v.fullnameoffile "./" tag_cap
=
"./atom_zerotied_symbol_typing_type_definition_for_symbol_t.ml"
);;
(*
Camlparagraph_value_v.write tag_cap;;
*)

let tag_cap = Doublet_list_v.find_if_left 
    Camlparagraph_symbol_v.is_item_title for_ite;; 
let for_cap = Camlparagraph_formula_v.retrieve tag_cap;;
let val_cap = Camlparagraph_value_v.make tag_cap;;

test_number 6 (
tag_cap
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
  (Camlparagraph_comment_symbol_t.Item_title "typing"),
 [1; 3; 1; 1; 3; 1; 1])
);;

test_number 7 (
for_cap
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
[(Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     (Camlline_constant_pervasive_symbol_t.Item_title "typing")),
  [1; 1; 3; 1; 1; 3; 1; 1]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Empty_line),
  [2; 1; 3; 1; 1; 3; 1; 1])]
);;

test_number 8 (
val_cap
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
["(** {6 Typing} *)";]
);;

