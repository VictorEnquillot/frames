open Make_test_v;;

testing "Entity_current_symbol_uno_by_camlparagraph_septup_provider_v with
   Entity_current_symbol_uno_by_camlparagraph_septup_provider_u_figure_symbol_triangle_isoceles_typing.ml";;

(* toplevel 
   #use "Entity_current_symbol_uno_by_camlparagraph_septup_provider_u_figure_symbol_triangle_isoceles_typing.ml";; 

*)

let nam_dos = "figure";;
let nam_cat = "symbol";;
let nam_usf = "implementation";;
let nam_cof = "type_alone";;
let nam_ite = "typing";;

let nam_enp = "triangle_isoceles";;
let sym_enp = Entity_symbol_v.make "top_has_sometopsonleaf" nam_enp;;

let sym_dos = Domain_symbol_v.make nam_dos "";;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let sym_cat = Category_symbol_v.make nam_cat;;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

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

(* Typing *)

let nam_ite = "typing";;
let sym_ite = Item_symbol_v.make nam_ite;;
let gss_ite = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite gss_ite;;
let ite_tag = Tag_v.make sym_ite soi_ite;;

let sym_cap_l = Camlparagraph_symbol_list_by_item_sextup_provider_v.provide ite_tag;;

test_number 1 ( 
sym_cap_l
(*  : Camlparagraph_symbol_t.camlparagraph_symbol list *)
  =
[Camlparagraph_symbol_v.item_title "typing";
 Camlparagraph_symbol_v.camlparagraph_for_symbol_type  ]
);;

(* Camlparagraph : 1 Item_title "typing" *)

let sym_cap = List.nth sym_cap_l (idx_cap-1);;
let gss_cap = Generatorset_symbol_v.generatorset_symbol_of_camlparagraph_symbol sym_cap;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cap gss_cap;;

let sep_cap = Tag_v.make sym_cap soi_cap;;

let pat_sym_ent_l = Entity_current_symbol_uno_by_camlparagraph_septup_provider_v.provide sep_cap;;

test_number 2 ( 
sep_cap 
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
  (Camlparagraph_symbol_v.item_title "typing", [1; 7; 1; 1; 698516742; 7; 4])
);;

test_number 3 ( 
pat_sym_ent_l 
(* : Entity_symbol_t.entity_symbol list list *)
=
  [[Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       Entity_fictive_nullary_symbol_t.Empty)]]
);;

(* Camlparagraph : 2 camlparagraph_for_symbol_type *)

let sym_cap = List.nth sym_cap_l (idx_cap-1);;
let gss_cap = Generatorset_symbol_v.generatorset_symbol_of_camlparagraph_symbol sym_cap;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cap gss_cap;;

let sep_cap = Tag_v.make sym_cap soi_cap;;

let pat_sym_ent_l = Entity_current_symbol_uno_by_camlparagraph_septup_provider_v.provide sep_cap;;

test_number 4 ( 
sep_cap 
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
  (Camlparagraph_symbol_v.camlparagraph_for_symbol_type,  [2; 7; 1; 1; 698516742; 7; 4])
);;

test_number 5 ( 
pat_sym_ent_l 
(* : Entity_symbol_t.entity_symbol list list *)
=
  []

);;

