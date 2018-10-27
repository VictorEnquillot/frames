(** {3 Translates a Entity_symbol to a Couple Entity_symbol_list with Camlline_symbol for a Camlparagraph_symbol_tag .}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Entity_symbol_path_list_by_camlparagraph_septup_provider_v";
   "Needs : IGNR:Entity_symbol_list_camlline_symbol_doublet_list_for_camlparagraph_any_v";
   "Needs : IGNR:Camlparagraph_endmarked_let_argument_proformula_for_symbol_v";
   "Current : IGNR:Entity_symbol_list_camlline_symbol_doublet_list_for_camlparagraph_symbol_v";
   "Needed-by : IGNR:Entity_symbol_list_camlline_symbol_doublet_list_by_camlparagraph_septup_provider_v";
   "What-is-it : It associates a Camlline Symbol with an Entity Symbol list (its formula) in the Context of some Camlparagraph Symbol";
   "What-is-it : It associates a Camlline Symbol with an Entity Symbol list (its formula)";
   "Improve : All Item should give doublet_list";
   "Improve : Information should be read from specific Database : GNR:generatorset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Translating} *)

(* Typing : one Camlparagraph *)

let typing_couple_of_contentfile_symbol_of_entity_symbol_path sym_cof pat_sym_ent =
  let pat_dep = List.length pat_sym_ent in
  let sym_ent_top = List_v.ultimate_element_off_list pat_sym_ent in
  let sym_ent_cur = List.hd pat_sym_ent in

  match sym_ent_cur with
  | Entity_symbol_t.Entity_proper_symbol 
      (Entity_proper_symbol_t.Entity_proper_top_symbol s) ->
	begin
	  match sym_cof with
	  | Contentfile_symbol_t.Type_alone -> 
	      ([sym_ent_cur], Camlline_symbol_v.type_et_symbol_equal)
		
	  | Contentfile_symbol_t.Type_n_value -> 
	      ([sym_ent_cur], Camlline_symbol_v.type_et_symbol_equal_private)

	  | Contentfile_symbol_t.Value_alone -> 
	      failwith "Type needed. Value_alone is nonsense"
	end
	  
  | Entity_symbol_t.Entity_proper_symbol 
      (Entity_proper_symbol_t.Entity_proper_son_symbol _) ->
	
	([sym_ent_cur], Camlline_symbol_v.pipe_es_symbol_of_es_symbol_tdot_es_symbol)
	  
  | Entity_symbol_t.Entity_fictive_symbol 
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol 
	 (Entity_fictive_nullary_symbol_t.Sonnullary s)) ->
	   
	   ([sym_ent_cur], Camlline_symbol_v.pipe_esl)

  | Entity_symbol_t.Entity_proper_symbol 
      (Entity_proper_symbol_t.Selfentity s) ->
	begin
	  match pat_dep with 
          (*** Improve need two Symbols Topselfentity Sonselfentity *)
	  | 1 ->
              (* Ex.: type vector_symbol = Vector *)
 	      ([sym_ent_cur], Camlline_symbol_v.type_et_symbol_equal_et_symbol)	
	  | _ -> 
              (* Ex.:  | Geometryset_vector_symbol of Vector_symbol_t.vector_symbol *)
	      ([sym_ent_cur], Camlline_symbol_v.pipe_es_symbol_of_es_symbol_tdot_es_symbol)
	end	  

  | Entity_symbol_t.Entity_fictive_symbol 
      (Entity_fictive_symbol_t.Entity_builder_basic_symbol _) ->

	   ([sym_ent_cur; sym_ent_top], 
	    Camlline_symbol_v.pipe_es_symbol_constructor_of_b) 

  | sym_ent_c ->
      Error_messages_v.print_fatal_error nam_cod 
	"typing_camlline_symbol_of_contentfile_symbol_of_entity_current_symbol"
	"Entity_symbol is Topentity|Sonentity|Sonnullary)"
	(Format.sprintf ">%s<" (Entity_symbol_v.longname sym_ent_c))
	"Check Entity_symbol_path_list_by_camlparagraph_septup_provider_v"	 
;;

(* Type *)

(* Type_for_symbol *)

let couple_list_of_camlparagraph_endmarked_type_for_symbol sym_cpe soi_cap =
  let tag_cap = 
    Camlparagraph_tag_v.camlparagraph_tag_of_camlparagraph_endmarked_tag
      (sym_cpe, soi_cap) 
  in
  let sym_cof = 
    Camlparagraph_tag_v.contentfile_symbol_off_camlparagraph_tag 
      tag_cap 
  in
  let pat_sym_ent_l = 
    Entity_symbol_path_list_by_camlparagraph_septup_provider_v.provide
      tag_cap 
  in
  let dol_l = List.map 
      (typing_couple_of_contentfile_symbol_of_entity_symbol_path
      sym_cof) pat_sym_ent_l
  in
  
  dol_l @ [([], Camlline_symbol_v.double_semicolon)]
;;

(* Module_definition *)

let couple_list_of_camlparagraph_endmarked_module sym_cpe soi_cap =
  let tag_cap = 
    Camlparagraph_tag_v.camlparagraph_tag_of_camlparagraph_endmarked_tag
      (sym_cpe, soi_cap) in
  let sym_cof =
    Camlparagraph_tag_v.contentfile_symbol_off_camlparagraph_tag tag_cap 
  in
  let pat_sym_ent_l = 
    Entity_symbol_path_list_by_camlparagraph_septup_provider_v.provide
      tag_cap 
  in

  let sym_ent_cur = List.hd (List.hd pat_sym_ent_l) in
  
  match sym_cof with
  | Contentfile_symbol_t.Type_alone ->
	 
	 [([sym_ent_cur], Camlline_symbol_v.module_ax_t_equal_x_t)]
	   
  | Contentfile_symbol_t.Value_alone ->
	 
	 [([sym_ent_cur], Camlline_symbol_v.module_ax_t_equal_x_t);
	  ([sym_ent_cur], Camlline_symbol_v.module_ax_v_equal_x_v)]
	   
  | Contentfile_symbol_t.Type_n_value ->
	 
	 [([sym_ent_cur], Camlline_symbol_v.module_ax_p_equal_x_p)]
	   
;;

(* Let_abbreviate *)

let couple_list_of_let_abbreviate_inself pat_sym_ent =
  let sym_ent_top = 
    List_v.ultimate_element_off_list pat_sym_ent 
  in 
  
  [([sym_ent_top], 
    Camlline_symbol_v.let_et_symbol_equal_et_symbol_tdot_et)]
;;

let couple_list_of_let_abbreviate_inancestorself pat_sym_ent =

  let sym_ent_top = 
    List_v.ultimate_element_off_list pat_sym_ent
  in 
  let sym_ent_cur = 
    List_v.first_element_off_list pat_sym_ent
  in 
  
  [([sym_ent_cur; sym_ent_top], 
    Camlline_symbol_v.let_es_equal_et_symbol_of_es_symbol_es_symbol_vdot_es)]
;;

let couple_list_of_let_abbreviate_infather pat_sym_ent =
  
  let sym_ent_top = 
    List_v.ultimate_element_off_list pat_sym_ent
  in 
  let sym_ent_cur = 
    List_v.first_element_off_list pat_sym_ent
  in 
  
  match sym_ent_cur with 
  | Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_builder_basic_symbol _) ->
	   
      [([sym_ent_cur; sym_ent_top], 
	Camlline_symbol_v.let_es_symbol_arg_equal_et_symbol_tdot_es_symbol_arg)]

  | _ ->
      [([sym_ent_cur; sym_ent_top], 
	Camlline_symbol_v.let_es_equal_et_symbol_tdot_es)]
;;

let couple_list_of_let_abbreviate_ingrandfather pat_sym_ent =
  let sym_ent_top = 
    List_v.ultimate_element_off_list pat_sym_ent 
  in 
  let sym_ent_son = 
    List_v.penultimate_element_off_list pat_sym_ent
  in 
  let sym_ent_cur = 
    List_v.first_element_off_list pat_sym_ent
  in 
  
  [([sym_ent_cur; sym_ent_son; sym_ent_top], 
    Camlline_symbol_v.let_esl_equal_et_symbol_of_es_symbol_es_symbol_vdot_esl)]
;;

let couple_list_of_let_abbreviate_topson_basicnullary pat_sym_ent =
(* Ex.: 
   let molecule_forked_fromid s = Point_symbol_t.Fromid s;;
   let a = point "a";; Not yet 
*)

  let sym_ent_top = 
    List_v.ultimate_element_off_list pat_sym_ent
  in 
  let sym_ent_son = 
    List_v.penultimate_element_off_list pat_sym_ent
  in 
  
  [([sym_ent_son; sym_ent_top], 
    Camlline_symbol_v.let_es_symbol_arg_equal_et_symbol_tdot_es_symbol_arg)]
;;
 
let couple_list_of_let_abbreviate_grandson_basicnullary pat_sym_ent =
(* Ex.: 
   let molecule_forked_fromid s = molecule_symbol_of_molecule_forked_symbol (Molecule_forked_symbol_v.molecule_forked_fromid s);;
   
    let point s = geometryset_symbol_of_point_symbol (Point_symbol_v.point s);; 
    let a = point "a";; Not yet
*)
  let sym_ent_top = 
    List_v.ultimate_element_off_list pat_sym_ent
  in 
  let sym_ent_son = 
    List_v.penultimate_element_off_list pat_sym_ent
  in 
  let sym_ent_cur = 
    List_v.first_element_off_list pat_sym_ent
  in 
(*    
  [([sym_ent_cur; sym_ent_son; sym_ent_top], 
    Camlline_symbol_v.let_es_symbol_arg_equal_et_symbol_of_es_symbol_lpar_es_symbol_vdot_esl_arg_rpar)]
 *)
  
  [([sym_ent_cur; sym_ent_son; sym_ent_top], 
    Camlline_symbol_v.let_esl_arg_equal_et_symbol_of_es_symbol_lpar_es_symbol_vdot_esl_arg_rpar)]
;;

let couple_list_of_let_abbreviate_topson_nullary pat_sym_ent =
  Utilities_v.not_yet_implemented nam_cod "couple_list_of_let_abbreviate_topson_nullary"
;;

let couple_list_of_let_abbreviate_grandson_nullary pat_sym_ent =
  Utilities_v.not_yet_implemented nam_cod "couple_list_of_let_abbreviate_grandson_nullary"
;;

(* Let_abbreviate_topson_nullary *)

let couple_list_of_let_nullary_upgrade pat_sym_ent =
  let sym_ent_top = 
    List_v.ultimate_element_off_list pat_sym_ent
  in 
  let sym_ent_son = 
    List_v.penultimate_element_off_list pat_sym_ent
  in 
  let sym_ent_cur = 
    List_v.first_element_off_list pat_sym_ent 
  in

  match sym_ent_cur with
  | Entity_symbol_t.Entity_fictive_symbol 
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol 
	 (Entity_fictive_nullary_symbol_t.Sonnullary s)) ->
	   (* Ex.: let ar = Atom_zerotied_anion_minusone_symbol_t.Ar;;*)
	   [
	    ([sym_ent_cur; sym_ent_top], 
	     Camlline_symbol_v.let_es_equal_et_symbol_tdot_es)
	  ]
	     
  | Entity_symbol_t.Entity_proper_symbol 
      (Entity_proper_symbol_t.Selfentity _) ->
	(* Ex.: let vector = Vector_symbol_t.Vector;;*)
	[
	 ([sym_ent_top], 
	  Camlline_symbol_v.let_et_symbol_equal_et_symbol_tdot_et)
       ]

  | _ ->
      
      [([sym_ent_cur; sym_ent_son; sym_ent_top], 
	Camlline_symbol_v.let_esl_equal_et_symbol_of_es_symbol_es_symbol_vdot_esl)]
	
(* Only leaves three cases : 
   let vector = Vector_symbol_t.vector;;
   let ar = Atom_zerotied_raregas_symbol_t.Ar;;
   let ar = atom_symbol_of_atom_zerotied_raregas_symbol Atom_zerotied_raregas_symbol_t.Ar;; 
*)
;;

(* Camlparagraph_endmarked_let *)

let couple_list_of_camlparagraph_endmarked_let sym_cel soi_cap =
  let tag_cap = 
    Camlparagraph_tag_v.camlparagraph_tag_of_camlparagraph_endmarked_let_tag   
      (sym_cel, soi_cap) 
  in
  let pat_sym_ent_l = 
    Entity_symbol_path_list_by_camlparagraph_septup_provider_v.provide
      tag_cap 
  in
  
  let pat_sym_ent = List.hd pat_sym_ent_l in
  
  match sym_cel with 
  | Camlparagraph_let_symbol_t.Camlparagraph_let_argument_symbol sym_laf -> 
      
      Camlparagraph_for_symbol_let_argument_proformula_v.couple_list_of_camlparagraph_let_argument sym_laf soi_cap
	
  | Camlparagraph_let_symbol_t.Camlparagraph_let_argument_symbol sym_ela -> 
      
      Camlparagraph_endmarked_let_argument_proformula_for_symbol_v.couple_list_of_camlparagraph_endmarked_let_argument sym_ela soi_cap
	
  | Camlparagraph_let_symbol_t.Camlparagraph_let_match_symbol sym_elf -> 
      
      Camlparagraph_for_symbol_let_match_proformula_v.couple_list_of_camlparagraph_endmarked_let_function sym_elf soi_cap
	
  | Camlparagraph_let_symbol_t.Let_abbreviate_topson_nullary -> 
      couple_list_of_let_abbreviate_topson_nullary pat_sym_ent
	
  | Camlparagraph_let_symbol_t.Let_abbreviate_topson_basicnullary -> 
      couple_list_of_let_abbreviate_topson_basicnullary pat_sym_ent
	
  | Camlparagraph_let_symbol_t.Let_abbreviate_inself -> 
      couple_list_of_let_abbreviate_inself pat_sym_ent
	
  | Camlparagraph_let_symbol_t.Let_abbreviate_inancestorself -> 
      couple_list_of_let_abbreviate_inancestorself pat_sym_ent
	
  | Camlparagraph_let_symbol_t.Let_abbreviate_infather -> 
      couple_list_of_let_abbreviate_infather pat_sym_ent
	
  | Camlparagraph_let_symbol_t.Let_abbreviate_ingrandfather -> 
      couple_list_of_let_abbreviate_ingrandfather pat_sym_ent
	
  | Camlparagraph_let_symbol_t.Let_abbreviate_grandson_basicnullary -> 
      couple_list_of_let_abbreviate_grandson_basicnullary pat_sym_ent
	
  | Camlparagraph_let_symbol_t.Let_abbreviate_grandson_nullary -> 
      couple_list_of_let_abbreviate_grandson_nullary pat_sym_ent
	
;;

(* Camlparagraph_endmarked_val *)

let couple_list_of_camlparagraph_endmarked_val sym_cev soi_cap =
  Utilities_v.not_yet_implemented nam_cod "couple_list_of_camlparagraph_endmarked_val"
;;

let translate_and_couple sym_cap soi_cap =
  match sym_cap with
  | Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol sym_cpc ->
      Entity_symbol_list_camlline_symbol_doublet_list_for_camlparagraph_any_v.translate_and_couple tag_cap  

  | Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol sym_cpe ->
      match sym_cpe with
      | Camlparagraph_endmarked_symbol_t.Camlparagraph_let_symbol sym_cel ->
	  couple_list_of_camlparagraph_endmarked_let sym_cel soi_cap
	    
      | Camlparagraph_endmarked_symbol_t.Module_definition ->
	  couple_list_of_camlparagraph_endmarked_module sym_cpe soi_cap

      | Camlparagraph_endmarked_symbol_t.Type_for_symbol -> 
	  couple_list_of_camlparagraph_endmarked_type_for_symbol sym_cpe soi_cap
	    
      | Camlparagraph_endmarked_symbol_t.Type_for_tag -> 
	  Error_messages_v.print_fatal_error nam_cod "translate_and_couple for Tag"
	    "Category is Symbol" "Category is Tag" "Check"

      | Camlparagraph_endmarked_symbol_t.Type_for_mark -> 
	  Error_messages_v.print_fatal_error nam_cod "translate_and_couple for Mark"
	    "Category is Symbol" "Category is Mark" "Check"

      | Camlparagraph_endmarked_symbol_t.Type_for_formula ->
	  Error_messages_v.print_fatal_error nam_cod "translate_and_couple for Formula"
	    "Category is Symbol" "Category is Formula" "Check"

      | Camlparagraph_endmarked_symbol_t.Type_for_value -> 
	  Error_messages_v.print_fatal_error nam_cod "translate_and_couple for Value"
	    "Category is Symbol" "Category is Value" "Check"
	    
      | Camlparagraph_endmarked_symbol_t.Camlparagraph_val_symbol 
	  sym_cev ->
	  couple_list_of_camlparagraph_endmarked_val sym_cev soi_cap
;; 
