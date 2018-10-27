open Make_test_v;;

testing "Camlparagraph_extracting_implementation_value_u_1.ml";;

(* toplevel 
   #use "Camlparagraph_extracting_implementation_value_u_1.ml";;
*)

module Category_symbol_v = Category_symbol_v
module Camlline_formula_v = Camlline_formula_v
module Camlline_value_v = Camlline_value_v
module Contentfile_symbol_v = Contentfile_symbol_v
module Camlparagraph_formula_v = Camlparagraph_formula_v
module Camlparagraph_symbol_t = Camlparagraph_symbol_t
module Camlparagraph_symbol_v = Camlparagraph_symbol_v
module Camlparagraph_value_v = Camlparagraph_value_v
module Doublet_list_v = Doublet_list_v
module Framestype_extended_symbol_t = Framestype_extended_symbol_t
module Item_symbol_t = Item_symbol_t
module Item_formula_v = Item_formula_v
module Item_tag_v = Item_tag_v
module Item_value_v = Item_value_v
module Sole_indexed_tree_v = Sole_indexed_tree_v
module Target_formula_v = Target_formula_v
module Target_tag_v = Target_tag_v
module Target_data_v = Target_data_v 
module Target_data_by_target_tag_provider_v = Target_data_by_target_tag_provider_v

let nam_ent = "atom_zerotied";;
let nam_cat = "symbol";;
let nam_cof = "value";;
let nam_usf = "implementation";;
let val_tar = Target_data_v.make 
    "chemicalset" nam_ent nam_cat nam_cof nam_usf "unconstrained"
;;

let tag_tar = Target_tag_v.make_of_string "current";;
Target_data_by_target_tag_provider_v.store tag_tar val_tar;;
let for_tar = Target_formula_v.retrieve tag_tar;;

let tag_caf = List.hd for_tar;;
let for_caf = Contentfile_formula_v.retrieve tag_caf ;;

let tag_ite = List.find Item_tag_v.is_item_extracting for_caf;;
let for_ite = Item_formula_v.retrieve tag_ite;;
let val_ite = Item_value_v.make tag_ite;;
let sym_ite = Tag_v.entity_off_tag tag_ite;;
let nam_ite = String.lowercase (Item_symbol_v.name sym_ite);;

let nam_cfb = Target_formula_v.camlfile_bodyname_of_target_data val_tar;;

let tag_cap_1 = List.nth for_ite 0;;
let tag_cap_2 = List.nth for_ite 1;;
let tag_cap_3 = List.nth for_ite 2;;
let tag_cap_4 = List.nth for_ite 3;;
let tag_cap_5 = List.nth for_ite 4;;
let tag_cap_6 = List.nth for_ite 5;;

let for_cap_1 = Camlparagraph_formula_v.retrieve tag_cap_1;;
let for_cap_2 = Camlparagraph_formula_v.retrieve tag_cap_2;;
let for_cap_3 = Camlparagraph_formula_v.retrieve tag_cap_3;;
let for_cap_4 = Camlparagraph_formula_v.retrieve tag_cap_4;;
let for_cap_5 = Camlparagraph_formula_v.retrieve tag_cap_5;;
let for_cap_6 = Camlparagraph_formula_v.retrieve tag_cap_6;;

let val_cap_1 = Camlparagraph_value_v.make tag_cap_1;;
let val_cap_2 = Camlparagraph_value_v.make tag_cap_2;;
let val_cap_3 = Camlparagraph_value_v.make tag_cap_3;;
let val_cap_4 = Camlparagraph_value_v.make tag_cap_4;;
let val_cap_5 = Camlparagraph_value_v.make tag_cap_5;;
let val_cap_6 = Camlparagraph_value_v.make tag_cap_6;;

test_number 1 (
Framestype_extended_symbol_doublet_list_by_camlparagraph_tag_provider_v.provide tag_cap_1
(* : (string, Framestype_extended_symbol_doublet_list_by_camlparagraph_tag_provider_v.Framestype_extended_symbol_t.framestype_extended_symbol)
    Framestype_extended_symbol_doublet_list_by_camlparagraph_tag_provider_v.Dol_t.doublet_list *)
=
[("fxs_c",
  Framestype_extended_symbol_doublet_list_by_camlparagraph_tag_provider_v.Framestype_extended_symbol_t.Framestype_essential_symbol
   (Framestype_extended_symbol_doublet_list_by_camlparagraph_tag_provider_v.Framestype_extended_symbol_t.Fes_t.Framestype_essential_unconstrained_symbol
     (Framestype_extended_symbol_doublet_list_by_camlparagraph_tag_provider_v.Framestype_extended_symbol_t.Fes_t.Feus_t.Framestype_essential_unconstrained_polyconstructor
       "atom_zerotied_raregas")));
 ("fxs_s",
  Framestype_extended_symbol_doublet_list_by_camlparagraph_tag_provider_v.Framestype_extended_symbol_t.Framestype_essential_symbol
   (Framestype_extended_symbol_doublet_list_by_camlparagraph_tag_provider_v.Framestype_extended_symbol_t.Fes_t.Framestype_essential_unconstrained_symbol
     (Framestype_extended_symbol_doublet_list_by_camlparagraph_tag_provider_v.Framestype_extended_symbol_t.Fes_t.Feus_t.Framestype_essential_unconstrained_polyconstructor
       "atom_zerotied_raregas")));
 ("fxs_t",
  Framestype_extended_symbol_doublet_list_by_camlparagraph_tag_provider_v.Framestype_extended_symbol_t.Framestype_essential_symbol
   (Framestype_extended_symbol_doublet_list_by_camlparagraph_tag_provider_v.Framestype_extended_symbol_t.Fes_t.Framestype_essential_unconstrained_symbol
     (Framestype_extended_symbol_doublet_list_by_camlparagraph_tag_provider_v.Framestype_extended_symbol_t.Fes_t.Feus_t.Framestype_essential_unconstrained_polyconstructor
       "atom_zerotied")))]
);;

test_number 2 (
Framestype_extended_symbol_doublet_list_by_camlparagraph_tag_provider_v.provide tag_cap_4
(* : (string * Framestype_extended_symbol_t.framestype_extended_symbol) list *)
=
[("fxs_c",
  Framestype_extended_symbol_t.Framestype_essential_symbol
   (Framestype_extended_symbol_t.Fes_t.Framestype_essential_unconstrained_symbol
     (Framestype_extended_symbol_t.Fes_t.Feus_t.Framestype_essential_unconstrained_polyconstructor
       "atom_zerotied_cation_plusone")));
 ("fxs_s",
  Framestype_extended_symbol_t.Framestype_essential_symbol
   (Framestype_extended_symbol_t.Fes_t.Framestype_essential_unconstrained_symbol
     (Framestype_extended_symbol_t.Fes_t.Feus_t.Framestype_essential_unconstrained_polyconstructor
       "atom_zerotied_cation")));
 ("fxs_t",
  Framestype_extended_symbol_t.Framestype_essential_symbol
   (Framestype_extended_symbol_t.Fes_t.Framestype_essential_unconstrained_symbol
     (Framestype_extended_symbol_t.Fes_t.Feus_t.Framestype_essential_unconstrained_polyconstructor
       "atom_zerotied")))]
);;

test_number 3 (
val_cap_1
(* : string list *)
=
["let atom_zerotied_raregas_symbol_off_atom_zerotied_symbol = function";
 "  | A0s_t.atom_zerotied_raregas_symbol sym_a0r -> sym_a0r";
 "  | sym_at0 -> Erm_v.print_fatal_error\n   nam_cod \"atom_zerotied_raregas_symbol_off_atom_zerotied_symbol\"\n   (name atom_zerotied_raregas_symbol)\n   (name sym_at0) \"check\""]
);;

test_number 4 (
val_cap_2 
(* : string list *)
  =
 ["let atom_zerotied_anion_symbol_off_atom_zerotied_symbol = function";
   "  | A0s_t.atom_zerotied_anion_symbol sym_a0a -> sym_a0a";
   "  | sym_at0 -> Erm_v.print_fatal_error\n   nam_cod \"atom_zerotied_anion_symbol_off_atom_zerotied_symbol\"\n   (name atom_zerotied_anion_symbol)\n   (name sym_at0) \"check\""]
);;

test_number 5 (
val_cap_3 
(* : string list *)
  =
  ["let atom_zerotied_cation_symbol_off_atom_zerotied_symbol = function";
   "  | A0s_t.atom_zerotied_cation_symbol sym_a0c -> sym_a0c";
   "  | sym_at0 -> Erm_v.print_fatal_error\n   nam_cod \"atom_zerotied_cation_symbol_off_atom_zerotied_symbol\"\n   (name atom_zerotied_cation_symbol)\n   (name sym_at0) \"check\""]
);;

test_number 6 (
val_cap_4
(* : string list *)
  =
  ["let atom_zerotied_cation_plusone_symbol_off_atom_zerotied_symbol sym_at0 = ";
   "let sym_a0c = atom_zerotied_cation_symbol_off_atom_zerotied_symbol sym_at0 in ";
   "A0cps_v.atom_zerotied_cation_plusone_symbol_off_atom_zerotied_cation_symbol sym_a0c = "]
);;

test_number 7 (
val_cap_5
(* : string list *)
  =
 ["let atom_zerotied_cation_plustwo_symbol_off_atom_zerotied_symbol sym_at0 = ";
   "let sym_a0c = atom_zerotied_cation_symbol_off_atom_zerotied_symbol sym_at0 in ";
   "A0cps_v.atom_zerotied_cation_plustwo_symbol_off_atom_zerotied_cation_symbol sym_a0c = "]
);;

test_number 8 (
val_cap_6
(* : string list *)
  =
["let atom_zerotied_cation_plusthree_symbol_off_atom_zerotied_symbol sym_at0 = ";
   "let sym_a0c = atom_zerotied_cation_symbol_off_atom_zerotied_symbol sym_at0 in ";
   "A0cps_v.atom_zerotied_cation_plusthree_symbol_off_atom_zerotied_cation_symbol sym_a0c = "]
);;
