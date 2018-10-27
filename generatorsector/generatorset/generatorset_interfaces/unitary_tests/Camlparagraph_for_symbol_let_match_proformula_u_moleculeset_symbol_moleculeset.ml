open Make_test_v;;

testing "Entity_symbol_list_by_camlline_octtup_provider_v with
   Camlparagraph_for_symbol_let_match_proformula_u_moleculeset_symbol_moleculeset.ml";;

(* toplevel 
   #use "Camlparagraph_for_symbol_let_match_proformula_u_moleculeset_symbol_moleculeset.ml";;

*)

let nam_dos = "moleculeset";;
let nam_cat = "symbol";;
let nam_enp = "moleculeset";;
let nam_usf = "implementation";;

let sym_enp = Entity_symbol_v.top_has_notopsonleaf nam_enp;;

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

let sym_cap = Camlparagraph_symbol_v.let_abbreviate_ingrandfather;;
let gss_cap = Generatorset_symbol_v.generatorset_symbol_of_camlparagraph_symbol sym_cap;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cap gss_cap;;

let tag_cap_aig = Tag_v.make sym_cap soi_cap;;

let pat_sym_ent_l_aig = Entity_current_symbol_uno_by_camlparagraph_septup_provider_v.provide tag_cap_aig;;

let es_esl_aig = Camlparagraph_for_symbol_let_match_proformula_v.doublet_list_for_each_pipe_camlline_in_let_make_function tag_cap_aig (List.nth pat_sym_ent_l_aig 0);;

test_number 1 (
tag_cap_aig
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather),
 [42; 8; 1; 3; 456802544; 7; 6])
);;

test_number 2 (
es_esl_aig
(* : Entity_symbol_t.entity_symbol list list *)
=
[([Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "guanidine"))],
  Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Pipe_string_arrow_ec))]
);;

(* Making *)

let nam_ite = "making";;

let sym_ite = Item_symbol_v.make nam_ite;;
let gss_ite = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite gss_ite;;

let sym_cap = Camlparagraph_symbol_v.let_make_equal_function_for_symbol;;
let gss_cap = Generatorset_symbol_v.generatorset_symbol_of_camlparagraph_symbol sym_cap;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cap gss_cap;;

let tag_cap_efs = Tag_v.make sym_cap soi_cap;;

let sym_elf_mak = Camlparagraph_symbol_v.camlparagraph_endmarked_let_match_symbol_off_camlparagraph_symbol sym_cap;;

let dol_efs = Camlparagraph_for_symbol_let_match_proformula_v.couple_list_of_camlparagraph_endmarked_let_function sym_elf_mak soi_cap;;

test_number 3 (
tag_cap_efs
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_match_symbol
      Camlparagraph_endmarked_let_match_symbol_t.Let_make_nam_s_equal_function_for_symbol)),
 [30; 3; 1; 3; 456802544; 7; 6])
);;

test_number 4 (
dol_efs
(*  (Entity_symbol_t.entity_symbol list * Camlline_symbol_t.camlline_symbol)
  list *)
=
  [([],
    Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_function_symbol
       Camlline_constant_function_symbol_t.Let_make_nam_s_equal));
   ([Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_son_symbol
        (Entity_proper_son_symbol_t.Notonlyson "fragment"));
     Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_top_symbol
        (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))],
    Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
       Camlline_uno_camltype_symbol_t.Pipe_Ess_bof_Ess_tdot_ess));
   ([Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_son_symbol
        (Entity_proper_son_symbol_t.Notonlyson "grouping"));
     Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_top_symbol
        (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))],
    Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
       Camlline_uno_camltype_symbol_t.Pipe_Ess_bof_Ess_tdot_ess));
   ([Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_son_symbol
        (Entity_proper_son_symbol_t.Notonlyson "molecule"));
     Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_top_symbol
        (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))],
    Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
       Camlline_uno_camltype_symbol_t.Pipe_Ess_bof_Ess_tdot_ess));
   ([],
    Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_function_symbol
       Camlline_constant_function_symbol_t.Pipe_print_fatal_error_make_4_lines));
   ([],
    Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
       Camlline_constant_pervasive_symbol_t.Double_semicolon))]
);;

(* Naming *)

let nam_ite = "naming";;

let sym_ite = Item_symbol_v.make nam_ite;;
let gss_ite = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite gss_ite;;

let sym_cap = Camlparagraph_symbol_v.let_name_equal_function_for_symbol;;
let gss_cap = Generatorset_symbol_v.generatorset_symbol_of_camlparagraph_symbol sym_cap;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cap gss_cap;;

let tag_cap_efs = Tag_v.make sym_cap soi_cap;;
                                    
let sym_elf_nam = Camlparagraph_symbol_v.camlparagraph_endmarked_let_match_symbol_off_camlparagraph_symbol sym_cap;;
let dol_efs = Camlparagraph_for_symbol_let_match_proformula_v.couple_list_of_camlparagraph_endmarked_let_function sym_elf_nam soi_cap;;

test_number 5 (
tag_cap_efs
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_match_symbol
      Camlparagraph_endmarked_let_match_symbol_t.Let_name_equal_function_for_symbol)),
  [34; 4; 1; 3; 456802544; 7; 6])
);;

test_number 6 (
dol_efs
(* : Entity_symbol_t.entity_symbol list list *)
=
[([],
  Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_function_symbol
     Camlline_constant_function_symbol_t.Let_name_equal_function));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "fragment"));
   Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))],
  Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Pipe_Est_tdot_Ess_space_ass_arrow));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "fragment"))],
  Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Eas_vdot_name_aas));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "grouping"));
   Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))],
  Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Pipe_Est_tdot_Ess_space_ass_arrow));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "grouping"))],
  Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Eas_vdot_name_aas));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "molecule"));
   Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))],
  Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Pipe_Est_tdot_Ess_space_ass_arrow));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "molecule"))],
  Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Eas_vdot_name_aas));
 ([],
  Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Double_semicolon))]
);;

(* Extracting *)

let nam_ite = "extracting";;

let sym_ite = Item_symbol_v.make nam_ite;;
let gss_ite = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite gss_ite;;

let sym_cap = Camlparagraph_symbol_v.let_ess_off_est_function;;
let gss_cap = Generatorset_symbol_v.generatorset_symbol_of_camlparagraph_symbol sym_cap;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cap gss_cap;;

let tag_cap_off = Tag_v.make sym_cap soi_cap;;
                                    
let sym_elf_off = Camlparagraph_symbol_v.camlparagraph_endmarked_let_match_symbol_off_camlparagraph_symbol sym_cap;;

let dol_off = Camlparagraph_for_symbol_let_match_proformula_v.couple_list_of_camlparagraph_endmarked_let_function sym_elf_off soi_cap;;

test_number 7 (
tag_cap_off
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_match_symbol
      Camlparagraph_endmarked_let_match_symbol_t.Let_ess_off_est_function)),
 [32; 13; 1; 3; 456802544; 7; 6])
);;

test_number 8 (
dol_off
(* : (Entity_symbol_t.entity_symbol list * Camlline_symbol_t.camlline_symbol)
  list *)
=
  [([Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_son_symbol
        (Entity_proper_son_symbol_t.Notonlyson "fragment"));
     Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_top_symbol
        (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))],
    Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Let_ess_off_est_equal_function));
   ([Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_son_symbol
        (Entity_proper_son_symbol_t.Notonlyson "fragment"));
     Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_top_symbol
        (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))],
    Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Pipe_Est_tdot_Ess_space_ass_arrow_ass));
   ([Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_son_symbol
        (Entity_proper_son_symbol_t.Notonlyson "fragment"));
     Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_top_symbol
        (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))],
    Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Pipe_print_fatal_error_ess_off_est_4_lines));
   ([],
    Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
       Camlline_constant_pervasive_symbol_t.Double_semicolon))]
);;

(* Upgrading : No such example exist *)

(* Type *)

(* Typing : No such exist exist *)

