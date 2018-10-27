(** {3 The Provider for Globalset_symbol by Sole_index.} *)

let nam_cod = "Globalset_symbol_by_sole_index_provider_v.ml";;

(** {6 Building.} *)

let build_n_store mainset_symbol_of soi sym =
  let mss = mainset_symbol_of sym in
  Globalset_symbol_by_sole_index_register_v.store soi mss
;;

let build_n_store_son_list mainset_symbol_of soi_fat sym_son_l =
  let soi_son_l = 
    Sole_index_v.son_sole_index_list_of_length_of_sole_index 
      (List.length sym_son_l)
      soi_fat
  in
  List.iter2
    (build_n_store mainset_symbol_of)
    soi_son_l 
    sym_son_l
;;
 
(** {6 Providing.} *)

let provide soi_mss =
  if Register_v.is_stored Globalset_symbol_by_sole_index_register_v.register soi_mss 
  then Globalset_symbol_by_sole_index_register_v.retrieve soi_mss
  else 
    Error_messages_v.print_fatal_error nam_cod "provide"
      (Format.sprintf "to find a Globalset Symbol associated with sole_index %s" (Sole_index_v.name soi_mss))
      "Not Stored" 
      (Format.sprintf "Father\'s formula should have create this entry@.with :@.    Globalset_symbol_by_sole_index_provider_v.store soi_x sym_x.@.    Here is a dump of mainset_symbol_by_sole_index_register:@. %s@.    Register length =%i" 
	 (Globalset_symbol_by_sole_index_register_v.dump ()) 
	 (Register_v.length Globalset_symbol_by_sole_index_register_v.register) 
)
;;

(** {6 Extracting.} *)

let sole_index_n_mainset_symbol_list_of_mainset_symbol_predicate mss_pre =
  Register_v.entry_list_of_value_predicate_of_register mss_pre
    Globalset_symbol_by_sole_index_register_v.register
;;

let sole_index_n_mainset_symbol_of_mainset_symbol_predicate_off_sole_index mss_pre soi =
  let nam_fun = "sole_index_n_mainset_symbol_of_mainset_symbol_predicate_off_sole_index" in
  
  let soi_l = Sole_index_v.sole_index_list_off_sole_index soi in
  let mss_l = List.map provide soi_l in
  let soi_n_mss_dol = Doublet_list_v.make soi_l mss_l in
  if (not (List_v.is_once_list_of_list mss_l)) 
  then
    Error_messages_v.print_fatal_error nam_cod nam_fun
      (Format.sprintf "Symbols were defined Once along Sole_index %s" (Sole_index_v.name soi))
      (Format.sprintf "this Symbol list :@.   %s" 
	 (Doublet_list_v.name_with_separator Sole_index_v.name Globalset_symbol_v.fullname ";\n   " soi_n_mss_dol)
      )
      "Refine predicate"
  else
    try 
    
      Doublet_list_v.find_if_right mss_pre soi_n_mss_dol
  
    with Failure("Not_found:doublet_list_v.ml:find_if_right") ->
      Error_messages_v.print_fatal_error nam_cod 
	"sole_index_n_mainset_symbol_of_mainset_symbol_predicate_off_sole_index"
	(Format.sprintf "predicate were true once along Sole_index %s" (Sole_index_v.name soi))
	(Format.sprintf "this Symbol list :@.   %s" 
	   (Doublet_list_v.name_with_separator Sole_index_v.name Globalset_symbol_v.fullname ";\n   " soi_n_mss_dol)
	)
	"Redefine predicate"
;;

let mainset_symbol_of_mainset_symbol_predicate_off_sole_index mss_pre soi =
  let soi_n_mss = 
    sole_index_n_mainset_symbol_of_mainset_symbol_predicate_off_sole_index 
      mss_pre 
      soi 
  in
  Doublet_v.right_off_doublet soi_n_mss
;;

let sole_index_of_mainset_symbol_predicate_off_sole_index mss_pre soi =
  let soi_n_mss = 
    sole_index_n_mainset_symbol_of_mainset_symbol_predicate_off_sole_index 
      mss_pre 
      soi 
  in
  Doublet_v.left_off_doublet soi_n_mss
;;

(** {6 Extracting_off_sole_index} *)

let globalset_symbol_off_sole_index soi =
  let mss_dos = 
    mainset_symbol_of_mainset_symbol_predicate_off_sole_index 
      Globalset_symbol_v.is_globalset_symbol_off_mainset_symbol
      soi 
  in
  Globalset_symbol_v.globalset_symbol_off_mainset_symbol mss_dos
;;

let globalset_sole_index_off_sole_index soi =
  sole_index_of_mainset_symbol_predicate_off_sole_index 
    Globalset_symbol_v.is_globalset_symbol_off_mainset_symbol
    soi
;;

let globalset_tag_off_sole_index soi =
  let sym_dos = globalset_symbol_off_sole_index soi in
  let soi_dos = globalset_sole_index_off_sole_index soi in
  Tag_v.make sym_dos soi_dos
;;

let category_symbol_off_sole_index soi =
  let mss_cat = 
    mainset_symbol_of_mainset_symbol_predicate_off_sole_index 
      Globalset_symbol_v.is_category_symbol_off_mainset_symbol
      soi 
  in
  Globalset_symbol_v.category_symbol_off_mainset_symbol mss_cat
;;

let entity_symbol_off_sole_index soi =
  let mss_ent =
    mainset_symbol_of_mainset_symbol_predicate_off_sole_index 
      Globalset_symbol_v.is_entity_symbol_off_mainset_symbol
      soi
  in
  Globalset_symbol_v.entity_symbol_off_mainset_symbol mss_ent
;;

let contentfile_symbol_off_sole_index soi =
  let mss_cof = 
    mainset_symbol_of_mainset_symbol_predicate_off_sole_index 
      Globalset_symbol_v.is_contentfile_symbol_off_mainset_symbol
      soi
  in
  Globalset_symbol_v.contentfile_symbol_off_mainset_symbol mss_cof
;;

let usagefile_symbol_off_sole_index soi =
  let mss_usf = 
    mainset_symbol_of_mainset_symbol_predicate_off_sole_index 
      Globalset_symbol_v.is_usagefile_symbol_off_mainset_symbol
      soi 
  in
  Globalset_symbol_v.usagefile_symbol_off_mainset_symbol mss_usf
;;

let item_symbol_off_sole_index soi =
  let mss_ite = 
    mainset_symbol_of_mainset_symbol_predicate_off_sole_index 
      Globalset_symbol_v.is_item_symbol_off_mainset_symbol
      soi 
  in
  Globalset_symbol_v.item_symbol_off_mainset_symbol mss_ite
;;

let camlparagraph_symbol_off_sole_index soi =
  let mss_cap = 
    mainset_symbol_of_mainset_symbol_predicate_off_sole_index 
      Globalset_symbol_v.is_camlparagraph_symbol_off_mainset_symbol
      soi 
  in
  Globalset_symbol_v.camlparagraph_symbol_off_mainset_symbol mss_cap
;;

let camlparagraph_sole_index_off_sole_index soi =
  sole_index_of_mainset_symbol_predicate_off_sole_index 
    Globalset_symbol_v.is_camlparagraph_symbol_off_mainset_symbol
    soi
;;

let section_symbol_off_sole_index soi =
  let mss_sec = 
    mainset_symbol_of_mainset_symbol_predicate_off_sole_index 
      Globalset_symbol_v.is_section_symbol_off_mainset_symbol
      soi 
  in
  Globalset_symbol_v.section_symbol_off_mainset_symbol mss_sec
;;

let group_symbol_off_sole_index soi =
  let mss_gro = 
    mainset_symbol_of_mainset_symbol_predicate_off_sole_index 
      Globalset_symbol_v.is_group_symbol_off_mainset_symbol
      soi 
  in
  Globalset_symbol_v.group_symbol_off_mainset_symbol mss_gro
;;

let group_sole_index_off_sole_index soi =
  sole_index_of_mainset_symbol_predicate_off_sole_index 
    Globalset_symbol_v.is_group_symbol_off_mainset_symbol
    soi
;;

let camlline_symbol_off_sole_index soi =
  let mss_cal = 
    mainset_symbol_of_mainset_symbol_predicate_off_sole_index 
      Globalset_symbol_v.is_camlline_symbol_off_mainset_symbol
      soi 
  in
  Globalset_symbol_v.camlline_symbol_off_mainset_symbol mss_cal
;;

