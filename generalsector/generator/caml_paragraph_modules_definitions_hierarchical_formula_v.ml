(** {3 The functionalities for a Formula for a Caml_paragraph Modules_definitions Symbol.}  *)

let nam_cod = "caml_paragraph_modules_definitions_hierarchical_formula_v.ml";;

(** {6 Modules.} *)

module Cfs_t = Codefile_symbol_t
module Cfs_v = Codefile_symbol_v
module Cls_v = Caml_line_symbol_v
module Cnp_v = Constructor_path_v
module Cns_t = Constructor_symbol_t
module Cns_v = Constructor_symbol_v
module Cpf_t = Caml_paragraph_formula_t
module Cps_t = Caml_paragraph_symbol_t
module Cps_v = Caml_paragraph_symbol_v
module Cst_v = Constructor_symbol_tree_v
module Cstp_v = Constructor_symbol_tree_provider_v
module Csu_v = Codefile_suffix_v
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

(*
let topson_entitycategorysuffix_list_hierarchical smb_cat smb_cfi smb_cnt =
  let smb_cnt_t = Cstp_v.provide smb_cnt in
  let smb_cnt_ts_l =
    Cst_v.topson_constructor_symbol_list_of_constructor_symbol_tree smb_cnt_t
  in
  
  let smb_ent_ts_l =
    List.map Cns_v.entity_symbol_off_constructor_symbol smb_cnt_ts_l
  in 
  let ecc_l =
    List.map (fun s -> Ecc_v.make s smb_cat smb_cfi) smb_ent_ts_l
  in
  List.map Ecs_v.entitycategorysuffix_of_entitycategorycodefile ecc_l
;;

let topson_entitycategorysuffix_list_datastructure smb_cat smb_cfi smb_cnt =
  let smb_cnt_t = Cstp_v.provide smb_cnt in
  let smb_cnt_t_s_l = Tre_v.topsontree_list_off_tree smb_cnt_t in
  if List.length smb_cnt_t_s_l <> 1
  then Erm_v.print_fatal_error nam_cod 
      "topson_entitycategorysuffix_list_hierarchical"
      "Only one topson for a datastructure"
      (Format.sprintf "%i topsons" (List.length smb_cnt_t_s_l))
      "check"
  else
    begin
      let smb_cnt_t_s = List.hd smb_cnt_t_s_l in
      let smb_cnt_tss_l =
	Cst_v.topson_constructor_symbol_list_of_constructor_symbol_tree smb_cnt_t_s
      in
      let smb_cnt_ts = Tre_v.root_off_tree smb_cnt_t_s in
      let smb_cnt_ts_l = smb_cnt_ts :: smb_cnt_tss_l in
      let smb_ent_ts_l =
	List.map Cns_v.entity_symbol_off_constructor_symbol smb_cnt_ts_l
      in 
      let ecc_l =
	List.map (fun s -> Ecc_v.make s smb_cat smb_cfi) smb_ent_ts_l
      in
      List.map Ecs_v.entitycategorysuffix_of_entitycategorycodefile ecc_l
    end
;;

let topson_entitycategorysuffix_list_of_category_symbol_of_codefile_symbol_of_topconstructor_symbol smb_cat smb_cfi smb_cnt =
  match smb_cnt with
  | Constructor_symbol_t.Constructor_proper_symbol
      (Constructor_symbol_t.Constructor_oneline_symbol
	 (Constructor_symbol_t.Constructor_proper_datastructure_symbol smb_cnd)) ->
	   topson_entitycategorysuffix_list_datastructure smb_cat smb_cfi smb_cnt 
  | _ ->
      topson_entitycategorysuffix_list_hierarchical smb_cat smb_cfi smb_cnt
;;

let anyson_entitycategorysuffix_list_of_category_symbol_of_codefile_symbol_of_topconstructor_symbol smb_cat smb_cfi smb_cnt =
  let smb_cnt_t = Cstp_v.provide smb_cnt in
  let smb_cnt_as_l =
    Cst_v.anyson_constructor_symbol_list_of_constructor_symbol_tree smb_cnt_t
  in
  let smb_ent_as_l =
    List.map Cns_v.entity_symbol_off_constructor_symbol smb_cnt_as_l
  in 
  let ecc_l =
    List.map (fun s -> Ecc_v.make s smb_cat smb_cfi) smb_ent_as_l
  in
  List.map Ecc_v.entitycategorysuffix_of_entitycategorycodefile ecc_l
;;

let up_entitycategorysuffix_list_of_category_symbol_of_codefile_symbol_of_topconstructor_symbol smb_cat smb_cfi smb_cnt =
  let smb_cnt_t = Cstp_v.provide smb_cnt in
  let smb_cnt_u_l =
    Cst_v.up_constructor_symbol_list_of_constructor_symbol_tree smb_cnt_t
  in
  let smb_ent_u_l =
    List.map Cns_v.entity_symbol_off_constructor_symbol smb_cnt_u_l
  in 
  let ecc_l =
    List.map (fun s -> Ecc_v.make s smb_cat smb_cfi) smb_ent_u_l
  in
  List.map Ecc_v.entitycategorys(** {3 The functionalities for a Formula for a Caml_paragraph Modules_definitions Symbol.}  *)

let print_fatal_error_smb_cfi nam_fun smb_cfi =
    Erm_v.print_fatal_error nam_cod nam_fun 
    "Codefile Symbol were Type_symbol|Implementation_symbol" 
    (Format.sprintf ">%s<" (Cfs_v.name smb_cfi))
    "check"
;;

(** {9 Modules_type_local_definitions.} *)

let retrieve_modules_type_definitions_local_in_codefile_implementation ecc_l =
  (* module X_t = Xyz_t inside v.ml for tli : all ecc *)
  (* ecc_l from bottom to root *)

  let ecc_al = List.map (* adapted to type *)
      (Ecc_v.modify_of_codefile_symbol_of_entitycategorycodefile Cfs_v.codefile_type)
      ecc_l 
  in

  (* filter local *)
  let prd ecc = 
    let smb_ent_c = Ecc_v.entity_symbol_off_entitycategorycodefile ecc in
    let suf_cfi = Ecc_v.codefile_suffix_of_entitycategorycodefile ecc in
    not (
      (suf_cfi = Csu_v.suffix_p)  (* count private only in type *)
      || (Ens_v.is_entity_bare_symbol_off_entity_symbol smb_ent_c) 
      || (Ens_v.is_entity_barebasic_symbol_off_entity_symbol smb_ent_c) )
  in
  let ecc_fl = Lst_v.once_list_of_list (List.filter prd ecc_al) in

  List.map Cls_v.module_m_eq_m_symbol ecc_fl
;;

let retrieve_modules_type_definitions_local_in_codefile_type ecc_l =
(* module X_t = Xyz_t inside t.ml for tlt : all s *)

  (* ecc_l from bottom to root *)

  let ecc_s_l = Lst_v.drop_first_elements_of_int_of_list 1 ecc_l in
  let ecc_al = List.map (* adapted to type *)
      (Ecc_v.modify_of_codefile_symbol_of_entitycategorycodefile Cfs_v.codefile_type)
      ecc_s_l 
  in

  (* filter local *)
  let prd ecc = 
    let smb_ent_c = Ecc_v.entity_symbol_off_entitycategorycodefile ecc in
    let suf_cfi = Ecc_v.codefile_suffix_of_entitycategorycodefile ecc in
    not (
      (suf_cfi = Csu_v.suffix_p)  (* private only in type *)
      || (Ens_v.is_entity_bare_symbol_off_entity_symbol smb_ent_c) 
      || (Ens_v.is_entity_barebasic_symbol_off_entity_symbol smb_ent_c) )
  in
  let ecc_fl = Lst_v.once_list_of_list (List.filter prd ecc_al) in

  List.map Cls_v.module_m_eq_m_symbol ecc_fl
;;

(** {6 Modules_type_local_definitions.} *)

let retrieve_modules_type_definitions_local ecc_l =
    let ecc_r = Lst_v.ultimate_element_off_list ecc_l in
    let smb_cfi = Ecc_v.codefile_symbol_off_entitycategorycodefile ecc_r in
    
    match smb_cfi with
    | Cfs_t.Type_symbol -> 
    retrieve_modules_type_definitions_local_in_codefile_type ecc_l
    
    | Cfs_t.Implementation_symbol -> 
    retrieve_modules_type_definitions_local_in_codefile_implementation ecc_l
    
    | _ -> print_fatal_error_smb_cfi "retrieve_modules_type_definitions_local_in_codefile_implementation" smb_cfi
    ;;
(*
let retrieve_modules_type_definitions_external ecc_l = (* ??? *)
    let ecc_r = Lst_v.ultimate_element_off_list ecc_l in
    let smb_cfi = Ecc_v.codefile_symbol_off_entitycategorycodefile ecc_r in
    
    match smb_cfi with
    | Cfs_t.Type_symbol -> 
    retrieve_modules_type_definitions_external_in_codefile_type ecc_l
    
    | Cfs_t.Implementation_symbol -> 
    retrieve_modules_type_definitions_external_in_codefile_implementation ecc_l
    
    | _ -> print_fatal_error_smb_cfi "retrieve_modules_type_definitions_external_in_codefile_implementation" smb_cfi
    ;;
*)
(** {9 Modules_implementation_local_definitions.} *)

let retrieve_modules_implementation_definitions_local_in_codefile_implementation ecc_l =
(* module X_v = Xyz_v inside v.ml for ili : all but root *)
  
  let ecc_s_l = Lst_v.drop_first_elements_of_int_of_list 1 ecc_l in
  let ecc_al = List.map (* adapted to implementation *)
      (Ecc_v.modify_of_codefile_symbol_of_entitycategorycodefile Cfs_v.codefile_implementation)
      ecc_s_l 
  in

(* filter out bare barebasic top *)
  let prd ecc = 
    let smb_ent_c = Ecc_v.entity_symbol_off_entitycategorycodefile ecc in
    not (
        (Ens_v.is_entity_bare_symbol_off_entity_symbol smb_ent_c) 
     || (Ens_v.is_entity_barebasic_symbol_off_entity_symbol smb_ent_c) 
   )
  in
  let ecc_fl = Lst_v.once_list_of_list (List.filter prd ecc_al) in
  List.map Cls_v.module_m_eq_m_symbol ecc_fl
;;

let retrieve_modules_implementation_definitions_local ecc_l =
    let ecc_r = Lst_v.ultimate_element_off_list ecc_l in
    let smb_cfi = Ecc_v.codefile_symbol_off_entitycategorycodefile ecc_r in

    match smb_cfi with
    | Cfs_t.Implementation_symbol -> 
	retrieve_modules_implementation_definitions_local_in_codefile_implementation ecc_l
	  
    | _ -> print_fatal_error_smb_cfi "retrieve_modules_implementation_definitions_local_in_codefile_implementation" smb_cfi
;;

let retrieve_modules_type_definitions = function
  | Cps_t.Modules_type_local_definitions_symbol ecc_l -> 
     (* module Azs_t = Atom_zerotied_symbol_t *)
      retrieve_modules_type_definitions_local ecc_l

  | Cps_t.Modules_type_external_definitions_symbol ecc_l -> 
     (* module Ord_p = Ordinal_p *)
     Utils_v.not_yet_implemented nam_cod "retrieve_modules_type_external_definitions_in_codefile_type ecc_l"
;;

let retrieve_modules_implementation_definitions = function
  | Cps_t.Modules_implementation_local_definitions_symbol ecc_l -> 
      retrieve_modules_implementation_definitions_local ecc_l

  | Cps_t.Modules_implementation_external_definitions_symbol ecc_l -> 
      Utils_v.not_yet_implemented nam_cod "retrieve_modules_implementation_definitions_external_in_codefile_implementation ecc_l"
;;

let retrieve_modules_definitions = function
  | Cps_t.Modules_type_definitions_symbol smb ->
      retrieve_modules_type_definitions smb 

  | Cps_t.Modules_implementation_definitions_symbol smb -> 
      retrieve_modules_implementation_definitions smb
;;
uffix_of_entitycategorycodefile ecc_l
;;

let external_entitycategorysuffix_list_of_category_symbol_of_codefile_symbol_of_topconstructor_symbol smb_cat smb_cfi smb_cnt =
[]
;;
*)
