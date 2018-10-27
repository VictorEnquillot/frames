open Make_test_v;;

testing "Entity_builder_leaf_symbol_list_by_entity_proper_tritup_provider_v 
   Entity_builder_leaf_symbol_list_by_entity_proper_tritup_provider_u_figure.ml"

(* toplevel 
   #use "Entity_builder_leaf_symbol_list_by_entity_proper_tritup_provider_u_figure.ml";;

*)

let nam_dos = "figure";;
let nam_cat = "formula";;

let sym_dos = Domain_symbol_v.make nam_dos "";;
let sym_cat = Category_symbol_v.make nam_cat;;
let dou_cat = (sym_cat, sym_dos);;

let nam_ent = "vector";;
let sym_ent = Entity_symbol_v.make "entity_proper_with_one_son" nam_ent;;
let tri_ent = (sym_ent, sym_cat, sym_dos);;

let dat_ent_l = Entity_builder_leaf_symbol_list_by_entity_proper_tritup_provider_v.provide tri_ent;;

test_number 1 (
dat_ent_l 
=
  Entity_symbol_t.Entity_proper_symbol
   (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate")
);;


let sym_enp_l = Category_interface_v.make_of_tuple dou_cat;;
let sym_ent_l = List.map Entity_symbol_v.entity_symbol_of_entity_proper_symbol sym_enp_l;;
let tri_ent_l = List.map (fun e -> Triplet_v.make e sym_cat sym_dos) sym_ent_l;;

let dat_ent_l = List.map Entity_builder_leaf_symbol_list_by_entity_proper_tritup_provider_v.provide tri_ent_l;;

test_number 2 (
dat_ent_l 
=
[]
);;
