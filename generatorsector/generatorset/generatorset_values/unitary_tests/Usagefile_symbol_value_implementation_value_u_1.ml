open Make_test_v;;

testing "usagefile_symbol_value_implementation_value_u_1.ml";;

(* toplevel 
   #use "Tusagefile_symbol_value_implementation_value_u_1.ml";;
*)

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

let val_usf = Usagefile_value_v.make tag_usf;;

test_number 1 (
tag_usf
(* : Item_symbol_t.usfm_symbol * Tag_t.Sid_t.sole_index *)
=
(Usagefile_symbol_t.Implementation, [1; 3; 1; 1])
);;

test_number 2 (
for_usf
(* : Itt_t.item_tag Tag_t.tag list *)
=
[(Item_symbol_t.Item_heading, [1; 1; 3; 1; 1]);
 (Item_symbol_t.Item_naming, [2; 1; 3; 1; 1]);
 (Item_symbol_t.Item_making, [3; 1; 3; 1; 1]);
 (Item_symbol_t.Item_naming, [4; 1; 3; 1; 1]);
 (Item_symbol_t.Item_extracting, [5; 1; 3; 1; 1]);
 (Item_symbol_t.Item_querying, [6; 1; 3; 1; 1]);
 (Item_symbol_t.Item_upgrading, [7; 1; 3; 1; 1]);
 (Item_symbol_t.Item_abbreviating, [8; 1; 3; 1; 1]);
 (Item_symbol_t.Item_ending, [9; 1; 3; 1; 1])]
);;

(*

val_usf
(* : string list list *)
=
  [[["(** {3 The functionalities for a Symbol for a Atom_zerotied.} *)"]];
   [["module A0s_t = Atom_zerotied_t"; "module A0s_v = Atom_zerotied_v"];
    ["module A0rs_t = Atom_zerotied_raregas_t";
     "module A0rs_v = Atom_zerotied_raregas_v"];
    ["module A0as_t = Atom_zerotied_anion_t";
     "module A0as_v = Atom_zerotied_anion_v"];
    ["module A0cs_t = Atom_zerotied_cation_t";
     "module A0cs_v = Atom_zerotied_cation_v"];
    ["module A0c1s_t = Atom_zerotied_cation_plusone_t";
     "module A0c1s_v = Atom_zerotied_cation_plusone_v"];
    ["module A0c2s_t = Atom_zerotied_cation_plustwo_t";
     "module A0c2s_v = Atom_zerotied_cation_plustwo_v"];
    ["module A0c3s_t = Atom_zerotied_cation_plusthree_t";
     "module A0c3s_v = Atom_zerotied_cation_plusthree_v"];
    ["module Has_t = Halfbridge_t"; "module Has_v = Halfbridge_v"]];
   [];
   [["let name = function";
     " atom_zerotied_raregas_symbol_v.name atom_zerotied_raregas_symbol_a0r"];
    ["let name = function";
     " atom_zerotied_anion_symbol_v.name atom_zerotied_anion_symbol_a0a"];
    ["let name = function";
     " atom_zerotied_cation_symbol_v.name atom_zerotied_cation_symbol_a0c"];
    ["let name = function";
     " halfbridge_symbol_v.name halfbridge_symbol_hae"]];
   [["let atom_zerotied_raregas_off_atom_zerotied = function";
     "  | atom_zerotied_symbol_v.atom_zerotied_raregas a0r -> a0r";
     "  | at0 -> Error_messages_v.print_fatal_error\n      nam_cod \"atom_zerotied_raregas_off_atom_zerotied\"\n      \"Atom_zerotied_raregas\"\n      (name at0) \"check\""];
    ["let atom_zerotied_anion_off_atom_zerotied = function";
     "  | atom_zerotied_symbol_v.atom_zerotied_anion a0a -> a0a";
     "  | at0 -> Error_messages_v.print_fatal_error\n      nam_cod \"atom_zerotied_anion_off_atom_zerotied\"\n      \"Atom_zerotied_anion\"\n      (name at0) \"check\""];
    ["let atom_zerotied_cation_off_atom_zerotied = function";
     "  | atom_zerotied_symbol_v.atom_zerotied_cation a0c -> a0c";
     "  | at0 -> Error_messages_v.print_fatal_error\n      nam_cod \"atom_zerotied_cation_off_atom_zerotied\"\n      \"Atom_zerotied_cation\"\n      (name at0) \"check\""];
    ["let atom_zerotied_cation_plusone_off_atom_zerotied at0 = ";
     "  let a0c = atom_zerotied_cation_off_atom_zerotied at0 in ";
     "    atom_zerotied_cation_symbol_v.atom_zerotied_cation_plusone_off_atom_zerotied_cation a0c"];
    ["let atom_zerotied_cation_plustwo_off_atom_zerotied at0 = ";
     "  let a0c = atom_zerotied_cation_off_atom_zerotied at0 in ";
     "    atom_zerotied_cation_symbol_v.atom_zerotied_cation_plustwo_off_atom_zerotied_cation a0c"];
    ["let atom_zerotied_cation_plusthree_off_atom_zerotied at0 = ";
     "  let a0c = atom_zerotied_cation_off_atom_zerotied at0 in ";
     "    atom_zerotied_cation_symbol_v.atom_zerotied_cation_plusthree_off_atom_zerotied_cation a0c"];
    ["let halfbridge_off_atom_zerotied = function";
     "  | atom_zerotied_symbol_v.halfbridge hae -> hae";
     "  | at0 -> Error_messages_v.print_fatal_error\n      nam_cod \"halfbridge_off_atom_zerotied\"\n      \"Halfbridge\"\n      (name at0) \"check\""]];
   [["let is_atom_zerotied_raregas_off_atom_zerotied = function";
     "  | atom_zerotied_symbol_v.atom_zerotied_raregas -> true";
     "  | _ -> false"];
    ["let is_atom_zerotied_anion_off_atom_zerotied = function";
     "  | atom_zerotied_symbol_v.atom_zerotied_anion -> true";
     "  | _ -> false"];
    ["let is_atom_zerotied_cation_off_atom_zerotied = function";
     "  | atom_zerotied_symbol_v.atom_zerotied_cation -> true";
     "  | _ -> false"];
    ["let is_atom_zerotied_cation_plusone_off_atom_zerotied at0 =";
     "  | atom_zerotied_symbol_v.atom_zerotied_cation -> true";
     "  If not (is_atom_zerotied_cation_off_atom_zerotied at0";
     "     atom_zerotied_cation_plusone_symbol_v = atom_zerotied_cation_plusone_off_atom_zerotied_cation a0c in"];
    ["let is_atom_zerotied_cation_plustwo_off_atom_zerotied at0 =";
     "  | atom_zerotied_symbol_v.atom_zerotied_cation -> true";
     "  If not (is_atom_zerotied_cation_off_atom_zerotied at0";
     "     atom_zerotied_cation_plustwo_symbol_v = atom_zerotied_cation_plustwo_off_atom_zerotied_cation a0c in"];
    ["let is_atom_zerotied_cation_plusthree_off_atom_zerotied at0 =";
     "  | atom_zerotied_symbol_v.atom_zerotied_cation -> true";
     "  If not (is_atom_zerotied_cation_off_atom_zerotied at0";
     "     atom_zerotied_cation_plusthree_symbol_v = atom_zerotied_cation_plusthree_off_atom_zerotied_cation a0c in"];
    ["let is_halfbridge_off_atom_zerotied = function";
     "  | atom_zerotied_symbol_v.halfbridge -> true"; "  | _ -> false"]];
   [["let atom_zerotied_of_atom_zerotied_raregas a0r = ";
     "  atom_zerotied_symbol_v.atom_zerotied_raregas a0r"];
    ["let atom_zerotied_of_atom_zerotied_anion a0a = ";
     "  atom_zerotied_symbol_v.atom_zerotied_anion a0a"];
    ["let atom_zerotied_of_atom_zerotied_cation a0c = ";
     "  atom_zerotied_symbol_v.atom_zerotied_cation a0c"];
    ["let atom_zerotied_of_atom_zerotied_cation_plusone 0c1 = ";
     "  let a0c = atom_zerotied_cation_symbol_v.atom_zerotied_cation_of_atom_zerotied_cation_plusone 0c1 in";
     "    atom_zerotied_of_atom_zerotied_cation a0c"];
    ["let atom_zerotied_of_atom_zerotied_cation_plustwo 0c2 = ";
     "  let a0c = atom_zerotied_cation_symbol_v.atom_zerotied_cation_of_atom_zerotied_cation_plustwo 0c2 in";
     "    atom_zerotied_of_atom_zerotied_cation a0c"];
    ["let atom_zerotied_of_atom_zerotied_cation_plusthree 0c3 = ";
     "  let a0c = atom_zerotied_cation_symbol_v.atom_zerotied_cation_of_atom_zerotied_cation_plusthree 0c3 in";
     "    atom_zerotied_of_atom_zerotied_cation a0c"];
    ["let atom_zerotied_of_halfbridge hae = ";
     "  atom_zerotied_symbol_v.halfbridge hae"]];
   [];
   [["(** created by ./generator atom_zerotied implementation symbol at 17:47 12 Dec 2011. *)"]]]
);;
*)

test_number 3 (
Usagefile_value_v.fullnameoffile tag_usf
=
"./atom_zerotied_symbol_v.ml"
);;

Usagefile_value_v.write tag_usf;;


