open Gentest_v;;

testing "Geometryset_symbol_v with
   geometryset_symbol_by_sole_index_production_provider_v.ml";;

(* toplevel 
   #use "geometryset_symbol_by_sole_index_production_provider_v.ml";; 
 
*)
let nam_cod = "item_value_u_geometryset_symbol_id3v2_tag_isoceles_making.ml";;

let nam_dos = "geometryset";;
let nam_cof = "value_alone";;
let nam_ite = "making";;
let nam_enp = "id3v2_tag_isoceles";;

let sym_dos = Domainset_symbol_v.make nam_dos;;
let idx_dos = Domainset_symbol_v.list_index_of_domainset_symbol sym_dos;;
let soi_dos = Sole_index_v.make idx_dos [];;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_production_provider_v.store soi_dos gss_dos;;
let tag_dos = Tag_v.make sym_dos soi_dos;;
let for_dos = Domainset_formula_v.retrieve tag_dos;;

let sel_cat = Category_symbol_v.is_symbol_off_category_symbol;;
let tag_cat = Doublet_list_v.find_if_left sel_cat for_dos;;
let for_cat = Category_formula_v.retrieve tag_cat;;

let sel_enp = (fun e -> Entity_proper_symbol_v.string_off e = nam_enp);;
let tag_enp = Doublet_list_v.find_if_left sel_enp for_cat;;
let for_enp = Entity_proper_formula_v.retrieve tag_enp;;

let sel_cof = (fun c -> Contentfile_symbol_v.name c = nam_cof);;
let tag_cof = Doublet_list_v.find_if_left sel_cof for_enp;;
let for_cof = Contentfile_formula_v.retrieve tag_cof;;

let sel_usf = Usagefile_symbol_v.is_implementation_off_usagefile_symbol;; 
let tag_usf = Doublet_list_v.find_if_left sel_usf for_cof;;
let for_usf = Usagefile_formula_v.retrieve tag_usf;;

let sel_ite = (fun i -> Item_symbol_v.name i = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite for_usf;; 
let for_ite = Item_formula_v.retrieve tag_ite;;

let sym_ioo = Id3v2_tag_isoceles_oblique_symbol_t.Id3v2_tag_isoceles_oblique_obtuse;;
let sym_iso = Id3v2_tag_isoceles_symbol_t.Id3v2_tag_isoceles_oblique_symbol sym_ioo;;
let sym_tri = Id3v2_tag_symbol_t.Id3v2_tag_isoceles_symbol sym_iso;;
let nam_tri = Id3v2_tag_symbol_v.name sym_tri;;
let soi_tri = Sole_index_v.make 1 soi_geo;;
let tag_tri = Tag_v.make sym_tri soi_tri;;

let sym_vec = File_id3v1_symbol_t.File_id3v1;;
let soi_vec = Sole_index_v.make 2 soi_tri;;
let tag_vec = Tag_v.make sym_vec soi_vec;;

let sym_poi = Mp3_header_symbol_t.Fromid "A";;
let soi_poi = Sole_index_v.make 1 soi_vec;;
let tag_poi = Tag_v.make sym_poi soi_poi;;

let gss_tri = Geometryset_symbol_v.geometryset_symbol_of_id3v2_tag_symbol sym_tri;;
let gss_vec = Geometryset_symbol_v.file_id3v1;;
let gss_poi = Geometryset_symbol_v.mp3_header "A";;

Geometryset_symbol_by_sole_index_production_provider_v.store soi_tri gss_tri;;
Geometryset_symbol_by_sole_index_production_provider_v.store soi_vec gss_vec;;
Geometryset_symbol_by_sole_index_production_provider_v.store soi_poi gss_poi;;

testi 0 (
soi_tri
(* : Sole_index__t.tree_canonical_index *)
=
[1; 2]
);;

testi 1 (
gss_tri
(* : Geometryset_symbol_t.geometryset_symbol *)
=
Geometryset_symbol_t.Id3v2_tag_symbol
 (Id3v2_tag_symbol_t.Id3v2_tag_isoceles_symbol
   (Id3v2_tag_isoceles_symbol_t.Id3v2_tag_isoceles_oblique_symbol
     Id3v2_tag_isoceles_oblique_symbol_t.Id3v2_tag_isoceles_oblique_obtuse))
);;

testi 2 (
Geometryset_symbol_by_sole_index_production_provider_v.retrieve soi_tri 
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
(* : Geometryset_symbol_t.geometryset_symbol *)
=
Geometryset_symbol_t.File_id3v1_symbol File_id3v1_symbol_t.File_id3v1
);;

testi 5 (
Geometryset_symbol_by_sole_index_production_provider_v.retrieve soi_vec
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
(* : Geometryset_symbol_t.geometryset_symbol *)
=
Geometryset_symbol_t.Mp3_header_symbol (Mp3_header_symbol_t.Fromid "A")
);;

testi 8 (
Geometryset_symbol_by_sole_index_production_provider_v.retrieve soi_poi 
=
gss_poi
);;

