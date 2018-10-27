open Make_test_v;;

testing "Entity_topson_leaf_symbol_list_by_entity_tritup_provider_v with
   Entity_topson_leaf_symbol_list_by_entity_tritup_provider_u_figure_symbol_figure.ml";;

(* toplevel 
   #use "Entity_topson_leaf_symbol_list_by_entity_tritup_provider_u_figure_symbol_figure.ml";; 

*)

let nam_dos = "figure";;
let nam_cat = "symbol";;
let nam_enp = "figure";;
let nam_cof = "value_alone";;
let nam_usf = "implementation";;

let sym_dos = Domain_symbol_v.make nam_dos "";;

let sym_cat = Category_symbol_v.make nam_cat;;

let sym_enp_l = Entity_proper_symbol_list_by_domain_symbol_provider_v.provide sym_dos;;
let sym_enp = List.find (fun e -> Entity_symbol_v.string_off e = nam_enp) sym_enp_l;;
let tri_enp = (sym_enp, sym_cat, sym_dos);;

test_number 1 (
tri_enp
(* : Entity_propert.entity_proper_symbol *
  Category_symbol_t.category_symbol * Domain_symbol_t.domainset_symbol *)
=
  (Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_sons "figure"),
   Category_symbol_t.Symbol, Domain_symbol_t.Figure)
);;

let sym_ent_lea_l = Entity_topson_leaf_symbol_list_by_entity_tritup_provider_v.provide tri_enp;;

test_number 2 (
sym_ent_lea_l
(* : Entity_symbol_t.entity_symbol Tree_t.tree *)
= 
  []
);;

let sym_ent_leb_l = Entity_topson_leaf_bare_symbol_list_by_entity_tritup_provider_v.provide tri_enp;;

test_number 3 (
sym_ent_leb_l
(* : Entity_symbol_t.entity_symbol list *)
= 
[]
);;

let sym_ent_leo_l = Entity_topson_leaf_ofstring_symbol_list_by_entity_tritup_provider_v.provide tri_enp;;

test_number 4 (
sym_ent_leo_l
(* : Entity_symbol_t.entity_symbol list *)
= 
  [Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Sonnullary "vector"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Sonnullary "point"))]
);;

