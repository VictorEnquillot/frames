(** {3 The functionalities for the Typing Section of the Formula 
    for a Caml Paragraph of a Datastructure Entity.}  *)

let nam_cod = "caml_paragraph_types_definitions_datastructure_formula_v.ml";;

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

let type_pipe_datastructure_of_son_entitycategorysuffix_list ecs_s_l =
  match List.length ecs_s_l with
  | 1 -> 
      let ecs = List.hd ecs_s_l in
      Cls_v.type_pipe_tree_a ecs

  | 2 -> 
      let ecs_par = Lst_v.pair_of_list ecs_s_l in
      Cls_v.type_pipe_doublet_a_b ecs_par
	
  | 3 ->      
      let ecs_tri = Lst_v.trio_of_list ecs_s_l in
      Cls_v.type_pipe_triplet_a_b_c ecs_tri

  | i ->
      Erm_v.print_fatal_error nam_cod
	"type_pipe_datastructure_of_son_entitycategorysuffix_list"
	"number list elements is 1, 2 or 3"
	(Format.sprintf "%i elements@   for list of datastructure any son nodes >%s<" i 
	   (Lst_v.name_with_separator Ecs_v.name "; " ecs_s_l))
	"check"
;;

(** {9 Retrieving Typing.} *)

let retrieve_datastructure_type_definition ctt_cpg =
  let ecs_top = Dst_v.top_entitycategorysuffix_off_caml_paragraph_context ctt_cpg in
  let ecs_s_l = Dst_v.son_entitycategorysuffix_list_off_caml_paragraph_context ctt_cpg in
  let trp_imc = Cpc_v.symboltriplet_off_caml_paragraph_context ctt_cpg in

  match trp_imc with  
    | (Its_t.Typing_symbol, Cfs_t.Type_symbol, Cts_t.Symbol_symbol) ->
        (* add type definition to the list of son constructors *)	

	[
         Cls_v.type_definition ecs_top;
	 type_pipe_datastructure_of_son_entitycategorysuffix_list ecs_s_l;
	 Cls_v.double_semicolon (); 
       ]
  
    | _ -> Erm_v.print_fatal_error nam_cod
    	  "retrieve_type_definition" 
	  "triplet >(Typing, Type, Symbol)<"
	  (Format.sprintf "triplet >%s<" 
	     (Trp_v.name_capitalized Its_v.name Cfs_v.name Cts_v.name trp_imc))
	  "add it to menu above or check input"
;; 

