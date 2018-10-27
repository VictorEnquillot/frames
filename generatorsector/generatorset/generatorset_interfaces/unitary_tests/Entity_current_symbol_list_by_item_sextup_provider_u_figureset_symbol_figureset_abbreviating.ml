open Make_test_v;;

testing "Entity_current_symbol_list_by_item_sextup_provider_v with
   Entity_current_symbol_list_by_item_sextup_provider_u_figure_symbol_figure_abbreviating.ml";; 

(* toplevel 
   #use "Entity_current_symbol_list_by_item_sextup_provider_u_figure_symbol_figure_abbreviating.ml";; 

*)

let selection_path_of_head_name nam_ent pat_sym_ent_l =
  List.filter (fun p -> Entity_symbol_v.string_off (List.hd p) = nam_ent) pat_sym_ent_l
;;

let nam_dos = "figure";;
let nam_cat = "symbol";;
let nam_enp = "figure";;
let nam_usf = "implementation";;
let nam_cof = "value_alone";;

let sym_dos = Domain_symbol_v.make nam_dos "";;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let sym_cat = Category_symbol_v.make nam_cat;;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

let sym_enp_l = Entity_proper_symbol_list_by_domain_symbol_provider_v.provide sym_dos;;
let sym_enp = List.find (fun e -> Entity_symbol_v.string_off e = nam_enp) sym_enp_l;;
let sym_ent = Entity_symbol_v.entity_symbol_of_entity_proper_symbol sym_enp;;
let gss_enp = Generatorset_symbol_v.generatorset_symbol_of_entity_proper_symbol sym_enp;;
Generatorset_symbol_by_sole_index_provider_v.store soi_enp gss_enp;;
let tag_enp = Tag_v.make sym_enp soi_enp;;

let sym_cof = Contentfile_symbol_v.make nam_cof;;
let gss_cof = Generatorset_symbol_v.generatorset_symbol_of_contentfile_symbol sym_cof;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cof gss_cof;;
let tag_cof = Tag_v.make sym_cof soi_cof;;

let sym_usf = Usagefile_symbol_v.make nam_usf;;
let gss_usf = Generatorset_symbol_v.generatorset_symbol_of_usagefile_symbol sym_usf;;
Generatorset_symbol_by_sole_index_provider_v.store soi_usf gss_usf;;
let tag_usf = Tag_v.make sym_usf soi_usf;;

(* Abbreviating_grandson *)

let nam_ite = "abbreviating_grandson";;
let sym_ite = Item_symbol_v.make nam_ite;;
let gss_ite = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite gss_ite;;

let sex_ite = Tag_v.make sym_ite soi_ite;;

test_number 1 (
sex_ite 
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=  
  (Item_symbol_t.Item_each_leaf_symbol
    Item_each_leaf_symbol_t.Abbreviating_grandson,
   [26; 1; 3; 4; 7; 4])
);;

let tag_iel = Item_tag_v.item_each_leaf_tag_off_item_tag sex_ite;;
let sym_enc_l = Entity_current_symbol_list_by_item_sextup_provider_v.provide sex_ite;;

test_number 2 (
sym_enc_l
(* : Entity_symbol_t.entity_symbol list list *)
=
  [Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      Entity_fictive_nullary_symbol_t.Empty);

   Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
	(Entity_fictive_nullary_symbol_t.Nonsonnullary
	   "triangle_isoceles_equilateral"));
   Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
	(Entity_fictive_nullary_symbol_t.Nonsonnullary "triangle_isoceles_right"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "triangle_isoceles_acute"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "triangle_isoceles_obtuse"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "triangle_scalene_right"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "triangle_scalene_acute"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "triangle_scalene_obtuse"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "vector"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "vector"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "vector_1d"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "point_3d"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "point"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "point_1d"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "x_3d"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "y_3d"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "z_3d"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "cylindrical_rho"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "cylindrical_phi"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "cylindrical_zed"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "spherical_rho"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "spherical_phi"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "spherical_theta"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "x"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "y_2d"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "polar_rho"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "polar_theta"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "coordinate_1d"))]
);;

let tag_iel = Item_tag_v.item_each_leaf_tag_off_item_tag sex_ite;;

test_number 3 (
sym_enc_l = Entity_current_symbol_list_by_item_each_leaf_tag_provider_v.provide tag_iel
);;


(* Abbreviating_topson *)

let nam_ite = "abbreviating_topson";;
let sym_ite = Item_symbol_v.make nam_ite;;
let gss_ite = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite gss_ite;;

let sex_ite = Tag_v.make sym_ite soi_ite;;

test_number 4 (
sex_ite 
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=  
  (Item_symbol_t.Item_each_leaf_symbol
    Item_each_leaf_symbol_t.Abbreviating_topson,
   [27; 1; 3; 4; 7; 4])
);;

let sym_enc_l = Entity_current_symbol_list_by_item_sextup_provider_v.provide sex_ite;;

test_number 5 (
sym_enc_l
(* : Entity_symbol_t.entity_symbol list list *)
=
[Entity_symbol_t.Entity_fictive_symbol
   (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      Entity_fictive_nullary_symbol_t.Empty)]
);;

let tag_iel = Item_tag_v.item_each_leaf_tag_off_item_tag sex_ite;;

test_number 6 (
sym_enc_l = Entity_current_symbol_list_by_item_each_leaf_tag_provider_v.provide tag_iel
);;

