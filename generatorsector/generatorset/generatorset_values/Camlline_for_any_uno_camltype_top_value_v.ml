(** {3 Camlline_for_any_uno_camltype_top_value_v.}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlline_for_any_uno_camltype_top_value_v";
   "Needed-by : VGNR:Section_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Opening} *)

open Tools_vgnr_v;;

(** {6 string_ofing} *)

let string_of sym_cuc soi_cal =
  let sym_cal = 
    Camlline_symbol_v.camlline_symbol_of_camlline_for_any_uno_camltype_top_symbol 
      sym_cuc 
  in
  let tag_cal = Tag_v.make sym_cal soi_cal in
  let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal in
  let sym_ent_l = List.map Tag_v.entity_off_tag tag_ent_l in
  let sym_ent = uno_off_list nam_cod "make" sym_cal sym_ent_l in
  let sym_cat = Camlline_tag_v.category_symbol_off_camlline_tag tag_cal in
(**
  let tag_ent = List.hd tag_ent_l in
**)
  
  match sym_cuc with
  | Camlline_for_any_uno_camltype_top_symbol_t.Type_et_any_equal -> (* Ex.: type atom_zerotied_formula = *)

      Format.sprintf "type %s =" 
	(module_name sym_cat sym_ent) 
	
  | Camlline_for_any_uno_camltype_top_symbol_t.Type_et_any_equal_private -> (* Ex.: type atom_path = private *)

      Format.sprintf "type %s = private" (module_name sym_cat sym_ent) 

  | Camlline_for_any_uno_camltype_top_symbol_t.Type_et_any_equal_et -> (* Ex.: type vector_symbol = Vector;; *)
      Format.sprintf "type %s = %s"
	(module_name sym_cat sym_ent) 
	(entity_name_capitalized sym_ent) 

  | Camlline_for_any_uno_camltype_top_symbol_t.Pipe_et_any_constructor_of_et_any_tdot_et_any ->  (* | Atom_zerotied_symbol of Azs_t.atom_zerotied_symbol *)

      let sym_cof = Contentfile_symbol_v.type_alone in
      Format.sprintf "  | %s of %s.%s"
	(module_name_capitalized sym_cat sym_ent) 
	(module_name_capitalized_suffixed sym_cat sym_ent sym_cof)
	(module_name sym_cat sym_ent) 
	
;;

(** {6 Making_of_value} *)

let make sym_cuc soi_cal =
  let str = string_of sym_cuc soi_cal in
  match sym_cuc with
  | Camlline_for_any_uno_camltype_top_symbol_t.Type_et_any_equal ->
     Camlline_for_any_uno_camltype_top_value_t.Type_et_any_equal str 

  | Camlline_for_any_uno_camltype_top_symbol_t.Type_et_any_equal_private ->
     Camlline_for_any_uno_camltype_top_value_t.Type_et_any_equal_private str

  | Camlline_for_any_uno_camltype_top_symbol_t.Type_et_any_equal_et ->
     Camlline_for_any_uno_camltype_top_value_t.Type_et_any_equal_et str 

  | Camlline_for_any_uno_camltype_top_symbol_t.Pipe_et_any_constructor_of_et_any_tdot_et_any ->
     Camlline_for_any_uno_camltype_top_value_t.Pipe_et_any_constructor_of_et_any_tdot_et_any str

;;

(** {6 Retrieving} *)

let retrieve tag_cuc =
  let sym_cuc = Tag_v.entity_off_tag tag_cuc in
  let soi_cal = Tag_v.sole_index_off_tag tag_cuc in
  make sym_cuc soi_cal
;;

(** {6 String_offing} *)

let string_off val_cuc =
  match val_cuc with
  | Camlline_for_any_uno_camltype_top_value_t.Type_et_any_equal str ->
     str

  | Camlline_for_any_uno_camltype_top_value_t.Type_et_any_equal_private str ->
     str

  | Camlline_for_any_uno_camltype_top_value_t.Type_et_any_equal_et str ->
     str

  | Camlline_for_any_uno_camltype_top_value_t.Pipe_et_any_constructor_of_et_any_tdot_et_any str ->
     str
;;

