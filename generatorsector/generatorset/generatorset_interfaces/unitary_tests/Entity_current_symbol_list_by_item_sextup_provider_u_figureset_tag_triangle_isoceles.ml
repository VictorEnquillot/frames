open Make_test_v;;

testing "Entity_current_symbol_list_by_item_sextup_provider_v with
   Entity_current_symbol_list_by_item_sextup_provider_u_figure_symbol_triangle_isoceles.ml";; 

(* toplevel 
   #use "Entity_current_symbol_list_by_item_sextup_provider_u_figure_symbol_triangle_isoceles.ml";; 

*)

let select_path_of_head_name nam_ent pat_sym_ent_l =
  List.filter (fun p -> Entity_symbol_v.string_off (List.hd p) = nam_ent) pat_sym_ent_l
;;

let nam_dos = "figure";;
let nam_cat = "tag";;
let nam_enp = "triangle_isoceles";;
let nam_usf = "implementation";;

let sym_dos = Domain_symbol_v.make nam_dos "";;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let sym_cat = Category_symbol_v.make nam_cat;;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

let sym_enp = Entity_symbol_v.top_has_notopsonleaf nam_enp;;
let gss_enp = Generatorset_symbol_v.generatorset_symbol_of_entity_proper_symbol sym_enp;;
Generatorset_symbol_by_sole_index_provider_v.store soi_enp gss_enp;;
let tag_enp = Tag_v.make sym_enp soi_enp;;

(* Value_alone *)

let nam_cof = "value_alone";;
let sym_cof = Contentfile_symbol_v.make nam_cof;;
let gss_cof = Generatorset_symbol_v.generatorset_symbol_of_contentfile_symbol sym_cof;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cof gss_cof;;
let tag_cof = Tag_v.make sym_cof soi_cof;;

let sym_usf = Usagefile_symbol_v.make nam_usf;;
let gss_usf = Generatorset_symbol_v.generatorset_symbol_of_usagefile_symbol sym_usf;;
Generatorset_symbol_by_sole_index_provider_v.store soi_usf gss_usf;;
let tag_usf = Tag_v.make sym_usf soi_usf;;


(* Abbreviating *)

let nam_ite = "abbreviating";;

let sym_ite = Item_symbol_v.make nam_ite;;
let gss_ite = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite gss_ite;;

let tag_ite_abb = Tag_v.make sym_ite soi_ite;;

let pat_sym_ent_abb_l = Entity_current_symbol_list_by_item_sextup_provider_v.provide tag_ite_abb;;

let sym_ent_lea_abb_l = List.map List.hd pat_sym_ent_abb_l ;;

test_number 1 (
sym_ent_lea_abb_l 
  =
List_v.left_once_list_off_list sym_ent_lea_abb_l
);;

test_number 2 (
tag_ite_abb 
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=
(Item_symbol_t.Item_severalparagraph_symbol
  Item_severalparagraph_symbol_t.Abbreviating,
 [8; 1; 3; 383488616; 7; 4])
);;

test_number 3 (
select_path_of_head_name "triangle_isoceles_equilateral" pat_sym_ent_abb_l
(* : Entity_symbol_t.entity_symbol list list *)
=
[[Entity_symbol_t.Entity_fictive_symbol
   (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
     (Entity_fictive_nullary_symbol_t.Nonsonnullary
       "triangle_isoceles_equilateral"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper "triangle_isoceles");
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "triangle"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle_isoceles"))]]
);;


test_number 4 (
select_path_of_head_name "x_3d" pat_sym_ent_abb_l         
(* : Entity_symbol_t.entity_symbol list list *)
 =
 [[Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
	(Entity_fictive_nullary_symbol_t.Nonsonnullary "x_3d"));
   Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_proper "coordinate_cartesian_3d");
   Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_proper "coordinate_3d");
   Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_son_symbol
	(Entity_proper_son_symbol_t.Notonlyson "coordinate"));
   Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_top_symbol
	(Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle_isoceles"))]]
);;

(* Making *)

let nam_ite = "making";;
let sym_ite = Item_symbol_v.make nam_ite;;
let gss_ite = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite gss_ite;;

let tag_ite_mak = Tag_v.make sym_ite soi_ite;;

let pat_sym_ent_l_mak = Entity_current_symbol_list_by_item_sextup_provider_v.provide tag_ite_mak;;

test_number 5 (
tag_ite_mak 
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=
(Item_symbol_t.Item_oneparagraph_symbol Item_oneparagraph_symbol_t.Making,
 [3; 1; 3; 383488616; 7; 4])
);;

test_number 6 (
pat_sym_ent_l_mak
(* : Entity_symbol_t.entity_symbol list list *)
=
[[Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "triangle"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle_isoceles"))];
 [Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "vector"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle_isoceles"))];
 [Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "point"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle_isoceles"))];
 [Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "coordinate"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle_isoceles"))]]
);;

(* Naming *)

let nam_ite = "naming";;
let sym_ite = Item_symbol_v.make nam_ite;;
let gss_ite = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite gss_ite;;

let tag_ite_nam = Tag_v.make sym_ite soi_ite;;

let pat_sym_ent_l_nam = Entity_current_symbol_list_by_item_sextup_provider_v.provide tag_ite_nam;;

test_number 7 (
tag_ite_nam 
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=
(Item_symbol_t.Item_oneparagraph_symbol Item_oneparagraph_symbol_t.Naming,
 [4; 1; 3; 383488616; 7; 4])
);;

test_number 8 (
pat_sym_ent_l_nam
(* : Entity_symbol_t.entity_symbol list list *)
=
[[Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "triangle"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle_isoceles"))];
 [Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "vector"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle_isoceles"))];
 [Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "point"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle_isoceles"))];
 [Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "coordinate"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle_isoceles"))]]
);;

(* Extracting *)

let nam_ite = "extracting";;
let sym_ite = Item_symbol_v.make nam_ite;;
let gss_ite = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite gss_ite;;

let tag_ite_ext = Tag_v.make sym_ite soi_ite;;

let pat_sym_ent_ext_l = Entity_current_symbol_list_by_item_sextup_provider_v.provide tag_ite_ext;;

test_number 9 (
tag_ite_ext 
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=
(Item_symbol_t.Item_severalparagraph_symbol
  Item_severalparagraph_symbol_t.Extracting,
[13; 1; 3; 383488616; 7; 4])
);;

test_number 10 (
pat_sym_ent_ext_l
(* : Entity_symbol_t.entity_symbol list list *)
=[[Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "triangle"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle_isoceles"))];
 [Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper "triangle_isoceles");
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "triangle"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle_isoceles"))];
 [Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper "triangle_scalene");
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "triangle"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle_isoceles"))];
 [Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "vector"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle_isoceles"))];
 [Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "point"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle_isoceles"))];
 [Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "coordinate"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle_isoceles"))];
 [Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper "coordinate_3d");
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "coordinate"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle_isoceles"))];
 [Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper "coordinate_cartesian_3d");
  Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper "coordinate_3d");
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "coordinate"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle_isoceles"))];
 [Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper "coordinate_cylindrical");
  Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper "coordinate_3d");
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "coordinate"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle_isoceles"))];
 [Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper "coordinate_spherical");
  Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper "coordinate_3d");
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "coordinate"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle_isoceles"))];
 [Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper "coordinate_2d");
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "coordinate"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle_isoceles"))];
 [Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper "coordinate_cartesian_2d");
  Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper "coordinate_2d");
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "coordinate"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle_isoceles"))];
 [Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper "coordinate_polar");
  Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper "coordinate_2d");
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "coordinate"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle_isoceles"))]]
);;

(* Upgrading *)

let nam_ite = "upgrading_grandson";;
let sym_ite = Item_symbol_v.make nam_ite;;
let gss_ite = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite gss_ite;;

let tag_ite_upg = Tag_v.make sym_ite soi_ite;;

let pat_sym_ent_l_upg = Entity_current_symbol_list_by_item_sextup_provider_v.provide tag_ite_upg;;

test_number 11 (
tag_ite_upg 
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=
(Item_symbol_t.Item_severalparagraph_symbol
  Item_severalparagraph_symbol_t.Upgrading,
 [19; 1; 3; 383488616; 7; 4])
);;

test_number 12 (
pat_sym_ent_l_upg
(* : Entity_symbol_t.entity_symbol list list *)
=
[[Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "triangle"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle_isoceles"))];
 [Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper "triangle_isoceles");
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "triangle"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle_isoceles"))];
 [Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper "triangle_scalene");
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "triangle"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle_isoceles"))];
 [Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "vector"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle_isoceles"))];
 [Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "point"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle_isoceles"))];
 [Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "coordinate"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle_isoceles"))];
 [Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper "coordinate_3d");
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "coordinate"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle_isoceles"))];
 [Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper "coordinate_cartesian_3d");
  Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper "coordinate_3d");
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "coordinate"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle_isoceles"))];
 [Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper "coordinate_cylindrical");
  Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper "coordinate_3d");
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "coordinate"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle_isoceles"))];
 [Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper "coordinate_spherical");
  Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper "coordinate_3d");
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "coordinate"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle_isoceles"))];
 [Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper "coordinate_2d");
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "coordinate"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle_isoceles"))];
 [Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper "coordinate_cartesian_2d");
  Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper "coordinate_2d");
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "coordinate"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle_isoceles"))];
 [Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper "coordinate_polar");
  Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper "coordinate_2d");
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "coordinate"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle_isoceles"))]]
);;


