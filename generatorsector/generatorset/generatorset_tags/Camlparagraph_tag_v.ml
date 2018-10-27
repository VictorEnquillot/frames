(** {3 The functionalities for a Tag for a Camlparagraph}  *)

let nam_cod = "Camlparagraph_tag_v.ml";;

(** {6 Making} *)

(** {6 Naming} *)

let name tag_cap = Tag_v.name Camlparagraph_symbol_v.name tag_cap;;

(** {6 Extracting Tags} *)

let item_tag_off_camlparagraph_tag tag_cap =
  let sym_upp_off_gss = Generatorset_symbol_v.item_symbol_off_generatorset_symbol in
  Tools_tgen_v.upper_tag_off_any_tag sym_upp_off_gss tag_cap
;;

let usagefile_tag_off_camlparagraph_tag tag_ite =
  let tag_ite = item_tag_off_camlparagraph_tag tag_ite in
  Item_tag_v.usagefile_tag_off_item_tag tag_ite
;;

let contentfile_tag_off_camlparagraph_tag tag_ite =
  let tag_ite = item_tag_off_camlparagraph_tag tag_ite in
  Item_tag_v.contentfile_tag_off_item_tag tag_ite
;;

let entity_tag_off_camlparagraph_tag tag_cap =
  let tag_ite = item_tag_off_camlparagraph_tag tag_cap in
  Item_tag_v.entity_tag_off_item_tag tag_ite
;;

let category_tag_off_camlparagraph_tag tag_cap =
  let tag_ite = item_tag_off_camlparagraph_tag tag_cap in
  Item_tag_v.category_tag_off_item_tag tag_ite
;;

let domain_tag_off_camlparagraph_tag tag_cap =
  let tag_ite = item_tag_off_camlparagraph_tag tag_cap in
  Item_tag_v.domain_tag_off_item_tag tag_ite
;;

(** {6 Extracting Symbols} *)

let camlparagraph_symbol_off_camlparagraph_tag tag_cap =
  Tag_v.entity_off_tag tag_cap
;;

let item_symbol_off_camlparagraph_tag tag_cap =
  let tag_ite = item_tag_off_camlparagraph_tag tag_cap in
  Tag_v.entity_off_tag tag_ite
;;

let usagefile_symbol_off_camlparagraph_tag tag_cap =
  let tag_usf = usagefile_tag_off_camlparagraph_tag tag_cap in
  Tag_v.entity_off_tag tag_usf
;;

let contentfile_symbol_off_camlparagraph_tag tag_cap =
  let tag_cof = contentfile_tag_off_camlparagraph_tag tag_cap in
  Tag_v.entity_off_tag tag_cof
;;

let entity_symbol_off_camlparagraph_tag tag_cap =
  let tag_enp = entity_tag_off_camlparagraph_tag tag_cap in
  Tag_v.entity_off_tag tag_enp
;;

let category_symbol_off_camlparagraph_tag tag_cap =
  let tag_cat = category_tag_off_camlparagraph_tag tag_cap in
  Tag_v.entity_off_tag tag_cat
;;

let domain_symbol_off_camlparagraph_tag tag_cap =
  let tag_dos = domain_tag_off_camlparagraph_tag tag_cap in
  Tag_v.entity_off_tag tag_dos
;;

(* camlparagraph_for_any_tag_off_ *)

let camlparagraph_for_any_tag_off_camlparagraph_tag tag_cap =
  let soi_cap = Tag_v.sole_index_off_tag tag_cap in
  let sym_cap = Tag_v.entity_off_tag tag_cap in
  let sym_cpa = 
    Camlparagraph_symbol_v.camlparagraph_for_any_symbol_off_camlparagraph_symbol
      sym_cap in
  Tag_v.make sym_cpa soi_cap 
;;

(**
let camlparagraph_for_formula_tag_off_camlparagraph_tag tag_cap =
  let soi_cap = Tag_v.sole_index_off_tag tag_cap in
  let sym_cap = Tag_v.entity_off_tag tag_cap in
  let sym_cpf = 
    Camlparagraph_symbol_v.camlparagraph_for_formula_symbol_off_camlparagraph_symbol
      sym_cap in
  Tag_v.make sym_cpf soi_cap 
;;
***)
let camlparagraph_for_symbol_tag_off_camlparagraph_tag tag_cap =
  let soi_cap = Tag_v.sole_index_off_tag tag_cap in
  let sym_cap = Tag_v.entity_off_tag tag_cap in
  let sym_cps = 
    Camlparagraph_symbol_v.camlparagraph_for_symbol_symbol_off_camlparagraph_symbol
      sym_cap in
  Tag_v.make sym_cps soi_cap 
;;

let camlparagraph_for_symbol_let_tag_off_camlparagraph_tag tag_cap =
  let soi_cap = Tag_v.sole_index_off_tag tag_cap in
  let sym_cap = Tag_v.entity_off_tag tag_cap in
  let sym_csl = 
    Camlparagraph_symbol_v.camlparagraph_for_symbol_let_symbol_off_camlparagraph_symbol
      sym_cap in
  Tag_v.make sym_csl soi_cap 
;;

let camlparagraph_for_symbol_let_match_tag_off_camlparagraph_tag tag_cap =
  let soi_cap = Tag_v.sole_index_off_tag tag_cap in
  let sym_cap = Tag_v.entity_off_tag tag_cap in
  let sym_slm = 
    Camlparagraph_symbol_v.camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_symbol
      sym_cap in
  Tag_v.make sym_slm soi_cap 
;;

let camlparagraph_for_symbol_let_mixed_tag_off_camlparagraph_tag tag_cap =
  let soi_cap = Tag_v.sole_index_off_tag tag_cap in
  let sym_cap = Tag_v.entity_off_tag tag_cap in
  let sym_slx = 
    Camlparagraph_symbol_v.camlparagraph_for_symbol_let_mixed_symbol_off_camlparagraph_symbol
      sym_cap in
  Tag_v.make sym_slx soi_cap 
;;

let camlparagraph_for_symbol_let_argument_tag_off_camlparagraph_tag tag_cap =
  let soi_cap = Tag_v.sole_index_off_tag tag_cap in
  let sym_cap = Tag_v.entity_off_tag tag_cap in
  let sym_slx = 
    Camlparagraph_symbol_v.camlparagraph_for_symbol_let_argument_symbol_off_camlparagraph_symbol
      sym_cap in
  Tag_v.make sym_slx soi_cap 
;;

(** {6 Upgrading Tags} *)

(* _of_camlparagraph_for_any *)

let camlparagraph_tag_of_camlparagraph_for_any_tag tag_cpc =
  let soi_cap = Tag_v.sole_index_off_tag tag_cpc in
  let sym_cpc = Tag_v.entity_off_tag tag_cpc in
  let sym_cap = 
    Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_any_symbol
      sym_cpc in
  Tag_v.make sym_cap soi_cap 
;;

let camlparagraph_tag_of_camlparagraph_for_any_comment_tag tag_cac =
  let soi_cap = Tag_v.sole_index_off_tag tag_cac in
  let sym_cac = Tag_v.entity_off_tag tag_cac in
  let sym_cap = 
    Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_any_comment_symbol
      sym_cac in
  Tag_v.make sym_cap soi_cap 
;;

let camlparagraph_tag_of_camlparagraph_for_any_function_tag tag_caf =
  let soi_cap = Tag_v.sole_index_off_tag tag_caf in
  let sym_caf = Tag_v.entity_off_tag tag_caf in
  let sym_cap = 
    Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_any_function_symbol
      sym_caf in
  Tag_v.make sym_cap soi_cap 
;;

(* _of_camlparagraph_for_formula *)

let camlparagraph_tag_of_camlparagraph_for_formula_tag tag_acf =
  let soi_cap = Tag_v.sole_index_off_tag tag_acf in
  let sym_acf = Tag_v.entity_off_tag tag_acf in
  let sym_cap = 
    Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_formula_symbol
      sym_acf in
  Tag_v.make sym_cap soi_cap 
;;

let camlparagraph_tag_of_camlparagraph_for_formula_let_tag tag_flt =
  let soi_cap = Tag_v.sole_index_off_tag tag_flt in
  let sym_flt = Tag_v.entity_off_tag tag_flt in
  let sym_cap = 
    Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_formula_let_symbol
      sym_flt in
  Tag_v.make sym_cap soi_cap 
;;

let camlparagraph_tag_of_camlparagraph_for_formula_let_argument_tag tag_fla =
  let soi_cap = Tag_v.sole_index_off_tag tag_fla in
  let sym_fla = Tag_v.entity_off_tag tag_fla in
  let sym_cap = 
    Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_formula_let_argument_symbol
      sym_fla in
  Tag_v.make sym_cap soi_cap 
;;

let camlparagraph_tag_of_camlparagraph_for_formula_let_match_tag tag_fla =
  let soi_cap = Tag_v.sole_index_off_tag tag_fla in
  let sym_fla = Tag_v.entity_off_tag tag_fla in
  let sym_cap = 
    Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_formula_let_match_symbol
      sym_fla in
  Tag_v.make sym_cap soi_cap 
;;

let camlparagraph_tag_of_camlparagraph_for_symbol_tag tag_cfs =
  let soi_cap = Tag_v.sole_index_off_tag tag_cfs in
  let sym_cfs = Tag_v.entity_off_tag tag_cfs in
  let sym_cap = 
    Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_symbol_symbol
      sym_cfs in
  Tag_v.make sym_cap soi_cap 
;;

let camlparagraph_tag_of_camlparagraph_for_symbol_let_match_tag tag_slm =
  let soi_cap = Tag_v.sole_index_off_tag tag_slm in
  let sym_slm = Tag_v.entity_off_tag tag_slm in
  let sym_cap = 
    Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_symbol_let_match_symbol
      sym_slm in
  Tag_v.make sym_cap soi_cap 
;;

let camlparagraph_tag_of_camlparagraph_for_symbol_type_tag tag_cst =
  let soi_cap = Tag_v.sole_index_off_tag tag_cst in
  let sym_cap = Camlparagraph_symbol_v.camlparagraph_for_symbol_type in
  Tag_v.make sym_cap soi_cap 
;;

let camlparagraph_tag_of_camlparagraph_for_symbol_let_argument_tag tag_sla =
  let soi_cap = Tag_v.sole_index_off_tag tag_sla in
  let sym_sla = Tag_v.entity_off_tag tag_sla in
  let sym_cap = 
    Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_symbol_let_argument_symbol
      sym_sla in
  Tag_v.make sym_cap soi_cap 
;;

let camlparagraph_tag_of_camlparagraph_for_symbol_let_abbreviate_tag tag_sls =
  let soi_cap = Tag_v.sole_index_off_tag tag_sls in
  let sym_sls = Tag_v.entity_off_tag tag_sls in
  let sym_cap = 
    Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_symbol_let_abbreviate_symbol
      sym_sls in
  Tag_v.make sym_cap soi_cap 
;;

let camlparagraph_tag_of_camlparagraph_for_symbol_let_match_tag tag_slm =
  let soi_cap = Tag_v.sole_index_off_tag tag_slm in
  let sym_slm = Tag_v.entity_off_tag tag_slm in
  let sym_cap = 
    Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_symbol_let_match_symbol
      sym_slm in
  Tag_v.make sym_cap soi_cap 
;;

let camlparagraph_tag_of_camlparagraph_for_symbol_let_mixed_tag tag_slx =
  let soi_cap = Tag_v.sole_index_off_tag tag_slx in
  let sym_slx = Tag_v.entity_off_tag tag_slx in
  let sym_cap = 
    Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_symbol_let_mixed_symbol
      sym_slx in
  Tag_v.make sym_cap soi_cap 
;;

(* _of_camlparagraph_for_tag 

let camlparagraph_tag_of_camlparagraph_for_tag_let_mixed_tag tag_slx =
  let soi_cap = Tag_v.sole_index_off_tag tag_slx in
  let sym_slx = Tag_v.entity_off_tag tag_slx in
  let sym_cap = 
    Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_tag_let_mixed_symbol
      sym_slx in
  Tag_v.make sym_cap soi_cap 
;;

let camlparagraph_tag_of_camlparagraph_for_tag_let_match_tag tag_slx =
  let soi_cap = Tag_v.sole_index_off_tag tag_slx in
  let sym_slx = Tag_v.entity_off_tag tag_slx in
  let sym_cap = 
    Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_tag_let_match_symbol
      sym_slx in
  Tag_v.make sym_cap soi_cap 
;;

let camlparagraph_tag_of_camlparagraph_for_tag_let_argument_tag tag_slx =
  let soi_cap = Tag_v.sole_index_off_tag tag_slx in
  let sym_slx = Tag_v.entity_off_tag tag_slx in
  let sym_cap = 
    Camlparagraph_symbol_v.camlparagraph_symbol_of_camlparagraph_for_tag_let_argument_symbol
      sym_slx in
  Tag_v.make sym_cap soi_cap 
;;
*)

let camlparagraph_septup_off_camlparagraph_tag tag_cap =
  let sym_cap = Tag_v.entity_off_tag tag_cap in
  let tag_ite = item_tag_off_camlparagraph_tag tag_cap in
  let sex_ite = Item_tag_v.item_sextup_off_item_tag tag_ite in
  Septuplet_v.make_of_left_of_sextuplet sym_cap sex_ite
;;

