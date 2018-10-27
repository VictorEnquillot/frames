(** {3 Camlparagraph_for_formula_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlparagraph_for_formula_value_v";
   "Needed-by : VGNR:Camlparagraph_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let section_value_list_off_camlparagraph_for_formula_tag tag_cff =
  let tag_cap = 
    Camlparagraph_tag_v.camlparagraph_tag_of_camlparagraph_for_formula_tag 
      tag_cff 
  in
  let tag_sec_l = Camlparagraph_formula_v.section_tag_list_off_camlparagraph_tag tag_cap in
  List.map Section_value_v.retrieve tag_sec_l
;;

(** {6 Making_for_value} *)

let make sym_cff soi_cap =
  match sym_cff with
  | Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_let_symbol sym_gfa ->
      Camlparagraph_for_formula_value_t.Camlparagraph_for_formula_let_value
	(Camlparagraph_for_formula_let_value_v.make sym_gfa soi_cap)

  | Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_type ->
      let tag_cff = Tag_v.make sym_cff soi_cap in
      let val_sec_l = section_value_list_off_camlparagraph_for_formula_tag tag_cff in
      Camlparagraph_for_formula_value_t.Camlparagraph_for_formula_type val_sec_l

;;

(** {6 Retrieving} *)

let retrieve tag_cff =
  let soi_cap = Tag_v.sole_index_off_tag tag_cff in
  let sym_cff = Tag_v.entity_off_tag tag_cff in
  make sym_cff soi_cap
;;

(** {6 Extracting} *)

let section_value_list_off_camlparagraph_for_formula_value val_cff =
  match val_cff with
  | Camlparagraph_for_formula_value_t.Camlparagraph_for_formula_let_value val_gfa ->
      Camlparagraph_for_formula_let_value_v.section_value_list_off_camlparagraph_for_formula_let_value val_gfa

  | Camlparagraph_for_formula_value_t.Camlparagraph_for_formula_type val_sec_l -> val_sec_l

;;

let string_list_off_camlparagraph_for_formula_value val_cff =
  let val_sec_l = section_value_list_off_camlparagraph_for_formula_value val_cff in
  List.map Section_value_v.string_list_off_section_value val_sec_l
;;

let string_list_off_camlparagraph_for_formula_tag tag_cff =
  let val_cff = retrieve tag_cff in
  string_list_off_camlparagraph_for_formula_value val_cff
;;

