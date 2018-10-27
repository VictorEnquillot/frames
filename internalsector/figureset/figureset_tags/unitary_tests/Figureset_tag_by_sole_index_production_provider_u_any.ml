open Gentest_v;;

testing "Figureset_tag_v with
   figureset_tag_by_sole_index_production_provider_v.ml";;

(* toplevel 
   #use "figureset_tag_by_sole_index_production_provider_v.ml";; 
 
*)
let nam_cod = "item_value_u_figureset_tag_triangle_isosceles_making.ml";;

let nam_dos = "figureset";;
let nam_cof = "value_alone";;
let nam_ite = "making";;
let nam_enp = "triangle_isosceles";;

let sym_dos = Domainset_tag_v.make nam_dos;;
let idx_dos = Domainset_tag_v.list_index_of_domainset_tag sym_dos;;
let soi_dos = Sole_index_v.make idx_dos [];;
let gss_dos = Generatorset_tag_v.generatorset_tag_of_domainset_tag sym_dos;;
Generatorset_tag_by_sole_index_production_provider_v.store soi_dos gss_dos;;
let tag_dos = Tag_v.make sym_dos soi_dos;;
let for_dos = Domainset_tag_v.retrieve tag_dos;;

let sel_cat = Category_tag_v.is_tag_off_category_tag;;
let tag_cat = Doublet_list_v.find_if_left sel_cat for_dos;;
let for_cat = Category_tag_v.retrieve tag_cat;;

let sel_enp = (fun e -> Entity_proper_tag_v.string_off e = nam_enp);;
let tag_enp = Doublet_list_v.find_if_left sel_enp for_cat;;
let for_enp = Entity_proper_tag_v.retrieve tag_enp;;

let sel_cof = (fun c -> Contentfile_tag_v.name c = nam_cof);;
let tag_cof = Doublet_list_v.find_if_left sel_cof for_enp;;
let for_cof = Contentfile_tag_v.retrieve tag_cof;;

let sel_usf = Usagefile_tag_v.is_implementation_off_usagefile_tag;; 
let tag_usf = Doublet_list_v.find_if_left sel_usf for_cof;;
let for_usf = Usagefile_tag_v.retrieve tag_usf;;

let sel_ite = (fun i -> Item_tag_v.name i = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite for_usf;; 
let for_ite = Item_tag_v.retrieve tag_ite;;

let sym_ioo = Triangle_isosceles_oblique_tag_t.Triangle_isosceles_oblique_obtuse;;
let sym_iso = Triangle_isosceles_tag_t.Triangle_isosceles_oblique_tag sym_ioo;;
let sym_tri = Triangle_tag_t.Triangle_isosceles_tag sym_iso;;
let nam_tri = Triangle_tag_v.name sym_tri;;
let soi_tri = Sole_index_v.make 1 soi_fig;;
let tag_tri = Tag_v.make sym_tri soi_tri;;

let sym_vec = Vector_tag_t.Vector;;
let soi_vec = Sole_index_v.make 2 soi_tri;;
let tag_vec = Tag_v.make sym_vec soi_vec;;

let sym_poi = Point_tag_t.Fromid "A";;
let soi_poi = Sole_index_v.make 1 soi_vec;;
let tag_poi = Tag_v.make sym_poi soi_poi;;

let gss_tri = Figureset_tag_v.figureset_tag_of_triangle_tag sym_tri;;
let gss_vec = Figureset_tag_v.vector;;
let gss_poi = Figureset_tag_v.point "A";;

Figureset_tag_by_sole_index_production_provider_v.store soi_tri gss_tri;;
Figureset_tag_by_sole_index_production_provider_v.store soi_vec gss_vec;;
Figureset_tag_by_sole_index_production_provider_v.store soi_poi gss_poi;;

testi 0 (
soi_tri
(* : Sole_index__t.tree_canonical_index *)
=
[1; 2]
);;

testi 1 (
gss_tri
(* : Figureset_tag_t.figureset_tag *)
=
Figureset_tag_t.Triangle_tag
 (Triangle_tag_t.Triangle_isosceles_tag
   (Triangle_isosceles_tag_t.Triangle_isosceles_oblique_tag
     Triangle_isosceles_oblique_tag_t.Triangle_isosceles_oblique_obtuse))
);;

testi 2 (
Figureset_tag_by_sole_index_production_provider_v.retrieve soi_tri 
(* : Sole_index__t.tree_canonical_index *)
= 
gss_tri
);;

testi 3 (
soi_vec
(* : Sole_index__t.tree_canonical_index *)
=
[2; 1; 2]
);;

testi 4 (
gss_vec
(* : Figureset_tag_t.figureset_tag *)
=
Figureset_tag_t.Vector_tag Vector_tag_t.Vector
);;

testi 5 (
Figureset_tag_by_sole_index_production_provider_v.retrieve soi_vec
=
gss_vec
);;

testi 6 (
soi_poi
(* : Sole_index__t.tree_canonical_index *)
=
[1; 2; 1; 2]
);;

testi 7 (
gss_poi
(* : Figureset_tag_t.figureset_tag *)
=
Figureset_tag_t.Point_tag (Point_tag_t.Fromid "A")
);;

testi 8 (
Figureset_tag_by_sole_index_production_provider_v.retrieve soi_poi 
=
gss_poi
);;

