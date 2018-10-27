(** {3 Entity_symbol_list_camlline_symbol_doublet_list_for_camlparagraph_for_for_symbol_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Camlparagraph_for_symbol_let_proformula_v";
   "Needs : IGNR:Camlparagraph_for_symbol_val_proformula_v";
   "Needs : IGNR:Camlparagraph_for_symbol_type_proformula_v";
   "Current : IGNR:Entity_symbol_list_camlline_symbol_doublet_list_for_camlparagraph_for_symbol_v";
   "Needed-by : IGNR:Entity_symbol_list_camlline_symbol_doublet_list_by_camlparagraph_septup_provider_v";
   "What-is-it : It associates a Camlline Symbol with an Entity Symbol list (its formula) in the Context of some Camlparagraph Symbol";
   "How-is-it-done :";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

let make sep_cfs soi_cap = 
  let (sym_cfs, sym_ite, sym_usf, sym_cof, sym_ent, sym_cat, sym_dos) = sep_cfs in
  match sym_cfs with
  | Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol sym_csl ->
      let sep_csl = (sym_csl, sym_ite, sym_usf, sym_cof, sym_ent, sym_cat, sym_dos) in
      Camlparagraph_for_symbol_let_proformula_v.translate_and_couple sep_csl 

  | Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_val_symbol sym_csv ->
      let sep_csv = (sym_csv, sym_ite, sym_usf, sym_cof, sym_ent, sym_cat, sym_dos) in
      Camlparagraph_for_symbol_val_proformula_v.translate_and_couple sep_csv
  
  | Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_type as sym_cst ->
      let sep_cst = (sym_cst, sym_ite, sym_usf, sym_cof, sym_ent, sym_cat, sym_dos) in
      Camlparagraph_for_symbol_type_proformula_v.translate_and_couple sep_cst
;; 
