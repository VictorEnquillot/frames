(** {3 The functionalities for a Value for an Camlline_uno_function of a Camlfile.}  *)

let nam_cod = "Camlline_uno_function_value_v.ml";;

(** {6 Aliases} *)

open Camlline_value_tools_v;;

(** {6 Making.} *)

let make sym_cuf soi_cal =
  let sym_cal = 
    Camlline_symbol_v.camlline_symbol_of_camlline_uno_function_symbol sym_cuf 
  in
  let tag_cal = Tag_v.make sym_cal soi_cal in
  let tag_ent_l = Camlline_formula_v.retrieve tag_cal in
  let sym_ent_l = List.map Tag_v.symbol_off_tag tag_ent_l in
  let sym_ent = uno_off_list nam_cod "make" sym_cal sym_ent_l in
  let sym_cat = Camlline_tag_v.category_symbol_off_camlline_tag tag_cal in

  match sym_cuf with
  | Camlline_uno_function_symbol_t.Let_make_sym_at_soi_at_equal ->
    (* Ex.: let make sym_mol soi_mol = *)
      Format.sprintf "let make sym_%s soi_%s ="
      (abbreviation_argument sym_ent)
      (abbreviation_argument sym_ent)

  | Camlline_uno_function_symbol_t.Space_Tag_vdot_make_sym_ast_soi_at -> 
    (* Ex.: Tag_v.make sym_mol soi_mol *)
      Format.sprintf "  Tag_v.make sym_%s soi_%s"
      (abbreviation_argument sym_ent)
      (abbreviation_argument sym_ent)

  | Camlline_uno_function_symbol_t.Let_nam_cod_equal_mat_vdot_ml ->  
      let sym_cof = 
	Camlline_tag_v.contentfile_symbol_off_camlline_tag 
	  tag_cal 
      in
      Format.sprintf "let nam_cod = \"%s.ml\";;"
	(module_name_suffixed sym_cat sym_ent sym_cof)  

  | Camlline_uno_function_symbol_t.Pipe_datastructure_ass_arrow -> 
      Format.sprintf "  | %s %s ->"
	(entity_name sym_ent)  
	(abbreviation_argument sym_ent)

  | Camlline_uno_function_symbol_t.Pipe_Mst_tdot_Est_arrow_string ->
      (* Ex.: | Vector_symbol_t.Vector -> "vector" *)
      let sym_cof = Contentfile_symbol_v.type_alone in
      Format.sprintf "  | %s.%s -> \"%s\""
	(module_name_capitalized_suffixed sym_cat sym_ent sym_cof)  
	(entity_name_capitalized sym_ent)  
	(entity_name sym_ent)  

(* making *)
 | Camlline_uno_function_symbol_t.Pipe_string_arrow_ec ->
     (* Ex.: | str -> Atom_symbol_v.o_c *)
     Format.sprintf "  | str -> %s" 
       (entity_name sym_ent) 
       
 | Camlline_uno_function_symbol_t.Pipe_ecstring_arrow_ec ->
     (* Ex.: | "O_c" -> o_c *)
     Format.sprintf "  | \"%s\" -> %s" 
       (entity_name_capitalized sym_ent) 
       (entity_name sym_ent) 
       
 | Camlline_uno_function_symbol_t.Pipe_ecstring_arrow_ec_space_sarg ->
     (* Ex.: | "Cluster_fromid" -> cluster_fromid s *)
     Format.sprintf "  | \"%s\" -> %s s" 
       (entity_name_capitalized sym_ent) 
       (entity_name sym_ent) 
       
 | Camlline_uno_function_symbol_t.Lpar_Mss_vdot_make_of_string_of_string_rpar ->
     (* Ex.: (Entity_fictive_symbol_v.make nam s) *)
     let sym_cof = Contentfile_symbol_v.value_alone in
     Format.sprintf "      (%s.make nam s)"
       (module_name_capitalized_suffixed sym_cat sym_ent sym_cof)  
       
 | Camlline_uno_function_symbol_t.Failwith_not_Ess ->
     (* Ex.: failwith "Not_Entity_fictive_symbol:entity_fictive_symbol_v.ml:make" *)
      let sym_cof = Contentfile_symbol_v.value_alone in
     Format.sprintf "    failwith \"Not_%s:%s:make\"" 
       (module_name_capitalized sym_cat sym_ent)  
       (module_name_suffixed sym_cat sym_ent sym_cof)  

 | Camlline_uno_function_symbol_t.With_failure_not_Ess_arrow ->
     (* Ex.: with Failure "Not_Entity_fictive_symbol:entity_fictive_symbol_v.ml:make" -> *)
      let sym_cof = Contentfile_symbol_v.value_alone in
     Format.sprintf "  with Failure \"Not_%s:%s:make\" ->" 
       (module_name_capitalized sym_cat sym_ent)  
       (module_name_suffixed sym_cat sym_ent sym_cof)  

 | Camlline_uno_function_symbol_t.Print_fatal_error_make_of_string_of_string ->
     (* Ex.: 
       Error_messages_v.print_fatal_error nam_cod "make"
          (Format.sprintf "strings %s %s represent an existing Entity_symbol subtype" nam s)
          "it does not exists" "Check" 
       *)
     Format.sprintf 
       "    Error_messages_v.print_fatal_error nam_cod \"make\"@.      (Format.sprintf \"strings \\\"%%s\\\" and \\\"%%s\\\" represent an existing %s subtype\" nam s)@.      \"it does not exists\"@.      \"Check file %s_v.ml\" " 
       (entity_name_capitalized sym_ent)  
       (module_name sym_cat sym_ent)  
       
(* upgrading a Topentity self *) 
  | Camlline_uno_function_symbol_t.Let_est_equal_Mst_tdot_Et ->
      (* Ex.: let vector = Vector_symbol_t.Vector *)
      let sym_cof = Contentfile_symbol_v.type_alone in
      Format.sprintf "let %s = %s.%s"
	(entity_name sym_ent)  
	(module_name_capitalized_suffixed sym_cat sym_ent sym_cof)  
	(entity_name_capitalized sym_ent)  

  | Camlline_uno_function_symbol_t.Mas_vdot_make_aas -> 
      let sym_cof = Contentfile_symbol_v.value_alone in
      Format.sprintf "      %s.make %s"
	(module_name_capitalized_suffixed sym_cat sym_ent sym_cof)
	(abbreviation_categorized_argument sym_cat sym_ent)

  | Camlline_uno_function_symbol_t.Mas_vdot_name_aas -> 
      let sym_cof = Contentfile_symbol_v.value_alone in
      Format.sprintf "      %s.name %s"
	(module_name_capitalized_suffixed sym_cat sym_ent sym_cof)
	(abbreviation_categorized_argument sym_cat sym_ent)

  | Camlline_uno_function_symbol_t.Mas_vdot_longname_aas -> 
      let sym_cof = Contentfile_symbol_v.value_alone in
      Format.sprintf "      %s.longname %s"
	(module_name_capitalized_suffixed sym_cat sym_ent sym_cof)
	(abbreviation_categorized_argument sym_cat sym_ent)

  | Camlline_uno_function_symbol_t.Mas_vdot_string_off_aas -> 
      let sym_cof = Contentfile_symbol_v.value_alone in
      Format.sprintf "      %s.string_off %s"
	(module_name_capitalized_suffixed sym_cat sym_ent sym_cof)
	(abbreviation_categorized_argument sym_cat sym_ent)

  | Camlline_uno_function_symbol_t.Mas_pppf_aas ->  
      Utils_v.not_yet_implemented nam_cod "as_pppf_as" 

  | Camlline_uno_function_symbol_t.Title_category ->  
      Format.sprintf "(** {3 The %s for a %s.}  *)"
	(category_name_capitalized sym_cat)
	(module_name_capitalized sym_cat sym_ent)

  | Camlline_uno_function_symbol_t.Title_functionalities ->  
      Format.sprintf "(** {3 The functionalities for a %s for a %s.}  *)"
	(category_name_capitalized sym_cat)
	(module_name_capitalized sym_cat sym_ent)

  | Camlline_uno_function_symbol_t.Left_off_doublet -> 
      Format.sprintf "  Doublet_v.left_off_doublet %s"
	(abbreviation_argument sym_ent)

  | Camlline_uno_function_symbol_t.Right_off_doublet ->  
      Format.sprintf "  Doublet_v.right_off_doublet %s"
	(abbreviation_argument sym_ent)

  | Camlline_uno_function_symbol_t.Left_off_triplet ->  
      Format.sprintf "  Triplet_v.left_off_triplet %s"
	(abbreviation_argument sym_ent)

  | Camlline_uno_function_symbol_t.Middle_off_triplet ->
      Format.sprintf "  Triplet_v.middle_off_triplet %s"
	(abbreviation_argument sym_ent)

  | Camlline_uno_function_symbol_t.Right_off_triplet -> 
      Format.sprintf "  Triplet_v.right_off_triplet %s"
	(abbreviation_argument sym_ent)

  | Camlline_uno_function_symbol_t.Format_sprintf_longname_ass_string_off_ass ->
      let str ="Format.sprintf %s \"%s\"" in
      Format.sprintf " %s (longname %s) (string_off %s)" 
	str 
	(abbreviation_argument sym_ent)
	(abbreviation_argument sym_ent)

 | Camlline_uno_function_symbol_t.Let_fullname_ass_equal ->
     Format.sprintf "let fullname %s ="
       (abbreviation_argument sym_ent)

 | Camlline_uno_function_symbol_t.Space_Tag_vdot_name_Mst_vdot_name_att ->
 (* Ex.:   Tag_v.name Atom_symbol_v.name tag_ato *) 

      let sym_cof = 
	Camlline_tag_v.contentfile_symbol_off_camlline_tag 
	  tag_cal 
      in
      Format.sprintf "  Tag_v.name %s.name %s"
	(module_name_capitalized_suffixed Category_symbol_t.Symbol sym_ent sym_cof)  
	(abbreviation_categorized_argument sym_cat sym_ent)

 | Camlline_uno_function_symbol_t.Let_name_att_equal ->
     Format.sprintf "let name %s ="
       (abbreviation_categorized_argument sym_cat sym_ent)

;;

