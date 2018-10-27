(** {3 Translates a Entity_symbol to a Couple Entity_symbol_list with Camlline_symbol for a Camlparagraph_symbol_tag For Ny Category .}  *)

let documentation () =
  [
   "Needs  : IGNR:Entity_symbol_path_list_by_camlparagraph_septup_provider_v";
   "Needed-by : IGNR:Entity_symbol_list_camlline_symbol_doublet_list_by_camlparagraph_septup_provider_v";
   "Needs : IGNR:Entity_symbol_path_list_by_camlparagraph_septup_provider_v";
   "Needs : IGNR:Entity_symbol_list_camlline_symbol_doublet_list_for_camlparagraph_for_any_v";
   "Needs : IGNR:Camlparagraph_endmarked_let_argument_proformula_for_symbol_v";
   "Current : IGNR:Entity_symbol_list_camlline_symbol_doublet_list_for_camlparagraph_for_any_v";
   "Needed-by : IGNR:Entity_symbol_list_camlline_symbol_doublet_list_for_camlparagraph_for_symbol_v";
   "Needed-by : IGNR:Entity_symbol_list_camlline_symbol_doublet_list_for_camlparagraph_for_tag_v";
   "Needed-by : IGNR:Entity_symbol_list_camlline_symbol_doublet_list_for_camlparagraph_for_value_v";
   "Needed-by : IGNR:Entity_symbol_list_camlline_symbol_doublet_list_by_camlparagraph_septup_provider_v";
   "What-is-it : A Camlparagraph Proformula : it associates a Camlline Symbol with an Entity Symbol list";
   "Improve : Information should be read from specific Database : GNR:generatorset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

let make sep_cpa =
  let (sym_cpa, sym_ite, sym_usf, sym_cof, sym_ent_top, sym_cat, sym_dos) = sep_cpa in
  match sym_cpa with
  | Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol sym_cac -> 
      let sep_cac = (sym_cac, sym_ite, sym_usf, sym_cof, sym_ent_top, sym_cat, sym_dos) in
      Camlparagraph_for_any_comment_proformula_v.make sep_cac 
	
  | Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_function_symbol sym_caf -> 
      let sep_caf = (sym_caf, sym_ite, sym_usf, sym_cof, sym_ent_top, sym_cat, sym_dos) in
      Camlparagraph_for_any_function_proformula_v.make sep_caf
;; 
