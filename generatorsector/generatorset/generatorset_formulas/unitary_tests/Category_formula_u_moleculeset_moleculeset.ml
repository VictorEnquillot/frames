open Make_test_v;;

testing "Category_formula_v with 
   Category_formula_u_moleculeset_moleculeset.ml";;

(* toplevel 
   #use "Category_formula_u_moleculeset_moleculeset.ml";;
*)

let sym_dos = Domainset_symbol_v.make "moleculeset";;
let soi_dos = [3];;
let tag_dos = Tag_v.make sym_dos soi_dos;;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;

Generatorset_symbol_by_sole_index_register_v.store soi_dos gss_dos;;

let for_dos = Domainset_formula_v.retrieve tag_dos;;

let tag_cat = Doublet_list_v.find_if_left Category_symbol_v.is_symbol_off_category_symbol for_dos;; 
let for_cat = Category_formula_v.retrieve tag_cat;;

let sym_enp_l = List.map Tag_v.symbol_off_tag for_cat;;
let str_enp_l = List.map Entity_symbol_v.string_off sym_enp_l;;
let onc_l = List_v.once_list_off_list sym_enp_l;;
let str_sor_l = "molecule" :: List.sort String.compare (List.tl str_enp_l);;

let select_enp nam dep1 dep2 tag_enp =
  let sym_enp = Tag_v.symbol_off_tag tag_enp in
  let str = Entity_symbol_v.string_off sym_enp in
  let dep = List.length (String_v.split_of_c '_' str) in
  String.length str >= (String.length nam) 
    && (String.sub str 0 (String.length nam) = nam)
    && dep >= dep1 
    && dep <= dep2 
;;

test_number 1 (
List.length for_cat
=
List.length onc_l
);;

test_number 2 (
List.filter (select_enp "molecule" 1 1) for_cat
(* : Entity_symbol_t.Entity_proper_symbol Tag_t.tag list *)
=
[(Entity_symbol_t.Topentity "moleculeset", [1; 1; 3])]
);;

test_number 3 (
List.filter (select_enp "molecule" 2 2) for_cat
(* : Entity_symbol_t.Entity_proper_symbol Tag_t.tag list *)
=
[(Entity_symbol_t.Entity_proper "molecule_aminoacid", [2; 1; 3]);
 (Entity_symbol_t.Entity_proper "molecule_bridged", [6; 1; 3]);
 (Entity_symbol_t.Entity_proper "molecule_dendrimer", [7; 1; 3]);
 (Entity_symbol_t.Entity_proper "molecule_forked", [8; 1; 3]);
 (Entity_symbol_t.Entity_proper "molecule_linear", [13; 1; 3]);
 (Entity_symbol_t.Entity_proper "molecule_polymer", [20; 1; 3])]
);;

test_number 4 (
 for_cat
(* : Entity_symbol_t.Entity_proper_symbol Tag_t.tag list *)
=
[(Entity_symbol_t.Topentity "moleculeset", [1; 1; 3]);
 (Entity_symbol_t.Entity_proper "molecule_aminoacid", [2; 1; 3]);
 (Entity_symbol_t.Entity_proper "molecule_aminoacid_segmented",
  [3; 1; 3]);
 (Entity_symbol_t.Entity_proper "molecule_aminoacid_fragmented",
  [4; 1; 3]);
 (Entity_symbol_t.Entity_proper "molecule_aminoacid_regular",
  [5; 1; 3]);
 (Entity_symbol_t.Entity_proper "molecule_bridged", [6; 1; 3]);
 (Entity_symbol_t.Entity_proper "molecule_dendrimer", [7; 1; 3]);
 (Entity_symbol_t.Entity_proper "molecule_forked", [8; 1; 3]);
 (Entity_symbol_t.Entity_proper "molecule_forked_oneforked",
  [9; 1; 3]);
 (Entity_symbol_t.Entity_proper "molecule_forked_twoforked",
  [10; 1; 3]);
 (Entity_symbol_t.Entity_proper "molecule_forked_threeforked",
  [11; 1; 3]);
 (Entity_symbol_t.Entity_proper "molecule_forked_moreforked",
  [12; 1; 3]);
 (Entity_symbol_t.Entity_proper "molecule_linear", [13; 1; 3]);
 (Entity_symbol_t.Entity_proper "molecule_linear_monoatomic",
  [14; 1; 3]);
 (Entity_symbol_t.Entity_proper "molecule_linear_diatomic",
  [15; 1; 3]);
 (Entity_symbol_t.Entity_proper "molecule_linear_triatomic",
  [16; 1; 3]);
 (Entity_symbol_t.Entity_proper "molecule_linear_tetratomic",
  [17; 1; 3]);
 (Entity_symbol_t.Entity_proper "molecule_linear_pentatomic",
  [18; 1; 3]);
 (Entity_symbol_t.Entity_proper "molecule_linear_polyatomic",
  [19; 1; 3]);
 (Entity_symbol_t.Entity_proper "molecule_polymer", [20; 1; 3]);
 (Entity_symbol_t.Entity_proper "polypeptide", [21; 1; 3]);
 (Entity_symbol_t.Entity_proper "polypeptide_regular", [22; 1; 3])]
);;
