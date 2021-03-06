(** {3 Camlparagraph_for_formula_let_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlparagraph_for_formula_let_value_v";
   "Needed-by : VGNR:Camlparagraph_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Making_for_value} *)

let make sym_cfl soi_cap =
  match sym_cfl with
  | Camlparagraph_for_formula_let_symbol_t.Camlparagraph_for_formula_let_argument_symbol sym_gfa ->
      Camlparagraph_for_formula_let_value_t.Camlparagraph_for_formula_let_argument_value
	(Camlparagraph_for_formula_let_argument_value_v.make sym_gfa soi_cap)

  | Camlparagraph_for_formula_let_symbol_t.Camlparagraph_for_formula_let_match_symbol sym_gfs ->
      Camlparagraph_for_formula_let_value_t.Camlparagraph_for_formula_let_match_value
	(Camlparagraph_for_formula_let_match_value_v.make sym_gfs soi_cap)

;;

(** {6 Retrieving} *)

let retrieve tag_cfl =
  let soi_cap = Tag_v.sole_index_off_tag tag_cfl in
  let sym_cfl = Tag_v.entity_off_tag tag_cfl in
  make sym_cfl soi_cap
;;

(** {6 Extracting} *)

let section_value_list_off_camlparagraph_for_formula_let_value val_cfl =
  match val_cfl with
  | Camlparagraph_for_formula_let_value_t.Camlparagraph_for_formula_let_argument_value val_gfa ->
      Camlparagraph_for_formula_let_argument_value_v.section_value_list_off_camlparagraph_for_formula_let_argument_value val_gfa

  | Camlparagraph_for_formula_let_value_t.Camlparagraph_for_formula_let_match_value val_gfs ->
      Camlparagraph_for_formula_let_match_value_v.section_value_list_off_camlparagraph_for_formula_let_match_value val_gfs

;;

let string_list_off_camlparagraph_for_formula_let_value val_cap =
  let val_sec_l = section_value_list_off_camlparagraph_for_formula_let_value val_cap in
  List.map Section_value_v.string_list_off_section_value val_sec_l
;;

let string_list_off_camlparagraph_for_formula_let_tag tag_cap =
  let val_cap = retrieve tag_cap in
  string_list_off_camlparagraph_for_formula_let_value val_cap
;;

