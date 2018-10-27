open Make_test_v;;

testing "Entity_builder_symbol_once_list_by_entity_proper_tritup_provider_v with
   Entity_builder_symbol_once_list_by_entity_proper_tritup_provider_u_chemicalset_fake.ml"

(* toplevel 
   #use "Entity_builder_symbol_once_list_by_entity_proper_tritup_provider_u_chemicalset_fake.ml";;

*)

let nam_cod = "Entity_builder_symbol_once_list_by_entity_proper_tritup_provider_u_chemicalset_fake.ml"

let nam_dom = "chemical";;
let tra_dom = Trail_v.make "domain" nam_dom [];;
let sym_dom = Domain_symbol_v.make nam_dom "";;

let nam_cat = "formula";;
let sym_cat = Category_symbol_v.make nam_cat;;

let sym_ent_l = Entity_inconstructortree_symbol_list_by_domain_symbol_provider_v.provide sym_dom;;

(* Chemical *)

let nam_ent = "chemical"
let sym_ent = List.find (fun e -> Entity_symbol_v.string_off e = nam_ent) sym_ent_l;;

test_number 1 (
sym_ent
(* : Entity_symbol_t.entity_symbol *)
  =
Entity_symbol_t.Entity_proper_symbol
  (Entity_proper_symbol_t.Entity_proper_with_sons "chemical")
  
);;

let sym_enp = Entity_symbol_v.entity_proper_symbol_off_entity_symbol sym_ent;;
let tri_enp = (sym_enp, sym_cat, sym_dom);;

let sym_enl_l = Entity_leaf_symbol_list_by_entity_proper_tritup_provider_v.provide tri_enp;;

test_number 2 (
sym_enl_l
(* : Entity_fictive_nullary_symbol_t.entity_fictive_nullary_symbol list *)
  =
 [Entity_fictive_nullary_symbol_t.Bare "z_fh_z";
   Entity_fictive_nullary_symbol_t.Bare "z_h2_z";
   Entity_fictive_nullary_symbol_t.Bare "z_sh_z";
   Entity_fictive_nullary_symbol_t.Bare "z_o2_z";
   Entity_fictive_nullary_symbol_t.Bare "z_no_z";
   Entity_fictive_nullary_symbol_t.Bare "z_co_z";
   Entity_fictive_nullary_symbol_t.Bare "z_n2_z";
   Entity_fictive_nullary_symbol_t.Bare "z_h_s";
   Entity_fictive_nullary_symbol_t.Bare "z_f_s";
   Entity_fictive_nullary_symbol_t.Bare "z_s_s";
   Entity_fictive_nullary_symbol_t.Bare "z_o_d";
   Entity_fictive_nullary_symbol_t.Bare "z_n_t";
   Entity_fictive_nullary_symbol_t.Bare "z_n_b";
   Entity_fictive_nullary_symbol_t.Bare "z_o_b"]
);;

(* Zerotied Block *)

let nam_ent = "zerotied"
let sym_ent = List.find (fun e -> Entity_symbol_v.string_off e = nam_ent) sym_ent_l;;

test_number 3 (
sym_ent
(* : Entity_symbol_t.entity_symbol *)
  =
Entity_symbol_t.Entity_proper_symbol
  (Entity_proper_symbol_t.Entity_proper_with_one_son "zerotied")
  
);;

let sym_enp = Entity_symbol_v.entity_proper_symbol_off_entity_symbol sym_ent;;
let tri_enp = (sym_enp, sym_cat, sym_dom);;

let sym_enl_l = Entity_leaf_symbol_list_by_entity_proper_tritup_provider_v.provide tri_enp;;

test_number 4 (
sym_enl_l
(* : Entity_fictive_nullary_symbol_t.entity_fictive_nullary_symbol list *)
  =
  [Entity_fictive_nullary_symbol_t.Bare "z_fh_z";
   Entity_fictive_nullary_symbol_t.Bare "z_h2_z";
   Entity_fictive_nullary_symbol_t.Bare "z_sh_z";
   Entity_fictive_nullary_symbol_t.Bare "z_o2_z";
   Entity_fictive_nullary_symbol_t.Bare "z_no_z";
   Entity_fictive_nullary_symbol_t.Bare "z_co_z";
   Entity_fictive_nullary_symbol_t.Bare "z_n2_z"]
);;

let sym_ebu_ol = Entity_builder_symbol_once_list_by_entity_proper_tritup_provider_v.provide tri_enp;;

test_number 5 (
sym_ebu_ol 
(* : Entity_symbol_t.entity_symbol list *) 
=
  [Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_sons "onetied_single_atom");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_one_son "onetied_double_atom");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_sons "onetied_biconjugated_atom");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_one_son "onetied_triple_atom")]
);;

(* "z_fh_z" *)

let nam_efn = "z_fh_z";; 
let sym_efn = List.find (fun e -> Entity_fictive_nullary_symbol_v.string_off e = nam_efn) sym_enl_l;;
let tri_efn = (sym_efn, sym_cat, sym_dom);;
let sym_ebu_l = Entity_builder_symbol_list_by_entity_fictive_nullary_tritup_provider_v.provide tri_efn;;

test_number 6 (
 sym_ebu_l 
(* : Entity_symbol_t.entity_symbol list *)
=
 [Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_sons "onetied_single_atom")]
);;

(* "z_o2_z" *)

let nam_efn = "z_o2_z";; 
let sym_efn = List.find (fun e -> Entity_fictive_nullary_symbol_v.string_off e = nam_efn) sym_enl_l;;
let tri_efn = (sym_efn, sym_cat, sym_dom);;
let sym_ebu_l = Entity_builder_symbol_list_by_entity_fictive_nullary_tritup_provider_v.provide tri_efn;;

test_number 7 (
 sym_ebu_l 
(* : Entity_symbol_t.entity_symbol list *)
=
  [Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_one_son "onetied_double_atom")]
);;

(* "z_h_s" *)

let nam_ent = "z_h_s";;
let sym_ent = List.find (fun e -> Entity_symbol_v.string_off e = nam_ent) sym_ent_l;;

let sym_efn = Entity_symbol_v.entity_fictive_nullary_symbol_off_entity_symbol sym_ent;;
let tri_efn = (sym_efn, sym_cat, sym_dom);;

let sym_ebu_l = Entity_builder_symbol_list_by_entity_fictive_nullary_tritup_provider_v.provide tri_efn;;

test_number 8 (
 sym_ebu_l 
(* : Entity_symbol_t.entity_symbol list *)
=
  [Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
      (Entity_fictive_basicnullary_symbol_t.String ""))]
);;

let sym_ebu_ol = List_v.left_once_list_off_list sym_ebu_l;;

test_number 9 (
sym_ebu_ol
(* : Entity_symbol_t.entity_symbol list *)
=
  [Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
      (Entity_fictive_basicnullary_symbol_t.String ""))]
);;

(* Onetied *)

let nam_ent = "onetied"
let sym_ent = List.find (fun e -> Entity_symbol_v.string_off e = nam_ent) sym_ent_l;;

test_number 10 (
sym_ent
(* : Entity_symbol_t.entity_symbol *)
  =
Entity_symbol_t.Entity_proper_symbol
  (Entity_proper_symbol_t.Entity_proper_with_sons "onetied")
  
);;

let sym_enp = Entity_symbol_v.entity_proper_symbol_off_entity_symbol sym_ent;;
let tri_enp = (sym_enp, sym_cat, sym_dom);;
let sym_enl_l = Entity_leaf_symbol_list_by_entity_proper_tritup_provider_v.provide tri_enp;;

test_number 11 (
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

(* All *)

let sym_enp_l = Entity_proper_symbol_list_by_category_doutup_provider_v.provide (sym_cat, sym_dom);;

test_number 12 (
 sym_enp_l 
(* : Entity_proper_symbol_t.entity_proper_symbol list *)
 =
  [Entity_proper_symbol_t.Entity_proper_with_sons "chemical";
   Entity_proper_symbol_t.Entity_proper_with_one_son "zerotied";
   Entity_proper_symbol_t.Entity_proper_with_one_son "zerotied_block";
   Entity_proper_symbol_t.Entity_proper_with_sons
    "zerotied_block_none_none_ax1";
   Entity_proper_symbol_t.Entity_proper_with_sons
    "zerotied_block_none_none_ax1_single";
   Entity_proper_symbol_t.Entity_proper_with_one_son
    "zerotied_block_none_none_ax1_double";
   Entity_proper_symbol_t.Entity_proper_with_one_son
    "zerotied_block_none_none_ax1_biconjugated";
   Entity_proper_symbol_t.Entity_proper_with_sons
    "zerotied_block_none_none_ax1_triple";
   Entity_proper_symbol_t.Entity_proper_with_sons "onetied";
   Entity_proper_symbol_t.Entity_proper_with_one_son "onetied_single";
   Entity_proper_symbol_t.Entity_proper_with_sons "onetied_single_atom";
   Entity_proper_symbol_t.Entity_proper_with_one_son "onetied_double";
   Entity_proper_symbol_t.Entity_proper_with_one_son "onetied_double_atom";
   Entity_proper_symbol_t.Entity_proper_with_one_son "onetied_triple";
   Entity_proper_symbol_t.Entity_proper_with_one_son "onetied_triple_atom";
   Entity_proper_symbol_t.Entity_proper_with_one_son "onetied_biconjugated";
   Entity_proper_symbol_t.Entity_proper_with_sons "onetied_biconjugated_atom"]
);;

let tri_enp_l = List.map 
    (fun s -> Triplet_v.reset_of_left_off_triplet s tri_enp) 
    sym_enp_l;;


let sym_ebu_l = List.flatten (List.map 
    Entity_builder_symbol_once_list_by_entity_proper_tritup_provider_v.provide tri_enp_l);;

let sym_ebu_ol = List_v.left_once_list_off_list sym_ebu_l;;

test_number 13 (
sym_ebu_ol 
(* : Entity_symbol_t.entity_symbol list *)
=
  [Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_sons "onetied_single_atom");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_one_son "onetied_double_atom");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_sons "onetied_biconjugated_atom");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_one_son "onetied_triple_atom");
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
      (Entity_fictive_basicnullary_symbol_t.String ""))]
);;

