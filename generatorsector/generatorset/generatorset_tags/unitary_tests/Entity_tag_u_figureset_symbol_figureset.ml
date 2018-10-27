open Make_test_v;;

testing "Entity_tag_v with
   Entity_tag_u_figureset_symbol_figureset.ml";;

(* toplevel 
   #use "Entity_tag_u_figureset_symbol_figureset.ml";;

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

let nam_dos = "figureset";;
let sym_dos = Domainset_symbol_v.make nam_dos "";;
let soi_dos = Sole_index_v.make idx_dos [];;
let gss_dos = Generatorset_symbol_t.Domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_register_v.store soi_dos gss_dos;;
let tag_dos = Tag_v.make sym_dos soi_dos;;

let nam_cat = "symbol";;
let sym_cat = Category_symbol_v.make nam_cat;;
let soi_cat = Sole_index_v.make idx_cat soi_dos;;
let gss_cat = Generatorset_symbol_t.Category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_register_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

let nam_ent = "figureset";;
let sym_ent = Entity_symbol_v.make "entity_proper_with_sons" nam_ent;;
let soi_ent = Sole_index_v.make idx_ent soi_cat;;
let gss_ent = Generatorset_symbol_t.Entity_symbol sym_ent;;
Generatorset_symbol_by_sole_index_register_v.store soi_ent gss_ent;;
let tag_ent = Tag_v.make sym_ent soi_ent;;

test_number 1 (
tag_ent
(* : Entity_symbol_t.entity_symbol Tag_t.tag *)
=
  (Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_sons "figureset"),
   [1; 7; 2])
);;

test_number 2 (
Entity_tag_v.category_tag_off_entity_tag tag_ent
(* : Category_tag_t.category_tag *)
= 
(Category_symbol_t.Symbol, [7; 2])
);;

test_number 3 (
Entity_tag_v.domainset_tag_off_entity_tag tag_ent
(* : Domainset_tag_t.domainset_tag *)
= 
(Domainset_symbol_t.Figureset, [2])
);;

let re_l = Register_v.entry_list Generatorset_symbol_by_sole_index_register_v.register;;
let fi1_l = Doublet_list_v.filter_if_left (fun e -> List_v.ultimate_element_off_list e = idx_dos) re_l;;
let fi2_l = Doublet_list_v.filter_if_left (fun e -> List.length e <= List.length soi_ent) fi1_l;;
let compare_entry (k1, v1) (k2, v2) = compare (List.length k1) (List.length k2);;
let kv_dos_l = List.sort compare_entry fi2_l;;

test_number 4 (
kv_dos_l 
(* : (Sole_index_t.sole_index, Generatorset_symbol_t.generatorset_symbol)
  Doublet_t.doublet list *)
=
  [([2], Generatorset_symbol_t.Domainset_symbol Domainset_symbol_t.Figureset);
   ([7; 2], Generatorset_symbol_t.Category_symbol Category_symbol_t.Symbol);
   ([1; 7; 2],
    Generatorset_symbol_t.Entity_symbol
     (Entity_symbol_t.Entity_proper_symbol
       (Entity_proper_symbol_t.Entity_proper_with_sons "figureset")))]
);;
