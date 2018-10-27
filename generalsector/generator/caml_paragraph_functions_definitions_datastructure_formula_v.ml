(** {3 The functionalities for the Functions_definitions section of a Formula 
    for a Caml Paragraph for a Datastructure Entity.}  *)

let nam_cod = "caml_paragraph_functions_definitions_datastructure_formula_v.ml";;

(** {6 Modules.} *)

module Cns_t = Constructor_symbol_t
module Cnp_v = Constructor_path_v
module Cmtp_v = Constructor_tag_tree_provider_v
module Cptp_v = Constructor_path_tree_provider_v
module Cnm_v = Constructor_tag_v
module Cns_v = Constructor_symbol_v
module Cls_v = Caml_line_symbol_v
module Cts_t = Category_symbol_t
module Cts_v = Category_symbol_v
module Cpc_v = Caml_paragraph_context_v
module Cpf_t = Caml_paragraph_formula_t
module Cps_t = Caml_paragraph_symbol_t
module Cps_v = Caml_paragraph_symbol_v
module Cst_v = Constructor_symbol_tree_v

module Dbt_v = Doublet_v
module Erm_v = Error_messages_v
module Ens_v = Entity_symbol_v
module Edp_v = Entity_data_provider_v
module Ecc_v = Entitycategorycodefile_v
module Ecp_v = Entitycategorycodefile_path_v
module Exs_t = Entity_external_symbol_t
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

let print_fatal_error_i nam_fun i ecc_s_l =
  Erm_v.print_fatal_error nam_cod nam_fun 
    "number list elements is 1, 2 or 3"
    (Format.sprintf "%i elements@   for list of datastructure son ecc >%s<" i 
       (Lst_v.name_with_separator Ecc_v.name "; " ecc_s_l))
    "check"
;;

let print_fatal_error_dbt nam_fun dbt =
  Erm_v.print_fatal_error nam_cod nam_fun 
    "a coherent doublet of shape >(Codefile_symbol, Category_symbol)<"
    (Format.sprintf "an incoherent or unkown doublet >%s<" 
       (Dbt_v.name_capitalized Cfs_v.name Cts_v.name dbt))
    "add it to menu above or check input"
;;

(** {9 Function.} *)

(** {9 Extracting Argument.} *)

(** {9 Function_s_off_t_datastructure_argument.} *)

let caml_line_datastructure_of_entitycategorycodefile_path pth_ecc_b =
  let ecc_t = 
    Ecp_v.top_entitycategorycodefile_off_entitycategorycodefile_path pth_ecc_b 
  in
  let ecc_b = 
    Ecp_v.bottom_entitycategorycodefile_off_entitycategorycodefile_path pth_ecc_b 
  in
  let smb_ent_b = Ecc_v.entity_symbol_off_entitycategorycodefile ecc_b in
  let smb_dst_b = Ens_v.entity_external_datastructure_symbol_off_entity_symbol smb_ent_b in
  let tci_b = 
    Ecp_v.bottom_tree_canonical_index_off_entitycategorycodefile_path pth_ecc_b
  in
  (* Ex: Dbt_v.left_off_doublet smb_age *)
  
  match (smb_dst_b, tci_b) with
  | (Exs_t.Doublet, [1; 1; 1]) ->  
      Cls_v.doublet_left ecc_t 
 
 | (Exs_t.Doublet, [2; 1; 1]) ->
      Cls_v.doublet_right ecc_t
	
  | (Exs_t.Triplet, [1; 1; 1]) ->
      Cls_v.triplet_left ecc_t

  | (Exs_t.Triplet, [2; 1; 1]) ->
      Cls_v.triplet_middle ecc_t

  | (Exs_t.Triplet, [3; 1; 1]) ->
      Cls_v.triplet_right ecc_t

  | _ ->
      Erm_v.print_fatal_error nam_cod
	"caml_line_datastructure_of_entitycategorycodefile_path"
	"Doublet or Triplet with Tree Canonical Index "
	(Format.sprintf "bottom path >%s<" (Ecp_v.name pth_ecc_b) ) 
        "check"
;;

let retrieve_function_s_off_t_t_argument_datastructure pth_ecc_b =
  let ecc_t = 
    Ecp_v.top_entitycategorycodefile_off_entitycategorycodefile_path pth_ecc_b 
  in
  let ecc_s = 
    Ecp_v.son_entitycategorycodefile_off_entitycategorycodefile_path pth_ecc_b 
  in
  let smb_cfi = Ecc_v.codefile_symbol_off_entitycategorycodefile ecc_s in
  let smb_cat = Ecc_v.category_symbol_off_entitycategorycodefile ecc_s in

  match (smb_cfi, smb_cat) with
  | (Cfs_t.Implementation_symbol, Cts_t.Symbol_symbol) ->
      [
       Cls_v.let_s_off_t_t_argument (ecc_t, ecc_s); 
       caml_line_datastructure_of_entitycategorycodefile_path pth_ecc_b;
       Cls_v.double_semicolon ();
     ]
	
  | (Cfs_t.Interface_symbol, Cts_t.Symbol_symbol) ->
      [
       Cls_v.val_s_off_t (ecc_t, ecc_s);
       Cls_v.t_arrow ecc_t;
       Cls_v.s ecc_s;
       Cls_v.double_semicolon ();
     ]
  | dbt -> print_fatal_error_dbt "retrieve_function_s_off_t_t_argument" dbt
;;

(** {9 Retrieving Naming.} *)

(** {12 Retrieving Naming Function.} *)

let caml_line_datastructure_name_function ecc_s_l =
    match List.length ecc_s_l with
    | 1 ->
	let ecc_par = Lst_v.pair_of_list ecc_s_l in
	Cls_v.tree_name_s_a ecc_par
    | 2 ->
	let ecc_tri = Lst_v.trio_of_list ecc_s_l in
	Cls_v.doublet_name_s_a_b ecc_tri
    | 3 ->
	let ecc_qua = Lst_v.quatuor_of_list ecc_s_l in
	Cls_v.triplet_name_s_a_b_c ecc_qua
    | i -> 
	print_fatal_error_i "caml_line_datastructure_name_function" i ecc_s_l
;;

let retrieve_function_name_function_datastructure ecc_l =
  let ecc_t = Lst_v.ultimate_element_off_list ecc_l in
  let ecc_s = Lst_v.penultimate_element_off_list ecc_l in
  let ecc_s_l = Lst_v.drop_first_elements_of_int_of_list 2 ecc_l in
  let smb_cfi = Ecc_v.codefile_symbol_off_entitycategorycodefile ecc_s in
  let smb_cat = Ecc_v.category_symbol_off_entitycategorycodefile ecc_s in

  match (smb_cfi, smb_cat) with
  | (Cfs_t.Implementation_symbol, Cts_t.Symbol_symbol) ->
      [Cls_v.let_name_eq_function ();
       Cls_v.pipe_datastructure_s_arrow ecc_s;		 
       caml_line_datastructure_name_function ecc_s_l;
       Cls_v.double_semicolon ()]
	
  | (Cfs_t.Interface_symbol, Cts_t.Symbol_symbol) ->
      [Cls_v.val_name ();
       Cls_v.t_arrow ecc_t; 
       Cls_v.basic_type_line "string";
       Cls_v.double_semicolon ()]
	
  | _ -> print_fatal_error_dbt "retrieve_function_name_function_datastructure" (smb_cfi, smb_cat)
;;

(** {12 Retrieving Naming Argument.} *)

let caml_line_datastructure_name_argument ecc_s_l =
    match List.length ecc_s_l with
    | 1 ->
	let ecc_par = Lst_v.pair_of_list ecc_s_l in
	Cls_v.tree_name_s_a ecc_par
    | 2 ->
	let ecc_tri = Lst_v.trio_of_list ecc_s_l in
	Cls_v.doublet_name_s_a_b ecc_tri
    | 3 ->
	let ecc_qua = Lst_v.quatuor_of_list ecc_s_l in
	Cls_v.triplet_name_s_a_b_c ecc_qua
    | i ->
	print_fatal_error_i "caml_line_datastructure_name_argument" i ecc_s_l
;;

let retrieve_function_name_argument_datastructure ecc_l =
  let ecc_t = Lst_v.ultimate_element_off_list ecc_l in
  let ecc_s_l = Lst_v.drop_first_elements_of_int_of_list 2 ecc_l in
  let smb_cfi = Ecc_v.codefile_symbol_off_entitycategorycodefile ecc_t in
  let smb_cat = Ecc_v.category_symbol_off_entitycategorycodefile ecc_t in

  match (smb_cfi, smb_cat) with
  | (Cfs_t.Implementation_symbol, Cts_t.Symbol_symbol) ->

      [Cls_v.let_name_t_eq ecc_t;
       caml_line_datastructure_name_argument ecc_s_l;
       Cls_v.double_semicolon ()]
  
  | (Cfs_t.Interface_symbol, Cts_t.Symbol_symbol) ->
      [Cls_v.val_name ();
       Cls_v.t_arrow ecc_t; 
       Cls_v.basic_type_line "string";
       Cls_v.double_semicolon ()]
	
  | _ -> print_fatal_error_dbt "retrieve_function_name_argument_datastructure" (smb_cfi, smb_cat)
;;

(** {9 Retrieving Printing.} *)

(** {12 Retrieving Printing Function.} *)

let caml_line_datastructure_print_function ecc_s_l =
    match List.length ecc_s_l with
    | 1 ->
	let ecc_par = Lst_v.pair_of_list ecc_s_l in
	Cls_v.tree_print_s_a ecc_par
    | 2 ->
	let ecc_tri = Lst_v.trio_of_list ecc_s_l in
	Cls_v.doublet_print_s_a_b ecc_tri
    | 3 ->
	let ecc_qua = Lst_v.quatuor_of_list ecc_s_l in
	Cls_v.triplet_print_s_a_b_c ecc_qua
    | i ->
	print_fatal_error_i "caml_line_datastructure_print_function" i ecc_s_l
;;

let retrieve_function_print_function_datastructure ecc_l =
  let ecc_t = Lst_v.ultimate_element_off_list ecc_l in
  let ecc_s = Lst_v.penultimate_element_off_list ecc_l in
  let ecc_s_l = Lst_v.drop_first_elements_of_int_of_list 2 ecc_l in
  let smb_cfi = Ecc_v.codefile_symbol_off_entitycategorycodefile ecc_s in
  let smb_cat = Ecc_v.category_symbol_off_entitycategorycodefile ecc_s in

  match (smb_cfi, smb_cat) with
  | ( Cfs_t.Implementation_symbol, Cts_t.Symbol_symbol) ->
      [Cls_v.let_print_eq_function ();
       Cls_v.pipe_datastructure_s_arrow ecc_s;		 
       caml_line_datastructure_print_function ecc_s_l;
       Cls_v.double_semicolon ()]
	
  | ( Cfs_t.Interface_symbol, Cts_t.Symbol_symbol) ->
      [Cls_v.val_name ();
       Cls_v.t_arrow ecc_t; 
       Cls_v.basic_type_line "string";
       Cls_v.double_semicolon ()]

  | _ -> print_fatal_error_dbt "retrieve_function_name_function_datastructure" (smb_cfi, smb_cat)	

;;

(** {12 Retrieving Printing Argument.} *)

let caml_line_datastructure_print_argument ecc_s_l =
    match List.length ecc_s_l with
    | 1 ->
	let ecc_par = Lst_v.pair_of_list ecc_s_l in
	Cls_v.tree_print_s_a ecc_par
    | 2 ->
	let ecc_tri = Lst_v.trio_of_list ecc_s_l in
	Cls_v.doublet_print_s_a_b ecc_tri
    | 3 ->
	let ecc_qua = Lst_v.quatuor_of_list ecc_s_l in
	Cls_v.triplet_print_s_a_b_c ecc_qua
    | i ->
	print_fatal_error_i "caml_line_datastructure_print_argument" i ecc_s_l
;;

let retrieve_function_print_argument_datastructure ecc_l =
  let ecc_t = Lst_v.ultimate_element_off_list ecc_l in
  let ecc_s = Lst_v.penultimate_element_off_list ecc_l in
  let ecc_s_l = Lst_v.drop_first_elements_of_int_of_list 2 ecc_l in
  let smb_cfi = Ecc_v.codefile_symbol_off_entitycategorycodefile ecc_s in
  let smb_cat = Ecc_v.category_symbol_off_entitycategorycodefile ecc_s in

  match (smb_cfi, smb_cat) with
  | ( Cfs_t.Implementation_symbol, Cts_t.Symbol_symbol) ->
      [Cls_v.let_print_t_eq ecc_t;
       caml_line_datastructure_print_argument ecc_s_l;
       Cls_v.double_semicolon ()]
  
  | ( Cfs_t.Interface_symbol, Cts_t.Symbol_symbol) ->
      [Cls_v.val_name ();
       Cls_v.t_arrow ecc_t; 
       Cls_v.basic_type_line "string";
       Cls_v.double_semicolon ()]
	
  | _ -> print_fatal_error_dbt "retrieve_function_name_function_datastructure" (smb_cfi, smb_cat)	
;;

(** {9 Retrieving Upgrading.} *)
