open Make_test_v;;

testing "Item_tag_v with
   Item_tag_u_figureset.ml";;

(* toplevel 
   #use "Item_tag_u_figureset.ml";;

*)

let nam_dos = "figureset";;
let nam_cat = "symbol";;
let nam_usf = "implementation_for_symbol";;
let nam_cof = "value_alone";;
let nam_ent = "figureset";;

let idx_dos = Domainset_symbol_v.domainset_index_of_domainset_name nam_dos;;
let idx_cat = 7;;
let idx_ent = 1;; 
let idx_cof = 2;;
let idx_usf = 1;;
let idx_ite = 21;;

let sym_ent = Entity_symbol_v.make "entity_proper_with_sons" nam_ent;;

let sym_dos = Domainset_symbol_v.make nam_dos "";;
let soi_dos = Sole_index_v.make idx_dos [];;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_register_v.store soi_dos gss_dos;;
let tag_dos = Tag_v.make sym_dos soi_dos;;

let sym_cat = Category_symbol_v.make nam_cat;;
let soi_cat = Sole_index_v.make idx_cat soi_dos;;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_register_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

test_number 1 (
tag_cat 
(* : Category_symbol_t.category_symbol Tag_t.tag *)
=
(Category_symbol_t.Symbol, [7; 2])
);;

let sym_ent = Entity_symbol_v.make "entity_proper_with_sons" nam_ent;;
let soi_ent = Sole_index_v.make idx_ent soi_cat;;
let gss_ent = Generatorset_symbol_v.generatorset_symbol_of_entity_symbol sym_ent;;
Generatorset_symbol_by_sole_index_register_v.store soi_ent gss_ent;;
let tag_ent = Tag_v.make sym_ent soi_ent;;

test_number 2 (
tag_ent 
(* : Entity_symbol_t.entity_symbol Tag_t.tag *)
=
(Entity_symbol_t.Entity_proper_symbol
  (Entity_proper_symbol_t.Entity_proper_with_sons "figureset"),
 [1; 7; 2])
);;

let sym_cof = Contentfile_symbol_v.make nam_cof;;
let soi_cof = Sole_index_v.make idx_cof soi_ent;;
let gss_cof = Generatorset_symbol_v.generatorset_symbol_of_contentfile_symbol sym_cof;;
Generatorset_symbol_by_sole_index_register_v.store soi_cof gss_cof;;
let tag_cof = Tag_v.make sym_cof soi_cof;;

let sym_usf = Usagefile_symbol_v.make nam_usf "";;
let soi_usf = Sole_index_v.make idx_usf soi_cof;;
let gss_usf = Generatorset_symbol_v.generatorset_symbol_of_usagefile_symbol sym_usf;;
Generatorset_symbol_by_sole_index_register_v.store soi_usf gss_usf;;
let tag_usf = Tag_v.make sym_usf soi_usf;;

test_number 3 (
tag_usf
(* : Usagefile_symbol_t.usagefile_symbol Tag_t.tag *)
=
  (Usagefile_symbol_t.Usagefile_for_symbol_symbol
    Usagefile_for_symbol_symbol_t.Implementation_for_symbol,
   [1; 2; 1; 7; 2])
);;

let nam_ite = "making_for_symbol_bare";;
let sym_igt = Item_for_symbol_by_group_topsons_symbol_v.make_of_topson_bare nam_ite;;
let sym_ite = Item_symbol_v.item_symbol_of_item_for_symbol_by_group_topsons_symbol sym_igt;;
let soi_ite = Sole_index_v.make idx_ite soi_usf;;
let gss_ite = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite;;
Generatorset_symbol_by_sole_index_register_v.store soi_ite gss_ite;;

let tag_ite = Tag_v.make sym_ite soi_ite;;

test_number 4 (
tag_ite
(* Item_symbol_t.item_symbol Tag_t.tag *)
  =
  (Item_symbol_t.Item_for_symbol_symbol
    (Item_for_symbol_symbol_t.Item_for_symbol_by_group_topsons_symbol
      Item_for_symbol_by_group_topsons_symbol_t.Making_for_symbol_bare),
   [21; 1; 2; 1; 7; 2])
);;

let tag_usf_off = Item_tag_v.usagefile_tag_off_item_tag tag_ite;;

test_number 5 (
tag_usf_off
(* : Usagefile_symbol_t.usagefile_symbol Tag_t.tag *)
=
tag_usf
);;

let tag_ent_off = Item_tag_v.entity_tag_off_item_tag tag_ite;;

test_number 6 (
tag_ent_off
(* : Entity_symbol_t.entity_symbol Tag_t.tag *)
=
tag_ent
);;

let tag_cat_off = Item_tag_v.category_tag_off_item_tag tag_ite;;

test_number 7 (
tag_cat_off
=
tag_cat
);;

let re_l = Register_v.entry_list Generatorset_symbol_by_sole_index_register_v.register;;
let fi1_l = Doublet_list_v.filter_if_left (fun e -> List_v.ultimate_element_off_list e = idx_dos) re_l;;
let fi2_l = Doublet_list_v.filter_if_left (fun e -> List.length e <= List.length soi_ite) fi1_l;;
let compare_entry (k1, v1) (k2, v2) = compare (List.length k1) (List.length k2);;
let kv_dos_l = List.sort compare_entry fi2_l;;

test_number 8 (
kv_dos_l
(* : (Sole_index_t.sole_index * Generatorset_symbol_t.generatorset_symbol) list *)
=
  [([2], Generatorset_symbol_t.Domainset_symbol Domainset_symbol_t.Figureset);
   ([7; 2], Generatorset_symbol_t.Category_symbol Category_symbol_t.Symbol);
   ([1; 7; 2],
    Generatorset_symbol_t.Entity_symbol
     (Entity_symbol_t.Entity_proper_symbol
       (Entity_proper_symbol_t.Entity_proper_with_sons "figureset")));
   ([2; 1; 7; 2],
    Generatorset_symbol_t.Contentfile_symbol Contentfile_symbol_t.Value_alone);
   ([1; 2; 1; 7; 2],
    Generatorset_symbol_t.Usagefile_symbol
     (Usagefile_symbol_t.Usagefile_for_symbol_symbol
       Usagefile_for_symbol_symbol_t.Implementation_for_symbol));
   ([21; 1; 2; 1; 7; 2],
    Generatorset_symbol_t.Item_symbol
     (Item_symbol_t.Item_for_symbol_symbol
       (Item_for_symbol_symbol_t.Item_for_symbol_by_group_topsons_symbol
         Item_for_symbol_by_group_topsons_symbol_t.Making_for_symbol_bare)))]
);;
