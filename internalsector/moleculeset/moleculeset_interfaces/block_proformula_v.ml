(** {3 Translates a Entity_symbol to a Couple Entity_symbol_list with Camlline_symbol for a Block_symbol_tag .}  *)

let nam_cod = "block_proformula_v.ml";;

(**
Needs  : Entity_symbol_path_list_by_block_tag_provider_v
Needed-by : Entity_symbol_list_n_camlline_symbol_list_by_block_tag_provider_v
Remark : Block Proformula (Camlline_tag list)
*)

(** {6 Aliasing} *)

(** {6 Translating} *)

let translate tag_cap =
  let sym_cat =
    Block_tag_v.category_symbol_off_block_tag 
      tag_cap 
  in

  let sym_ent_esl_n_sym_cal_l = try
    Block_proformula_for_any_v.translate tag_cap 
  with 
  | Failure "No_Block_endmarked_let_symbol:Proformula_for_any.translate" ->

  match sym_cat with
  | Category_symbol_t.Symbol ->
      Block_proformula_for_symbol_v.translate tag_cap

  | Category_symbol_t.Tag ->
      Block_proformula_for_tag_v.translate tag_cap

  | Category_symbol_t.Formula ->
      Utils_v.not_yet_implemented nam_cod "translate Formula"

  | Category_symbol_t.Value ->
      Utils_v.not_yet_implemented nam_cod "translate Value"

  | _ -> 
     Error_messages_v.print_fatal_error
        nam_cod "translate"
        "Symbol|Tag|Formula|Value"
        (Format.sprintf ">%s<" (Category_symbol_v.name sym_cat) )
        "Check or add it to menu if not Any"

in

  sym_ent_esl_n_sym_cal_l

;; 
