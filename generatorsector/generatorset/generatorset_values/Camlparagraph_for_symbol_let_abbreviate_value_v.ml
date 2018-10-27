(** {3 Camlparagraph_for_symbol_let_abbreviate_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlparagraph_for_symbol_let_abbreviate_value_v";
   "Needed-by : VGNR:Camlparagraph_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let section_value_list_off_camlparagraph_for_symbol_let_abbreviate_tag tag_cla =
  let tag_cap = 
    Camlparagraph_tag_v.camlparagraph_tag_of_camlparagraph_for_symbol_let_abbreviate_tag 
      tag_cla 
  in
  let tag_sec_l = Camlparagraph_formula_v.section_tag_list_off_camlparagraph_tag tag_cap in
  List.map Section_value_v.retrieve tag_sec_l
;;

(** {6 Making} *)

let make sym_cla soi_cap =
  let tag_cla = Tag_v.make sym_cla soi_cap in
  let val_sec_l = section_value_list_off_camlparagraph_for_symbol_let_abbreviate_tag tag_cla in
  match sym_cla with
  | Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_inself ->
      Camlparagraph_for_symbol_let_abbreviate_value_t.Let_abbreviate_inself val_sec_l

  | Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_inancestorself ->
      Camlparagraph_for_symbol_let_abbreviate_value_t.Let_abbreviate_inancestorself val_sec_l

  | Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_topson_bare ->
      Camlparagraph_for_symbol_let_abbreviate_value_t.Let_abbreviate_topson_bare val_sec_l

  | Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_topson_basicnullary ->
      Camlparagraph_for_symbol_let_abbreviate_value_t.Let_abbreviate_topson_basicnullary val_sec_l

  | Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_topson_ofstring ->
      Camlparagraph_for_symbol_let_abbreviate_value_t.Let_abbreviate_topson_ofstring val_sec_l

  | Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_bare ->
      Camlparagraph_for_symbol_let_abbreviate_value_t.Let_abbreviate_grandson_bare val_sec_l

  | Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_basicnullary ->
      Camlparagraph_for_symbol_let_abbreviate_value_t.Let_abbreviate_grandson_basicnullary val_sec_l

  | Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_ofstring ->
      Camlparagraph_for_symbol_let_abbreviate_value_t.Let_abbreviate_grandson_ofstring val_sec_l

;;

(** {6 Retrieving} *)

let retrieve tag_cla =
  let sym_cla = Tag_v.entity_off_tag tag_cla in
  let soi_cap = Tag_v.sole_index_off_tag tag_cla in
  make sym_cla soi_cap
;;

(** {6 Extracting} *)

let string_list_off_camlparagraph_for_symbol_let_abbreviate_tag tag_cla =
  let val_sec_l = section_value_list_off_camlparagraph_for_symbol_let_abbreviate_tag tag_cla in
  List.map Section_value_v.string_list_off_section_value val_sec_l
;;

let section_value_list_off_camlparagraph_for_symbol_let_abbreviate_value val_cla =
  match val_cla with
  | Camlparagraph_for_symbol_let_abbreviate_value_t.Let_abbreviate_inself val_sec_l -> val_sec_l
	
  | Camlparagraph_for_symbol_let_abbreviate_value_t.Let_abbreviate_inancestorself val_sec_l -> val_sec_l

  | Camlparagraph_for_symbol_let_abbreviate_value_t.Let_abbreviate_topson_bare val_sec_l -> val_sec_l

  | Camlparagraph_for_symbol_let_abbreviate_value_t.Let_abbreviate_topson_ofstring val_sec_l -> val_sec_l

  | Camlparagraph_for_symbol_let_abbreviate_value_t.Let_abbreviate_topson_basicnullary val_sec_l -> val_sec_l

  | Camlparagraph_for_symbol_let_abbreviate_value_t.Let_abbreviate_grandson_bare val_sec_l -> val_sec_l

  | Camlparagraph_for_symbol_let_abbreviate_value_t.Let_abbreviate_grandson_basicnullary val_sec_l -> val_sec_l

  | Camlparagraph_for_symbol_let_abbreviate_value_t.Let_abbreviate_grandson_ofstring val_sec_l -> val_sec_l

;;
