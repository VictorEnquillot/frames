(** {3 The functionalities for a Value for an Camlline_trio of a Camlfile.}  *)

let nam_cod = "Camlline_trio_value_v.ml";;

(** {6 Aliases} *)

open Camlline_value_tools_v;;

(** {6 Making.} *)

let make sym_clt soi_cal =
  let sym_cal = 
    Camlline_symbol_v.camlline_symbol_of_camlline_trio_symbol sym_clt 
  in
  let tag_cal = Tag_v.make sym_cal soi_cal in
  let tag_ent_l = Camlline_formula_v.retrieve tag_cal in
  let sym_ent_l = List.map Tag_v.symbol_off_tag tag_ent_l in
  let (sym_ent_1, sym_ent_2, sym_ent_3) = 
    trio_off_list nam_cod "make" sym_cal sym_ent_l 
  in
  let sym_cat = Camlline_tag_v.category_symbol_off_camlline_tag tag_cal in

  match sym_clt with
  | Camlline_trio_symbol_t.Let_esl_equal_mst_of_mss_space_Mss_vdot_esl ->
      let sym_ent_l = sym_ent_1 in
      let sym_ent_s = sym_ent_2 in
      let sym_ent_t = sym_ent_3 in
      let sym_cof = Contentfile_symbol_v.value_alone in
      Format.sprintf "let %s = %s_of_%s %s.%s;;"
	(entity_name sym_ent_l) 
	(module_name sym_cat sym_ent_t) 
	(module_name sym_cat sym_ent_s) 
	(module_name_capitalized_suffixed sym_cat sym_ent_s sym_cof) 
	(entity_name sym_ent_l)
 
(* let ar = atom_zerotied_symbol_of_atom_zerotied_raregas_symbol 
            atom_zerotied_raregas_symbol_v.ar;; *)

  | Camlline_trio_symbol_t.Let_ess_arg_equal_mst_bof_mss_space_lpar_Mss_vdot_esl_space_arg_rpar ->
      (* Ex.: 
	 let point s = geometryset_symbol_of_point_symbol 
         (Point_symbol_v.fromid s);; *)
      let sym_ent_l = sym_ent_1 in
      let sym_ent_s = sym_ent_2 in
      let sym_ent_t = sym_ent_3 in
      let sym_cof = Contentfile_symbol_v.value_alone in
      
      Format.sprintf "let %s s = %s_of_%s (%s.%s s);;" 
	(entity_name sym_ent_s)
	(module_name sym_cat sym_ent_t) 
	(module_name sym_cat sym_ent_s) 
	(module_name_capitalized_suffixed sym_cat sym_ent_s sym_cof) 
	(entity_name sym_ent_l)

  | Camlline_trio_symbol_t.Let_esl_arg_equal_mst_bof_mss_space_lpar_Mss_vdot_esl_space_arg_rpar ->
      (* Ex.: 
let molecule_forked_fromid s = molecule_symbol_of_molecule_forked_symbol (Molecule_forked_symbol_v.molecule_forked_fromid s);; *)

      let sym_ent_l = sym_ent_1 in
      let sym_ent_s = sym_ent_2 in
      let sym_ent_t = sym_ent_3 in
      let sym_cof = Contentfile_symbol_v.value_alone in
      
      Format.sprintf "let %s s = %s_of_%s (%s.%s s);;" 
	(entity_name sym_ent_l)
	(module_name sym_cat sym_ent_t) 
	(module_name sym_cat sym_ent_s) 
	(module_name_capitalized_suffixed sym_cat sym_ent_s sym_cof) 
	(entity_name sym_ent_l)
;;
