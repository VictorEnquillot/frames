open Make_test_v;;

testing "Statustype_formula_u_1.ml";;

(* toplevel 
   #use "Statustype_formula_u_1.ml";;
*)

let sym_dos = Domainset_symbol_v.make "chemicalset";;
let soi_dos = [1];;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_register_v.store_force soi_dos gss_dos;;
let tag_dos = Tag_v.make sym_dos soi_dos;;
let for_dos = Domainset_formula_v.retrieve tag_dos;;

let tag_cat = Doublet_list_v.find_if_left Category_symbol_v.is_symbol_off_category_symbol for_dos;; 
let for_cat = Category_formula_v.retrieve tag_cat;;

let tag_enp = Doublet_list_v.find_if_left (fun e -> Entity_symbol_v.string_off e = "atom_zerotied") for_cat;; 
let for_enp = Entity_proper_formula_u_chemicalset_symbol_atom_zerotied.retrieve tag_enp;;


let knv_l = Register_v.entry_list Generatorset_symbol_by_sole_index_provider_v.generatorset_symbol_by_sole_index_register;;
let cou_knv = List.length knv_l;;
let knv_1_l = Doublet_list_v.filter_if_left (fun k -> List.length k = 1) knv_l;;
let knv_2_l = Doublet_list_v.filter_if_left (fun k -> List.length k = 2) knv_l;;
let knv_3_l = Doublet_list_v.filter_if_left (fun k -> List.length k = 3) knv_l;;
let knv_4_l = Doublet_list_v.filter_if_left (fun k -> List.length k = 4) knv_l;;
let knv_5_l = Doublet_list_v.filter_if_left (fun k -> List.length k = 5) knv_l;;

test_number 1 (
tag_stt
=
(Statustype_symbol_t.Unconstrained, [3; 1; 1])
);;

test_number 2 (
for_stt 
(* : Statustype_formula_v.Contentfile_symbol_t.contentfile_symbol Tag_t.tag list *)
  =
[(Contentfile_symbol_t.Type_alone, [1; 3; 1; 1]); 
 (Contentfile_symbol_t.Value_alone, [2; 3; 1; 1])]
);;

test_number 3 (
knv_5_l
(* (Generatorset_symbol_by_sole_index_provider_v.Sole_index_t.sole_index, Generatorset_symbol_t.generatorset_symbol)
  Doublet_list_t.doublet_list *)
=
[([2; 3; 1; 1],
  Generatorset_symbol_t.Contentfile_symbol Contentfile_symbol_t.Value_alone);
 ([1; 3; 1; 1],
  Generatorset_symbol_t.Contentfile_symbol Contentfile_symbol_t.Type_alone)]
);;
