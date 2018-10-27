(** {3 The functionalities for the Functions_definitions section of a Formula 
    for a Caml Paragraph for a Hierarchy Entity.}  *)

let nam_cod = "caml_paragraph_functions_definitions_hierarchical_formula_v.ml";;

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
module Cpf_t = Caml_paragraph_formula_t
module Cps_t = Caml_paragraph_symbol_t
module Cps_v = Caml_paragraph_symbol_v
module Cst_v = Constructor_symbol_tree_v
module Dbt_v = Doublet_v
module Erm_v = Error_messages_v
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

let print_fatal_error nam_fun dbt =
  Erm_v.print_fatal_error nam_cod nam_fun 
    "a coherent doublet of shape >(Codefile_symbol, Category_symbol)<"
    (Format.sprintf "an incoherent or unkown doublet >%s<" 
       (Dbt_v.name_capitalized Cfs_v.name Cts_v.name dbt))
    "add it to menu above or check input"
;;
   
let print_fatal_error_ecc_l nam_fun ecc_l =
  Erm_v.print_fatal_error nam_cod nam_fun
    "Hierarchical Entitycategorycodefile list"
    (Format.sprintf ">%s<" (Lst_v.name_with_separator Ecc_v.name "; " ecc_l))
    "add it to menu above or check input"
;;

(** {9 Retrieving Upgrading.} *)

let retrieve_function_constant ecc_l =  (* fictive entity *)
  let ecc_t = Lst_v.last_element_off_list ecc_l in
  let ecc_u = Lst_v.second_element_off_list ecc_l in
  let ecc_b = Lst_v.first_element_off_list ecc_l in
  let smb_cfi = Ecc_v.codefile_symbol_off_entitycategorycodefile ecc_b in
  let smb_cat = Ecc_v.category_symbol_off_entitycategorycodefile ecc_b in

  match (smb_cfi, smb_cat) with
  | (Cfs_t.Implementation_symbol, Cts_t.Symbol_symbol) ->
      [
       Cls_v.let_b_eq_t_of_u_u_dot_b (ecc_t, ecc_u, ecc_b); 
     ](* Ex. : let o_c = atom_onetied_symbol_of_atom_onetied_conjugated_symbol Aocs_t.O_c;;*)
	
  | (Cfs_t.Interface_symbol, Cts_t.Symbol_symbol) ->
      [
       Cls_v.val_b_colon_t (ecc_t, ecc_b);
     ]
	
  | dbt -> print_fatal_error "retrieve_function_constant" dbt
;;

let retrieve_function_t_of_s_argument_proper ecc_l = 
  let ecc_t = Lst_v.ultimate_element_off_list ecc_l in
  let ecc_s = Lst_v.penultimate_element_off_list ecc_l in
  let smb_cfi = Ecc_v.codefile_symbol_off_entitycategorycodefile ecc_s in
  let smb_cat = Ecc_v.category_symbol_off_entitycategorycodefile ecc_s in

  match (smb_cfi, smb_cat) with
  | (Cfs_t.Implementation_symbol, Cts_t.Symbol_symbol) ->
      [
       Cls_v.let_t_of_s_s_eq (ecc_t, ecc_s);
       Cls_v.t_dot_s_s (ecc_t, ecc_s);
       Cls_v.double_semicolon ();
     ]
	
  | (Cfs_t.Interface_symbol, Cts_t.Symbol_symbol) ->
      [
       Cls_v.val_t_of_s (ecc_t, ecc_s);
       Cls_v.s_arrow ecc_s;
       Cls_v.t ecc_t;
       Cls_v.double_semicolon ();
     ]
	
  | dbt -> print_fatal_error "retrieve_function_t_of_s_argument_proper" dbt
  ;;

let retrieve_function_t_of_s_fictive ecc_l = 
  let ecc_t = Lst_v.ultimate_element_off_list ecc_l in
  let ecc_s = Lst_v.penultimate_element_off_list ecc_l in
  let smb_cfi = Ecc_v.codefile_symbol_off_entitycategorycodefile ecc_s in
  let smb_cat = Ecc_v.category_symbol_off_entitycategorycodefile ecc_s in

  match (smb_cfi, smb_cat) with
  | (Cfs_t.Implementation_symbol, Cts_t.Symbol_symbol) ->
      [
       Cls_v.let_s_eq_t_dot_s (ecc_t, ecc_s);
     ]
	
  | (Cfs_t.Interface_symbol, Cts_t.Symbol_symbol) ->
      [
       Cls_v.val_s_colon_t (ecc_t, ecc_s);
     ]
	
  | dbt -> print_fatal_error "retrieve_function_t_of_s_fictive" dbt
;;

let retrieve_function_t_of_s_argument ecc_l =
  let ecc_s = Lst_v.penultimate_element_off_list ecc_l in
  let smb_ent_s = Ecc_v.entity_symbol_off_entitycategorycodefile ecc_s in

  if Ens_v.is_entity_proper_symbol_off_entity_symbol smb_ent_s 
  then retrieve_function_t_of_s_argument_proper ecc_l 
  else retrieve_function_t_of_s_fictive ecc_l 
;;
    
let retrieve_function_t_of_b_argument_proper ecc_l =
  let ecc_t = Lst_v.ultimate_element_off_list ecc_l in
  let ecc_u = Lst_v.second_element_off_list ecc_l in
  let ecc_b = Lst_v.first_element_off_list ecc_l in
  let smb_cfi = Ecc_v.codefile_symbol_off_entitycategorycodefile ecc_t in
  let smb_cat = Ecc_v.category_symbol_off_entitycategorycodefile ecc_t in

  match (smb_cfi, smb_cat) with
  | (Cfs_t.Implementation_symbol, Cts_t.Symbol_symbol) ->
      [
       Cls_v.let_t_of_b_b_eq (ecc_t, ecc_b);
       Cls_v.let_u_eq_u_dot_u_of_b_b_in (ecc_u, ecc_b);
       Cls_v.t_of_u_u (ecc_t, ecc_b);
       Cls_v.double_semicolon ();
     ]
	
  | (Cfs_t.Interface_symbol, Cts_t.Symbol_symbol) ->
      [
       Cls_v.val_t_of_b (ecc_t, ecc_b);
       Cls_v.b_arrow ecc_b;
       Cls_v.t ecc_t;
       Cls_v.double_semicolon ();
     ]

  | dbt -> print_fatal_error "retrieve_function_t_of_b_argument_proper" dbt
;;

let retrieve_function_t_of_b_fictive ecc_l =
  let ecc_t = Lst_v.ultimate_element_off_list ecc_l in
  let ecc_u = Lst_v.second_element_off_list ecc_l in
  let ecc_b = Lst_v.first_element_off_list ecc_l in
  let smb_cfi = Ecc_v.codefile_symbol_off_entitycategorycodefile ecc_t in
  let smb_cat = Ecc_v.category_symbol_off_entitycategorycodefile ecc_t in

  match (smb_cfi, smb_cat) with
  | (Cfs_t.Implementation_symbol, Cts_t.Symbol_symbol) ->
      [
       Cls_v.let_b_eq_t_of_u_u_dot_b (ecc_t, ecc_u, ecc_b); (* let b = t_of_u U.B *)
       (* let o_c = atom_symbol_of_atom_onetied_conjugated_symbol Aocs_t.O_c;;*)
     ]
	
  | (Cfs_t.Interface_symbol, Cts_t.Symbol_symbol) ->
      [
       Cls_v.val_b_colon_t (ecc_t, ecc_b); (* val o_c : Atom_symbol_t.atom_symbol;; *)
     ]

  | dbt -> print_fatal_error "retrieve_function_t_of_b_fictive" dbt
;;

let retrieve_function_t_of_b_argument ecc_l =
  let ecc_b = Lst_v.penultimate_element_off_list ecc_l in
  let smb_ent_b = Ecc_v.entity_symbol_off_entitycategorycodefile ecc_b in

  if Ens_v.is_entity_proper_symbol_off_entity_symbol smb_ent_b 
  then retrieve_function_t_of_b_argument_proper ecc_l 
  else retrieve_function_t_of_b_fictive ecc_l 
;;
    
(** {9 Retrieving Extracting.} *)

let retrieve_function_s_off_t_function ecc_l =
  let ecc_t = Lst_v.ultimate_element_off_list ecc_l in
  let ecc_s = Lst_v.penultimate_element_off_list ecc_l in
  let smb_cfi = Ecc_v.codefile_symbol_off_entitycategorycodefile ecc_s in
  let smb_cat = Ecc_v.category_symbol_off_entitycategorycodefile ecc_s in

  match (smb_cfi, smb_cat) with
  | (Cfs_t.Implementation_symbol, Cts_t.Symbol_symbol) ->
      [
       Cls_v.let_s_off_t_function (ecc_t, ecc_s);
       Cls_v.pipe_t_dot_s_s_arrow_s (ecc_t, ecc_s);
       Cls_v.pipe_s_off_t_print_fatal_error (ecc_t, ecc_s);
       Cls_v.double_semicolon ();
     ]
  | (Cfs_t.Interface_symbol, Cts_t.Symbol_symbol) ->
      [
       Cls_v.val_s_off_t (ecc_t, ecc_s);
       Cls_v.t_arrow ecc_t;
       Cls_v.s ecc_s;
       Cls_v.double_semicolon ();
     ]
  | dbt -> print_fatal_error "retrieve_function_s_off_t_function" dbt
;;

(** {9 Function_b_off_t_t_argument.} *)

let retrieve_function_b_off_t_t_argument ecc_l =
  let ecc_t = Lst_v.last_element_off_list ecc_l in
  let ecc_u = Lst_v.second_element_off_list ecc_l in
  let ecc_b = Lst_v.first_element_off_list ecc_l in
  let smb_cfi = Ecc_v.codefile_symbol_off_entitycategorycodefile ecc_b in
  let smb_cat = Ecc_v.category_symbol_off_entitycategorycodefile ecc_b in
  
  match (smb_cfi, smb_cat) with
  | (Cfs_t.Implementation_symbol, Cts_t.Symbol_symbol) ->
      [
       Cls_v.let_b_off_t_t_argument (ecc_t, ecc_b);
       Cls_v.let_u_u_off_t_t_in (ecc_t, ecc_u);
       Cls_v.b_off_u_u (ecc_u, ecc_b);
       Cls_v.double_semicolon ();
     ]
	
  | (Cfs_t.Interface_symbol, Cts_t.Symbol_symbol) ->
      [
       Cls_v.val_b_off_t (ecc_t, ecc_b);
       Cls_v.t_arrow ecc_t;
       Cls_v.b ecc_b;
       Cls_v.double_semicolon ();
     ]
	
  | dbt -> print_fatal_error "retrieve_function_b_off_t_t_argument" dbt
;;

(** {9 Function_s_off_t_argument.} *)

let retrieve_function_is_s_off_t_function ecc_l =
  let ecc_t = Lst_v.ultimate_element_off_list ecc_l in
  let ecc_s = Lst_v.penultimate_element_off_list ecc_l in
  let smb_cfi = Ecc_v.codefile_symbol_off_entitycategorycodefile ecc_s in
  let smb_cat = Ecc_v.category_symbol_off_entitycategorycodefile ecc_s in

  match (smb_cfi, smb_cat) with
  | (Cfs_t.Implementation_symbol, Cts_t.Symbol_symbol) ->
      [
       Cls_v.let_is_s_off_t_function (ecc_t, ecc_s);
       Cls_v.pipe_t_dot_s_arrow_true (ecc_t, ecc_s);
       Cls_v.pipe_arrow_false ();
	 Cls_v.double_semicolon ();
     ]
	
  | (Cfs_t.Interface_symbol, Cts_t.Symbol_symbol) ->
      [
       Cls_v.val_is_s_off_t (ecc_t, ecc_s);
       Cls_v.t_arrow ecc_t;
       Cls_v.basic_type_line "bool";
       Cls_v.double_semicolon ();
     ]
	
  | dbt -> print_fatal_error "retrieve_function_is_s_off_t_function" dbt
;;

let retrieve_function_is_b_off_t_t_argument ecc_l =
  let ecc_t = Lst_v.last_element_off_list ecc_l in
  let ecc_u = Lst_v.second_element_off_list ecc_l in
  let ecc_b = Lst_v.first_element_off_list ecc_l in
  let smb_cfi = Ecc_v.codefile_symbol_off_entitycategorycodefile ecc_b in
  let smb_cat = Ecc_v.category_symbol_off_entitycategorycodefile ecc_b in

  match (smb_cfi, smb_cat) with
    | (Cfs_t.Implementation_symbol, Cts_t.Symbol_symbol) ->
	[
	 Cls_v.let_is_b_off_t_t_argument (ecc_t, ecc_b);
	 Cls_v.if_not_is_u_off_t_t (ecc_t, ecc_u);
	 Cls_v.then_false_else_begin ();
	 Cls_v.let_u_u_off_t_t_in (ecc_t, ecc_u);
	 Cls_v.u_is_b_off_u_u (ecc_u, ecc_b);
	 Cls_v.end_line ();
	 Cls_v.double_semicolon ();
       ]

    | (Cfs_t.Interface_symbol, Cts_t.Symbol_symbol) ->
	[
	 Cls_v.val_is_b_off_t (ecc_t, ecc_b);
	 Cls_v.t_arrow ecc_t;
	 Cls_v.basic_type_line "bool";
	 Cls_v.double_semicolon ();
       ]

  | dbt -> print_fatal_error "retrieve_function_is_b_off_t_t_argument" dbt
;;

(** {9 Function.} *)

(** {9 Retrieving Naming.} *)

(** {12 Retrieving Naming Function.} *)

let retrieve_function_name_function_hierarchical ecc_l =
  print_fatal_error_ecc_l "retrieve_function_name_function_hierarchical" ecc_l 
;;

(** {12 Retrieving Naming Argument.} *)

let retrieve_function_name_argument_hierarchical ecc_l =
  print_fatal_error_ecc_l "retrieve_function_name_argument_hierarchical" ecc_l 
;;

(** {9 Retrieving Printing.} *)

(** {12 Retrieving Printing Function.} *)

let retrieve_function_print_function_hierarchical ecc_l =
  print_fatal_error_ecc_l "retrieve_function_print_function_hierarchical" ecc_l 
;;

(** {12 Retrieving Printing Argument.} *)

let retrieve_function_print_argument_hierarchical ecc_l =
  print_fatal_error_ecc_l "retrieve_function_print_argumen_hierarchical" ecc_l 
;;

(** {9 Retrieving Upgrading.} *)

(** {9 Function_s_off_t_argument.} *)

