open Make_test_v;;

testing "Entity_builder_symbol_list_by_entity_fictive_nullary_tritup_provider_v with
   Entity_builder_symbol_list_by_entity_fictive_nullary_tritup_provider_u_chemicalset_fake.ml"

(* toplevel 
   #use "Entity_builder_symbol_list_by_entity_fictive_nullary_tritup_provider_u_chemicalset_fake.ml";;

*)

let nam_dom = "chemical";;
let tra_dom = Trail_v.make "domain" nam_dom [];;
let sym_dom = Domain_symbol_v.make nam_dom "";;

let nam_cat = "formula";;
let sym_cat = Category_symbol_v.make nam_cat;;

let sym_ent_l = Entity_inconstructortree_symbol_list_by_domain_symbol_provider_v.provide sym_dom;;

(* Onetied *)

let nam_ent = "onetied"
let sym_ent = Entity_symbol_v.make "entity_proper_with_sons" nam_ent;;

test_number 1 (
sym_ent
(* : Entity_symbol_t.entity_symbol *)
  =
Entity_symbol_t.Entity_proper_symbol
  (Entity_proper_symbol_t.Entity_proper_with_sons "onetied")
  
);;

let sym_enp = Entity_symbol_v.entity_proper_symbol_off_entity_symbol sym_ent;;
let tri_enp = (sym_enp, sym_cat, sym_dom);;
let sym_enl_l = Entity_leaf_symbol_list_by_entity_proper_tritup_provider_v.provide tri_enp;;

test_number 2 (
sym_enl_l
(* : Entity_fictive_nullary_symbol_t.entity_fictive_nullary_symbol list *)
  =
[Entity_fictive_nullary_symbol_t.Bare "z_h_s";
 Entity_fictive_nullary_symbol_t.Bare "z_f_s";
 Entity_fictive_nullary_symbol_t.Bare "z_s_s";
 Entity_fictive_nullary_symbol_t.Bare "z_o_d";
 Entity_fictive_nullary_symbol_t.Bare "z_n_t";
 Entity_fictive_nullary_symbol_t.Bare "z_n_b";
 Entity_fictive_nullary_symbol_t.Bare "z_o_b"]
);;

(* "z_h_s" *)

let sym_efn = List.nth sym_enl_l 0;;
let tri_efn = (sym_efn, sym_cat, sym_dom);;
let sym_ebu_l = Entity_builder_symbol_list_by_entity_fictive_nullary_tritup_provider_v.provide tri_efn;;

test_number 3 (
 sym_ebu_l 
(* : Entity_symbol_t.entity_symbol list *)
=
  [Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
      (Entity_fictive_basicnullary_symbol_t.String ""))]
);;

let tri_enl_l = List.map 
    (fun s -> Triplet_v.reset_of_left_off_triplet s tri_enp) 
    sym_enl_l;;

let sym_ebu_ll = List.map 
      Entity_builder_symbol_list_by_entity_fictive_nullary_tritup_provider_v.provide
      tri_enl_l;;

let sym_ebu_l = List.flatten sym_ebu_ll;;

test_number 4 (
sym_ebu_l 
(* : Entity_symbol_t.entity_symbol list *)
=
  [Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
      (Entity_fictive_basicnullary_symbol_t.String ""));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
      (Entity_fictive_basicnullary_symbol_t.String ""));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
      (Entity_fictive_basicnullary_symbol_t.String ""));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
      (Entity_fictive_basicnullary_symbol_t.String ""));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
      (Entity_fictive_basicnullary_symbol_t.String ""));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
      (Entity_fictive_basicnullary_symbol_t.String ""));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
      (Entity_fictive_basicnullary_symbol_t.String ""))]
);;

let sym_ebu_ol = List_v.left_once_list_off_list sym_ebu_l;;

test_number 5 (
sym_ebu_ol
(* : Entity_symbol_t.entity_symbol list *)
=
[Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
    (Entity_fictive_basicnullary_symbol_t.String ""))]
);;
