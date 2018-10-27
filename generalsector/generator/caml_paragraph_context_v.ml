(** {3 The functionalities fro a Context for a Paragraph of Caml_line in an Item.} *)

let nam_cod = "caml_paragraph_context_v.ml";;

(** {6 Modules.} *)

module Cfs_t = Codefile_symbol_t
module Cfs_v = Codefile_symbol_v
module Cnm_v = Constructor_tag_v
module Cnp_v = Constructor_path_v
module Cns_t = Constructor_symbol_t
module Cns_v = Constructor_symbol_v
module Cpt_v = Constructor_path_tree_v
module Cst_v = Constructor_symbol_tree_v
module Cstp_v = Constructor_symbol_tree_provider_v
module Cmtp_v = Constructor_tag_tree_provider_v
module Cts_t = Category_symbol_t
module Cts_v = Category_symbol_v
module Dbt_v = Doublet_v
module Ecc_v = Entitycategorycodefile_v
module Ecs_v = Entitycategorysuffix_v
module Ens_v = Entity_symbol_v
module Erm_v = Error_messages_v
(* module Exclp_v = Entity_external_n_codefile_list_provider_v *)
module Its_t = Item_symbol_t
module Its_v = Item_symbol_v
module Kyl_v = Key_list_v
module Lst_v = List_v
module Mrk_v = Tag_v
module Tci_v = Tree_canonical_index_v
module Tre_v = Tree_v
module Trp_v = Triplet_v

(** {6 Making.} *)

let make pth_cnt kyl_itm =
  let key_itm = List.hd kyl_itm in
  if Key_v.key_name key_itm = "item"
  then Dbt_v.make pth_cnt kyl_itm
  else Erm_v.print_fatal_error nam_cod
      "item_key_list_off_caml_paragraph_context"
      "item" 
      (Key_v.key_name key_itm) 
      "check"
;;(* *** TODO *** *)

(** {6 Extracting.} *)

let item_key_list_off_caml_paragraph_context ctt_cpg =
  let kyl_itm = Dbt_v.right_off_doublet ctt_cpg in
  let key_itm = List.hd kyl_itm in
  if Key_v.key_name key_itm = "item"
  then kyl_itm
  else Erm_v.print_fatal_error nam_cod 
      "item_key_list_off_caml_paragraph_context"
      "item" (Key_v.key_name key_itm) 
      "check"
;;

let entity_proper_symbol_off_caml_paragraph_context ctt_cpg =
  let kyl_itm = item_key_list_off_caml_paragraph_context ctt_cpg in
  Kyl_v.entity_proper_symbol_off_key_list kyl_itm
;;

let codefile_symbol_off_caml_paragraph_context ctt_cpg =
  let kyl_itm = item_key_list_off_caml_paragraph_context ctt_cpg in
  Kyl_v.codefile_symbol_off_key_list kyl_itm
;;

let codefile_suffix_off_caml_paragraph_context ctt_cpg =
  let kyl_itm = item_key_list_off_caml_paragraph_context ctt_cpg in
  Kyl_v.codefile_suffix_off_key_list kyl_itm
;;

let category_symbol_off_caml_paragraph_context ctt_cpg =
  let kyl_itm = item_key_list_off_caml_paragraph_context ctt_cpg in
  Kyl_v.category_symbol_off_key_list kyl_itm
;;

let item_symbol_off_caml_paragraph_context ctt_cpg =
  let kyl_itm = item_key_list_off_caml_paragraph_context ctt_cpg in
  Kyl_v.item_symbol_off_key_list kyl_itm
;;

let constructor_path_off_caml_paragraph_context ctt_cpg =
  let pth_cnt = Dbt_v.left_off_doublet ctt_cpg in
  Cnp_v.check_is_valid_of_constructor_path 
    pth_cnt nam_cod "constructor_path_off_caml_paragraph_context"; 
  pth_cnt
;;

let top_constructor_tag_off_caml_paragraph_context ctt_cpg =
  let pth_cnt_t = 
    constructor_path_off_caml_paragraph_context ctt_cpg 
  in
  Cnp_v.top_constructor_tag_off_constructor_path pth_cnt_t
;;

let top_constructor_symbol_off_caml_paragraph_context ctt_cpg =
  let mrk_cnt_t = 
    top_constructor_tag_off_caml_paragraph_context ctt_cpg
  in
  Cnm_v.constructor_symbol_off_constructor_tag mrk_cnt_t
;;

let top_constructor_proper_tree_canonical_index_off_caml_paragraph_context ctt_cpg =
  let mrk_cnt_t = 
    top_constructor_tag_off_caml_paragraph_context ctt_cpg 
  in
  Cnm_v.constructor_proper_tree_canonical_index_off_constructor_tag mrk_cnt_t
;;

let top_constructor_depth_off_caml_paragraph_context ctt_cpg =
  let mrk_cnt_t = 
    top_constructor_tag_off_caml_paragraph_context ctt_cpg 
  in
  Cnm_v.constructor_depth_off_constructor_tag mrk_cnt_t
;;

let bottom_constructor_tag_off_caml_paragraph_context ctt_cpg =
  let pth_cnt_b = 
    constructor_path_off_caml_paragraph_context ctt_cpg 
  in
  Cnp_v.bottom_constructor_tag_off_constructor_path pth_cnt_b
;;

let bottom_constructor_proper_tree_canonical_index_off_caml_paragraph_context ctt_cpg =
  let mrk_cnt_b = 
    bottom_constructor_tag_off_caml_paragraph_context ctt_cpg
  in
  Cnm_v.constructor_proper_tree_canonical_index_off_constructor_tag mrk_cnt_b
;;

let bottom_constructor_depth_off_caml_paragraph_context ctt_cpg =
  let mrk_cnt_b = 
    bottom_constructor_tag_off_caml_paragraph_context ctt_cpg
  in
  Cnm_v.constructor_depth_off_constructor_tag mrk_cnt_b
;;

let bottom_constructor_symbol_off_caml_paragraph_context ctt_cpg =
  let mrk_cnt_b = 
    bottom_constructor_tag_off_caml_paragraph_context ctt_cpg
  in
  Dbt_v.left_off_doublet mrk_cnt_b
;;

let bottom_constructor_proper_tree_canonical_index_off_caml_paragraph_context ctt_cpg =
  let mrk_cnt_b = 
    top_constructor_tag_off_caml_paragraph_context ctt_cpg 
  in
  Cnm_v.constructor_proper_tree_canonical_index_off_constructor_tag mrk_cnt_b
;;

let symboltriplet_off_caml_paragraph_context ctt_cpg =
  let smb_itm = item_symbol_off_caml_paragraph_context ctt_cpg in
  let smb_cfi = codefile_symbol_off_caml_paragraph_context ctt_cpg in
  let smb_cat = category_symbol_off_caml_paragraph_context ctt_cpg in
  Trp_v.make smb_itm smb_cfi smb_cat
;;

let is_son_constructor_proper_symbol_off_caml_paragraph_context ctt_cpg =
  let pth_cnt = constructor_path_off_caml_paragraph_context ctt_cpg in
  let mrk_cns = Cnp_v.son_constructor_tag_off_constructor_path pth_cnt in
  let smb_cns = Dbt_v.left_off_doublet mrk_cns in
  Cns_v.is_constructor_proper_symbol_off_constructor_symbol smb_cns
;;

let son_constructor_fictive_symbol_off_caml_paragraph_context ctt_cpg =
  let pth_cnt = constructor_path_off_caml_paragraph_context ctt_cpg in
  let mrk_cns = Cnp_v.son_constructor_tag_off_constructor_path pth_cnt in
  let smb_cns = Dbt_v.left_off_doublet mrk_cns in
  if not (Cns_v.is_constructor_proper_symbol_off_constructor_symbol smb_cns)
  then Cns_v.constructor_fictive_symbol_off_constructor_symbol smb_cns 
  else Erm_v.print_fatal_error nam_cod 
      "son_entitycategorycodefile_off_caml_paragraph_context"
      "a fictive constructor" 
      (">" ^ (Cns_v.name smb_cns)^ "< path >" ^(Cnp_v.name pth_cnt)) "check"
;;

(** {9 Entitycategorycodefile} *)

let entitycategorycodefile_off_caml_paragraph_context ctt_cpg =
  let smb_cat = category_symbol_off_caml_paragraph_context ctt_cpg in
  let smb_cfi = codefile_symbol_off_caml_paragraph_context ctt_cpg in
  let pth_cnt = constructor_path_off_caml_paragraph_context ctt_cpg in
  let mrk_cnt = Cnp_v.bottom_constructor_tag_off_constructor_path pth_cnt in
  let smb_cnt = Mrk_v.symbol_off_tag mrk_cnt in
  let smb_ent = Cns_v.entity_symbol_off_constructor_symbol smb_cnt in 

  Ecc_v.make smb_ent smb_cat smb_cfi
;;

let entitycategorysuffix_off_caml_paragraph_context ctt_cpg = 
  let ecc = entitycategorycodefile_off_caml_paragraph_context ctt_cpg in
  Ecs_v.entitycategorysuffix_of_entitycategorycodefile ecc
;;

let top_entitycategorycodefile_off_caml_paragraph_context ctt_cpg =
  let kyl_itm = item_key_list_off_caml_paragraph_context ctt_cpg in
  Kyl_v.entitycategorycodefile_off_key_list kyl_itm 
;;

let top_entitycategorysuffix_off_caml_paragraph_context ctt_cpg =
  let kyl_itm = item_key_list_off_caml_paragraph_context ctt_cpg in
  Kyl_v.entitycategorysuffix_off_key_list kyl_itm 
;;

let son_entitycategorycodefile_off_caml_paragraph_context ctt_cpg =
(* son constructor may be proper and oneline and external *)
(* son constructor may be proper and ... *)
(* ctt_cpg is at bottom relative to son *)
  let smb_cat = category_symbol_off_caml_paragraph_context ctt_cpg in
  let smb_cfi = codefile_symbol_off_caml_paragraph_context ctt_cpg in
  let pth_cnt = constructor_path_off_caml_paragraph_context ctt_cpg in
  let mrk_cns = Cnp_v.son_constructor_tag_off_constructor_path pth_cnt in
  let smb_cns = Dbt_v.left_off_doublet mrk_cns in
  let smb_ens = Cns_v.entity_symbol_off_constructor_symbol smb_cns in 

  Ecc_v.make smb_ens smb_cat smb_cfi
;;

let son_entitycategorysuffix_off_caml_paragraph_context ctt_cpg = (*** TODO **)
  let ecc = son_entitycategorycodefile_off_caml_paragraph_context ctt_cpg in
  Ecs_v.entitycategorysuffix_of_entitycategorycodefile ecc
;;

let bottom_entitycategorysuffix_off_caml_paragraph_context ctt_cpg =
  let pth_cnt_b = constructor_path_off_caml_paragraph_context ctt_cpg in
  let mrk_cnt_b = Cnp_v.bottom_constructor_tag_off_constructor_path pth_cnt_b in
  let smb_cnt_b = Dbt_v.left_off_doublet mrk_cnt_b in
  let smb_enb = Cns_v.entity_symbol_off_constructor_symbol smb_cnt_b in 

  let smb_cat = category_symbol_off_caml_paragraph_context ctt_cpg in
  let smb_csu = codefile_suffix_off_caml_paragraph_context ctt_cpg in

  Ecs_v.make smb_enb smb_cat smb_csu
;;

let up_entitycategorysuffix_off_caml_paragraph_context ctt_cpg =
  let smb_cat = category_symbol_off_caml_paragraph_context ctt_cpg in
  let smb_csu = codefile_suffix_off_caml_paragraph_context ctt_cpg in
  let pth_cnt_b = constructor_path_off_caml_paragraph_context ctt_cpg in
  let mrk_cnt_u = Cnp_v.up_constructor_tag_off_constructor_path pth_cnt_b in
  let smb_cnt_u = Dbt_v.left_off_doublet mrk_cnt_u in
  if Cns_v.is_constructor_proper_symbol_off_constructor_symbol smb_cnt_u
  then
    begin 
      let smb_cpu = 
	Cns_v.constructor_proper_symbol_off_constructor_symbol smb_cnt_u 
      in
      let smb_enu = 
	Cns_v.entity_symbol_off_constructor_proper_symbol smb_cpu 
      in 
      Ecs_v.make smb_enu smb_cat smb_csu
    end
  else
    begin
      Erm_v.print_fatal_error nam_cod 
	"up_entitycategorysuffix_off_caml_paragraph_context"
        "a proper constructor" 
        (">" ^ (Cns_v.name smb_cnt_u)^ "< path >" ^(Cnp_v.name pth_cnt_b)) "check"
    end
;;

let down_entitycategorycodefile_off_caml_paragraph_context ctt_cpg =
  let smb_cat = category_symbol_off_caml_paragraph_context ctt_cpg in
  let smb_cfi = codefile_symbol_off_caml_paragraph_context ctt_cpg in
  let pth_cnt_b = constructor_path_off_caml_paragraph_context ctt_cpg in
  let mrk_cnd = Cnp_v.down_constructor_tag_off_constructor_path pth_cnt_b in
  let smb_cnd = Dbt_v.left_off_doublet mrk_cnd in
  if Cns_v.is_constructor_proper_symbol_off_constructor_symbol smb_cnd
  then
    begin 
      let smb_cpd = 
	Cns_v.constructor_proper_symbol_off_constructor_symbol smb_cnd
      in
      let smb_end = 
	Cns_v.entity_symbol_off_constructor_proper_symbol smb_cpd 
      in 
      Ecc_v.make smb_end smb_cat smb_cfi
    end
  else
    begin
      Erm_v.print_fatal_error nam_cod
	"down_entitycategorycodefile_off_caml_paragraph_context"
        "a proper constructor" 
        (">" ^ (Cns_v.name smb_cnd)^ "< path >" ^(Cnp_v.name pth_cnt_b)) "check"
    end
;;

let down_entitycategorysuffix_off_caml_paragraph_context ctt_cpg =
  let ecc = son_entitycategorycodefile_off_caml_paragraph_context ctt_cpg in
  Ecs_v.entitycategorysuffix_of_entitycategorycodefile ecc
;;

let son_constructor_symbol_list_off_caml_paragraph_context ctt_cpg =
  let smb_cnt = top_constructor_symbol_off_caml_paragraph_context ctt_cpg in
  Cst_v.topson_constructor_symbol_list_of_constructor_symbol smb_cnt 
;;

let son_constructor_path_list_off_caml_paragraph_context ctt_cpg =
  let pth_cnt = constructor_path_off_caml_paragraph_context ctt_cpg in
  let tci_cnt = 
    top_constructor_proper_tree_canonical_index_off_caml_paragraph_context ctt_cpg 
  in
  let smb_cns_l = 
    son_constructor_symbol_list_off_caml_paragraph_context ctt_cpg 
  in
  let tci_cns_l =  
    Tci_v.son_tree_canonical_index_list_of_length_of_tree_canonical_index
      (List.length smb_cns_l) tci_cnt
  in
  let mrk_cns_l =
    List.map2 Cnm_v.make smb_cns_l tci_cns_l 
  in

  List.map (fun m -> Cnp_v.make m pth_cnt) mrk_cns_l 
;;

let son_caml_paragraph_context_list_off_caml_paragraph_context ctt_cpg =
  let pth_cns_l = son_constructor_path_list_off_caml_paragraph_context ctt_cpg in

  let kyl_itm = item_key_list_off_caml_paragraph_context ctt_cpg in
  (* codefile stay the same *)

  List.map (fun p -> make p kyl_itm) pth_cns_l
;;

let son_caml_paragraph_context_list_of_codefile_symbol_of_caml_paragraph_context smb_cfi ctt_cpg =
  let kyl_itm = item_key_list_off_caml_paragraph_context ctt_cpg in

  let pth_cns_l = son_constructor_path_list_off_caml_paragraph_context ctt_cpg in

  (* adapt codefile to son *)
  let kyl_itm_s = Kyl_v.replace_of_codefile_symbol_of_key_list smb_cfi kyl_itm in
  List.map (fun p -> make p kyl_itm_s) pth_cns_l
;;

let grandson_entitycategorysuffix_list_datastructure smb_cat smb_cfi smb_cnt =
  let smb_cnt_t = Cstp_v.provide smb_cnt in
  let smb_cnt_t_s_l = Tre_v.topsontree_list_off_tree smb_cnt_t in
  if List.length smb_cnt_t_s_l <> 1
  then Erm_v.print_fatal_error nam_cod 
      "grandson_entitycategorysuffix_list_datastructure"
      "Only one topson for a datastructure"
      (Format.sprintf "%i topsons" (List.length smb_cnt_t_s_l))
      "check"
  else
    begin
      let smb_cnt_t_s = List.hd smb_cnt_t_s_l in
      let smb_cnt_gs_l =
	Cst_v.topson_constructor_symbol_list_of_constructor_symbol_tree smb_cnt_t_s
      in
      let smb_ent_gs_l =
	List.map Cns_v.entity_symbol_off_constructor_symbol smb_cnt_gs_l
      in 
      let ecc_l =
	List.map (fun s -> Ecc_v.make s smb_cat smb_cfi) smb_ent_gs_l
      in
      List.map Ecs_v.entitycategorysuffix_of_entitycategorycodefile ecc_l
    end
;;

let grandson_entitycategorysuffix_list_of_caml_paragraph_context ctt_cpg =
  let smb_cat = category_symbol_off_caml_paragraph_context ctt_cpg in
  let smb_cfi = codefile_symbol_off_caml_paragraph_context ctt_cpg in
  let smb_cnt = top_constructor_symbol_off_caml_paragraph_context ctt_cpg in
  grandson_entitycategorysuffix_list_datastructure smb_cat smb_cfi smb_cnt
;;

(****
let external_caml_paragraph_context_list_off_caml_paragraph_context ctt_cpg =

  let kyl_itm = item_key_list_off_caml_paragraph_context ctt_cpg in

  let pth_cnt = constructor_path_off_caml_paragraph_context ctt_cpg in
  let ecc = entitycategorycodefile_off_caml_paragraph_context ctt_cpg in
  let ecx_n_cfi_l = Exclp_v.provide ecc in

  let smb_cns_l = List.map (* *** TODO *** ??? codefile symbol is dropped here *)
      (fun (x, c) -> Cns_v.make (Ens_v.entity_symbol_of_entity_external_symbol x))
      ecx_n_cfi_l
  in
  let tci_cns_l =  
    Tci_v.son_tree_canonical_index_list_of_length_of_tree_canonical_index
      (List.length smb_cns_l) [1]
  in
  let mrk_cns_l =
    List.map2 Cnm_v.make smb_cns_l tci_cns_l 
  in
  let pth_cns_l = 
    List.map (fun m -> Cnp_v.make m pth_cnt) mrk_cns_l 
  in

  List.map (fun p -> make p kyl_itm) pth_cns_l
;;


let up_constructor_path_list_off_caml_paragraph_context ctt_cpg =
  let pth_cnb = constructor_path_off_caml_paragraph_context ctt_cpg in
  let tci_cnt = 
    top_constructor_proper_tree_canonical_index_off_caml_paragraph_context ctt_cpg 
  in
  let smb_cnu_l = 
    up_constructor_symbol_list_off_caml_paragraph_context ctt_cpg 
  in
  let tci_cnu_l =  
    Tci_v.son_tree_canonical_index_list_of_length_of_tree_canonical_index
      (List.length smb_cns_l) tci_cnt
  in
  let mrk_cns_l =
    List.map2 Cnm_v.make smb_cns_l tci_cns_l 
  in

  List.map (fun m -> Cnp_v.make m pth_cnt) mrk_cns_l 
;;

let up_caml_paragraph_context_list_of_codefile_symbol_of_caml_paragraph_context smb_cfi ctt_cpg =
  let kyl_itm = item_key_list_off_caml_paragraph_context ctt_cpg in

  let pth_cnu_l = up_constructor_path_list_off_caml_paragraph_context ctt_cpg in

  (* adapt codefile to up *)
  let kyl_itm_u = Kyl_v.replace_of_codefile_symbol_of_key_list smb_cfi kyl_itm in
  List.map (fun p -> make p kyl_itm_u) pth_cnu_l
;;
***)

let name ctt_cpg =
  Dbt_v.name Cnp_v.name Kyl_v.name ctt_cpg
;;

(** {6 Tree.} *)

let caml_paragraph_context_tree_of_constructor_path_tree_of_item_key_list pth_cnt_t kyl_itm =
  Tre_v.map (fun p -> make p kyl_itm) pth_cnt_t
;;

let caml_paragraph_context_tree_of_constructor_tag_tree_of_item_key_list mrk_cnt_t kyl_itm =
  let pth_cnt_t =
    Cpt_v.constructor_path_tree_of_constructor_tag_tree mrk_cnt_t
  in
  caml_paragraph_context_tree_of_constructor_path_tree_of_item_key_list pth_cnt_t kyl_itm
;;

let entitycategorysuffix_tree_off_key_list kyl =
  let smb_ent_top = Kyl_v.entity_symbol_off_key_list kyl in
  let smb_cnt_top = Cns_v.make smb_ent_top in
  let mrk_cnt_t = Cmtp_v.provide smb_cnt_top in
  let ctt_cpg_t = 
    caml_paragraph_context_tree_of_constructor_tag_tree_of_item_key_list 
      mrk_cnt_t kyl in
  Tre_v.map entitycategorysuffix_off_caml_paragraph_context ctt_cpg_t
;;

let entitycategorysuffix_tree_off_caml_paragraph_context ctt_cpg =
  let kyl_itm = item_key_list_off_caml_paragraph_context ctt_cpg in
  entitycategorysuffix_tree_off_key_list kyl_itm
;;
