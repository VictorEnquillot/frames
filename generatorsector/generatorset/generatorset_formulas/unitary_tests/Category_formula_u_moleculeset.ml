open Make_test_v;;

testing "Category_formula_v with
   Category_formula_u_moleculeset.ml";;

(* toplevel 
   #use "Category_formula_u_moleculeset.ml";;
*)

let nam_dos = "moleculeset";;
let nam_enp = "molecule";;
let nam_cat = "formula";;

let sel_cat = (fun c -> Category_symbol_v.string_off c = nam_cat);;
let sel_enp = (fun e -> Entity_symbol_v.string_off e = nam_enp);;

let idx_dos = Domainset_symbol_v.domainset_index_of_domainset_name nam_dos +1;;
let soi_dos = Sole_index_v.make idx_dos [];;
let sym_dos = Domainset_symbol_v.make nam_dos;;

let tag_dos = Tag_v.make sym_dos soi_dos;;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;

Generatorset_symbol_by_sole_index_register_v.store soi_dos gss_dos;;

let for_dos = Domainset_formula_v.retrieve tag_dos;;

let tag_cat = Doublet_list_v.find_if_left Category_symbol_v.is_formula_off_category_symbol for_dos;; 
let for_cat = Category_formula_v.retrieve tag_cat;;

let sym_enp_l = List.map Tag_v.symbol_off_tag for_cat;;
let str_enp_l = List.map Entity_symbol_v.string_off sym_enp_l;;
let onc_l = List_v.keep_first_once_list_off_list sym_enp_l;;
let str_sor_l = "moleculeset" :: List.sort String.compare (List.tl str_enp_l);;

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
str_sor_l
=
["moleculeset"; "fragment"; "grouping"; "molecule"; "molecule_forked";
 "molecule_linear"; "molecule_linear_diatomic";
 "molecule_linear_overdiatomic"; "molecule_polymer"]
);;

test_number 2 (
List.filter (select_enp "molecule" 0 2) for_cat
(* : Entity_symbol_t.Entity_proper_symbol Tag_t.tag list *)
=
[(Entity_symbol_t.Entity_proper_top_symbol
   (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"),
  [1; 3; 1]);
 (Entity_symbol_t.Entity_proper "molecule", [4; 3; 1]);
 (Entity_symbol_t.Entity_proper "molecule_forked", [5; 3; 1]);
 (Entity_symbol_t.Entity_proper "molecule_linear", [6; 3; 1]);
 (Entity_symbol_t.Entity_proper "molecule_polymer", [9; 3; 1])]
);;

test_number 3 (
List.filter (select_enp "fragment" 1 3) for_cat
(* : Entity_symbol_t.Entity_proper_symbol Tag_t.tag list *)
=
(Entity_symbol_t.Entity_proper "fragment", [2; 3; 1])]
);;
