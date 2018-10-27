open Make_test_v;;

testing "Camlparagraph_endmarked_let_upgrading_value_u_1.ml";;

(* toplevel 
   #use "Camlparagraph_endmarked_let_upgrading_value_u_1.ml";;
*)

let nam_cod = "camlparagraph_value_u_1.ml";;

module Category_symbol_v = Category_symbol_v
module Camlline_formula_v = Camlline_formula_v
module Camlline_value_v = Camlline_value_v
module Camlline_duo_function_formula_v = Camlline_duo_function_formula_v
module Camlline_duo_function_symbol_t = Camlline_duo_function_symbol_t
module Contentfile_symbol_v = Contentfile_symbol_v
module Camlparagraph_formula_v = Camlparagraph_formula_v
module Camlparagraph_symbol_t = Camlparagraph_symbol_t
module Camlparagraph_symbol_v = Camlparagraph_symbol_v
module Camlparagraph_value_v = Camlparagraph_value_v
module Doublet_list_v = Doublet_list_v
module Fileio_v = Fileio_v
module Framestype_extended_key_by_camlparagraph_tag_provider_v = Framestype_extended_key_by_camlparagraph_tag_provider_v
module Generatorset_symbol_t = Generatorset_symbol_t
module Generatorset_symbol_v = Generatorset_symbol_v
module Generatorset_symbol_by_sole_index_provider_v = Generatorset_symbol_by_sole_index_provider_v
module Item_symbol_list_by_category_n_content_n_usage_provider_v = Item_symbol_list_by_category_n_content_n_usage_provider_v
module Item_symbol_v = Item_symbol_v
module Item_formula_v = Item_formula_v
module Item_tag_v = Item_tag_v
module Item_value_v = Item_value_v
module List_v = List_v
module Singlet_v = Singlet_v
module Sole_indexed_tree_v = Sole_indexed_tree_v
module Target_formula_v = Target_formula_v
module Target_tag_v = Target_tag_v
module Target_data_v = Target_data_v 
module Trail_v = Trail_v
module Tree_v = Tree_v
module Target_data_by_target_tag_provider_v = Target_data_by_target_tag_provider_v
module Usagefile_symbol_v = Usagefile_symbol_v
module Item_upgrading_symbol_value_implementation_formula_v = Item_upgrading_symbol_value_implementation_formula_v

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

let tag_ite = List.find Item_tag_v.is_item_upgrading for_caf;;
let for_ite = Item_formula_v.retrieve tag_ite;;
let val_ite = Item_value_v.make tag_ite;;
let sym_ite = Tag_v.entity_off_tag tag_ite;;
let nam_ite = String.lowercase (Item_symbol_v.name sym_ite);;

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

let sym_cap_1 = Tag_v.entity_off_tag tag_cap_1;;
let sym_cap_2 = Tag_v.entity_off_tag tag_cap_2;;
let sym_cap_3 = Tag_v.entity_off_tag tag_cap_3;;
let sym_cap_4 = Tag_v.entity_off_tag tag_cap_4;;
let sym_cap_5 = Tag_v.entity_off_tag tag_cap_5;;
let sym_cap_6 = Tag_v.entity_off_tag tag_cap_6;;

let nam_cap_1 = Camlparagraph_symbol_v.name sym_cap_1;;
let nam_cap_2 = Camlparagraph_symbol_v.name sym_cap_2;;
let nam_cap_3 = Camlparagraph_symbol_v.name sym_cap_3;;
let nam_cap_4 = Camlparagraph_symbol_v.name sym_cap_4;;
let nam_cap_5 = Camlparagraph_symbol_v.name sym_cap_5;;
let nam_cap_6 = Camlparagraph_symbol_v.name sym_cap_6;;

(*
let nof_cap_1 = Format.sprintf "%s_%s_%s_%s_v.ml" nam_ent nam_cat nam_ite nam_cap_1;; 
let nof_cap_2 = Format.sprintf "%s_%s_%s_%s_v.ml" nam_ent nam_cat nam_ite nam_cap_2;; 
let nof_cap_3 = Format.sprintf "%s_%s_%s_%s_v.ml" nam_ent nam_cat nam_ite nam_cap_3;; 
let nof_cap_4 = Format.sprintf "%s_%s_%s_%s_v.ml" nam_ent nam_cat nam_ite nam_cap_4;; 
let nof_cap_5 = Format.sprintf "%s_%s_%s_%s_v.ml" nam_ent nam_cat nam_ite nam_cap_5;;
let nof_cap_6 = Format.sprintf "%s_%s_%s_%s_v.ml" nam_ent nam_cat nam_ite nam_cap_6;;

let oc_cap_1 = Fileio_v.open_out_channel_of_string_of_string_of_fullnameoffile nam_cod "oc" nof_cap_1;; 
let oc_cap_2 = Fileio_v.open_out_channel_of_string_of_string_of_fullnameoffile nam_cod "oc" nof_cap_2;; 
let oc_cap_3 = Fileio_v.open_out_channel_of_string_of_string_of_fullnameoffile nam_cod "oc" nof_cap_3;; 
let oc_cap_4 = Fileio_v.open_out_channel_of_string_of_string_of_fullnameoffile nam_cod "oc" nof_cap_4;; 
let oc_cap_5 = Fileio_v.open_out_channel_of_string_of_string_of_fullnameoffile nam_cod "oc" nof_cap_5;; 
let oc_cap_6 = Fileio_v.open_out_channel_of_string_of_string_of_fullnameoffile nam_cod "oc" nof_cap_6;; 
*)

test_number 1 (
sym_cap_1 
(* : Item_formula_v.Iasviuf_v.Camlparagraph_symbol_t.camlparagraph_symbol *)
=
Item_formula_v.Iasviuf_v.Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
 (Item_formula_v.Iasviuf_v.Camlparagraph_symbol_t.Cms_t.Camlparagraph_endmarked_let_symbol
   (Item_formula_v.Iasviuf_v.Camlparagraph_symbol_t.Cms_t.Cels_t.Camlparagraph_endmarked_let_argument_symbol
     Item_formula_v.Iasviuf_v.Camlparagraph_symbol_t.Cms_t.Cels_t.Cefas_t.Let_est_of_ess_argument))
);;

test_number 2 (
for_cap_1 
(* : Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.camlline_symbol Tag_t.tag list *) 
=
[(Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Camlline_duo_symbol
   (Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Camlparagraph_symbol_t.Camlline_duo_function_symbol
     Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Camlparagraph_symbol_t.Camlline_duo_function_symbol_t.Let_et_any_of_es_any_ac_as_equal),
  [1; 1; 7; 1; 1]);
 (Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Camlline_duo_symbol
   (Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Camlparagraph_symbol_t.Camlline_duo_function_symbol
     Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Camlparagraph_symbol_t.Camlline_duo_function_symbol_t.At_tdot_s_as),
  [2; 1; 7; 1; 1]);
 (Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Camlline_constant_symbol
    (Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Ccs_t.Camlline_constant_pervasive_symbol
       Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Ccs_t.Ccps_t.Double_semicolon),
  [4; 1; 7; 1; 1])]
);;

test_number 3 (
val_cap_1
(* : string list *)
=
["let atom_zerotied_symbol_of_atom_zerotied_raregas_symbol sym_a0r = ";
 "  A0s_t.atom_zerotied_raregas_symbol sym_a0r"; ";;"]
);;

test_number 4 (
val_cap_6
(* : string list *)
=
["let atom_zerotied_symbol_of_atom_zerotied_cation_plusthree_symbol sym_0c3 = ";
 "  let sym_a0c = A0cs_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plusthree_symbol sym_0c3 in";
 "    atom_zerotied_symbol_of_atom_zerotied_cation_symbol sym_a0c"; 
 ";;"]
);;

(*
Camlparagraph_value_v.write oc_cap_1 val_cap_1;close_out oc_cap_1; 
Camlparagraph_value_v.write oc_cap_2 val_cap_2;close_out oc_cap_2; 
Camlparagraph_value_v.write oc_cap_3 val_cap_3;close_out oc_cap_3; 
Camlparagraph_value_v.write oc_cap_4 val_cap_4;close_out oc_cap_4; 
Camlparagraph_value_v.write oc_cap_5 val_cap_5;close_out oc_cap_5; 
Camlparagraph_value_v.write oc_cap_6 val_cap_6;close_out oc_cap_6; ;;
*)
