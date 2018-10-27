(** {3 The functionalities for a Value for an Camlline_datastructure_function of a Camlfile.}  *)

let nam_cod = "Camlline_datastructure_function_value_v.ml";;

(** {6 Aliases} *)

open Camlline_value_tools_v;;

(** {6 Making.} *)

let make sym_cdf soi_cal =
Utils_v.not_yet_implemented nam_cod "make"
(*
  let sym_cal = 
    Camlline_symbol_v.camlline_symbol_of_camlline_datastructure_function_symbol sym_cdf 
  in
  let tag_cal = Tag_v.make sym_cal soi_cal in
  let tag_ent_l = Camlline_formula_v.retrieve tag_cal in
  let sym_ent_l = List.map Tag_v.symbol_off_tag tag_ent_l in
  let (sym_ent_1, sym_ent_2) = pair_off_list nam_cod "make" sym_cal sym_ent_l in
  let sym_cat = Camlline_tag_v.category_symbol_off_camlline_tag tag_cal in
  let sym_ite = Camlline_tag_v.item_symbol_off_camlline_tag tag_cal in
  let sym_cof_typ = Contentfile_symbol_v.type_alone in
  let sym_cof_val = Contentfile_symbol_v.value_alone in
  let sym_cat_sym = Category_symbol_v.symbol in

  match sym_cdf with
(* T S *)
  | Camlline_datastructure_function_symbol_t.Pipe_Mst_tdot_Mss_space_ass_arrow ->
    (* Ex.: | Atom_symbol_t.Atom_zerotied_symbol sym_aze -> *)
      let sym_ent_s = sym_ent_1 in
      let sym_ent_t = sym_ent_2 in

      Format.sprintf "  | %s.%s %s ->"
	(module_name_capitalized_suffixed sym_cat sym_ent_t sym_cof_typ) 
	(module_name_capitalized sym_cat sym_ent_s) 
	(abbreviation_categorized_argument sym_cat sym_ent_s)

  | Camlline_datastructure_function_symbol_t.Pipe_Mst_tdot_Mss_space_ass_arrow_ass ->
    (* Ex.: | Atom_symbol_t.Atom_zerotied sym_aze -> sym_aze *) 
      let sym_ent_s = sym_ent_1 in
      let sym_ent_t = sym_ent_2 in

      Format.sprintf "  | %s.%s %s -> %s"
	(module_name_capitalized_suffixed sym_cat sym_ent_t sym_cof_typ) 
	(module_name_capitalized sym_cat sym_ent_s) 
	(abbreviation_categorized_argument sym_cat sym_ent_s)
	(abbreviation_categorized_argument sym_cat sym_ent_s)

  | Camlline_datastructure_function_symbol_t.Pipe_Est_tdot_Ess_underscore_arrow_string ->
    (* Ex.: | Point_symbol_t.Fromid _ -> "fromid" *) 
      let sym_ent_s = sym_ent_1 in
      let sym_ent_t = sym_ent_2 in

      Format.sprintf "  | %s.%s _ -> \"%s\""
	(module_name_capitalized_suffixed sym_cat sym_ent_t sym_cof_typ) 
	(entity_name_capitalized sym_ent_s) 
	(entity_name sym_ent_s)

(* naming T L *) 
  | Camlline_datastructure_function_symbol_t.Pipe_Mst_tdot_Esl_arrow_string ->
    (* Ex.: | Atom_onetied_conjugated_symbol_t.O_c -> "o_c" *)
      let sym_ent_l = sym_ent_1 in
      let sym_ent_t = sym_ent_2 in

      Format.sprintf "  | %s.%s -> \"%s\""
	(module_name_capitalized_suffixed sym_cat sym_ent_t sym_cof_typ)
	(entity_name_capitalized sym_ent_l) 
	(entity_name sym_ent_l) 

  | Camlline_datastructure_function_symbol_t.Pipe_Mst_tdot_Esl_arrow_ffppf_l ->
      Utils_v.not_yet_implemented nam_cod "Pipe_Mst_tdot_Esl_arrow_ffppf_l"

  | Camlline_datastructure_function_symbol_t.Pipe_string_arrow_Mst_tdot_Ec_space_string ->
    (* Ex.: | str -> Cluster_symbol_t.Cluster_fromid str *)
      let sym_ent_c = sym_ent_1 in
      let sym_ent_t = sym_ent_2 in

      Format.sprintf "  | str -> %s.%s str"
        (module_name_capitalized_suffixed sym_cat sym_ent_t sym_cof_typ)
        (entity_name_capitalized sym_ent_c)

  | Camlline_datastructure_function_symbol_t.Pipe_ecstring_arrow_Mst_tdot_Ec_space_string ->
    (* Ex.: | "cluster_fromid" -> Cluster_symbol_t.Cluster_fromid s *)
      let sym_ent_c = sym_ent_1 in
      let sym_ent_t = sym_ent_2 in

      Format.sprintf "  | \"%s\" -> %s.%s s"
	(entity_name sym_ent_c)
        (module_name_capitalized_suffixed sym_cat sym_ent_t sym_cof_typ)
        (entity_name_capitalized sym_ent_c)

  | Camlline_datastructure_function_symbol_t.Pipe_Efs_bof_b 
  | Camlline_datastructure_function_symbol_t.Pipe_Ess_bof_b ->
    (* Ex.: | Fromid of string *)
      let sym_ent_s = sym_ent_1 in
      let nam_ent = Entity_symbol_v.string_off sym_ent_s in
      let nam_bas = Entity_symbol_v.name sym_ent_s in

      Format.sprintf "  | %s of %s"
	(String.capitalize nam_ent)
	(nam_bas)

(* extracting let first line. son case *)
  | Camlline_datastructure_function_symbol_t.Let_mss_off_mst_equal_function ->
      let sym_ent_s = sym_ent_1 in
      let sym_ent_t = sym_ent_2 in
      Format.sprintf "let %s_off_%s = function" 
	(module_name sym_cat sym_ent_s) 
	(module_name sym_cat sym_ent_t) 

(* extracting let first line. current case *)
  | Camlline_datastructure_function_symbol_t.Let_mac_off_mat_space_aat_equal ->
      let sym_ent_c = sym_ent_1 in
      let sym_ent_t = sym_ent_2 in
      Format.sprintf "let %s_off_%s %s = " 
	(module_name sym_cat sym_ent_c) 
	(module_name sym_cat sym_ent_t) 
	(abbreviation_categorized_argument sym_cat sym_ent_t)

(* extracting let second line *)
  | Camlline_datastructure_function_symbol_t.Let_ass_equal_mss_off_mst_space_ast_in -> 
      let sym_ent_s = sym_ent_1 in
      let sym_ent_t = sym_ent_2 in
      let space = function
	| s when Item_symbol_v.is_querying s -> "     "
	| _ -> "  "
      in
      Format.sprintf "%slet %s = %s_off_%s %s in "
	(space sym_ite)
	(abbreviation_categorized_argument sym_cat sym_ent_s)  
	(module_name sym_cat sym_ent_s) 
	(module_name sym_cat sym_ent_t)
	(abbreviation_categorized_argument sym_cat sym_ent_t)
	
(* extracting let third line *)
  | Camlline_datastructure_function_symbol_t.Ass_vdot_msc_off_mss_space_ass ->        
      let sym_ent_c = sym_ent_1 in
      let sym_ent_s = sym_ent_2 in

      Format.sprintf "    %s.%s_off_%s %s"
	(module_name_capitalized_suffixed sym_cat sym_ent_s sym_cof_val)  
	(module_name sym_cat sym_ent_c) 
	(module_name sym_cat sym_ent_s) 
	(abbreviation_categorized_argument sym_cat sym_ent_s)

(* extracting print_fatal_error third line *)
  | Camlline_datastructure_function_symbol_t.Pipe_print_fatal_error_mss_off_mst_4_lines -> 
      let sym_ent_s = sym_ent_1 in
      let sym_ent_t = sym_ent_2 in
      Format.sprintf "  | %s -> Error_messages_v.print_fatal_error\
      @.      nam_cod \"%s_off_%s\"\
      @.      \"%s\"\
      @.      (name %s) \"check\""
	  (abbreviation_categorized_argument sym_cat sym_ent_t)
	  (module_name sym_cat sym_ent_s) 
	  (module_name sym_cat sym_ent_t) 
	  (module_name_capitalized sym_cat sym_ent_s) 
	  (abbreviation_categorized_argument sym_cat sym_ent_t)

(* querying let first line *)
  | Camlline_datastructure_function_symbol_t.Let_is_mas_off_mat_equal_function ->  
      let sym_ent_s = sym_ent_1 in
      let sym_ent_t = sym_ent_2 in
      Format.sprintf "let is_%s_off_%s = function" 
	(module_name sym_cat sym_ent_s) 
	(module_name sym_cat sym_ent_t) 

  | Camlline_datastructure_function_symbol_t.Let_is_mac_off_mat_space_aat_equal ->
      let sym_ent_c = sym_ent_1 in
      let sym_ent_t = sym_ent_2 in
      Format.sprintf "let is_%s_off_%s %s =" 
	(module_name sym_cat sym_ent_c) 
	(module_name sym_cat sym_ent_t) 
	(abbreviation_categorized_argument sym_cat sym_ent_t)

(* querying let second line *)
  | Camlline_datastructure_function_symbol_t.Pipe_Mst_tdot_Mss_arrow_true ->
      let sym_ent_s = sym_ent_1 in
      let sym_ent_t = sym_ent_2 in

      Format.sprintf "  | %s.%s _ -> true"
        (module_name_capitalized_suffixed sym_cat sym_ent_t sym_cof_typ)
	(module_name_capitalized sym_cat sym_ent_s) 

  | Camlline_datastructure_function_symbol_t.If_not_is_mss_off_mst_space_ast ->
      let sym_ent_s = sym_ent_1 in
      let sym_ent_t = sym_ent_2 in

      Format.sprintf "  if not (is_%s_off_%s %s)"
        (module_name sym_cat sym_ent_s) 
	(module_name sym_cat sym_ent_t) 
	(abbreviation_categorized_argument sym_cat sym_ent_t)

(* querying begin second line *)
  | Camlline_datastructure_function_symbol_t.Ass_vdot_is_msc_off_mss_space_ass -> 
      let sym_ent_c = sym_ent_1 in
      let sym_ent_s = sym_ent_2 in

      Format.sprintf "     %s.is_%s_off_%s %s"
	(module_name_capitalized_suffixed sym_cat sym_ent_s sym_cof_val)
        (module_name sym_cat sym_ent_c) 
	(module_name sym_cat sym_ent_s) 
	(abbreviation_categorized_argument sym_cat sym_ent_s)

 (* upgrading let first line for a son *)  
  | Camlline_datastructure_function_symbol_t.Let_mat_of_mas_space_aas_equal ->
      let sym_ent_s = sym_ent_1 in
      let sym_ent_t = sym_ent_2 in

      Format.sprintf "let %s_of_%s %s = " 
	(module_name sym_cat sym_ent_t) 
	(module_name sym_cat sym_ent_s) 
	(abbreviation_categorized_argument sym_cat sym_ent_s)

 (* upgrading let second line for a son *)  
  | Camlline_datastructure_function_symbol_t.Mst_tdot_Mss_space_ass ->
      let sym_ent_s = sym_ent_1 in
      let sym_ent_t = sym_ent_2 in

      Format.sprintf "  %s.%s %s" 
	(module_name_capitalized_suffixed sym_cat sym_ent_t sym_cof_typ) 
	(module_name_capitalized sym_cat sym_ent_s) 
	(abbreviation_categorized_argument sym_cat sym_ent_s)

(* upgrading let first line current case *)
  | Camlline_datastructure_function_symbol_t.Let_mat_of_mac_space_aac_equal ->
      let sym_ent_c = sym_ent_1 in
      let sym_ent_t = sym_ent_2 in

      Format.sprintf "let %s_of_%s %s = " 
	(module_name sym_cat sym_ent_t) 
	(module_name sym_cat sym_ent_c) 
	(abbreviation_categorized_argument sym_cat sym_ent_c)

(* upgrading let second line *)
  | Camlline_datastructure_function_symbol_t.Let_ass_equal_As_vdot_mss_of_msc_space_asc_in ->
      let sym_ent_c = sym_ent_1 in
      let sym_ent_s = sym_ent_2 in

      Format.sprintf "  let %s = %s.%s_of_%s %s in" 
	(abbreviation_categorized_argument sym_cat sym_ent_s)
	(module_name_capitalized_suffixed sym_cat sym_ent_s sym_cof_val)
	(module_name sym_cat sym_ent_s) 
	(module_name sym_cat sym_ent_c) 
	(abbreviation_categorized_argument sym_cat sym_ent_c)

(* upgrading let third line *)
  | Camlline_datastructure_function_symbol_t.Space_mst_of_mss_space_ass ->
      let sym_ent_s = sym_ent_1 in
      let sym_ent_t = sym_ent_2 in

      Format.sprintf "    %s_of_%s %s" 
	(module_name sym_cat sym_ent_t) 
	(module_name sym_cat sym_ent_s) 
	(abbreviation_categorized_argument sym_cat sym_ent_s)

(* abbreviating a Leaf in a Father Entity when path length = 2 
   or in itself for a Self *)
  |  Camlline_datastructure_function_symbol_t.Let_ess_equal_Mst_tdot_Ess ->
      (* Ex.: let ar = Atom_zerotied_raregas_symbol_t.Ar;;*)
      let sym_ent_s = sym_ent_1 in
      let sym_ent_t = sym_ent_2 in
 
      Format.sprintf "let %s = %s.%s;;" 
	(entity_name sym_ent_s)
	(module_name_capitalized_suffixed sym_cat sym_ent_t sym_cof_typ) 
	(entity_name_capitalized sym_ent_s)

(* abbreviating a Leaf in a Father for Self *)
  | Camlline_datastructure_function_symbol_t.Let_esl_equal_mst_of_msl_space_Msl_vdot_esl ->
  (* Ex.: let vector = geometryset_symbol_of_vector_symbol 
                           Vector_symbol_v.vector;; *)
      let sym_ent_s = sym_ent_1 in
      let sym_ent_t = sym_ent_2 in
 
      Format.sprintf "let %s = %s_of_%s %s.%s;;" 
	(entity_name sym_ent_s)
	(module_name sym_cat sym_ent_t) 
	(module_name sym_cat sym_ent_s) 
	(module_name_capitalized_suffixed sym_cat sym_ent_s sym_cof_val)
	(entity_name sym_ent_s)

(* abbreviating a Basicnullary *)
  | Camlline_datastructure_function_symbol_t.Let_ess_arg_equal_Mst_tdot_Ess_space_arg ->
      (* Ex.: let fromid s = Point_symbol_t.Fromid s *)
      let sym_ent_s = sym_ent_1 in
      let sym_ent_t = sym_ent_2 in
 
      Format.sprintf "let %s s = %s.%s s;;" 
	(entity_name sym_ent_s)
	(module_name_capitalized_suffixed sym_cat sym_ent_t sym_cof_typ) 
	(entity_name_capitalized sym_ent_s)

(* Tag *)
  | Camlline_datastructure_function_symbol_t.Space_Tag_vdot_map_left_space_Mst_vdot_msc_off_mst_space_att ->
   (* Ex.: Tag_v.map_left Atom_symbol_v.atom_zerotied_symbol_off_atom_symbol tag_ato *) 
      let sym_ent_s = sym_ent_1 in
      let sym_ent_t = sym_ent_2 in
  
      Format.sprintf "  Tag_v.map_left %s.%s_off_%s %s"
	(module_name_capitalized_suffixed sym_cat_sym sym_ent_t sym_cof_val) 
	(module_name sym_cat_sym sym_ent_s)
	(module_name sym_cat_sym sym_ent_t)
	(abbreviation_categorized_argument sym_cat sym_ent_t)

  | Camlline_datastructure_function_symbol_t.Space_Tag_vdot_map_left_space_Mst_vdot_is_msc_off_mst_space_att ->
   (* Ex.:  Tag_v.map_left Atom_symbol_v.is_atom_zerotied_symbol_off_atom_symbol tag_ato *) 
      let sym_ent_s = sym_ent_1 in
      let sym_ent_t = sym_ent_2 in
 
      Format.sprintf "  Tag_v.map_left %s.is_%s_off_%s %s"
	(module_name_capitalized_suffixed sym_cat_sym sym_ent_t sym_cof_val) 
	(module_name sym_cat_sym sym_ent_s)
	(module_name sym_cat_sym sym_ent_t)
	(abbreviation_categorized_argument sym_cat sym_ent_t)

  | Camlline_datastructure_function_symbol_t.Space_Tag_vdot_map_left_space_Mst_vdot_mst_of_msc_space_atc ->
   (* Ex.:  Tag_v.map_left Atom_symbol_v.atom_symbol_off_atom_zerotied_symbol tag_atz *) 
      let sym_ent_s = sym_ent_1 in
      let sym_ent_t = sym_ent_2 in
 
      Format.sprintf "  Tag_v.map_left %s.%s_of_%s %s"
	(module_name_capitalized_suffixed sym_cat_sym sym_ent_t sym_cof_val) 
	(module_name sym_cat_sym sym_ent_t)
	(module_name sym_cat_sym sym_ent_s)
	(abbreviation_categorized_argument sym_cat sym_ent_s)
*)
;;
