(** {3 The Provider for Globalset_symbol by Sole_index.} *)

let nam_cod = "Globalset_symbol_by_sole_index_provider_v.ml";;

(** {6 Building.} *)

let build_n_store globalset_symbol_of_localset_symbol soi loc_sym =
  let dss = globalset_symbol_of_localset_symbol loc_sym in
  Globalset_symbol_by_sole_index_register_v.store soi dss
;;

let build_n_store_son_list globalset_symbol_of_localset_symbol soi_fat lss_son_l =
  let soi_son_l = 
    Sole_index_v.son_sole_index_list_of_length_of_sole_index 
      (List.length lss_son_l)
      soi_fat
  in
  List.iter2
    (build_n_store globalset_symbol_of_localset_symbol)
    soi_son_l 
    lss_son_l
;;
 
(** {6 Providing.} *)

let provide soi_dss =
  if Register_v.is_stored Globalset_symbol_by_sole_index_register_v.register soi_dss 
  then Globalset_symbol_by_sole_index_register_v.retrieve soi_dss
  else 
    Error_messages_v.print_fatal_error nam_cod "provide"
      (Format.sprintf "to find a Globalset Symbol associated with sole_index %s" (Sole_index_v.name soi_dss))
      "Not Stored" 
      (Format.sprintf "Father\'s formula should have create this entry@.with :@.    Globalset_symbol_by_sole_index_provider_v.store soi_x sym_x.@.    Here is a dump of globalset_symbol_by_sole_index_register:@. %s@.    Register length =%i" 
	 (Globalset_symbol_by_sole_index_register_v.dump ()) 
	 (Register_v.length Globalset_symbol_by_sole_index_register_v.register) 
)
;;

(** {6 Extracting.} *)

let sole_index_n_globalset_symbol_list_of_globalset_symbol_predicate dss_pre =
  Register_v.entry_list_of_value_predicate_of_register dss_pre
    Globalset_symbol_by_sole_index_register_v.register
;;

let sole_index_n_globalset_symbol_of_globalset_symbol_predicate_off_sole_index dss_pre soi =
  let nam_fun = "sole_index_n_globalset_symbol_of_globalset_symbol_predicate_off_sole_index" in
  
  let soi_l = Sole_index_v.sole_index_list_off_sole_index soi in
  let dss_l = List.map provide soi_l in
  let soi_n_dss_dol = Doublet_list_v.make soi_l dss_l in
  if (not (List_v.is_once_list_of_list dss_l)) 
  then
    Error_messages_v.print_fatal_error nam_cod nam_fun
      (Format.sprintf "Symbols were defined Once along Sole_index %s" (Sole_index_v.name soi))
      (Format.sprintf "this Symbol list :@.   %s" 
	 (Doublet_list_v.name_with_separator Sole_index_v.name Globalset_symbol_v.fullname ";\n   " soi_n_dss_dol)
      )
      "Refine predicate"
  else
    try 
    
      Doublet_list_v.find_if_right dss_pre soi_n_dss_dol
  
    with Failure("Not_found:doublet_list_v.ml:find_if_right") ->
      Error_messages_v.print_fatal_error nam_cod 
	"sole_index_n_globalset_symbol_of_globalset_symbol_predicate_off_sole_index"
	(Format.sprintf "predicate were true once along Sole_index %s" (Sole_index_v.name soi))
	(Format.sprintf "this Symbol list :@.   %s" 
	   (Doublet_list_v.name_with_separator Sole_index_v.name Globalset_symbol_v.fullname ";\n   " soi_n_dss_dol)
	)
	"Redefine predicate"
;;

let globalset_symbol_of_globalset_symbol_predicate_off_sole_index dss_pre soi =
  let soi_n_dss = 
    sole_index_n_globalset_symbol_of_globalset_symbol_predicate_off_sole_index 
      dss_pre 
      soi 
  in
  Doublet_v.right_off_doublet soi_n_dss
;;

let sole_index_of_globalset_symbol_predicate_off_sole_index dss_pre soi =
  let soi_n_dss = 
    sole_index_n_globalset_symbol_of_globalset_symbol_predicate_off_sole_index 
      dss_pre 
      soi 
  in
  Doublet_v.left_off_doublet soi_n_dss
;;

(** {6 Getting Any_localset_symbol from Any_sole_index} *)

let any_chemicalset_symbol_from_any_sole_index soi_any =
  let nam_fun = "any_chemicalset_symbol_from_any_sole_index" in

  let dss_any = provide soi_any in
  if not (Globalset_symbol_v.is_chemicalset_symbol_off_globalset_symbol dss_any)
  then
      Error_messages_v.print_fatal_error nam_cod nam_fun
      (Format.sprintf "Globalset index in Sole_index %s were Chemicalset index" (Sole_index_v.name soi_any))
      (Format.sprintf "Globalset Symbol is %s" (Globalset_symbol_v.typename dss_any))
      "Check"
  else
    Globalset_symbol_v.chemicalset_symbol_off_globalset_symbol dss_any
;;

let any_figureset_symbol_from_any_sole_index soi_any =
  let nam_fun = "any_figureset_symbol_from_any_sole_index" in

  let dss_any = provide soi_any in
  if not (Globalset_symbol_v.is_figureset_symbol_off_globalset_symbol dss_any)
  then
      Error_messages_v.print_fatal_error nam_cod nam_fun
      (Format.sprintf "Globalset index in Sole_index %s were Figureset index" (Sole_index_v.name soi_any))
      (Format.sprintf "Globalset Symbol is %s" (Globalset_symbol_v.typename dss_any))
      "Check"
  else
    Globalset_symbol_v.figureset_symbol_off_globalset_symbol dss_any
;;

let any_generatorset_symbol_from_any_sole_index soi_any =
  let nam_fun = "any_generatorset_symbol_from_any_sole_index" in

  let dss_any = provide soi_any in
  if not (Globalset_symbol_v.is_generatorset_symbol_off_globalset_symbol dss_any)
  then
      Error_messages_v.print_fatal_error nam_cod nam_fun
      (Format.sprintf "Globalset index in Sole_index %s were Generatorset index" (Sole_index_v.name soi_any))
      (Format.sprintf "Globalset Symbol is %s" (Globalset_symbol_v.typename dss_any))
      "Check"
  else
    Globalset_symbol_v.generatorset_symbol_off_globalset_symbol dss_any
;;

let any_musicset_symbol_from_any_sole_index soi_any =
  let nam_fun = "any_musicset_symbol_from_any_sole_index" in

  let dss_any = provide soi_any in
  if not (Globalset_symbol_v.is_musicset_symbol_off_globalset_symbol dss_any)
  then
      Error_messages_v.print_fatal_error nam_cod nam_fun
      (Format.sprintf "Globalset index in Sole_index %s were Musicset index" (Sole_index_v.name soi_any))
      (Format.sprintf "Globalset Symbol is %s" (Globalset_symbol_v.typename dss_any))
      "Check"
  else
    Globalset_symbol_v.musicset_symbol_off_globalset_symbol dss_any
;;

