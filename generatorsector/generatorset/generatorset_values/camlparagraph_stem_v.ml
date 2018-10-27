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

let section_value_list_off_camlparagraph_stem_tag tag_sss =
  let tag_cap = 
    Camlparagraph_tag_v.camlparagraph_tag_of_camlparagraph_stem_tag 
      tag_sss 
  in
  let tag_sec_l = Camlparagraph_formula_v.section_tag_list_off_camlparagraph_tag tag_cap in
  List.map Section_value_v.retrieve tag_sec_l
;;

(** {6 Making_for_value} *)

let make sym_sss soi_cap =
  let tag_sss = Tag_v.make sym_sss soi_cap in
  let val_sec_l = section_value_list_off_camlparagraph_stem_tag tag_sss in
  match sym_sss with

;;

(** {6 Retrieving} *)

let retrieve tag_sss =
  let sym_sss = Tag_v.entity_off_tag tag_sss in
  let soi_cap = Tag_v.sole_index_off_tag tag_sss in
  make sym_sss soi_cap
;;

(** {6 Extracting} *)

let string_list_off_camlparagraph_stem_tag tag_sss =
  let val_sec_l = section_value_list_off_camlparagraph_stem_tag tag_sss in
  List.map Section_value_v.string_list_off_section_value val_sec_l
;;

let section_value_list_off_camlparagraph_stem_value val_sss =
  match val_sss with

;;
