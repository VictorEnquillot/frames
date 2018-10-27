(** {3 The Provider for Chemicalset_symbol by Sole_index.} *)

let nam_cod = "chemicalset_symbol_by_sole_index_production_provider_v.ml";;

(** {6 Modules.} *)


(** {6 Register.} *)

let nam_reg = "chemicalset_symbol_by_sole_index_register";;

let chemicalset_symbol_by_sole_index_register : 
    (Sole_index_t.sole_index, Chemicalset_symbol_t.chemicalset_symbol) 
    Register_t.register = Register_v.make 137;;

(** {6 Cleaning.} *)

let clear () = Register_v.clear chemicalset_symbol_by_sole_index_register;;

(** {6 Retrieving.} *)

let retrieve sip_gss =
  try Register_v.retrieve chemicalset_symbol_by_sole_index_register sip_gss 
  with Failure ("Not_stored:Register_v.retrieve") ->
    failwith ("Not_stored:Gsp_v.retrieve")
;;  

(** {6 Storing.} *)

let store sip_gss sym_gss =
  try Register_v.store chemicalset_symbol_by_sole_index_register sip_gss sym_gss
  with Failure ("Already_stored:Register_v.store") ->
    let sym_gss_old = retrieve sip_gss in
    if sym_gss <> sym_gss_old
    then Error_messages_v.print_fatal_error nam_cod 
	"store"
	(Format.sprintf "for key >%s< already stored value >%s< equal new one"
	   (Sole_index_v.name sip_gss) 
	   (Chemicalset_symbol_v.name sym_gss_old)
	)
	(Format.sprintf "for new one >%s<@.Register stores:@.%s" 
	   (Chemicalset_symbol_v.name sym_gss) 
	   (Register_v.string_of_register
	      (Sole_index_v.name)
	      (fun s -> (Format.sprintf "%s" (Chemicalset_symbol_v.name s)))
	      chemicalset_symbol_by_sole_index_register
	   )
	)
	"Check or re-run if it is a test"
    else ()
;;

let store_force sip_gss sym_gss =
  Register_v.store_force chemicalset_symbol_by_sole_index_register sip_gss sym_gss
;;

(** {6 Building.} *)

(** {6 Providing.} *)

let provide sip_gss =
  if Register_v.is_stored chemicalset_symbol_by_sole_index_register sip_gss 
  then retrieve sip_gss
  else 
    Error_messages_v.print_fatal_error nam_cod "provide"
      (Format.sprintf "to find a Chemicalset Symbol associated with sole_index %s" (Sole_index_v.name sip_gss))
      "Not Stored" 
      (Format.sprintf "Only father formula can create this Symbol@.with :@.    Chemicalset_symbol_by_sole_index_production_provider_v.store sip_x sym_x")
;;

let sole_index_n_chemicalset_symbol_of_chemicalset_symbol_predicate gss_pre =
  let ent_l = 
    Register_v.entry_list_of_value_predicate_of_register gss_pre
      chemicalset_symbol_by_sole_index_register 
  in
  match List.length ent_l with
  | 1 -> 
      List.hd ent_l
  | 0 ->
      Error_messages_v.print_fatal_error nam_cod "sole_index_n_chemicalset_symbol_of_chemicalset_symbol_predicate"
	(Format.sprintf "to find a Chemicalset_symbol")
	"Not Stored" 
	"Check"
  | i ->
      Error_messages_v.print_fatal_error nam_cod "sole_index_n_chemicalset_symbol_of_chemicalset_symbol_predicate"
	(Format.sprintf "to find only 1 Chemicalset_symbol")
	(Format.sprintf "%s" (Doublet_list_v.name_with_separator Sole_index_v.name Chemicalset_symbol_v.name "; " ent_l))	
	"Check"
;;

let sole_index_of_chemicalset_symbol_predicate gss_pre =
  let (sip, gss) =
    sole_index_n_chemicalset_symbol_of_chemicalset_symbol_predicate gss_pre in
  sip
;;

let chemicalset_symbol_of_chemicalset_symbol_predicate gss_pre =
  let (sip, gss) =
    sole_index_n_chemicalset_symbol_of_chemicalset_symbol_predicate gss_pre in
  gss
;;

