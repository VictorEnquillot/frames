let nam_cod = "Tools_fgnr_v.ml";;

let element_of_once_entity_symbol_list fullname sym_ent_l =
  let nam_fun = "element_of_once_entity_symbol_list" in

  if not (List_v.is_once_list_of_list sym_ent_l)
  then
    Error_messages_v.print_fatal_error nam_cod nam_fun
      "Entity_symbol list were a Once list" 
      (Format.sprintf "Entity_symbol list is:@.   %s"
	 (List_v.name_with_separator fullname "\n  " sym_ent_l)
      )
      "Check formulas.dat file" 
  else
    List.hd sym_ent_l
;;

let store_builder_gss_datastructure sym_gss_of_sym_any sym_son_l soi_son_l =
  let gss_son_l = List.map sym_gss_of_sym_any sym_son_l in
  List.iter2 Generatorset_symbol_by_sole_index_register_v.store soi_son_l gss_son_l 
;;

(** {6 Getting Any_index and Any_symbol from a lower Sole_index} *)

(** {9 Domain} *)

let is_domain_generatorset_symbol_of_generatorset_symbol sym_gss =
  Generatorset_symbol_v.is_domain_symbol_off_generatorset_symbol sym_gss
;;

let domain_sole_index_off_lower_sole_index soi_low =
  let gss_pre = is_domain_generatorset_symbol_of_generatorset_symbol in

  Generatorset_symbol_by_sole_index_provider_v.sole_index_of_generatorset_symbol_predicate_off_sole_index 
    gss_pre 
    soi_low 
;;

let domain_index_off_lower_sole_index soi_low =
  List.hd (domain_sole_index_off_lower_sole_index soi_low)
;;

let domain_symbol_from_lower_sole_index soi_low =
  let soi_dom = domain_sole_index_off_lower_sole_index soi_low in
  let gss_dom = Generatorset_symbol_by_sole_index_provider_v.provide soi_dom in
  Generatorset_symbol_v.domain_symbol_off_generatorset_symbol gss_dom
;;

(** {9 Category} *)

let is_category_generatorset_symbol_of_generatorset_symbol sym_gss =
  Generatorset_symbol_v.is_category_symbol_off_generatorset_symbol sym_gss
;;

let category_sole_index_off_lower_sole_index soi_low =
  let gss_pre = is_category_generatorset_symbol_of_generatorset_symbol in

  Generatorset_symbol_by_sole_index_provider_v.sole_index_of_generatorset_symbol_predicate_off_sole_index 
    gss_pre 
    soi_low 
;;

let category_index_off_lower_sole_index soi_low =
  List.hd (category_sole_index_off_lower_sole_index soi_low)
;;

let category_symbol_from_lower_sole_index soi_low =
  let soi_cat = category_sole_index_off_lower_sole_index soi_low in
  let gss_cat = Generatorset_symbol_by_sole_index_provider_v.provide soi_cat in
  Generatorset_symbol_v.category_symbol_off_generatorset_symbol gss_cat
;;

(** {9 Entity} *)

let is_entity_generatorset_symbol_of_generatorset_symbol sym_gss =
  Generatorset_symbol_v.is_entity_symbol_off_generatorset_symbol sym_gss
;;

let entity_sole_index_off_lower_sole_index soi_low =
  let gss_pre = is_entity_generatorset_symbol_of_generatorset_symbol in

  Generatorset_symbol_by_sole_index_provider_v.sole_index_of_generatorset_symbol_predicate_off_sole_index 
    gss_pre 
    soi_low 
;;

let entity_index_off_lower_sole_index soi_low =
  List.hd (entity_sole_index_off_lower_sole_index soi_low)
;;

let entity_symbol_from_lower_sole_index soi_low =
  let soi_ent = entity_sole_index_off_lower_sole_index soi_low in
  let gss_ent = Generatorset_symbol_by_sole_index_provider_v.provide soi_ent in
  Generatorset_symbol_v.entity_symbol_off_generatorset_symbol gss_ent
;;

(** {9 Item} *)

let is_item_generatorset_symbol_of_generatorset_symbol sym_gss =
  Generatorset_symbol_v.is_item_symbol_off_generatorset_symbol sym_gss
;;

let item_sole_index_off_lower_sole_index soi_low =
  let gss_pre = is_item_generatorset_symbol_of_generatorset_symbol in

  Generatorset_symbol_by_sole_index_provider_v.sole_index_of_generatorset_symbol_predicate_off_sole_index 
    gss_pre 
    soi_low 
;;

let item_index_off_lower_sole_index soi_low =
  List.hd (item_sole_index_off_lower_sole_index soi_low)
;;

let item_symbol_from_lower_sole_index soi_low =
  let soi_ite = item_sole_index_off_lower_sole_index soi_low in
  let gss_ite = Generatorset_symbol_by_sole_index_provider_v.provide soi_ite in
  Generatorset_symbol_v.item_symbol_off_generatorset_symbol gss_ite
;;

(** {9 Camlparagraph} *)

let is_camlparagraph_generatorset_symbol_of_generatorset_symbol sym_gss =
  Generatorset_symbol_v.is_camlparagraph_symbol_off_generatorset_symbol sym_gss
;;

let camlparagraph_sole_index_off_lower_sole_index soi_low =
  let gss_pre = is_camlparagraph_generatorset_symbol_of_generatorset_symbol in

  Generatorset_symbol_by_sole_index_provider_v.sole_index_of_generatorset_symbol_predicate_off_sole_index 
    gss_pre 
    soi_low 
;;

let camlparagraph_index_off_lower_sole_index soi_low =
  List.hd (camlparagraph_sole_index_off_lower_sole_index soi_low)
;;

let camlparagraph_symbol_from_lower_sole_index soi_low =
  let soi_cap = camlparagraph_sole_index_off_lower_sole_index soi_low in
  let gss_cap = Generatorset_symbol_by_sole_index_provider_v.provide soi_cap in
  Generatorset_symbol_v.camlparagraph_symbol_off_generatorset_symbol gss_cap
;;

(** {9 Section} *)

let is_section_generatorset_symbol_of_generatorset_symbol sym_gss =
  Generatorset_symbol_v.is_section_symbol_off_generatorset_symbol sym_gss
;;

let section_sole_index_off_lower_sole_index soi_low =
  let gss_pre = is_section_generatorset_symbol_of_generatorset_symbol in

  Generatorset_symbol_by_sole_index_provider_v.sole_index_of_generatorset_symbol_predicate_off_sole_index 
    gss_pre 
    soi_low 
;;

let section_symbol_from_lower_sole_index soi_low =
  let soi_sec = section_sole_index_off_lower_sole_index soi_low in
  let gss_sec = Generatorset_symbol_by_sole_index_provider_v.provide soi_sec in
  Generatorset_symbol_v.section_symbol_off_generatorset_symbol gss_sec
;;

(** {9 Group} *)

let is_group_generatorset_symbol_of_generatorset_symbol sym_gss =
  Generatorset_symbol_v.is_group_symbol_off_generatorset_symbol sym_gss
;;

let group_sole_index_off_lower_sole_index soi_low =
  let gss_pre = is_group_generatorset_symbol_of_generatorset_symbol in

  Generatorset_symbol_by_sole_index_provider_v.sole_index_of_generatorset_symbol_predicate_off_sole_index 
    gss_pre 
    soi_low 
;;

let group_index_for_item_for_symbol_by_group_topsons_of_sole_index soi_cal =
  List.hd (group_sole_index_off_lower_sole_index soi_cal)
;;

(** {6 Entities ... *)
     
(* let tritup_off_sole_index soi_cal = *)
(*   if List.length soi_cal < 3  *)
(*   then  *)
(*     Error_messages_v.print_fatal_error nam_cod  *)
(*       "tritup_off_sole_index" *)
(*       "sole_index length > 2" *)
(*       (Format.sprintf "sole_index is >%s<" (Sole_index_v.name soi_cal) ) *)
(*       "Check" *)
(*   else *)
(*     begin *)
(*       let sym_dos =  *)
(* 	Generatorset_symbol_by_sole_index_provider_v.generatorset_symbol_off_sole_index *)
(* 	  soi_cal  *)
(*       in *)
(*       let sym_cat =  *)
(* 	Generatorset_symbol_by_sole_index_provider_v.category_symbol_off_sole_index *)
(* 	  soi_cal  *)
(*       in *)
(*       let sym_ent =  *)
(* 	Generatorset_symbol_by_sole_index_provider_v.entity_symbol_off_sole_index *)
(* 	  soi_cal  *)
(*       in *)
(*       Triplet_v.make sym_ent sym_cat sym_dos *)
(*     end *)
(* ;; *)

let entity_grandson_symbol_list_of_entity_tritup_of_what tri_ent = function
  | "bare" ->
      Entity_grandson_bare_symbol_list_by_entity_tritup_provider_v.provide tri_ent
  | "notleaf" ->
      Entity_grandson_notleaf_symbol_list_by_entity_tritup_provider_v.provide tri_ent
  | "ofstring" ->
      Entity_grandson_ofstring_symbol_list_by_entity_tritup_provider_v.provide tri_ent
  | str ->
      Entity_grandson_symbol_list_by_entity_tritup_provider_v.provide tri_ent
;;
1
let entity_topson_symbol_list_of_entity_tritup_of_what tri_ent = function
  | "bare" ->
      Entity_topson_bare_symbol_list_by_entity_tritup_provider_v.provide tri_ent
  | "notleaf" ->
      Entity_topson_notleaf_symbol_list_by_entity_tritup_provider_v.provide tri_ent
  | "ofstring" ->
      Entity_topson_ofstring_symbol_list_by_entity_tritup_provider_v.provide tri_ent
  | str ->
      Entity_topson_symbol_list_by_entity_tritup_provider_v.provide tri_ent
;;

let entity_topson_symbol_of_entity_current_tritup_of_entity_top_symbol tri_ent_cur sym_ent_top =
  let nam_fun = "entity_topson_symbol_of_entity_current_tritup_of_entity_top_symbol" in
(* [cur; ...; topson; top;...; set] *)

  let pat_sym_ent_cur = 
    Entity_symbol_path_by_entity_tritup_provider_v.provide 
      tri_ent_cur 
  in
  let idx_top = List_v.index_of_element_of_list sym_ent_top pat_sym_ent_cur in
  let idx_tsn = idx_top-1 in

  try List.nth pat_sym_ent_cur idx_tsn
  with Invalid_argument("List.nth") ->
    Error_messages_v.print_fatal_error nam_cod nam_fun
      "path length > 1"
      (Format.sprintf "tri_ent_cur is >%s<" 
	 (Triplet_v.name Entity_symbol_v.string_off Category_symbol_v.name Domain_symbol_v.name tri_ent_cur)
      )
      "Check"
;; 

let entity_current_symbol_for_item_for_symbol_each_of_entity_symbol_list_of_sole_index sym_ent_l soi_cal =
  let nam_fun = "entity_current_symbol_for_item_for_symbol_each_of_entity_symbol_list_of_sole_index" in

  let idx_cap = 
    camlparagraph_index_off_lower_sole_index soi_cal
  in

  if List.length sym_ent_l = 0
  then 
    Error_messages_v.print_fatal_error nam_cod nam_fun
      "Number of Entity symbol > 0"
      (Format.sprintf "Number of Entity symbol = %i" (List.length sym_ent_l) )
      "Check"
  else 
    begin
      try List.nth sym_ent_l (idx_cap-2) (* Camlparagraph Title is idx_cap = 1 *)
      with | Failure "nth" ->
	let gss_cal = Generatorset_symbol_by_sole_index_provider_v.provide soi_cal in
	let sym_cal = Generatorset_symbol_v.camlline_symbol_off_generatorset_symbol gss_cal in
	Error_messages_v.print_fatal_error nam_cod nam_fun
	  (Format.sprintf "Camlparagraph index -1 < Number of Entity symbol ( %i )" (List.length sym_ent_l) )
	  (Format.sprintf "Camlparagraph index = %i => idx_cap-2 = %i" idx_cap (idx_cap-2) ) 
	  (Format.sprintf "Check Number of Camlparagraph in Item formula and Camlline Formula for %s" 
	     (Camlline_symbol_v.name sym_cal) 
	  ) 
    end
;;

let entity_current_symbol_for_item_for_symbol_by_group_of_entity_symbol_list_of_sole_index sym_ent_l soi_cal =
  let nam_fun = "entity_current_symbol_for_item_for_symbol_by_group_of_entity_symbol_list_of_sole_index" in
  let idx_gro = group_index_for_item_for_symbol_by_group_topsons_of_sole_index soi_cal in

  if List.length sym_ent_l = 0
  then 
    Error_messages_v.print_fatal_error nam_cod nam_fun
      "Number of Entity symbol > 0"
      (Format.sprintf "Number of Entity symbol = %i" (List.length sym_ent_l) )
      "Check"
  else 
    begin
      try List.nth sym_ent_l (idx_gro-1) 
      with | Failure "nth" ->
	let gss_cal = Generatorset_symbol_by_sole_index_provider_v.provide soi_cal in
	let sym_cal = Generatorset_symbol_v.camlline_symbol_off_generatorset_symbol gss_cal in
	Error_messages_v.print_fatal_error nam_cod 
	  "entity_current_symbol_for_item_for_symbol_by_group_of_entity_symbol_list_of_sole_index"
	  (Format.sprintf "Group index -1 < Number of Entity symbol = %i" (List.length sym_ent_l) )
	  (Format.sprintf "Group index = %i => idx_gro-1 = %i" idx_gro (idx_gro-1) ) 
	  (Format.sprintf "Check Number of Group in Camlparaph Formula and Camlline Formula for %s" 
	     (Camlline_symbol_v.name sym_cal) 
	  )
    end
;;

let entity_current_symbol_list_of_camlline_dectup_of_sole_index_of_section_symbol dec_cal soi_cal sym_sec =
  let nam_fun = "entity_current_symbol_list_of_camlline_dectup_of_sole_index_of_section_symbol" in

  match sym_sec with 

(* bare *)    

  | Section_symbol_t.Section_for_formula_symbol
      (Section_for_formula_symbol_t.Section_for_formula_body_symbol
	 (Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_main_builder_symbol
	    Section_for_formula_body_son_top_main_builder_symbol_t.Make_topson_pattern_bare_for_formula))

  | Section_symbol_t.Section_for_formula_symbol
      (Section_for_formula_symbol_t.Section_for_formula_body_symbol
	 (Section_for_formula_body_symbol_t.Section_for_formula_body_son_builder_symbol
	    Section_for_formula_body_son_builder_symbol_t.Pipe_topson_formula_type_bare_constructors))

  | Section_symbol_t.Section_for_formula_symbol
      (Section_for_formula_symbol_t.Section_for_formula_body_symbol
	 (Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_builder_symbol
            Section_for_formula_body_son_top_builder_symbol_t.Builder_tag_list_topson_pattern_bare_for_formula))
  | Section_symbol_t.Section_for_formula_symbol
      (Section_for_formula_symbol_t.Section_for_formula_body_symbol
	 (Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_data_symbol
            Section_for_formula_body_son_top_data_symbol_t.Data_tag_list_topson_pattern_bare_for_formula))
 
  | Section_symbol_t.Section_for_formula_symbol
      (Section_for_formula_symbol_t.Section_for_formula_body_symbol
	 (Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_symbol
            Section_for_formula_body_son_top_symbol_t.Symbol_of_formula_topson_pattern_bare))

  | Section_symbol_t.Section_for_symbol_symbol
      (Section_for_symbol_symbol_t.Section_for_symbol_body_symbol
	 (Section_for_symbol_body_symbol_t.Section_for_symbol_body_son_top_symbol
	    Section_for_symbol_body_son_top_symbol_t.Name_topson_pattern_bare_for_symbol)) 
      
  | Section_symbol_t.Section_for_symbol_symbol
      (Section_for_symbol_symbol_t.Section_for_symbol_body_symbol
	 (Section_for_symbol_body_symbol_t.Section_for_symbol_body_son_top_symbol
	    Section_for_symbol_body_son_top_symbol_t.String_off_topson_pattern_bare_for_symbol))


  | Section_symbol_t.Section_for_symbol_symbol
      (Section_for_symbol_symbol_t.Section_for_symbol_body_symbol
	 (Section_for_symbol_body_symbol_t.Section_for_symbol_body_son_symbol
	    (Section_for_symbol_body_son_symbol_t.Section_for_symbol_body_son_bare_symbol
	       Section_for_symbol_body_son_bare_symbol_t.Pipe_topson_symbol_type_bare_constructors))) ->
		 
		 let sym_ent_l = Tools_ignr_v.entity_topson_bare_symbol_list_of_dectup dec_cal in  
		 entity_current_symbol_for_item_for_symbol_by_group_of_entity_symbol_list_of_sole_index sym_ent_l soi_cal

(* notleaf *)
  (* for_any *)
  | Section_symbol_t.Section_for_any_symbol
      (Section_for_any_symbol_t.Section_for_any_body_symbol
	 (Section_for_any_body_symbol_t.Section_for_any_body_son_symbol
	    (Section_for_any_body_son_symbol_t.Pipe_topson_any_type_notleaf_constructors)))
  	
  (* for_formula *)	

  | Section_symbol_t.Section_for_formula_symbol
      (Section_for_formula_symbol_t.Section_for_formula_body_symbol
	 (Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_builder_symbol
            Section_for_formula_body_son_top_builder_symbol_t.Builder_tag_list_topson_pattern_notleaf_for_formula))  

  | Section_symbol_t.Section_for_formula_symbol
      (Section_for_formula_symbol_t.Section_for_formula_body_symbol
	 (Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_data_symbol
	    Section_for_formula_body_son_top_data_symbol_t.Data_tag_list_topson_pattern_notleaf_for_formula))
      
  | Section_symbol_t.Section_for_formula_symbol
      (Section_for_formula_symbol_t.Section_for_formula_header_symbol
	 (Section_for_formula_header_symbol_t.Section_for_formula_header_top_builder_symbol
	    Section_for_formula_header_top_builder_symbol_t.Let_builder_tag_list_off_top_formula))

  | Section_symbol_t.Section_for_formula_symbol
      (Section_for_formula_symbol_t.Section_for_formula_body_symbol
	 (Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_main_symbol
	    Section_for_formula_body_son_top_main_symbol_t.Make_topson_pattern_notleaf_for_formula))

  | Section_symbol_t.Section_for_formula_symbol
      (Section_for_formula_symbol_t.Section_for_formula_body_symbol
	 (Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_symbol
            Section_for_formula_body_son_top_symbol_t.Symbol_of_formula_topson_pattern_notleaf))

  (* for_symbol *)	
  | Section_symbol_t.Section_for_symbol_symbol
      (Section_for_symbol_symbol_t.Section_for_symbol_body_symbol
	 (Section_for_symbol_body_symbol_t.Section_for_symbol_body_son_top_symbol
	    Section_for_symbol_body_son_top_symbol_t.Name_topson_pattern_notleaf_for_symbol)) 
      
  | Section_symbol_t.Section_for_symbol_symbol
      (Section_for_symbol_symbol_t.Section_for_symbol_body_symbol
	 (Section_for_symbol_body_symbol_t.Section_for_symbol_body_son_top_symbol
	    Section_for_symbol_body_son_top_symbol_t.String_off_topson_pattern_notleaf_for_symbol)) ->
	      
	      let sym_ent_l = Tools_ignr_v.entity_topson_notleaf_symbol_list_of_dectup dec_cal in  
	      entity_current_symbol_for_item_for_symbol_by_group_of_entity_symbol_list_of_sole_index sym_ent_l soi_cal
	
(* ofstring *)

  | Section_symbol_t.Section_for_formula_symbol
      (Section_for_formula_symbol_t.Section_for_formula_body_symbol
	 (Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_main_builder_symbol
	    Section_for_formula_body_son_top_main_builder_symbol_t.Make_topson_pattern_ofstring_for_formula))
      
  | Section_symbol_t.Section_for_formula_symbol
      (Section_for_formula_symbol_t.Section_for_formula_body_symbol
	 (Section_for_formula_body_symbol_t.Section_for_formula_body_son_builder_symbol
	    Section_for_formula_body_son_builder_symbol_t.Pipe_topson_formula_type_ofstring_constructors)) 
	      
  | Section_symbol_t.Section_for_formula_symbol
      (Section_for_formula_symbol_t.Section_for_formula_body_symbol
	 (Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_builder_symbol
            Section_for_formula_body_son_top_builder_symbol_t.Builder_tag_list_topson_pattern_ofstring_for_formula))
   
  | Section_symbol_t.Section_for_formula_symbol
      (Section_for_formula_symbol_t.Section_for_formula_body_symbol
	 (Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_data_symbol
            Section_for_formula_body_son_top_data_symbol_t.Data_tag_list_topson_pattern_ofstring_for_formula))
   
  | Section_symbol_t.Section_for_symbol_symbol
      (Section_for_symbol_symbol_t.Section_for_symbol_body_symbol
	 (Section_for_symbol_body_symbol_t.Section_for_symbol_body_son_top_symbol
	    Section_for_symbol_body_son_top_symbol_t.Name_topson_pattern_ofstring_for_symbol))
  

  | Section_symbol_t.Section_for_symbol_symbol
      (Section_for_symbol_symbol_t.Section_for_symbol_body_symbol
	 (Section_for_symbol_body_symbol_t.Section_for_symbol_body_son_symbol
	    (Section_for_symbol_body_son_symbol_t.Section_for_symbol_body_son_ofstring_symbol
	       Section_for_symbol_body_son_ofstring_symbol_t.Pipe_topson_symbol_type_ofstring_constructors)))
		   
  | Section_symbol_t.Section_for_formula_symbol
      (Section_for_formula_symbol_t.Section_for_formula_body_symbol
	 (Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_symbol
            Section_for_formula_body_son_top_symbol_t.Symbol_of_formula_topson_pattern_ofstring))
      
  | Section_symbol_t.Section_for_symbol_symbol
      (Section_for_symbol_symbol_t.Section_for_symbol_body_symbol
	 (Section_for_symbol_body_symbol_t.Section_for_symbol_body_son_top_symbol
	    Section_for_symbol_body_son_top_symbol_t.String_off_topson_pattern_ofstring_for_symbol)) ->
	      
	      let sym_ent_l = Tools_ignr_v.entity_topson_ofstring_symbol_list_of_dectup dec_cal in  
	      entity_current_symbol_for_item_for_symbol_by_group_of_entity_symbol_list_of_sole_index sym_ent_l soi_cal
		
		   
  | _ ->
      
      Error_messages_v.print_fatal_error nam_cod nam_fun
	"Valid Section_symbol"
	(Format.sprintf ">%s<" (Section_symbol_v.fullname sym_sec) )
	"Check or Add it to pattern."
		      
;;

let entity_current_symbol_of_camlline_dectup_of_sole_index_of_item_for_symbol dec_cal soi_cal sym_ifs =
  let nam_fun = "entity_current_symbol_of_item_for_symbol" in

  match sym_ifs with 
  | Item_for_symbol_symbol_t.Item_for_symbol_each_grandson_bare_symbol _ ->
      
      let sym_ent_l = Tools_ignr_v.entity_grandson_bare_symbol_list_of_dectup dec_cal in  
      entity_current_symbol_for_item_for_symbol_each_of_entity_symbol_list_of_sole_index sym_ent_l soi_cal
	
  | Item_for_symbol_symbol_t.Item_for_symbol_each_grandson_ofstring_symbol _ ->
      
      let sym_ent_l = Tools_ignr_v.entity_grandson_ofstring_symbol_list_of_dectup dec_cal in  
      entity_current_symbol_for_item_for_symbol_each_of_entity_symbol_list_of_sole_index sym_ent_l soi_cal
	  
    | Item_for_symbol_symbol_t.Item_for_symbol_each_grandson_notleaf_symbol _ -> 
	
	let sym_ent_l = Tools_ignr_v.entity_grandson_notleaf_symbol_list_of_dectup dec_cal in  
	entity_current_symbol_for_item_for_symbol_each_of_entity_symbol_list_of_sole_index sym_ent_l soi_cal
	  
    | Item_for_symbol_symbol_t.Item_for_symbol_each_topson_bare_symbol _ ->
	
	let sym_ent_l = Tools_ignr_v.entity_topson_bare_symbol_list_of_dectup dec_cal in  
	entity_current_symbol_for_item_for_symbol_each_of_entity_symbol_list_of_sole_index sym_ent_l soi_cal
	  
    | Item_for_symbol_symbol_t.Item_for_symbol_each_topson_ofstring_symbol _ ->
	
	let sym_ent_l = Tools_ignr_v.entity_topson_ofstring_symbol_list_of_dectup dec_cal in  
	entity_current_symbol_for_item_for_symbol_each_of_entity_symbol_list_of_sole_index sym_ent_l soi_cal
	  
    | Item_for_symbol_symbol_t.Item_for_symbol_each_topson_notleaf_symbol _ ->
	
	let sym_ent_l = Tools_ignr_v.entity_topson_notleaf_symbol_list_of_dectup dec_cal in  
	entity_current_symbol_for_item_for_symbol_each_of_entity_symbol_list_of_sole_index sym_ent_l soi_cal
	  
    | Item_for_symbol_symbol_t.Item_for_symbol_by_group_topsons_symbol 
        Item_for_symbol_by_group_topsons_symbol_t.Making_for_symbol_bare 
    | Item_for_symbol_symbol_t.Item_for_symbol_by_group_topsons_symbol 
        Item_for_symbol_by_group_topsons_symbol_t.Naming_for_symbol_bare 
    | Item_for_symbol_symbol_t.Item_for_symbol_by_group_topsons_symbol 
        Item_for_symbol_by_group_topsons_symbol_t.String_offing_for_symbol_bare ->
	  
	  let sym_ent_l = Tools_ignr_v.entity_topson_bare_symbol_list_of_dectup dec_cal in  
	  entity_current_symbol_for_item_for_symbol_by_group_of_entity_symbol_list_of_sole_index sym_ent_l soi_cal
	    
    | Item_for_symbol_symbol_t.Item_for_symbol_by_group_topsons_symbol 
        Item_for_symbol_by_group_topsons_symbol_t.Making_for_symbol_ofstring 
    | Item_for_symbol_symbol_t.Item_for_symbol_by_group_topsons_symbol 
        Item_for_symbol_by_group_topsons_symbol_t.Naming_for_symbol_ofstring 
    | Item_for_symbol_symbol_t.Item_for_symbol_by_group_topsons_symbol 
        Item_for_symbol_by_group_topsons_symbol_t.String_offing_for_symbol_ofstring ->
	  
	  let sym_ent_l = Tools_ignr_v.entity_topson_ofstring_symbol_list_of_dectup dec_cal in  
	  entity_current_symbol_for_item_for_symbol_by_group_of_entity_symbol_list_of_sole_index sym_ent_l soi_cal
	    
    | Item_for_symbol_symbol_t.Item_for_symbol_by_group_topsons_symbol 
        Item_for_symbol_by_group_topsons_symbol_t.Making_for_symbol_notleaf 
    | Item_for_symbol_symbol_t.Item_for_symbol_by_group_topsons_symbol 
        Item_for_symbol_by_group_topsons_symbol_t.Naming_for_symbol_notleaf 
    | Item_for_symbol_symbol_t.Item_for_symbol_by_group_topsons_symbol 
        Item_for_symbol_by_group_topsons_symbol_t.String_offing_for_symbol_notleaf ->
	  
	  let sym_ent_l = Tools_ignr_v.entity_topson_notleaf_symbol_list_of_dectup dec_cal in  
	  entity_current_symbol_for_item_for_symbol_by_group_of_entity_symbol_list_of_sole_index sym_ent_l soi_cal
	    
    | Item_for_symbol_symbol_t.Item_for_symbol_by_group_topsons_symbol 
        Item_for_symbol_by_group_topsons_symbol_t.Naming_for_symbol 
	
    | Item_for_symbol_symbol_t.Item_for_symbol_by_group_topsons_symbol 
        Item_for_symbol_by_group_topsons_symbol_t.String_offing_for_symbol ->
	  
	  let sym_sec = section_symbol_from_lower_sole_index soi_cal in
	  entity_current_symbol_list_of_camlline_dectup_of_sole_index_of_section_symbol dec_cal soi_cal sym_sec 
	    
    | Item_for_symbol_symbol_t.Item_for_symbol_only_top_symbol _ ->
	
	entity_symbol_from_lower_sole_index soi_cal 
	  
    | Item_for_symbol_symbol_t.Item_for_symbol_by_group_topsons_symbol
	Item_for_symbol_by_group_topsons_symbol_t.Typing_for_symbol ->
	  
	  let sym_sec = section_symbol_from_lower_sole_index soi_cal in
	  entity_current_symbol_list_of_camlline_dectup_of_sole_index_of_section_symbol dec_cal soi_cal sym_sec
    | _ ->
	
	Error_messages_v.print_fatal_error nam_cod nam_fun
	  "Valid Item_symbol"
	  (Format.sprintf ">%s<" (Item_for_symbol_symbol_v.name sym_ifs) )
	  "Check"
;;


let entity_current_symbol_of_camlline_dectup_of_sole_index dec_cal soi_cal =
  let nam_fun = "entity_current_symbol_of_camlline_dectup_of_sole_index" in
  
(* either topson ot granson depending on Item *)

  let sym_cat = category_symbol_from_lower_sole_index soi_cal in
  match sym_cat with
  | Category_symbol_t.Symbol ->

      let sym_ite = item_symbol_from_lower_sole_index soi_cal in
      let sym_ifs = Item_symbol_v.item_for_symbol_symbol_off_item_symbol sym_ite in 
      entity_current_symbol_of_camlline_dectup_of_sole_index_of_item_for_symbol dec_cal soi_cal sym_ifs 
	
  | Category_symbol_t.Formula ->

      let sym_sec = section_symbol_from_lower_sole_index soi_cal in

      entity_current_symbol_list_of_camlline_dectup_of_sole_index_of_section_symbol 
	dec_cal 
	soi_cal 
	sym_sec 

  | _ -> 

      Error_messages_v.print_fatal_error nam_cod nam_fun
	"Valid Category_symbol Symbol|Formula"
	(Format.sprintf ">%s<" (Category_symbol_v.name sym_cat) )
	"Check"
;;

let entity_topson_symbol_of_camlline_dectup_of_sole_index dec_cal soi_cal = 
  let sym_dos = domain_symbol_from_lower_sole_index soi_cal in
  let sym_cat = category_symbol_from_lower_sole_index soi_cal in
  let sym_ent_top = entity_symbol_from_lower_sole_index soi_cal in

  let sym_ent_cur =
    entity_current_symbol_of_camlline_dectup_of_sole_index
      dec_cal 
      soi_cal
  in
  
  let tri_ent_cur = Triplet_v.make sym_ent_cur sym_cat sym_dos in
  
  entity_topson_symbol_of_entity_current_tritup_of_entity_top_symbol 
    tri_ent_cur 
    sym_ent_top 
;;

let entity_builder_data_symbol_of_entity_proper_tritup tri_enp =
  let nam_fun = "entity_builder_data_symbol_of_entity_proper_tritup" in

  let sym_efb_dat_l = 
    Entity_builder_leaf_symbol_list_by_entity_proper_tritup_provider_v.provide 
      tri_enp 
  in

  let sym_efb_dat =
    if List.length sym_efb_dat_l = 0
    then
      Error_messages_v.print_fatal_error nam_cod nam_fun
	"Entity_symbol list were NOT empty" 
	"it is EMPTY"
	"Check" 
    else
      let sym_ebo_dat_l = List_v.left_once_list_off_list sym_efb_dat_l in
      element_of_once_entity_symbol_list Entity_fictive_basicnullary_symbol_v.fullname sym_ebo_dat_l
  in
  Entity_symbol_v.entity_symbol_of_entity_fictive_basicnullary_symbol sym_efb_dat
;;

let entity_builder_data_symbol_of_entity_tritup tri_ent =
  let nam_fun = "entity_builder_data_symbol_of_entity_tritup" in

  let (sym_ent, sym_cat, sym_dos) = tri_ent in

  match sym_ent with
  | Entity_symbol_t.Entity_proper_symbol sym_enp -> 
      let tri_enp = (sym_enp, sym_cat, sym_dos) in
      entity_builder_data_symbol_of_entity_proper_tritup tri_enp

  | Entity_symbol_t.Entity_fictive_symbol 
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol sym_efn) ->

	Utilities_v.not_yet_implemented nam_cod nam_fun
(*      let tri_efn = (sym_efn, sym_cat, sym_dos) in
      entity_builder_data_symbol_of_entity_fictive_nullary_tritup tri_efn
 *)

  | _ -> 
      Error_messages_v.print_fatal_error nam_cod nam_fun 
	"Entity Symbol were Proper|Fictive_nullary"
	(Format.sprintf " >%s<" (Entity_symbol_v.fullname sym_ent))
	"Check"
;;

let entity_builder_data_symbol_of_camlline_dectup dec_cal =
  let tri_ent = Decuplet_v.right_triplet_off_decuplet dec_cal in
  entity_builder_data_symbol_of_entity_tritup tri_ent
;;

let entity_main_symbol_of_camlline_dectup dec_cal =
  let tri_ent = Decuplet_v.right_triplet_off_decuplet dec_cal in
  Entity_main_symbol_by_entity_tritup_provider_v.provide tri_ent 
;;

let entity_builder_main_symbol_of_entity_proper_tritup tri_enp =
  let nam_fun = "entity_builder_main_symbol_of_entity_proper_tritup" in
  
  let sym_enp_bts_l = 
    Entity_builder_proper_topson_symbol_list_by_entity_proper_tritup_provider_v.provide 
      tri_enp 
  in
  
  let sym_enp_bts =
    if List.length sym_enp_bts_l = 0
    then
      begin 
	let sym_enp = Triplet_v.left_off_triplet tri_enp in
	Error_messages_v.print_warning nam_cod nam_fun
	  (Format.sprintf "Builder Topson list is EMPTY for >%s<" 
	     (Entity_proper_symbol_v.fullname sym_enp));
	Utilities_v.failwith_of_message_of_code_name_of_function_name 
	  "No_builder_topson_notleaf" nam_cod nam_fun
      end
    else
      element_of_once_entity_symbol_list Entity_proper_symbol_v.fullname sym_enp_bts_l
  in 
  Entity_symbol_v.entity_symbol_of_entity_proper_symbol sym_enp_bts
;;

let entity_builder_symbol_of_entity_fictive_nullary_tritup tri_efn =
  let nam_fun = "entity_builder_symbol_of_entity_fictive_nullary_tritup" in

  let sym_enb_l =
    Entity_builder_symbol_list_by_entity_fictive_nullary_tritup_provider_v.provide
      tri_efn
  in

  let sym_enb =
    if List.length sym_enb_l = 0
    then
      begin 
	let sym_efn = Triplet_v.left_off_triplet tri_efn in
	Error_messages_v.print_warning nam_cod nam_fun
	  (Format.sprintf "Builder list is EMPTY for >%s<" 
	     (Entity_fictive_nullary_symbol_v.fullname sym_efn)
	  );
	Utilities_v.failwith_of_message_of_code_name_of_function_name 
	  "No_builder" nam_cod nam_fun
      end
    else
      element_of_once_entity_symbol_list Entity_symbol_v.fullname sym_enb_l
  in 
  sym_enb
;;


let entity_builder_main_symbol_of_entity_fictive_nullary_tritup tri_efn =
  let sym_enb = entity_builder_symbol_of_entity_fictive_nullary_tritup tri_efn in
  let tri_enb = Triplet_v.reset_of_left_off_triplet sym_enb tri_efn in

  try Entity_main_symbol_by_entity_tritup_provider_v.provide tri_enb
  with Failure "Not_Entity_fictive_basicnullary_symbol:Entity_main_symbol_list_by_entity_tritup_provider_v.ml:build" ->
   (*** Improve type should be basicnullary ***)
    Triplet_v.left_off_triplet tri_enb 
;;

let entity_builder_main_symbol_of_entity_tritup tri_ent =
  let nam_fun = "entity_builder_main_symbol_of_entity_tritup" in
  
  let (sym_ent, sym_cat, sym_dos) = tri_ent in

  match sym_ent with 
  | Entity_symbol_t.Entity_proper_symbol sym_enp ->
      let tri_enp = (sym_enp, sym_cat, sym_dos) in
      entity_builder_main_symbol_of_entity_proper_tritup tri_enp

  | Entity_symbol_t.Entity_fictive_symbol 
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol sym_efn) ->
	let tri_efn = (sym_efn, sym_cat, sym_dos) in
	entity_builder_main_symbol_of_entity_fictive_nullary_tritup tri_efn

  | _ -> 
      Error_messages_v.print_fatal_error nam_cod nam_fun 
	"Entity Symbol were Proper|Fictive_nullary"
	(Format.sprintf " >%s<" (Entity_symbol_v.fullname sym_ent))
	"Check"
;;

let entity_builder_main_symbol_of_entity_son_symbol_of_camlline_dectup sym_ent_son dec_ccc =
  let tri_ent_top = Decuplet_v.right_triplet_off_decuplet dec_ccc in
  let tri_ent_son = Triplet_v.reset_of_left_off_triplet sym_ent_son tri_ent_top in
  entity_builder_main_symbol_of_entity_tritup tri_ent_son 
;;

let has_some_builder_proper_topson_symbol_of_entity_tritup tri_ent =
  let (sym_ent, sym_cat, sym_dos) = tri_ent in
  let sym_enp = Entity_symbol_v.entity_proper_symbol_off_entity_symbol sym_ent in
  let tri_enp = (sym_enp, sym_cat, sym_dos) in
  let sym_enp_bts_l = 
    Entity_builder_proper_topson_symbol_list_by_entity_proper_tritup_provider_v.provide 
      tri_enp 
  in
  sym_enp_bts_l <> []
;;
