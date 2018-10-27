(** {3 The functionalities for a Formula for an Item of a Nondatastructure Entity.}  *)

let nam_cod = "item_nondatstructure_formula_v.ml";;

(** {6 Modules.} *)

module Cfs_t = Codefile_symbol_t
module Cfs_v = Codefile_symbol_v
module Cls_v = Caml_line_symbol_v
module Cmt_v = Constructor_tag_tree_v
module Cmtp_v = Constructor_tag_tree_provider_v
module Cnm_v = Constructor_tag_v
module Cnp_v = Constructor_path_v
module Cns_t = Constructor_symbol_t
module Cns_v = Constructor_symbol_v
module Cpc_v = Caml_paragraph_context_v
module Cpf_v = Caml_paragraph_formula_v
module Cps_t = Caml_paragraph_symbol_t
module Cps_v = Caml_paragraph_symbol_v
module Cts_t = Category_symbol_t
module Cts_v = Category_symbol_v
module Dbt_v = Doublet_v
module Ecc_v = Entitycategorycodefile_v
module Edp_v = Entity_data_provider_v
module Ens_v = Entity_symbol_v
module Erm_v = Error_messages_v
module Itf_t = Item_formula_t
module Its_t = Item_symbol_t
module Its_v = Item_symbol_v
module Kyl_v = Key_list_v
module Lst_v = List_v
module Tgv_v = Target_value_v
module Tre_t = Tree_t 
module Tre_v = Tree_v 
module Trp_v = Triplet_v
module Tvp_v = Target_value_provider_v

(** {6 Translating Constructor Path and Item Symbol to Caml_paragraph Symbol. The most important function.} *)

let bottom_caml_paragraph_symbol_of_entitycategorycodefile_list_of_item_symbol ecc_l smb_itm =
  let ecc_b = List.hd ecc_l in
  let smb_ent_b = Ecc_v.entity_symbol_off_entitycategorycodefile ecc_b in
  let smb_cnt_b = Cns_v.make smb_ent_b in
  let dep_cnt_b = List.length ecc_l in
  let smb_cat = Ecc_v.category_symbol_off_entitycategorycodefile ecc_b in
  let smb_cfi = Ecc_v.codefile_symbol_off_entitycategorycodefile ecc_b in

  match (smb_cat, smb_cfi, smb_itm)  with
    | (Cts_t.Symbol_symbol, Cfs_t.Implementation_symbol, Its_t.Extracting_symbol) 
    | (Cts_t.Symbol_symbol, Cfs_t.Interface_symbol, Its_t.Extracting_symbol) ->
	begin
	  match (smb_cnt_b, dep_cnt_b) with
	  | (Cns_t.Constructor_fictive_symbol 
	       Cns_t.Constructor_bare_symbol _, 2) ->
		 empty ecc_b 

	  | (_, 1) -> empty ecc_b

	  | (_, 2) -> Cps_v.function_s_off_t_function ecc_b 

	  | _ -> function_b_off_t_t_argument ecc_b
	end	

    | (Its_t.Modules_symbol, _, _) ->

	empty ecc_b 

    | (Its_t.Naming_symbol, Cfs_t.Implementation_symbol, Cts_t.Symbol_symbol) ->
	begin
	  match (smb_cnb, dep_cnb) with
	    | (_, 1) -> function_name_function ecc_b
	    | (_, _) -> empty ecc_b 
	end	
	  
    | (Its_t.Querying_symbol, Cfs_t.Implementation_symbol, Cts_t.Symbol_symbol)
    | (Its_t.Querying_symbol, Cfs_t.Interface_symbol, Cts_t.Symbol_symbol) ->
	begin
	  match (smb_cnb, dep_cnb) with
	  | (Cns_t.Constructor_fictive_symbol 
	       Cns_t.Constructor_bare_symbol _, _) ->
		 empty ecc_b 

	  | (_, 1) -> empty ecc_b

	  | (_, 2) -> function_is_s_off_t_function ecc_b 

	  | _ -> function_is_b_off_t_t_argument ecc_b
	end	

    | (Its_t.Typing_symbol, Cfs_t.Type_symbol, Cts_t.Symbol_symbol) ->
	begin
	  match (smb_cnb, dep_cnb) with
	    | (_, 1) -> type_definition ecc_b

	    | ( _, _) -> empty ecc_b 
	end	
	  
    | (Its_t.Upgrading_symbol, Cfs_t.Implementation_symbol, Cts_t.Symbol_symbol)
    | (Its_t.Upgrading_symbol, Cfs_t.Interface_symbol, Cts_t.Symbol_symbol) ->
	begin
	  match (smb_cnb, dep_cnb) with
	  | (Cns_t.Constructor_fictive_symbol 
	       (Cns_t.Constructor_bare_symbol _), 1) -> 
		 Erm_v.print_fatal_error nam_cod 
		   "bottom_caml_paragraph_symbol_of_bottom_caml_paragraph_context"
		   "depth > 1 for a fictive constructor"
		   (Format.sprintf " Constructor >%s< depth = %i" 
		      (Cns_v.name smb_cnb) dep_cnb)
		   "check"

	  | (Cns_t.Constructor_fictive_symbol 
	       (Cns_t.Constructor_bare_symbol _), _) ->
		(* function_t_of_s_argument ecc_b *)
		  function_constant ecc_b
 
	  | (Cns_t.Constructor_fictive_symbol _, _) ->
	      empty ecc_b 
		
	  | (Cns_t.Constructor_proper_symbol _, 1) -> 
	      empty ecc_b

	  | (Cns_t.Constructor_proper_symbol _, 2) -> 
	      function_t_of_s_argument ecc_b 

	  | (Cns_t.Constructor_proper_symbol _, _) -> 
	      function_t_of_b_argument ecc_b
	end	

     | _ -> Erm_v.print_fatal_error nam_cod 
	   "bottom_caml_paragraph_symbol_of_bottom_caml_paragraph_context"
	   "a coherent triplet of form like >(Item, Codefile, Category)<"
	   (Format.sprintf "an incoherent or unkown triplet >%s<" 
	      (Trp_v.name_capitalized Its_v.name Cfs_v.name Cts_v.name trp_imc))
	   "add it to menu above or check input"
;;

(** {6 Retrieving.} *)

(** {9 Retrieving Item Extracting.} *)

let retrieve_extracting_hierarchical mrk_cnt_t kyl_itm =
  (* Cut out fictive constructors : they cannot be extracted. *)
  let mrk_cnf_t =
    Tre_v.subtree_remove 
      (fun (s, d) -> ( 
	Cns_v.is_constructor_fictive_symbol_off_constructor_symbol s )
      ) mrk_cnt_t
  in
  
  let ctt_cpg_t = 
    Cpc_v.caml_paragraph_context_tree_of_constructor_tag_tree_of_item_key_list 
      mrk_cnf_t kyl_itm 
  in

  let smb_cpg_t = Tre_v.map
      (* translation ctt -> cpg *)
      Cps_v.bottom_caml_paragraph_symbol_of_bottom_caml_paragraph_context 
      ctt_cpg_t
  in    
  let ctt_cpg = Tre_v.root_off_tree ctt_cpg_t in

  Tre_v.make_of_node 
    (Cps_v.heading ctt_cpg)
    [smb_cpg_t] 
;;

(** {9 Retrieving Item Modules.} *)

let caml_paragraph_symbol_list_in_codefile_type ctt_cpg =  
  let smb_cxt = Cps_v.modules_type_definitions_external ctt_cpg in (* <--- translation *)
  let smb_clt = Cps_v.modules_type_definitions_local ctt_cpg in (* <--- translation *)

  [smb_cxt; smb_clt] 
;;

let caml_paragraph_symbol_list_in_codefile_implementation ctt_cpg = 
  let smb_clt = Cps_v.modules_type_definitions_local ctt_cpg in
  let smb_cli = Cps_v.modules_implementation_definitions_local ctt_cpg in
  let smb_cxi = Cps_v.modules_implementation_definitions_external ctt_cpg in

  [smb_cxi; smb_clt; smb_cli] 
;;

let caml_paragraph_symbol_list_hierarchical ctt_cpg =
  let smb_cfi = Cpc_v.codefile_symbol_off_caml_paragraph_context ctt_cpg in
  match smb_cfi with
  | Cfs_t.Type_symbol -> 
      caml_paragraph_symbol_list_in_codefile_type ctt_cpg 
  | Cfs_t.Implementation_symbol -> 
      caml_paragraph_symbol_list_in_codefile_implementation ctt_cpg 
  | _ ->    
      Erm_v.print_fatal_error nam_cod
	"caml_paragraph_symbol_list_hierarchical"
	"Codefile Symbol were Type_symbol|Implementation_symbol" 
	(Format.sprintf ">%s<" (Cfs_v.name smb_cfi))
      "check"
;;

let caml_paragraph_symbol_list_redundant ctt_cpg = 
  caml_paragraph_symbol_list_hierarchical ctt_cpg
;;

let retrieve_modules_hierarchical ctt_cpg = 
  let red_l = caml_paragraph_symbol_list_redundant ctt_cpg in
  let unr_l = Lst_v.once_list_of_list red_l in
  let smb_cpg_tl = List.map Tre_v.make_of_leaf unr_l in

  Tre_v.make_of_node 
    (Cps_v.heading ctt_cpg) 
    smb_cpg_tl
;;

(** {9 Retrieving Item Naming.} *)

let retrieve_naming_hierarchical mrk_cnt_t kyl_itm =
  let mrk_cnt = Tre_v.root_off_tree mrk_cnt_t in
  let ctt_cpg = Cpc_v.make [mrk_cnt] kyl_itm in
  let smb_cpg = Cps_v.function_name_function ctt_cpg in
  Tre_v.make_of_node 
    (Cps_v.heading ctt_cpg) 
    [Tre_v.make_of_leaf smb_cpg]
;;

(** {9 Retrieving Item Printing.} *)

let retrieve_printing_hierarchical mrk_cnt_t kyl_itm =
  let mrk_cnt = Tre_v.root_off_tree mrk_cnt_t in
  let ctt_cpg = Cpc_v.make [mrk_cnt] kyl_itm in
  let smb_cpg = Cps_v.function_print_function ctt_cpg in
  Tre_v.make_of_node 
    (Cps_v.heading ctt_cpg) 
    [Tre_v.make_of_leaf smb_cpg]
;;

(** {9 Retrieving Item Querying.} *)

let retrieve_querying_hierarchical mrk_cnt_t kyl_itm =
  (* Cut out fictive constructors : they cannot be queryied. *)
  let mrk_cne_t =
    Tre_v.subtree_remove 
      (fun (s, d) -> ( 
	Cns_v.is_constructor_fictive_symbol_off_constructor_symbol s )
      ) mrk_cnt_t
  in
  
  let ctt_cpg_t = 
    Cpc_v.caml_paragraph_context_tree_of_constructor_tag_tree_of_item_key_list 
      mrk_cne_t kyl_itm 
  in
  
  let smb_cpg_t = Tre_v.map
      (* translation ctt -> cpg *)
      Cps_v.bottom_caml_paragraph_symbol_of_bottom_caml_paragraph_context 
      ctt_cpg_t
  in    
  let ctt_cpg = Tre_v.root_off_tree ctt_cpg_t in

  Tre_v.make_of_node 
    (Cps_v.heading ctt_cpg)
    [smb_cpg_t] 
;;

(** {9 Retrieving Item Typing.} *)

let retrieve_typing_type_symbol ctt_cpg =
  (* Only One paragraph symbol for Item Typing *)
  let smb_cpg = Cps_v.type_definition ctt_cpg in
  Tre_v.make_of_node 
    (Cps_v.heading ctt_cpg) 
    [Tre_v.make_of_leaf smb_cpg]
;;

(** {9 Retrieving Item Upgrading.} *)

let retrieve_upgrading_hierarchical mrk_cnt_t kyl_itm =
  let ctt_cpg_t = 
    Cpc_v.caml_paragraph_context_tree_of_constructor_tag_tree_of_item_key_list 
      mrk_cnt_t kyl_itm 
  in
  
  let smb_cpg_t = Tre_v.map
      (* translation ctt -> cpg *)
      Cps_v.bottom_caml_paragraph_symbol_of_bottom_caml_paragraph_context 
      ctt_cpg_t
  in    
  let ctt_cpg = Tre_v.root_off_tree ctt_cpg_t in

  Tre_v.make_of_node 
    (Cps_v.heading ctt_cpg)
    [smb_cpg_t] 
;;

(** {6 Retrieving Including.} *)

(** {6 Retrieving.} *)

let retrieve_hierarchical kyl_itm = 
  let smb_ent = Kyl_v.entity_symbol_off_key_list kyl_itm in 
  if not (Ens_v.is_entity_proper_symbol_off_entity_symbol smb_ent)
  then
      Erm_v.print_fatal_error nam_cod
	"codefile_file_name_of_key_list"
	"an Entity Proper" 
      (Format.sprintf ">%s<" (Ens_v.name smb_ent))
      "check"
  else
    let smb_cnt = Cns_v.make smb_ent in
    let mrk_cnt_t = Cmtp_v.provide smb_cnt in 
    let mrk_cnt = Tre_v.root_off_tree mrk_cnt_t in
    
    let pth_cnt = [mrk_cnt] in
    let ctt_cpg = Cpc_v.make pth_cnt kyl_itm in

    let smb_cat = Kyl_v.category_symbol_off_key_list kyl_itm in
    let smb_cfi = Kyl_v.codefile_symbol_off_key_list kyl_itm in
    let smb_itm = Kyl_v.item_symbol_off_key_list kyl_itm in
    let trp_imc = Trp_v.make smb_itm smb_cfi smb_cat in
    
    match trp_imc with
    | (Its_t.Ending_symbol, _, _) ->
	let smb_cpg = Cps_v.ending ctt_cpg in
	Tre_v.make_of_leaf smb_cpg
	  
    | Its_t.Extracting_symbol, _, _ ->
	(* Non-entity Constructor are excluded *)
	retrieve_extracting_hierarchical mrk_cnt_t kyl_itm
	  
    | Its_t.Heading_symbol, Cfs_t.Implementation_symbol, _ -> 
	Tre_v.make_of_node 
	  (Cps_v.heading ctt_cpg) 
	  [Tre_v.make_of_leaf (Cps_v.codefile_name ctt_cpg)]
	  
    | Its_t.Heading_symbol, _, _ -> 
	let ctt_cpg = Cpc_v.make pth_cnt kyl_itm in
	let smb_cpg = Cps_v.heading ctt_cpg in
	Tre_v.make_of_leaf smb_cpg
	  
    | Its_t.Including_symbol, _, _ ->
 	Tre_v.empty
	  
    | Its_t.Modules_symbol, _, Cts_t.Symbol_symbol ->
        retrieve_modules_hierarchical ctt_cpg
	  
    | (Its_t.Naming_symbol, _, _) ->
	retrieve_naming_hierarchical mrk_cnt_t kyl_itm
	  
    | (Its_t.Printing_symbol, _, _) ->
	retrieve_printing_hierarchical mrk_cnt_t kyl_itm
	  
    | Its_t.Querying_symbol, _, _ ->
	(* Non-entity Constructors are excluded *)
	retrieve_querying_hierarchical mrk_cnt_t kyl_itm
	  
    | (Its_t.Typing_symbol, Cfs_t.Type_symbol, Cts_t.Symbol_symbol) ->
	retrieve_typing_type_symbol ctt_cpg
	  
    | Its_t.Upgrading_symbol, _, _ ->
	(* Top Constructor is excluded *)
	retrieve_upgrading_hierarchical mrk_cnt_t kyl_itm

    | _ -> 
	Erm_v.print_fatal_error nam_cod 
	  "retrieve" 
	  "coherent triplet" 
	  (Format.sprintf "triplet >%s<" 
	     (Trp_v.name_capitalized Its_v.name Cfs_v.name Cts_v.name trp_imc))
          "check"
;;
