(** {3 The functionalities for a Formula for a Caml Paragraph.}  *)

let nam_cod = "caml_paragraph_formula_v.ml";;

(** {6 Modules.} *)

module Cfs_t = Codefile_symbol_t
module Cfs_v = Codefile_symbol_v
module Cls_v = Caml_line_symbol_v
module Cnp_v = Constructor_path_v
module Cns_t = Constructor_symbol_t
module Cns_v = Constructor_symbol_v
module Cpf_t = Caml_paragraph_formula_t
module Cpfdf_v = Caml_paragraph_functions_definitions_formula_v
module Cpmdf_v = Caml_paragraph_modules_definitions_formula_v
module Cptdf_v = Caml_paragraph_types_definitions_formula_v
module Cps_t = Caml_paragraph_symbol_t
module Cps_v = Caml_paragraph_symbol_v
module Cst_v = Constructor_symbol_tree_v
module Cts_t = Category_symbol_t
module Cts_v = Category_symbol_v
module Ecc_v = Entitycategorycodefile_v
module Edp_v = Entity_data_provider_v
module Ens_v = Entity_symbol_v
module Erm_v = Error_messages_v
module Its_t = Item_symbol_t
module Its_v = Item_symbol_v
module Kyl_v = Key_list_v
module Trp_v = Triplet_v

(** {6 Ending.} *)

let retrieve_ending ecc =
  let ecc_t = 
    Cpc_v.top_entitycategorycodefile_off_caml_paragraph_context ecc 
  in

  [Cls_v.createdby ecc_t; 
   Cls_v.empty_line ();] 
;;

(** {6 Heading.} *)

let retrieve_heading ecc = 
  let trp_imc = 
    Cpc_v.symboltriplet_off_caml_paragraph_context ecc 
  in
  match trp_imc with  
    | (Its_t.Extracting_symbol, Cfs_t.Implementation_symbol, Cts_t.Symbol_symbol) 
    | (Its_t.Extracting_symbol, Cfs_t.Interface_symbol, Cts_t.Symbol_symbol)
    | (Its_t.Heading_symbol, _, _) 
    | (Its_t.Modules_symbol, Cfs_t.Implementation_symbol, Cts_t.Symbol_symbol)
    | (Its_t.Modules_symbol, Cfs_t.Interface_symbol, Cts_t.Symbol_symbol)
    | (Its_t.Modules_symbol, Cfs_t.Type_symbol, Cts_t.Symbol_symbol)
    | (Its_t.Naming_symbol, Cfs_t.Implementation_symbol, Cts_t.Symbol_symbol)
    | (Its_t.Naming_symbol, Cfs_t.Interface_symbol, Cts_t.Symbol_symbol)
    | (Its_t.Printing_symbol, Cfs_t.Implementation_symbol, Cts_t.Symbol_symbol)
    | (Its_t.Printing_symbol, Cfs_t.Interface_symbol, Cts_t.Symbol_symbol)
    | (Its_t.Querying_symbol, Cfs_t.Implementation_symbol, Cts_t.Symbol_symbol) 
    | (Its_t.Querying_symbol, Cfs_t.Interface_symbol, Cts_t.Symbol_symbol) 
    | (Its_t.Typing_symbol, Cfs_t.Type_symbol, Cts_t.Symbol_symbol)
    | (Its_t.Upgrading_symbol, Cfs_t.Implementation_symbol, Cts_t.Symbol_symbol) 
    | (Its_t.Upgrading_symbol, Cfs_t.Interface_symbol, Cts_t.Symbol_symbol) -> 
	[Cls_v.comment_line_item ecc;] 
 
    | trp_imc -> Erm_v.print_fatal_error nam_cod 
	  "retrieve_heading"
	  "a coherent triplet like (Extracting, Implementation, Symbol)"
	  (Format.sprintf "this unknown triplet %s" 
	     (Trp_v.name_capitalized Its_v.name Cfs_v.name Cts_v.name trp_imc))
	  "add it to menu above or this triplet is unknown"
;;

(** {6 Codefile_name.} *)

let retrieve_codefile_name ecc = 
  let ecc_t = 
    Cpc_v.top_entitycategorycodefile_off_caml_paragraph_context ecc 
  in
  let trp_imc = 
    Cpc_v.symboltriplet_off_caml_paragraph_context ecc 
  in
  match trp_imc with  
    | (Its_t.Heading_symbol, Cfs_t.Implementation_symbol, _) ->
	[Cls_v.let_nam_cod ecc_t] 
 
    | trp_imc -> Erm_v.print_fatal_error nam_cod 
	  "retrieve_codefile_name"
	  "a coherent triplet like (Heading, Implementation, Symbol)"
	  (Format.sprintf "this unknown triplet %s" 
	     (Trp_v.name_capitalized Its_v.name Cfs_v.name Cts_v.name trp_imc))
	  "add it to menu above or this triplet is unknown"
;;

(** {6 Retrieving.} *)

let retrieve = function 
  | Cps_t.Codefile_name_symbol ecc -> 
      retrieve_codefile_name ecc
 
  | Cps_t.Empty_symbol ecc -> []
	
  | Cps_t.Ending_symbol ecc -> 
     retrieve_ending ecc

  | Cps_t.Heading_symbol ecc -> 
      retrieve_heading ecc 
	
  | Cps_t.Functions_definitions_symbol smb_fun -> 
      Cpfdf_v.retrieve_functions_definitions smb_fun

  | Cps_t.Modules_definitions_symbol ecc -> 
      Cpmdf_v.retrieve_modules_definitions ecc
 
  | Cps_t.Type_definition_symbol ecc ->
      Cptf_v.retrieve_type_definition ecc
;;  

(** {6 Extracting.} *)

let caml_line_symbol_list_off_caml_paragraph_formula frm_cpg = 
  frm_cpg
;;

let caml_line_symbol_list_off_caml_paragraph_symbol smb_cpg =
  let frm_cpg = retrieve smb_cpg in
  caml_line_symbol_list_off_caml_paragraph_formula frm_cpg
;;
