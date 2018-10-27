(** {3 Camlline_for_any_uno_camltype_son_ofstring_value_v.}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlline_for_any_uno_camltype_son_ofstring_value_v";
   "Needed-by : VGNR:Section_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Opening} *)

open Tools_vgnr_v;;

(** {6 string_ofing} *)

let string_of sym_ccs soi_cal =
  let sym_cal = 
    Camlline_symbol_v.camlline_symbol_of_camlline_for_any_uno_camltype_son_ofstring_symbol 
      sym_ccs 
  in
  let tag_cal = Tag_v.make sym_cal soi_cal in
  let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal in
  let sym_ent_l = List.map Tag_v.entity_off_tag tag_ent_l in
  let sym_ent = uno_off_list nam_cod "make" sym_cal sym_ent_l in
  
  match sym_ccs with
  | Camlline_for_any_uno_camltype_son_ofstring_symbol_t.Pipe_es_constructor_of_string ->   (* | Point of string *)

      Format.sprintf "  | %s of string"
	(entity_name_capitalized sym_ent) 

;;

(** {6 Making_of_value} *)

let make sym_ccs soi_cal =
  let str = string_of sym_ccs soi_cal in
  match sym_ccs with
  | Camlline_for_any_uno_camltype_son_ofstring_symbol_t.Pipe_es_constructor_of_string ->
     Camlline_for_any_uno_camltype_son_ofstring_value_t.Pipe_es_constructor_of_string str

;;

(** {6 Retrieving} *)

let retrieve tag_ccs =
  let sym_ccs = Tag_v.entity_off_tag tag_ccs in
  let soi_cal = Tag_v.sole_index_off_tag tag_ccs in
  make sym_ccs soi_cal
;;

(** {6 String_offing} *)

let string_off val_ccs =
  match val_ccs with
  | Camlline_for_any_uno_camltype_son_ofstring_value_t.Pipe_es_constructor_of_string str -> str
;;

