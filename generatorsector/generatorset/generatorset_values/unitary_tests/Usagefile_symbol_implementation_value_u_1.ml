(** {3 Test for usagefile_symbol_implementation_value_v} *)

open Make_test_v;;

testing "usagefile_symbol_implementation_value_u_1.ml";;

(* toplevel 
   #use "Tusagefile_symbol_implementation_value_u_1.ml";; 
*)

let nam_cod = "usagefile_symbol_implementation_value_u_1.ml";;

module Category_symbol_v = Category_symbol_v
module Camlline_formula_v = Camlline_formula_v
module Camlline_value_v = Camlline_value_v
module Camlparagraph_formula_v = Camlparagraph_formula_v
module Camlparagraph_symbol_t = Camlparagraph_symbol_t
module Camlparagraph_symbol_v = Camlparagraph_symbol_v
module Camlparagraph_value_v = Camlparagraph_value_v
module Fileio_v = Fileio_v
module Item_symbol_t = Item_symbol_t
module Item_symbol_v = Item_symbol_v
module Item_formula_v = Item_formula_v
module Item_tag_v = Item_tag_v
module Item_value_v = Item_value_v
module List_v = List_v
module Target_formula_v = Target_formula_v
module Target_tag_v = Target_tag_v
module Target_data_v = Target_data_v 
module Trail_v = Trail_v
module Tree_v = Tree_v
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

let tag_ite = List.find Item_tag_v.is_item_naming for_caf;;
let for_ite = Item_formula_v.retrieve tag_ite;;

let val_ite = Item_value_v.make tag_ite;;

let sym_ite = Tag_v.entity_off_tag tag_ite;;
let nam_ite = String.lowercase (Item_symbol_v.name sym_ite);;
let nof_ite = Format.sprintf "%s_%s_%s_v.ml" nam_ent nam_cat nam_ite;; 
let oc_ite = Fileio_v.open_out_channel_of_string_of_string_of_fullnameoffile nam_cod "oc" nof_ite;; 

test_number 1 (
val_ite 
(* : string list list *)
  =
[["module A0s_t = Atom_zerotied_symbol_t"];
 ["module A0rs_t = Atom_zerotied_raregas_symbol_t";
  "module A0rs_v = Atom_zerotied_raregas_symbol_v"];
 ["module A0as_t = Atom_zerotied_anion_symbol_t";
  "module A0as_v = Atom_zerotied_anion_symbol_v"];
 ["module A0cs_t = Atom_zerotied_cation_symbol_t";
  "module A0cs_v = Atom_zerotied_cation_symbol_v"];
 ["module A0c1s_t = Atom_zerotied_cation_plusone_symbol_t";
  "module A0c1s_v = Atom_zerotied_cation_plusone_symbol_v"];
 ["module A0c2s_t = Atom_zerotied_cation_plustwo_symbol_t";
  "module A0c2s_v = Atom_zerotied_cation_plustwo_symbol_v"];
 ["module A0c3s_t = Atom_zerotied_cation_plusthree_symbol_t";
  "module A0c3s_v = Atom_zerotied_cation_plusthree_symbol_v"];
 ["module Has_t = Halfbridge_symbol_t"; 
  "module Has_v = Halfbridge_symbol_v"]]
);;

Item_value_v.write oc_ite val_ite;
close_out oc_ite;
;;
