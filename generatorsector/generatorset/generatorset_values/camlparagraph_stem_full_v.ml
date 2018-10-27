(** {3 Camlparagraph_stem_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlparagraph_stem_value_v";
   "Needed-by : VGNR:Camlparagraph_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let section_value_list_off_camlparagraph_stem_tag tag_ccc =
  let tag_cap = 
    Camlparagraph_tag_v.camlparagraph_tag_of_camlparagraph_stem_tag 
      tag_ccc 
  in
  let tag_sec_l = Camlparagraph_formula_v.section_tag_list_off_camlparagraph_tag tag_cap in
  List.map Section_value_v.retrieve tag_sec_l
;;

(** {6 Making_for_value} *)

let make sym_ccc soi_cap =
  let tag_ccc = Tag_v.make sym_ccc soi_cap in
  let val_sec_l = section_value_list_off_camlparagraph_stem_tag tag_ccc in
  match sym_ccc with
  | Camlparagraph_stem_symbol_t.Leaf_1 ->
      Camlparagraph_stem_value_t.Leaf_1 val_sec_l

  | Camlparagraph_stem_symbol_t.Leaf_2 ->
      Camlparagraph_stem_value_t.Leaf_2 val_sec_l

  | Camlparagraph_stem_symbol_t.Leaf_3 ->
      Camlparagraph_stem_value_t.Leaf_3 val_sec_l

  | Camlparagraph_stem_symbol_t.Leaf_4 ->
      Camlparagraph_stem_value_t.Leaf_4 val_sec_l

  | Camlparagraph_stem_symbol_t.Leaf_5 ->
      Camlparagraph_stem_value_t.Leaf_5 val_sec_l

  | Camlparagraph_stem_symbol_t.Leaf_6 ->
      Camlparagraph_stem_value_t.Leaf_6 val_sec_l
;;

(** {6 Retrieving} *)

let retrieve tag_ccc =
  let sym_ccc = Tag_v.entity_off_tag tag_ccc in
  let soi_cap = Tag_v.sole_index_off_tag tag_ccc in
  make sym_ccc soi_cap
;;

(** {6 Extracting} *)

let string_list_off_camlparagraph_stem_tag tag_ccc =
  let val_sec_l = section_value_list_off_camlparagraph_stem_tag tag_ccc in
  List.map Section_value_v.string_list_off_section_value val_sec_l
;;

let section_value_list_off_camlparagraph_stem_value val_ccc =
  match val_ccc with
  | Camlparagraph_stem_value_t.Leaf_1 val_sec_l -> val_sec_l
	
  | Camlparagraph_stem_value_t.Leaf_2 val_sec_l -> val_sec_l

  | Camlparagraph_stem_value_t.Leaf_3 val_sec_l -> val_sec_l

  | Camlparagraph_stem_value_t.Leaf_4 val_sec_l -> val_sec_l

  | Camlparagraph_stem_value_t.Leaf_5 val_sec_l -> val_sec_l

  | Camlparagraph_stem_value_t.Leaf_6 val_sec_l -> val_sec_l
;;
