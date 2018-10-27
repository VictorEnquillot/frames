(** {3 The functionalities for the Typing Section of the Formula 
    for a Caml Paragraph of a Hierarchical Entity.}  *)

let nam_cod = "caml_paragraph_types_definitions_formula_v.ml";;

(** {6 Modules.} *)

module Cfs_t = Codefile_symbol_t
module Cfs_v = Codefile_symbol_v
module Cls_v = Caml_line_symbol_v
module Cns_t = Constructor_symbol_t
module Cns_v = Constructor_symbol_v
module Cpc_v = Caml_paragraph_context_v
module Cpf_t = Caml_paragraph_formula_t
module Cps_t = Caml_paragraph_symbol_t
module Cps_v = Caml_paragraph_symbol_v
module Cst_v = Constructor_symbol_tree_v
module Cts_t = Category_symbol_t
module Cts_v = Category_symbol_v
module Ecc_v = Entitycategorycodefile_v
module Ecs_v = Entitycategorysuffix_v
module Edp_v = Entity_data_provider_v
module Ens_v = Entity_symbol_v
module Erm_v = Error_messages_v
module Its_t = Item_symbol_t
module Its_v = Item_symbol_v
module Kyl_v = Key_list_v
module Lst_v = List_v
module Trp_v = Triplet_v
module Tre_v = Tree_v

(** {9 Type_definition.} *)

let type_pipe_constructor_bare_symbol smb_cnt_bar = (* | H_s *)
  Cls_v.type_pipe_bare smb_cnt_bar
;;

let type_pipe_constructor_barebasic_symbol ctt_cpg smb_ebb = (* integer *)
  Cls_v.basic_type_line (Ens_v.name_of_entity_barebasic_symbol smb_ebb)
;;

let type_pipe_constructor_fictive_symbol ctt_cpg = function
  | Cns_t.Constructor_bare_symbol smb_ent_bar ->
      type_pipe_constructor_bare_symbol smb_ent_bar

  | Cns_t.Constructor_barebasic_symbol smb_ebb ->
      type_pipe_constructor_barebasic_symbol ctt_cpg smb_ebb
;;

let type_pipe_constructor_oneline_symbol ctt_cpg smb_cno =
  let ecs_s = Cpc_v.son_entitycategorysuffix_off_caml_paragraph_context ctt_cpg in
  let ecs_b = Cpc_v.bottom_entitycategorysuffix_off_caml_paragraph_context ctt_cpg in

  match smb_cno with
  | Cns_t.Constructor_external_symbol _ -> 
      Cls_v.type_pipe_s_of_b (ecs_s, ecs_b)

  | Cns_t.Constructor_nodeoneline_symbol _ ->
      Cls_v.type_pipe_s_of_s_dot_s ecs_s

  | Cns_t.Constructor_proper_datastructure_symbol _ ->  (* as a son *)
      Cls_v.type_pipe_s_of_s_dot_s ecs_s
;;

let type_pipe_constructor_proper_symbol ctt_cpg smb_cno =
  let ecs_s = Cpc_v.son_entitycategorysuffix_off_caml_paragraph_context ctt_cpg in

  match smb_cno with
  | Cns_t.Constructor_several_symbol _ ->  (*** TODO should be used ***) 
      Cls_v.type_pipe_s_of_s_dot_s ecs_s

  | Cns_t.Constructor_oneline_symbol smb_snc ->
      type_pipe_constructor_oneline_symbol ctt_cpg smb_snc
;;

let type_pipe_caml_line_symbol_of_caml_paragraph_context ctt_cps = 
  let smb_cnb = 
    Cpc_v.bottom_constructor_symbol_off_caml_paragraph_context ctt_cps
  in
  match smb_cnb with
    | Cns_t.Constructor_proper_symbol smb_cnp ->
	type_pipe_constructor_proper_symbol ctt_cps smb_cnp
	  
    | Cns_t.Constructor_fictive_symbol smb_cnf ->
	type_pipe_constructor_fictive_symbol ctt_cps smb_cnf
;;

(** {9 Retrieving Typing.} *)

let retrieve_hierarchical_type_definition ctt_cpg =
  let ctt_cpg_s_l =
    Cpc_v.son_caml_paragraph_context_list_off_caml_paragraph_context ctt_cpg
  in
  let smb_cli_l = 
    List.map type_pipe_caml_line_symbol_of_caml_paragraph_context ctt_cpg_s_l 
  in
  let trp_imc = 
    Cpc_v.symboltriplet_off_caml_paragraph_context ctt_cpg 
  in

  match trp_imc with  
    | (Its_t.Typing_symbol, Cfs_t.Type_symbol, Cts_t.Symbol_symbol) ->

        (* add type definition to the list of son cnstructors *)	

        Lst_v.append_of_element_of_list 
	  (Cls_v.double_semicolon ()) 
	  ((Cls_v.type_definition ctt_cpg) :: smb_cli_l) 
  
    | _ -> Erm_v.print_fatal_error nam_cod
    	  "retrieve_type_definition" 
	  "triplet >(Typing, Type, Symbol)<"
	  (Format.sprintf "triplet >%s<" 
	     (Trp_v.name_capitalized Its_v.name Cfs_v.name Cts_v.name trp_imc))
	  "add it to menu above or check input"
;; 

