open Make_test_v;;

testing "Entity_symbol_list_by_camlline_octtup_provider_u_chemicalset_symbol_atom_zerotied_anion_minusone.ml";;

(* toplevel 
   #use "Entity_symbol_list_by_camlline_octtup_provider_u_chemicalset_symbol_atom_zerotied_anion_minusone.ml";;
*)

let sym_dos = Domain_symbol_v.make "chemicalset";;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let sym_cat = Category_symbol_v.make nam_cat;;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

let sym_enp = Entity_symbol_v.top_has_notopsonleaf "atom_zerotied_anion_minusone";;
let gss_enp = Generatorset_symbol_v.generatorset_symbol_of_entity_proper_symbol sym_enp;;
Generatorset_symbol_by_sole_index_provider_v.store soi_enp gss_enp;;
let tag_enp = Tag_v.make sym_enp soi_enp;;

let sym_cof = Contentfile_symbol_v.make "value_alone";;
let gss_cof = Generatorset_symbol_v.generatorset_symbol_of_contentfile_symbol sym_cof;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cof gss_cof;;
let tag_cof = Tag_v.make sym_cof soi_cof;;

let sym_usf = Usagefile_symbol_v.make "implementation";;
let gss_usf = Generatorset_symbol_v.generatorset_symbol_of_usagefile_symbol sym_usf;;
Generatorset_symbol_by_sole_index_provider_v.store soi_usf gss_usf;;
let tag_usf = Tag_v.make sym_usf soi_usf;;

(* Abbreviating *)

let sym_ite_abb = Item_symbol_v.make "abbreviating";;
let gss_ite_abb = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite_abb;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite_abb gss_ite_abb;;
let tag_ite_abb = Tag_v.make sym_ite_abb soi_ite_abb;;

let sym_cap_abb = Camlparagraph_symbol_v.let_abbreviate_infather;;
let gss_cap_abb = Generatorset_symbol_v.generatorset_symbol_of_camlparagraph_symbol sym_cap_abb;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cap_abb gss_cap_abb;;
let tag_cap_abb = Tag_v.make sym_cap_abb soi_cap_abb;;

let sym_cal_abb = Camlline_symbol_v.let_ess_equal_est_tdot_ess;;
let gss_cal_abb = Generatorset_symbol_v.generatorset_symbol_of_camlline_symbol sym_cal_abb;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cal_abb gss_cal_abb;;
let tag_cal_abb = Tag_v.make sym_cal_abb soi_cal_abb;;

let es_esl_abb = Entity_symbol_list_by_camlline_octtup_provider_v.provide tag_cal_abb;;

test_number 1 (
tag_cap_abb 
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_infather),
 [2; 8; 1; 2; 7; 1; 1])
);;

test_number 2 (
tag_cal_abb 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
(Camlline_symbol_t.Camlline_duo_symbol
  (Camlline_duo_symbol_t.Camlline_duo_function_symbol
    Camlline_duo_function_symbol_t.Let_ess_equal_Est_tdot_Ess),
 [1; 2; 8; 1; 2; 7; 1; 1])
);;

test_number 3 (
es_esl_abb
(* : Entity_symbol_t.entity_symbol list list *)
=
[Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Sonnullary "f_1m"));
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_v.top_has_notopsonleaf "atom_zerotied_anion_minusone")]
);;

(* Naming *)

let sym_ite_nam = Item_symbol_v.make "naming";;
let gss_ite_nam = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite_nam;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite_nam gss_ite_nam;;
let tag_ite_nam = Tag_v.make sym_ite_nam soi_ite_nam;;

let sym_cap_nam = Camlparagraph_symbol_v.let_name_equal_function_for_symbol;;
let gss_cap_nam = Generatorset_symbol_v.generatorset_symbol_of_camlparagraph_symbol sym_cap_nam;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cap_nam gss_cap_nam;;
let tag_cap_nam = Tag_v.make sym_cap_nam soi_cap_nam;;

let sym_cal_nam = Camlline_symbol_v.pipe_est_tdot_esl_arrow_string;;
let gss_cal_nam = Generatorset_symbol_v.generatorset_symbol_of_camlline_symbol sym_cal_nam;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cal_nam gss_cal_nam;;
let tag_cal_nam = Tag_v.make sym_cal_nam soi_cal_nam;;

let es_esl_nam = Entity_symbol_list_by_camlline_octtup_provider_v.provide tag_cal_nam;;

test_number 4 (
tag_cap_nam 
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
  (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
    (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
      (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_match_symbol
        Camlparagraph_endmarked_let_match_symbol_t.Let_name_equal_function_for_symbol)),
   [2; 4; 1; 2; 7; 1; 1])
);;

test_number 5 (
tag_cal_nam 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
  =
(Camlline_symbol_t.Camlline_duo_symbol
  (Camlline_duo_symbol_t.Camlline_duo_function_symbol
    Camlline_duo_function_symbol_t.Pipe_Est_tdot_Esl_arrow_string),
 [2; 2; 4; 1; 2; 7; 1; 1])
);;

test_number 6 (
es_esl_nam
(* : Entity_symbol_t.entity_symbol list list *)
=
[Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Sonnullary "h_1m"));
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_v.top_has_notopsonleaf "atom_zerotied_anion_minusone")]
);;

(* Extracting Nonsense *)

(* Type *)

let sym_cof = Contentfile_symbol_v.make "type_alone";;
let gss_cof = Generatorset_symbol_v.generatorset_symbol_of_contentfile_symbol sym_cof;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cof gss_cof;;
let tag_cof = Tag_v.make sym_cof soi_cof;;

let sym_usf = Usagefile_symbol_v.make "implementation";;
let gss_usf = Generatorset_symbol_v.generatorset_symbol_of_usagefile_symbol sym_usf;;
Generatorset_symbol_by_sole_index_provider_v.store soi_usf gss_usf;;
let tag_usf = Tag_v.make sym_usf soi_usf;;

(* Typing *)

let sym_ite_typ = Item_symbol_v.make "typing";;
let gss_ite_typ = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite_typ;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite_typ gss_ite_typ;;
let tag_ite_typ = Tag_v.make sym_ite_typ soi_ite_typ;;

let sym_cap_typ = Camlparagraph_symbol_v.type_definition_for_symbol;;
let gss_cap_typ = Generatorset_symbol_v.generatorset_symbol_of_camlparagraph_symbol sym_cap_typ;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cap_typ gss_cap_typ;;
let tag_cap_typ = Tag_v.make sym_cap_typ soi_cap_typ;;

let sym_cal_typ = Camlline_symbol_v.type_est_equal;;
let gss_cal_typ = Generatorset_symbol_v.generatorset_symbol_of_camlline_symbol sym_cal_typ;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cal_typ gss_cal_typ;;
let tag_cal_typ = Tag_v.make sym_cal_typ soi_cal_typ;;

let es_esl_typ = Entity_symbol_list_by_camlline_octtup_provider_v.provide tag_cal_typ;;

test_number 7 (
tag_cap_typ
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  Camlparagraph_endmarked_symbol_t.camlparagraph_for_symbol_type,
 [2; 3; 1; 1; 7; 1; 1])
);;

test_number 8 (
es_esl_typ 
(* : Entity_symbol_t.entity_symbol list *)
=
[Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_v.top_has_notopsonleaf "atom_zerotied_anion_minusone")]
);;

