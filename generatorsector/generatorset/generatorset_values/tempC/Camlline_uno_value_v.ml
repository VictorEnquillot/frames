(** {3 The functionalities for a Value for an Camlline_uno.}  *)

let nam_cod = "Camlline_uno_value_v.ml";;

(** {6 Aliases} *)

(** {6 Making.} *)

let make_camlfile_title sym_cau soi_cal =
  let sym_cal = 
    Camlline_symbol_v.camlline_symbol_of_camlline_uno_symbol sym_cau 
  in
  let tag_cal = Tag_v.make sym_cal soi_cal in
  let sym_enp = 
    Camlline_tag_v.entity_proper_symbol_off_camlline_tag tag_cal 
  in
  let sym_cat = Camlline_tag_v.category_symbol_off_camlline_tag tag_cal in
  let sym_cof = Camlline_tag_v.contentfile_symbol_off_camlline_tag tag_cal in

  match sym_cof with 
  | Contentfile_symbol_t.Type_alone ->
      Format.sprintf "(** {3 The %s for a %s.} *)"
	(String.capitalize (Category_symbol_v.name sym_cat))
	(String.capitalize (Entity_proper_symbol_v.string_off sym_enp))
	
  | Contentfile_symbol_t.Value_alone 
  | Contentfile_symbol_t.Type_n_value ->
      Format.sprintf "(** {3 The functionalities for a %s for a %s.} *)"
	(String.capitalize (Category_symbol_v.name sym_cat))
	(String.capitalize (Entity_proper_symbol_v.string_off sym_enp))
;; 

let make_createdby sym_cau soi_cal = 
  let sym_cal = 
    Camlline_symbol_v.camlline_symbol_of_camlline_uno_symbol sym_cau 
  in
  let tag_cal = Tag_v.make sym_cal soi_cal in
  let sym_enp = 
    Camlline_tag_v.entity_proper_symbol_off_camlline_tag tag_cal 
  in
  let sym_cat = Camlline_tag_v.category_symbol_off_camlline_tag tag_cal in
  let sym_usf = Camlline_tag_v.usagefile_symbol_off_camlline_tag tag_cal in

  let time = Unix.gmtime (Unix.time ()) in (*** TODO move in tools ***)

  let monthes = 
    [|"Jan"; "Feb"; "Mar"; "Apr"; "May"; "Jun"; 
      "Jul"; "Aug"; "Sep"; "Oct"; "Nov"; "Dec"|] in

  let date =
    Format.sprintf "%i:%i %i %s %i" 
      (time.Unix.tm_hour +1) 
      time.Unix.tm_min 
      time.Unix.tm_mday 
      (monthes.(time.Unix.tm_mon)) 
      (1900 +time.Unix.tm_year) 
  in

  Format.sprintf "(** created by ./generator %s %s %s at %s. *)"
    (Entity_proper_symbol_v.string_off sym_enp)
    (Usagefile_symbol_v.name sym_usf)
    (Category_symbol_v.name sym_cat)
     date
;; (** Ex.: created by ./generator atom_zerotied implementation symbol at 18:46 11 May 2011. *)

let make sym_cau soi_cal =
 
  match sym_cau with
  | Camlline_uno_symbol_t.Camlfile_createdby -> 
      make_createdby sym_cau soi_cal 

  | Camlline_uno_symbol_t.Camlfile_title -> 
      make_camlfile_title sym_cau soi_cal 
	
  | Camlline_uno_symbol_t.Camlline_uno_module_symbol sym_cum -> 
      Camlline_uno_module_value_v.make sym_cum soi_cal

  | Camlline_uno_symbol_t.Camlline_uno_camltype_symbol sym_cuc ->
      Camlline_uno_camltype_value_v.make sym_cuc soi_cal
	
  | Camlline_uno_symbol_t.Camlline_uno_function_symbol sym_cuf -> 
      Camlline_uno_function_value_v.make sym_cuf soi_cal

  | Camlline_uno_symbol_t.Camlline_uno_value_symbol sym_cuv -> 
      Camlline_uno_value_value_v.make sym_cuv soi_cal
;;


(** {6 Naming.} *)

let name val_cal = val_cal;;

(** {6 Writing.} *)

let write_of_oc_of_camlline_value oc val_cal =
  output_string oc (Format.sprintf "%s@." (name val_cal))
;;

