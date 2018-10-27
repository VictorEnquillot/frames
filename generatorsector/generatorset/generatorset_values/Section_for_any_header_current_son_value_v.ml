(** {3 Section_stem_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Section_stem_value_v";
   "Needed-by : VGNR:Section_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

(** {6 Making} *)

let make sym_sss soi_sec =
  match sym_sss with
  | Section_stem_symbol_t.Section_stem_empty ->
      Section_stem_value_t.Section_stem_empty
;;

(** {6 Retrieving} *)

let retrieve tag_sss =
  let sym_sss = Tag_v.entity_off_tag tag_sss in
  let soi_sec = Tag_v.sole_index_off_tag tag_sss in
  make sym_sss soi_sec
;;

(** {6 Extracting} *)

let string_list_off_section_stem_tag tag_sss =
  []
;;

let group_value_list_off_section_stem_value val_sss =
  match val_sss with
  | Section_stem_value_t.Section_stem_empty -> []
;;
