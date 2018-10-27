open Make_test_v;;

testing "Entity_leaf_symbol_list_by_entity_proper_tritup_provider_v with
   Entity_leaf_symbol_list_by_entity_proper_tritup_provider_u_chemicalset_symbol_fake.ml";;

(* toplevel 
   #use "Entity_leaf_symbol_list_by_entity_proper_tritup_provider_u_chemicalset_symbol_fake.ml";; 
         
*)

let nam_dom = "chemical";;
let sym_dom = Domain_symbol_v.make nam_dom "";;

let sym_ent_l = Entity_inconstructortree_symbol_list_by_domain_symbol_provider_v.provide sym_dom;;

let nam_cat = "symbol";;
let sym_cat = Category_symbol_v.make nam_cat;;

(* Geometry *)

let nam_ent = "chemical";;
let sym_ent = List.find (fun e -> Entity_symbol_v.string_off e = nam_ent) sym_ent_l;;
let sym_enp = Entity_symbol_v.entity_proper_symbol_off_entity_symbol sym_ent;;
let tri_enp = Triplet_v.make sym_enp sym_cat sym_dom;;

let sym_enl_l = Entity_leaf_symbol_list_by_entity_proper_tritup_provider_v.provide tri_enp;;

test_number 1 (
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

(* Zerotied_block *)

let nam_ent = "zerotied_block";;

let sym_ent = List.find (fun e -> Entity_symbol_v.string_off e = nam_ent) sym_ent_l;;
let sym_enp = Entity_symbol_v.entity_proper_symbol_off_entity_symbol sym_ent;;
let tri_enp = Triplet_v.make sym_enp sym_cat sym_dom;;

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
   Entity_fictive_nullary_symbol_t.Bare "z_n2_z"]
);;
