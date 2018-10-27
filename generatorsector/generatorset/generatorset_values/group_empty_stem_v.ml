(** {3 Group_stem_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Group_stem_value_v";
   "Needed-by : VGNR:Group_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

(** {6 Making_for_value} *)

let make sym_ggg soi_gro =
  match sym_ggg with
  | Group_stem_symbol_t.Group_stem_empty ->
      Group_stem_value_t.Group_stem_empty
;;

(** {6 Retrieving} *)

let retrieve tag_ggg =
  let sym_ggg = Tag_v.entity_off_tag tag_ggg in
  let soi_gro = Tag_v.sole_index_off_tag tag_ggg in
  make sym_ggg soi_gro
;;

(** {6 Extracting} *)

let string_list_off_group_stem_tag tag_ggg =
  []
;;

let camlline_value_list_off_group_stem_value val_ggg =
  match val_ggg with
  | Group_stem_value_t.Group_stem_empty -> []
;;
