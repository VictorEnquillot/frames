(** {3 The Provider for Generatorset_symbol by Sole_index.} *)

let nam_cod = "Generatorset_symbol_by_sole_index_provider_v.ml";;

(** {6 Building.} *)

let build_n_store generatorset_symbol_of soi sym =
  let gss = generatorset_symbol_of sym in
  Generatorset_symbol_by_sole_index_register_v.store soi gss
;;

let build_n_store_son_list generatorset_symbol_of soi_fat sym_son_l =
  let soi_son_l = 
    Sole_index_v.son_sole_index_list_of_length_of_sole_index 
      (List.length sym_son_l)
      soi_fat
  in
  List.iter2
    (build_n_store generatorset_symbol_of)
    soi_son_l 
    sym_son_l
;;
 
(** {6 Providing.} *)

let provide soi_gss =
  let nam_fun = "provide" in
  
  if Register_v.is_stored Generatorset_symbol_by_sole_index_register_v.register soi_gss 
  then Generatorset_symbol_by_sole_index_register_v.retrieve soi_gss
  else 

    if List.length soi_gss = 1
    then 
      begin
      Generatorset_symbol_by_sole_index_register_v.register_initialize_of_domain_sole_index soi_gss;
	Generatorset_symbol_by_sole_index_register_v.retrieve soi_gss
      end
    else
      Error_messages_v.print_fatal_error nam_cod nam_fun
	(Format.sprintf "to find a Generatorset Symbol associated with sole_index %s" (Sole_index_v.name soi_gss))
	"Not Stored" 
	(Format.sprintf "Father\'s formula should have create this entry@.with :@.    Generatorset_symbol_by_sole_index_provider_v.store soi_x sym_x.@.    Here is a dump of generatorset_symbol_by_sole_index_register:@. %s@.    Register length =%i" 
	   (Generatorset_symbol_by_sole_index_register_v.dump ()) 
	   (Register_v.length Generatorset_symbol_by_sole_index_register_v.register) 
	)
;;

(** {6 Extracting.} *)

let sole_index_n_generatorset_symbol_list_of_generatorset_symbol_predicate gss_pre =
  Register_v.entry_list_of_value_predicate_of_register gss_pre
    Generatorset_symbol_by_sole_index_register_v.register
;;

let sole_index_n_generatorset_symbol_of_generatorset_symbol_predicate_off_sole_index gss_pre soi =
  let nam_fun = "sole_index_n_generatorset_symbol_of_generatorset_symbol_predicate_off_sole_index" in
  
  let soi_l = Sole_index_v.sole_index_list_off_sole_index soi in
  let gss_l = List.map provide soi_l in
  let soi_n_gss_dol = Doublet_list_v.make soi_l gss_l in
  if (not (List_v.is_once_list_of_list gss_l)) 
  then
    Error_messages_v.print_fatal_error nam_cod nam_fun
      (Format.sprintf "Symbols were defined Once along Sole_index %s" (Sole_index_v.name soi))
      (Format.sprintf "this Symbol list :@.   %s" 
	 (Doublet_list_v.name_with_separator Sole_index_v.name Generatorset_symbol_v.fullname ";\n   " soi_n_gss_dol)
      )
      "Refine predicate"
  else
    try 
    
      Doublet_list_v.find_if_right gss_pre soi_n_gss_dol
  
    with Failure("Not_found:doublet_list_v:find_if_right") ->
      Error_messages_v.print_fatal_error nam_cod 
	"sole_index_n_generatorset_symbol_of_generatorset_symbol_predicate_off_sole_index"
	(Format.sprintf "predicate were true once along Sole_index %s" (Sole_index_v.name soi))
	(Format.sprintf "this Symbol list :@.   %s" 
	   (Doublet_list_v.name_with_separator Sole_index_v.name Generatorset_symbol_v.fullname ";\n   " soi_n_gss_dol)
	)
	"Redefine predicate"
;;

let generatorset_symbol_of_generatorset_symbol_predicate_off_sole_index gss_pre soi =
  let soi_n_gss = 
    sole_index_n_generatorset_symbol_of_generatorset_symbol_predicate_off_sole_index 
      gss_pre 
      soi 
  in
  Doublet_v.right_off_doublet soi_n_gss
;;

let sole_index_of_generatorset_symbol_predicate_off_sole_index gss_pre soi =
  let soi_n_gss = 
    sole_index_n_generatorset_symbol_of_generatorset_symbol_predicate_off_sole_index 
      gss_pre 
      soi 
  in
  Doublet_v.left_off_doublet soi_n_gss
;;

(** {6 Extracting_off_sole_index} *)

let domain_symbol_off_sole_index soi =
  let gss_dos = 
    generatorset_symbol_of_generatorset_symbol_predicate_off_sole_index 
      Generatorset_symbol_v.is_domain_symbol_off_generatorset_symbol
      soi 
  in
  Generatorset_symbol_v.domain_symbol_off_generatorset_symbol gss_dos
;;

let domain_sole_index_off_sole_index soi =
  sole_index_of_generatorset_symbol_predicate_off_sole_index 
    Generatorset_symbol_v.is_domain_symbol_off_generatorset_symbol
    soi
;;

let domain_tag_off_sole_index soi =
  let sym_dos = domain_symbol_off_sole_index soi in
  let soi_dos = domain_sole_index_off_sole_index soi in
  Tag_v.make sym_dos soi_dos
;;

let category_symbol_off_sole_index soi =
  let gss_cat = 
    generatorset_symbol_of_generatorset_symbol_predicate_off_sole_index 
      Generatorset_symbol_v.is_category_symbol_off_generatorset_symbol
      soi 
  in
  Generatorset_symbol_v.category_symbol_off_generatorset_symbol gss_cat
;;

let entity_symbol_off_sole_index soi =
  let gss_ent =
    generatorset_symbol_of_generatorset_symbol_predicate_off_sole_index 
      Generatorset_symbol_v.is_entity_symbol_off_generatorset_symbol
      soi
  in
  Generatorset_symbol_v.entity_symbol_off_generatorset_symbol gss_ent
;;

let contentfile_symbol_off_sole_index soi =
  let gss_cof = 
    generatorset_symbol_of_generatorset_symbol_predicate_off_sole_index 
      Generatorset_symbol_v.is_contentfile_symbol_off_generatorset_symbol
      soi
  in
  Generatorset_symbol_v.contentfile_symbol_off_generatorset_symbol gss_cof
;;

let usagefile_symbol_off_sole_index soi =
  let gss_usf = 
    generatorset_symbol_of_generatorset_symbol_predicate_off_sole_index 
      Generatorset_symbol_v.is_usagefile_symbol_off_generatorset_symbol
      soi 
  in
  Generatorset_symbol_v.usagefile_symbol_off_generatorset_symbol gss_usf
;;

let item_symbol_off_sole_index soi =
  let gss_ite = 
    generatorset_symbol_of_generatorset_symbol_predicate_off_sole_index 
      Generatorset_symbol_v.is_item_symbol_off_generatorset_symbol
      soi 
  in
  Generatorset_symbol_v.item_symbol_off_generatorset_symbol gss_ite
;;

let camlparagraph_symbol_off_sole_index soi =
  let gss_cap = 
    generatorset_symbol_of_generatorset_symbol_predicate_off_sole_index 
      Generatorset_symbol_v.is_camlparagraph_symbol_off_generatorset_symbol
      soi 
  in
  Generatorset_symbol_v.camlparagraph_symbol_off_generatorset_symbol gss_cap
;;

let camlparagraph_sole_index_off_sole_index soi =
  sole_index_of_generatorset_symbol_predicate_off_sole_index 
    Generatorset_symbol_v.is_camlparagraph_symbol_off_generatorset_symbol
    soi
;;

let section_symbol_off_sole_index soi =
  let gss_sec = 
    generatorset_symbol_of_generatorset_symbol_predicate_off_sole_index 
      Generatorset_symbol_v.is_section_symbol_off_generatorset_symbol
      soi 
  in
  Generatorset_symbol_v.section_symbol_off_generatorset_symbol gss_sec
;;

let group_symbol_off_sole_index soi =
  let gss_gro = 
    generatorset_symbol_of_generatorset_symbol_predicate_off_sole_index 
      Generatorset_symbol_v.is_group_symbol_off_generatorset_symbol
      soi 
  in
  Generatorset_symbol_v.group_symbol_off_generatorset_symbol gss_gro
;;

let group_sole_index_off_sole_index soi =
  sole_index_of_generatorset_symbol_predicate_off_sole_index 
    Generatorset_symbol_v.is_group_symbol_off_generatorset_symbol
    soi
;;

let camlline_symbol_off_sole_index soi =
  let gss_cal = 
    generatorset_symbol_of_generatorset_symbol_predicate_off_sole_index 
      Generatorset_symbol_v.is_camlline_symbol_off_generatorset_symbol
      soi 
  in
  Generatorset_symbol_v.camlline_symbol_off_generatorset_symbol gss_cal
;;

