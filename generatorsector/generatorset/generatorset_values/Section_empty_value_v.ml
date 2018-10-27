(** {3 Section_stem_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Section_stem_value_v";
   "Needed-by : VGNR:Section_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is an Empty type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Opening} *)

open Tools_vgnr_v;;

(** {6 String_ofing} *)

let string_of sym_gbs soi_cal =
  ""
;;

(** {6 Making_of_value} *)

let make sym_cfa soi_cal =
  let str = string_of sym_cfa soi_cal in
  match sym_cfa with
  | Section_stem_value_t.Section_stem_empty ->
      Section_stem_value_t.Section_stem_empty str
;;

(** {6 Retrieving} *)

let retrieve tag_gbs =
  let sym_gbs = Tag_v.entity_off_tag tag_gbs in
  let soi_cal = Tag_v.sole_index_off_tag tag_gbs in
  make sym_gbs soi_cal
;;

(** {6 String_offing} *)

let string_off val_gbs =
  ""
;;
