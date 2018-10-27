(** {3 Group_for_any_header_son_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Group_for_any_header_son_value_v";
   "Needed-by : VGNR:Group_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a For_any_header_son type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

(** {6 Making} *)

let make sym_gft soi_gro =
  match sym_gft with
  | Group_for_any_header_son_symbol_t.Group_for_any_header_son_empty ->
      Group_for_any_header_son_value_t.Group_for_any_header_son_empty
;;

(** {6 Retrieving} *)

let retrieve tag_gft =
  let sym_gft = Tag_v.entity_off_tag tag_gft in
  let soi_cal = Tag_v.sole_index_off_tag tag_gft in
  make sym_gft soi_cal
;;

(** {6 Extracting} *)

let string_list_off_group_for_any_header_son_tag tag_gft =
  []
;;

let camlline_value_list_off_group_for_any_header_son_value val_ghc =
  match val_ghc with
  | Group_for_any_header_son_value_t.Group_for_any_header_son_empty -> []
;;
