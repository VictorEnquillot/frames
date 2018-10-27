(** {3 Camlparagraph_for_symbol_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlparagraph_for_symbol_value_v";
   "Needed-by : VGNR:Camlparagraph_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Making} *)

let make sym_cfs soi_cap =
  match sym_cfs with
  | Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol sym_gfa ->
      Camlparagraph_for_symbol_value_t.Camlparagraph_for_symbol_let_value
	(Camlparagraph_for_symbol_let_value_v.make sym_gfa soi_cap)

  | Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_type ->
      let tag_cfs = Tag_v.make sym_cfs soi_cap in
      let tag_cap = 
	Camlparagraph_tag_v.camlparagraph_tag_of_camlparagraph_for_symbol_tag 
	  tag_cfs 
      in
      let tag_sec_l = Camlparagraph_formula_v.section_tag_list_off_camlparagraph_tag tag_cap in
      let val_sec_l = List.map 
	  Section_value_v.retrieve 
	  tag_sec_l
      in
      Camlparagraph_for_symbol_value_t.Camlparagraph_for_symbol_type val_sec_l
;;

(** {6 Retrieving} *)

let retrieve tag_cfs =
  let soi_cap = Tag_v.sole_index_off_tag tag_cfs in
  let sym_cfs = Tag_v.entity_off_tag tag_cfs in
  make sym_cfs soi_cap
;;

(** {6 Extracting} *)

let section_value_list_off_camlparagraph_for_symbol_value val_cfs =
  match val_cfs with
  | Camlparagraph_for_symbol_value_t.Camlparagraph_for_symbol_let_value val_csl ->
      Camlparagraph_for_symbol_let_value_v.section_value_list_off_camlparagraph_for_symbol_let_value val_csl
(* ***
  | Camlparagraph_for_symbol_value_t.Camlparagraph_for_symbol_val_value val_csv ->
      Camlparagraph_for_symbol_val_value_v.section_value_list_off_camlparagraph_for_symbol_val_value val_csv
*** *)
  | Camlparagraph_for_symbol_value_t.Camlparagraph_for_symbol_type val_sec_l -> val_sec_l

;;

let string_list_off_camlparagraph_for_symbol_value val_cap =
  let val_sec_l = section_value_list_off_camlparagraph_for_symbol_value val_cap in
  List.map Section_value_v.string_list_off_section_value val_sec_l
;;

