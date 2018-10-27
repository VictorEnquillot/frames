(** {3 The functionalities for a Value for an Camlline_uno_camltype of a Camlfile.}  *)

let nam_cod = "Camlline_uno_camltype_value_v.ml";;

(** {6 Aliases} *)

open Camlline_value_tools_v;;

(** {6 Making.} *)

let make sym_cuc soi_cal =
  let sym_cal = 
    Camlline_symbol_v.camlline_symbol_of_camlline_uno_camltype_symbol 
      sym_cuc 
  in
  let tag_cal = Tag_v.make sym_cal soi_cal in
  let tag_ent_l = Camlline_formula_v.retrieve tag_cal in
  let sym_ent_l = List.map Tag_v.symbol_off_tag tag_ent_l in
  let sym_ent = uno_off_list nam_cod "make" sym_cal sym_ent_l in
  let sym_cat = Camlline_tag_v.category_symbol_off_camlline_tag tag_cal in
  
  match sym_cuc with

  (* type block_none_singl_symbol = *)
  | Camlline_uno_camltype_symbol_t.Type_mft_equal 
  (* type block_none_single_formula = *)
  | Camlline_uno_camltype_symbol_t.Type_mst_equal -> 
      Format.sprintf "type %s =" 
	(module_name sym_cat sym_ent) 
	
  (* type atom_path = private *)
  | Camlline_uno_camltype_symbol_t.Type_mst_equal_private 
  | Camlline_uno_camltype_symbol_t.Type_mft_equal_private ->

      Format.sprintf "type %s = private" (module_name sym_cat sym_ent) 

  | Camlline_uno_camltype_symbol_t.Type_mft_equal_Eft
  | Camlline_uno_camltype_symbol_t.Type_mst_equal_Est -> 
    (* Ex.: type vector_symbol = Vector;; *)
      Format.sprintf "type %s = %s"
	(module_name sym_cat sym_ent) 
	(entity_name_capitalized sym_ent) 

  | Camlline_uno_camltype_symbol_t.Pipe_Efl 
  | Camlline_uno_camltype_symbol_t.Pipe_Esl -> 
    (* Ex.: | Cl_5s *)
      Format.sprintf "  | %s"
	(entity_name_capitalized sym_ent) 

  | Camlline_uno_camltype_symbol_t.Pipe_Mfs_bof_Mfs_tdot_mfs 
  (* | Atom_zerotied_symbol of Azs_t.atom_zerotied_symbol *)
  | Camlline_uno_camltype_symbol_t.Pipe_Mss_bof_Mss_tdot_mss -> 
      let sym_cof = Contentfile_symbol_v.type_alone in
      Format.sprintf "  | %s of %s.%s"
	(module_name_capitalized sym_cat sym_ent) 
	(module_name_capitalized_suffixed sym_cat sym_ent sym_cof)
	(module_name sym_cat sym_ent) 
	
  (* | Point of string *)
  | Camlline_uno_camltype_symbol_t.Pipe_Ess_bof_string -> 
      Format.sprintf "  | %s of string"
	(entity_name_capitalized sym_ent) 
	
  | Camlline_uno_camltype_symbol_t.Type_mtt_equal_Mst_tdot_mst_space_tag ->
    (* Ex.: type atom_zerotied_tag = Atom_zerotied_symbol_t.atom_zerotied_symbol Tag_t.tag *) 
      Format.sprintf "type %s = %s_symbol_t.%s_symbol Tag_t.tag"
	(module_name sym_cat sym_ent) 
	(entity_name_capitalized sym_ent) 
	(entity_name sym_ent) 
;;
