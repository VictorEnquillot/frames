open Make_test_v;;

testing "Entity_symbol_builder_subtree_by_entity_fictive_nullary_tritup_provider_v with
   Entity_symbol_builder_subtree_by_entity_fictive_nullary_tritup_provider_u_figure_formula_vector.ml";;

(* toplevel 
   #use "Entity_symbol_builder_subtree_by_entity_fictive_nullary_tritup_provider_u_figure_formula_vector.ml";;

*)

let nam_dos = "figure";;
let nam_cat = "formula";;
let nam_ent = "vector";;

let store = Generatorset_symbol_by_sole_index_provider_v.store;;

let sym_dos = Domain_symbol_v.make nam_dos "";;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let sym_cat = Category_symbol_v.make nam_cat;;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

let sym_ent_l = Entity_inconstructortree_symbol_list_by_domain_symbol_provider_v.provide sym_dos;;

let sym_ent = List.find (fun e -> Entity_symbol_v.string_off e = nam_ent) sym_ent_l;;
let gss_ent = Generatorset_symbol_v.generatorset_symbol_of_entity_symbol sym_ent;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ent gss_ent;;
let tag_ent = Tag_v.make sym_ent soi_ent;;

let sym_efn = Entity_symbol_v.entity_fictive_nullary_symbol_off_entity_symbol sym_ent;;
let tag_efn = Tag_v.make sym_efn soi_ent;;
	
let (sym_exd, sym_enf_bui_l) = Entity_external_datastructure_symbol_entity_fictive_symbol_list_by_entity_fictive_nullary_tritup_provider_v.provide	tag_efn;;

test_number 1 (
sym_exd 
(* : Entity_external_datastructure_symbol_t.entity_external_datastructure_symbol *)
=
  Entity_external_datastructure_symbol_t.Tuple "duo"
);;

test_number 2 (
sym_enf_bui_l 
(* : Entity_fictive_symbol_t.entity_fictive_symbol list *)
=
  [Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "point")]
);;

let (sym_exd, sym_enf_bui_ful) = Entity_external_datastructure_symbol_entity_fictive_symbol_fulllist_by_entity_fictive_nullary_tritup_provider_v.provide tag_efn;;

test_number 3 (
sym_enf_bui_ful 
(* : Entity_fictive_symbol_t.entity_fictive_symbol list *)
=
[Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
   (Entity_fictive_nullary_symbol_t.Nonsonnullary "point");
 Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
   (Entity_fictive_nullary_symbol_t.Nonsonnullary "point")]
);;

test_number 4 (
tag_efn 
(* : Entity_fictive_nullary_symbol_t.entity_fictive_nullary_symbol Tag_t.tag *)
  =
(Entity_fictive_nullary_symbol_t.Nonsonnullary "vector", 
 [35; 2; 4])
);;

let sym_efn_bui_sut = Entity_symbol_builder_subtree_by_entity_fictive_nullary_tritup_provider_v.provide tag_efn;;

test_number 5 ( 
sym_efn_bui_sut 
(* : Entity_fictive_symbol_t.entity_fictive_symbol Tree_t.tree *)
=
  Tree_t.Inner
   (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
     (Entity_fictive_nullary_symbol_t.Nonsonnullary "vector"),
   [Tree_t.Inner
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Nonsonnullary "point"),
     [Tree_t.Inner
       (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
         (Entity_fictive_nullary_symbol_t.Nonsonnullary "x"),
       [Tree_t.Leaf
         (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
           (Entity_fictive_basicnullary_symbol_t.Float ""))]);
      Tree_t.Inner
       (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
         (Entity_fictive_nullary_symbol_t.Nonsonnullary "y_2d"),
       [Tree_t.Leaf
         (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
           (Entity_fictive_basicnullary_symbol_t.Float ""))])]);
    Tree_t.Inner
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Nonsonnullary "point"),
     [Tree_t.Inner
       (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
         (Entity_fictive_nullary_symbol_t.Nonsonnullary "x"),
       [Tree_t.Leaf
         (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
           (Entity_fictive_basicnullary_symbol_t.Float ""))]);
      Tree_t.Inner
       (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
         (Entity_fictive_nullary_symbol_t.Nonsonnullary "y_2d"),
       [Tree_t.Leaf
         (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
           (Entity_fictive_basicnullary_symbol_t.Float ""))])])])
);;
