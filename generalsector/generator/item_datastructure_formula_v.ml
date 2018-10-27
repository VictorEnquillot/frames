(** {3 The functionalities for a Formula for an Item of a Datstructure Entity.}  *)

let nam_cod = "item_datastructure_formula_v.ml";;

(** {6 Modules.} *)

module Cls_v = Caml_line_symbol_v
module Cns_t = Constructor_symbol_t
module Cns_v = Constructor_symbol_v
module Cnm_v = Constructor_tag_v
module Cnp_v = Constructor_path_v
module Cmt_v = Constructor_tag_tree_v
module Cmtp_v = Constructor_tag_tree_provider_v
module Cpc_v = Caml_paragraph_context_v
module Cpf_v = Caml_paragraph_formula_v
module Cpfddf_v = Caml_paragraph_functions_definitions_datastructure_formula_v
module Cptddf_v = Caml_paragraph_types_definitions_datastructure_formula_v
module Cpmddf_v = Caml_paragraph_modules_definitions_datastructure_formula_v
module Cps_t = Caml_paragraph_symbol_t
module Cps_v = Caml_paragraph_symbol_v
module Cts_t = Category_symbol_t
module Cts_v = Category_symbol_v
module Det_v = Datastructure_entitycategorycodefile_tree_v

module Dbt_v = Doublet_v
module Ens_v = Entity_symbol_v
module Erm_v = Error_messages_v
module Edp_v = Entity_data_provider_v
module Itf_t = Item_formula_t
module Its_t = Item_symbol_t
module Its_v = Item_symbol_v
module Kyl_v = Key_list_v
module Lst_v = List_v
module Cfs_t = Codefile_symbol_t
module Cfs_v = Codefile_symbol_v
module Tgv_v = Target_value_v
module Tvp_v = Target_value_provider_v
module Tre_t = Tree_t 
module Tre_v = Tree_v 
module Trp_v = Triplet_v


(** {6 Retrieving.} *)

(** {9 Retrieving Item Extracting.} *)

 let retrieve_extracting_datastructure ctt_cpg =
   let ecc_l = Dst_v.entitycategorycodefile_list_off_caml_paragraph_context ctt_cpg in
   let ecc_t = Lst_v.ultimate_element_off_list ecc_l in
   let ecc_s = Lst_v.penultimate_element_off_list ecc_l in
   let ecc_s_l = Lst_v.drop_first_elements_of_int_of_list 2 ecc_l in

   let smb_cpg_s_l = 
     List.map (Cps_v.function_s_off_t_t_argument_datastructure ecc_l) ecc_gs_l (* s is left or middle or right... *) 
  in
  
  Tre_v.make_of_node 
    (Cps_v.heading ctt_cpg) 
    (List.map Tre_v.make_of_leaf smb_cpg_s_l)  (* each son gives  a caml_paragraph_symbol *)
;;

(** {9 Retrieving Item Modules.} *)

let caml_paragraph_symbol_list_in_codefile_type ctt_cpg =  
  let ecc_l = Dst_v.entitycategorycodefile_list_off_caml_paragraph_context ctt_cpg in
  
  let smb_cxt = Cps_v.modules_type_definitions_external ecc_l in (* <--- translation *)
  let smb_clt = Cps_v.modules_type_definitions_local ecc_l in (* <--- translation *)

  [smb_cxt; smb_clt] 
;;

let caml_paragraph_symbol_list_in_codefile_implementation ecc_l = 
  let ecc_l = Dst_v.entitycategorycodefile_list_off_caml_paragraph_context ctt_cpg in
  
  let smb_clt = Cps_v.modules_type_definitions_local ecc_l in
  let smb_cli = Cps_v.modules_implementation_definitions_local ecc_l in
  let smb_cxi = Cps_v.modules_implementation_definitions_external ecc_l in

  [smb_cxi; smb_clt; smb_cli] 
;;

let caml_paragraph_symbol_datastructure ctt_cpg =
  (* specific datastructure modules definitions *) (**** TODO ??? ***)
  let smb_cfi = Cpc_v.codefile_symbol_off_caml_paragraph_context ctt_cpg in
  match smb_cfi with
  | Cfs_t.Type_symbol -> 
      Cps_v.modules_type_definitions_local ctt_cpg
  | Cfs_t.Implementation_symbol ->
      Cps_v.modules_implementation_definitions_local ctt_cpg
  | _ ->    
      Erm_v.print_fatal_error nam_cod
	"caml_paragraph_symbol_list_datastructure"
	"Codefile Symbol were Type_symbol|Implementation_symbol" 
	(Format.sprintf ">%s<" (Cfs_v.name smb_cfi))
      "check"
;;

let retrieve_modules_datastructure ctt_cpg = 
  let red_l = caml_paragraph_symbol_list_redundant ctt_cpg in
  let unr_l = Lst_v.once_list_of_list red_l in
  let smb_cpg_tl = List.map Tre_v.make_of_leaf unr_l in

  Tre_v.make_of_node 
    (Cps_v.heading ctt_cpg) 
    smb_cpg_tl
;;

(** {9 Retrieving Item Naming.} *)

let retrieve_naming_datastructure ctt_cpg_t =
  let ctt_cpg_r = Tre_v.root_off_tree ctt_cpg_t in
  let ctt_cpg_l = Tre_v.topsonnode_list_off_tree ctt_cpg_t in
  let ctt_cpg_s = try Lst_v.element_off_one_element_list ctt_cpg_l
  with Failure "Several_elements:Lst_v.element_off_one_element_list" ->
    Erm_v.print_fatal_error nam_cod "retrieve_naming_datastructure"
      "Only one son for tree datastructure"
      (Format.sprintf "this son list >%s<" 
	 (Lst_v.name_with_separator Cpc_v.name "; " ctt_cpg_l) )
      "check" 
  in

  let smb_cpg_s = Cps_v.function_name_function ecc_l in (* let name = function *) 

  Tre_v.make_of_node 
    (Cps_v.heading ctt_cpg_r) 
    [Tre_v.make_of_leaf smb_cpg_s]  (* the only paragraph *)
;;
 
(** {9 Retrieving Item Printing.} *)

let retrieve_printing_datastructure ctt_cpg_t =
  let ctt_cpg_r = Tre_v.root_off_tree ctt_cpg_t in
  let ctt_cpg_l = Tre_v.topsonnode_list_off_tree ctt_cpg_t in
  let ctt_cpg_s = try Lst_v.element_off_one_element_list ctt_cpg_l
  with Failure "Several_elements:Lst_v.element_off_one_element_list" ->
    Erm_v.print_fatal_error nam_cod "retrieve_naming_datastructure"
      "Only one son for tree datastructure"
      (Format.sprintf "this son list >%s<" 
	 (Lst_v.name_with_separator Cpc_v.name "; " ctt_cpg_l) )
      "check" 
  in
  let smb_cpg_s = Cps_v.function_name_function ctt_cpg_s in (* let print ppf = function *) 

  Tre_v.make_of_node 
    (Cps_v.heading ctt_cpg_r) 
    [Tre_v.make_of_leaf smb_cpg_s] (* the only paragraph *)
;;
 
(** {9 Retrieving Item Querying.} *)

let retrieve_querying_datastructure mrk_cnt_t kyl_itm =
  let mrk_cnt = Tre_v.root_off_tree mrk_cnt_t in
  let ctt_cpg = Cpc_v.make [mrk_cnt] kyl_itm in
  Tre_v.make_of_node 
    (Cps_v.heading ctt_cpg) 
    []  (* no possible query at the moment *)
;;

(** {9 Retrieving Item Typing.} *)

(** {9 Retrieving Item Upgrading.} *)

let retrieve_upgrading_datastructure mrk_cnt_t kyl_itm =
  let mrk_cnt = Tre_v.root_off_tree mrk_cnt_t in
  let ctt_cpg = Cpc_v.make [mrk_cnt] kyl_itm in
  Tre_v.make_of_node 
    (Cps_v.heading ctt_cpg) 
    []  (* no upgrading. *)
;;

(** {6 Retrieving Including.} *)

(** {6 Retrieving.} *)

let retrieve_datastructure kyl_itm = 
  let smb_ent = Kyl_v.entity_symbol_off_key_list kyl_itm in 
  let smb_cnt = Cns_v.make smb_ent in
  let mrk_cnt_t = Cmtp_v.provide smb_cnt in 

  let ecc_t = Det_v.make kyl_itm in
  let ecc_top = Tre_v.root_off_tree ecc_t in

  let pth_ecc_t = Tre_v.path_tree_of_tree ecc_t in
  
  let smb_cat = Kyl_v.category_symbol_off_key_list kyl_itm in
  let smb_cfi = Kyl_v.codefile_symbol_off_key_list kyl_itm in
  let smb_itm = Kyl_v.item_symbol_off_key_list kyl_itm in
  let trp_imc = Trp_v.make smb_itm smb_cfi smb_cat in
  
  match trp_imc with
  | (Its_t.Ending_symbol, _, _) ->
      Tre_v.make_of_leaf (Cps_v.ending ecc_top) 
	
  | Its_t.Extracting_symbol, _, _ ->
      Utils_v.not_yet_implemented nam_cod "retrieve_extracting_datastructure ecc_t"
	
  | Its_t.Heading_symbol, Cfs_t.Implementation_symbol, _ -> 
      Tre_v.make_of_node 
	(Cps_v.heading ecc_top) 
	[Tre_v.make_of_leaf (Cps_v.codefile_name ecc_top)]
	
  | Its_t.Heading_symbol, _, _ -> 
      Tre_v.make_of_leaf (Cps_v.heading ecc_top) 
	
  | Its_t.Including_symbol, _, _ ->
      Tre_v.empty
	
  | Its_t.Modules_symbol, _, Cts_t.Symbol_symbol ->
      retrieve_modules_datastructure ecc_top
	
  | (Its_t.Naming_symbol, _, _) ->
      Utils_v.not_yet_implemented nam_cod "retrieve_naming_datastructure ctt_cpg_t"
	
  | (Its_t.Printing_symbol, _, _) ->
      Utils_v.not_yet_implemented nam_cod "retrieve_printing_datastructure ctt_cpg_t"
	
  | Its_t.Querying_symbol, _, _ ->
      (* Non-entity Constructors are excluded *)
      Utils_v.not_yet_implemented nam_cod "retrieve_querying_datastructure mrk_cnt_t kyl_itm"
	
  | (Its_t.Typing_symbol, Cfs_t.Type_symbol, Cts_t.Symbol_symbol) ->
      Utils_v.not_yet_implemented nam_cod "retrieve_datastructure_type_definition ecc_top"
	
  | Its_t.Upgrading_symbol, _, _ ->
      (* Top Constructor is excluded *)
      Utils_v.not_yet_implemented nam_cod "retrieve_upgrading_datastructure mrk_cnt_t kyl_itm"
	
  | _ -> 
      Erm_v.print_fatal_error nam_cod 
	"retrieve" 
	"coherent triplet" 
	(Format.sprintf "triplet >%s<" 
	   (Trp_v.name_capitalized Its_v.name Cfs_v.name Cts_v.name trp_imc))
        "check"
;;
