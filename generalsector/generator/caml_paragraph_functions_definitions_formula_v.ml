(** {3 The functionalities for the Functions_definitions section of a Formula for a Caml Paragraph.}  *)

let nam_cod = "caml_paragraph_functions_definitions_formula_v.ml";;

(** {6 Modules.} *)

module Cnp_v = Constructor_path_v
module Cmtp_v = Constructor_tag_tree_provider_v
module Cptp_v = Constructor_path_tree_provider_v
module Cnm_v = Constructor_tag_v
module Cns_v = Constructor_symbol_v
module Cls_v = Caml_line_symbol_v
module Cts_t = Category_symbol_t
module Cts_v = Category_symbol_v
module Cpf_t = Caml_paragraph_formula_t
module Cps_t = Caml_paragraph_symbol_t
module Cps_v = Caml_paragraph_symbol_v
module Cpfddf_v = Caml_paragraph_functions_definitions_datastructure_formula_v
module Cpfdhf_v = Caml_paragraph_functions_definitions_hierarchical_formula_v
module Cst_v = Constructor_symbol_tree_v
module Dbt_v = Doublet_v
module Erm_v = Error_messages_v
module Ens_t = Entity_symbol_t
module Ens_v = Entity_symbol_v
module Edp_v = Entity_data_provider_v
module Ecc_v = Entitycategorycodefile_v
module Lst_v = List_v
module Its_t = Item_symbol_t
module Its_v = Item_symbol_v
module Kyl_v = Key_list_v
module Cfs_t = Codefile_symbol_t
module Cfs_v = Codefile_symbol_v
module Tci_v = Tree_canonical_index_v
module Tre_v = Tree_v
module Tri_v = Trio_v
module Trp_v = Triplet_v

let print_fatal_error_dbt nam_fun dbt =
  Erm_v.print_fatal_error nam_cod nam_fun 
    "a coherent doublet of shape >(Codefile_symbol, Category_symbol)<"
    (Format.sprintf "an incoherent or unkown doublet >%s<" 
       (Dbt_v.name_capitalized Cfs_v.name Cts_v.name dbt))
    "add it to menu above or check input"
;;
    
(** {9 Function.} *)

(** {12 Retrieving Extracting Argument.} *)
(*
let retrieve_function_s_off_t_t_argument ecc_l =
  let ecc_t = Lst_v.ultimate_element_off_list ecc_l in
  let smb_ent_t = Ecc_v.entity_symbol_off_entitycategorycodefile ecc_t in

  match smb_ent_t with
  | Ens_t.Entity_proper_symbol
      (Ens_t.Entity_proper_datastructure_symbol _) ->
	Cpfddf_v.retrieve_function_s_off_t_t_argument_datastructure ecc_l
  | _ -> 
      Cpfdhf_v.retrieve_function_s_off_t_t_argument_hierarchical ecc_l 
;;
*)
(** {9 Retrieving Naming.} *)

(** {12 Retrieving Naming Function.} *)

let retrieve_function_name_function ecc_l =
  let ecc_t = Lst_v.ultimate_element_off_list ecc_l in
  let smb_ent_t = Ecc_v.entity_symbol_off_entitycategorycodefile ecc_t in

  match smb_ent_t with
  | Ens_t.Entity_proper_symbol
      (Ens_t.Entity_proper_datastructure_symbol _) ->
	Cpfddf_v.retrieve_function_name_function_datastructure ecc_l
  | _ -> 
      Cpfdhf_v.retrieve_function_name_function_hierarchical ecc_l 
;;

(** {9 Retrieving Printing.} *)

(** {12 Retrieving Printing Function.} *)

let retrieve_function_print_function ecc =
  let smb_cnt = 
    Cpc_v.top_entity_symbol_off_caml_paragraph_context ecc
  in
  match smb_cnt with
  | Ens_t.Entity_proper_symbol
      (Ens_t.Entity_proper_datastructure_symbol _) ->
	Cpfddf_v.retrieve_function_print_function_datastructure ecc
  | _ -> 
      Cpfdhf_v.retrieve_function_print_function_hierarchical ecc 
;;

(** {12 Retrieving Printing Argument.} *)

let retrieve_function_print_argument ecc =
  let smb_cnt = 
    Cpc_v.top_entity_symbol_off_caml_paragraph_context ecc
  in
  match smb_cnt with
  | Ens_t.Entity_proper_symbol
      (Ens_t.Entity_proper_datastructure_symbol _) ->
	Cpfddf_v.retrieve_function_print_argument_datastructure ecc
  | _ -> 
      Cpfdhf_v.retrieve_function_print_argument_hierarchical ecc 
;;

let retrieve_function_argument = function 
  | Cps_t.Function_name_argument ecc_l -> 
     Utils_v.not_yet_implemented nam_cod "retrieve_function_name_argument ecc"

  | Cps_t.Function_print_argument ecc_l -> 
     Utils_v.not_yet_implemented nam_cod "retrieve_function_print_argument ecc"

  | Cps_t.Function_t_of_s_argument ecc_l -> 
      retrieve_function_t_of_s_argument ecc_l

  | Cps_t.Function_b_off_t_t_argument ecc_l -> 
      retrieve_function_b_off_t_t_argument ecc_l

  | Cps_t.Function_t_of_b_argument ecc_l -> 
      retrieve_function_t_of_b_argument ecc_l

  | Cps_t.Function_is_b_off_t_t_argument ecc_l -> 
      retrieve_function_is_b_off_t_t_argument ecc_l

  | Cps_t.Function_s_off_t_t_datastructure_argument ecc_l -> 
      retrieve_function_s_off_t_t_argument_datastructure ecc_l
;;
	
let retrieve_function_function = function 
  | Cps_t.Function_name_function ecc -> 
      retrieve_function_name_function ecc

  | Cps_t.Function_print_function ecc -> 
      Utils_v.not_yet_implemented nam_cod "retrieve_function_print_function ecc"

  | Cps_t.Function_s_off_t_function ecc_l ->
      retrieve_function_s_off_t_function ecc_l

  | Cps_t.Function_is_s_off_t_function ecc_l ->
      retrieve_function_is_s_off_t_function ecc_l
;;

let retrieve_functions_definitions = function
  | Cps_t.Function_constant_symbol ecc ->
      retrieve_function_constant ecc

  | Cps_t.Function_function_symbol smb ->
      retrieve_function_function smb

  | Cps_t.Function_argument_symbol smb ->
      retrieve_function_argument smb
;;

