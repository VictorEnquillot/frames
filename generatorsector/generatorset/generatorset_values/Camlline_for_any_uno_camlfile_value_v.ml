(** {3 Camlline_for_any_uno_camlfile_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlline_for_any_uno_camlfile_value_v";
   "Needed-by : VGNR:Camlline_uno_function_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

(** {6 Opening} *)

open Tools_vgnr_v;;

let string_of_camlline_camlfile_title sym_cuc soi_cal =
  let sym_cal = 
    Camlline_symbol_v.camlline_symbol_of_camlline_for_any_uno_camlfile_symbol sym_cuc 
  in
  let tag_cal = Tag_v.make sym_cal soi_cal in
  let sym_ent_top = 
    Camlline_tag_v.entity_symbol_off_camlline_tag tag_cal 
  in
  let sym_cat = Camlline_tag_v.category_symbol_off_camlline_tag tag_cal in
  let sym_cof = Camlline_tag_v.contentfile_symbol_off_camlline_tag tag_cal in

  match sym_cof with 
  | Contentfile_symbol_t.Type_alone ->
(* Ex.: (** {3 Camlline_for_symbol_uno_function_v} *) *)

      Format.sprintf "(** {3 %s_%s_t} *)"
	(entity_name_capitalized sym_ent_top)
	(category_name sym_cat)
	
  | Contentfile_symbol_t.Value_alone ->

      Format.sprintf "(** {3 %s_%s_v} *)"
	(entity_name_capitalized sym_ent_top)
	(category_name sym_cat)

  | Contentfile_symbol_t.Type_n_value ->

      Format.sprintf "(** {3 %s_%s_p} *)"
	(entity_name_capitalized sym_ent_top)
	(category_name sym_cat)
;; 

let string_of_camlline_camlfile_createdby sym_cuc soi_cal = 
  let sym_cal = 
    Camlline_symbol_v.camlline_symbol_of_camlline_for_any_uno_camlfile_symbol sym_cuc 
  in
  let tag_cal = Tag_v.make sym_cal soi_cal in
  let sym_ent_top = 
    Camlline_tag_v.entity_symbol_off_camlline_tag tag_cal 
  in
  let sym_cat = Camlline_tag_v.category_symbol_off_camlline_tag tag_cal in
  let sym_cof = Camlline_tag_v.contentfile_symbol_off_camlline_tag tag_cal in

  let version = Version_v.name in 

  Format.sprintf "(** %s at %s. created by version %s of generator *)"
    (module_name_capitalized_suffixed sym_cat sym_ent_top sym_cof)
    (Utilities_v.date ())
    version 
;; 
(** created by version v1.13 of ./generator group_for_formula_body_son_top_main_builder implementation_for_symbol symbol at 12:57:08 on 29 May 2013. *)

let string_of sym_cuc soi_cal =
  match sym_cuc with
  | Camlline_for_any_uno_camlfile_symbol_t.Ending -> 
     string_of_camlline_camlfile_createdby sym_cuc soi_cal

  | Camlline_for_any_uno_camlfile_symbol_t.Camlfile_title -> 
     string_of_camlline_camlfile_title sym_cuc soi_cal
;;

(** {6 Making_of_value} *)

let make sym_cfs soi_cal =
  let str = string_of sym_cfs soi_cal in
  match sym_cfs with
  | Camlline_for_any_uno_camlfile_symbol_t.Ending ->
     Camlline_for_any_uno_camlfile_value_t.Ending str

  | Camlline_for_any_uno_camlfile_symbol_t.Camlfile_title ->
     Camlline_for_any_uno_camlfile_value_t.Camlfile_title str

;;

(** {6 Retrieving} *)

let retrieve tag_cfs =
  let sym_cfs = Tag_v.entity_off_tag tag_cfs in
  let soi_cal = Tag_v.sole_index_off_tag tag_cfs in
  make sym_cfs soi_cal
;;

(** {6 String_offing} *)

let string_off val_cfs =
  match val_cfs with
  | Camlline_for_any_uno_camlfile_value_t.Ending str ->      str

  | Camlline_for_any_uno_camlfile_value_t.Camlfile_title str ->  str
;;

