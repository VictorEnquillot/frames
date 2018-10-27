(** {3 Test for camlline_duo_function_value_v} *)

open Make_test_v;;

testing "Camlline_duo_function_upgrading_value_u_1.ml";;

(* toplevel 
   #use "Camlline_duo_function_upgrading_value_u_1.ml";; 
*)

let nam_cod = "item_upgrading_symbol_value_im_value_u_1.ml";;

let sym_dom = Domain_symbol_v.make "chemicalset";;
let soi_dom = [1];;
let gss_dom = Generatorset_symbol_v.generatorset_symbol_of_domain_symbol sym_dom;;
Generatorset_symbol_by_sole_index_register_v.store soi_dom gss_dom;;
let tag_dom = Tag_v.make sym_dom soi_dom;;
let for_dom = Domain_formula_v.retrieve tag_dom;;

let tag_cat = Doublet_list_v.find_if_left 
    Category_symbol_v.is_symbol_off_category_symbol for_dom;; 
let for_cat = Category_formula_v.retrieve tag_cat;;

let tag_enp = Doublet_list_v.find_if_left (fun e -> Entity_symbol_v.string_off e = "atom_zerotied") for_cat;;
let for_enp = Entity_formula_v.retrieve tag_enp;;


let tag_cof = Doublet_list_v.find_if_left 
    Contentfile_symbol_v.is_contentfile_value_alone_symbol_off_contentfile_symbol for_enp;; 
let for_cof = Contentfile_formula_v.retrieve tag_cof;;

let tag_usf = Doublet_list_v.find_if_left 
    Usagefile_symbol_v.is_implementation_off_usagefile_symbol for_cof;; 
let for_usf = Usagefile_formula_v.retrieve tag_usf;;

let tag_ite = Doublet_list_v.find_if_left 
    Item_symbol_v.is_upgrading for_usf;; 

let for_ite = Item_formula_v.retrieve tag_ite;;



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

let tag_cap_1 = List.nth for_ite 0;;
let for_cap_1 = Camlparagraph_formula_v.retrieve tag_cap_1;;

let tag_cal_11 = List.nth for_cap_1 0;;
let tag_cal_12 = List.nth for_cap_1 1;;

let for_cal_11 = Camlline_formula_v.retrieve tag_cal_11;;
let for_cal_12 = Camlline_formula_v.retrieve tag_cal_12;;

let val_cal_11 = Camlline_value_v.make tag_cal_11;;
let val_cal_12 = Camlline_value_v.make tag_cal_12;;

let tag_cap_4 = List.nth for_ite 3;;
let for_cap_4 = Camlparagraph_formula_v.retrieve tag_cap_4;;

let tag_cal_41 = List.nth for_cap_4 0;;
let tag_cal_42 = List.nth for_cap_4 1;;
let tag_cal_43 = List.nth for_cap_4 2;;

let for_cal_41 = Camlline_formula_v.retrieve tag_cal_41;;
let for_cal_42 = Camlline_formula_v.retrieve tag_cal_42;;
let for_cal_43 = Camlline_formula_v.retrieve tag_cal_43;;

let val_cal_41 = Camlline_value_v.make tag_cal_41;;
let val_cal_42 = Camlline_value_v.make tag_cal_42;;
let val_cal_43 = Camlline_value_v.make tag_cal_43;;

let val_cap_1 = Camlparagraph_value_v.make tag_cap_1;;
let val_cap_4 = Camlparagraph_value_v.make tag_cap_4;;

let val_ite = Item_value_v.make tag_ite;;

test_number 1 (
val_ite
(* : string list list *)
=
[["let atom_zerotied_symbol_of_atom_zerotied_raregas_symbol sym_a0r = ";
  "  A0s_t.atom_zerotied_raregas_symbol sym_a0r"; ";;"];
 ["let atom_zerotied_symbol_of_atom_zerotied_anion_symbol sym_a0a = ";
  "  A0s_t.atom_zerotied_anion_symbol sym_a0a"; ";;"];
 ["let atom_zerotied_symbol_of_atom_zerotied_cation_symbol sym_a0c = ";
  "  A0s_t.atom_zerotied_cation_symbol sym_a0c"; ";;"];
 ["let atom_zerotied_symbol_of_atom_zerotied_cation_plusone_symbol sym_0cp = ";
  "  let sym_a0c = A0cs_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plusone_symbol sym_0cp in";
  "    atom_zerotied_symbol_of_atom_zerotied_cation_symbol sym_a0c"; ";;"];
 ["let atom_zerotied_symbol_of_atom_zerotied_cation_plustwo_symbol sym_0cp = ";
  "  let sym_a0c = A0cs_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plustwo_symbol sym_0cp in";
  "    atom_zerotied_symbol_of_atom_zerotied_cation_symbol sym_a0c"; ";;"];
 ["let atom_zerotied_symbol_of_atom_zerotied_cation_plusthree_symbol sym_0cp = ";
  "  let sym_a0c = A0cs_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plusthree_symbol sym_0cp in";
  "    atom_zerotied_symbol_of_atom_zerotied_cation_symbol sym_a0c"; ";;"]]
);;

test_number 2 (
val_cal_41
(* : string list*)
  =
"let atom_zerotied_symbol_of_atom_zerotied_cation_plusone_symbol sym_0cp = "
);;

