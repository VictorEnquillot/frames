open Gentest_v;;

testing "Segment_buried Symbol Implementation Extracting Item_value_v";;

(* toplevel 
   #use "tsegment_buried_symbol_implementation_extracting_item_value_v.ml";; 
 *)

(** smb_cpg is hinted from ctt_cpg through the tag
    1 -> heading
    2 -> function
*)
let nam_cod = "tsegment_buried_symbol_implementation_extracting_item_value_v.ml";; 

module Aba_v = Abbreviation_argument_v
module Abm_v = Abbreviation_module_v
module Cfs_t = Codefile_symbol_t
module Cfs_v = Codefile_symbol_v
module Cls_t = Caml_line_symbol_t
module Cls_v = Caml_line_symbol_v
module Clv_v = Caml_line_value_v
module Cmt_v = Constructor_tag_tree_v
module Cmtp_v = Constructor_tag_tree_provider_v
module Cnm_v = Constructor_tag_v
module Cns_v = Constructor_symbol_v
module Cpc_v = Caml_paragraph_context_v
module Cpf_v = Caml_paragraph_formula_v
module Cps_v = Caml_paragraph_symbol_v
module Cptf_v = Caml_paragraph_types_definitions_formula_v
module Cpv_v = Caml_paragraph_value_v
module Csu_v = Codefile_suffix_v
module Cts_v = Category_symbol_v
module Ecc_v = Entitycategorycodefile_v
module Ecs_v = Entitycategorysuffix_v
module Ens_v = Entity_symbol_v
module Fio_v = Fileio_v
module Its_v = Item_symbol_v
module Itf_v = Item_formula_v
module Itv_v = Item_value_v
module Sco_v = Scope_v
module Tgp_v = Target_value_provider_v
module Tgv_v = Target_value_v
module Tre_v = Tree_v
module Scp_v = Scope_provider_v

let nam_ent = "segment_buried";;
let smb_ent = Ens_v.make nam_ent;;
let smb_cat = Cts_v.category_symbol;;
let smb_cfi = Cfs_v.codefile_implementation;;
let smb_itm = Its_v.extracting;;

let smb_epr = Ens_v.entity_proper_symbol_of_string nam_ent;;
let smb_ent = Ens_v.make nam_ent;;
let smb_cnt = Cns_v.make smb_ent;;

let val_tgt = Tgv_v.make smb_epr smb_cat smb_cfi;;
Tgp_v.store_force "current" val_tgt;; 

let kyl_itm = [("item", Its_v.name smb_itm); ("codefile", Cfs_v.name smb_cfi); ("category", Cts_v.name smb_cat); ("entity", Ens_v.name smb_ent)];;

let mrk_cnt_t = Cmtp_v.provide smb_cnt;;
let mrk_cnt = Tre_v.root_off_tree mrk_cnt_t;; 
let pth_cnt = [mrk_cnt];;

let ctt_cpg = Cpc_v.make pth_cnt kyl_itm;;
let trp_imc = Cpc_v.symboltriplet_off_caml_paragraph_context ctt_cpg;;

let smb_cpg = Cps_v.bottom_caml_paragraph_symbol_of_bottom_caml_paragraph_context ctt_cpg;;
let nam_cpg = Cps_v.name smb_cpg;;

let ctt_cps_l = Cpc_v.son_caml_paragraph_context_list_off_caml_paragraph_context ctt_cpg;;
let smb_cns_l = Cpc_v.son_constructor_symbol_list_off_caml_paragraph_context ctt_cpg;;
let smb_ens_l = List.map Cns_v.entity_symbol_off_constructor_symbol smb_cns_l;;
let ecc_l = List.map Cpc_v.entitycategorycodefile_off_caml_paragraph_context ctt_cps_l;;
let ecs_l = List.map Cpc_v.entitycategorysuffix_off_caml_paragraph_context ctt_cps_l;;
let ctt_cpg_ppr = List.nth ctt_cps_l 1;;
let ecs_ppr = List.nth ecs_l 1;;
let ecc_ppr = List.nth ecc_l 1;;
let smb_cnt_ppr = List.nth smb_cns_l 1;;
let enc_ppr = Ecc_v.entitycategory_off_entitycategorycodefile ecc_ppr;;
let s = Scp_v.provide enc_ppr;;
let sco_ppr = Ecc_v.scope_of_entitycategorycodefile ecc_ppr;;
let suf_ppr = Ecc_v.codefile_suffix_of_entitycategorycodefile ecc_ppr;;
(*
let smb_cli_l = List.map (fun c -> Cptf_v.type_pipe_caml_line_symbol_of_caml_paragraph_context c) ctt_cps_l;;
*)

let frm_itm = Itf_v.retrieve kyl_itm;;
let nam_fil_itm = Itv_v.item_file_name_of_key_list kyl_itm;;

let val_itm = Itv_v.make kyl_itm;;

testi 0 (
ctt_cpg 
(* : Caml_paragraph_context_t.caml_paragraph_context *)
=
([(Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
    (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
      "segment_buried"),
   [1])],
 [("item", "extracting"); ("codefile", "implementation");
  ("category", "symbol"); ("entity", "segment_buried")])

(* : Caml_paragraph_symbol_t.caml_paragraph_symbol *)
);;

testi 1 (
 trp_imc 
(* : (Item_symbol_t.item_symbol, Codefile_symbol_t.codefile_symbol,
   Category_symbol_t.category_symbol)
  Triplet_t.triplet *)
=
(Item_symbol_t.Extracting_symbol, 
 Codefile_symbol_t.Implementation_symbol,
 Category_symbol_t.Symbol_symbol)
);;

testi 2 (
smb_cpg 
(* : Caml_paragraph_symbol_t.caml_paragraph_symbol *)
=
Caml_paragraph_symbol_t.Heading_symbol
 ([(Caml_paragraph_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Caml_paragraph_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
       "segment_buried"),
    [1])],
  [("item", "extracting"); ("codefile", "implementation");
   ("category", "symbol"); ("entity", "segment_buried")])
);;

testi 3 (
smb_ens_l
(* : Entity_symbol_t.entity_symbol list *)
=
[Entity_symbol_t.Entity_fictive_symbol
  (Entity_symbol_t.Entity_bare_symbol "segment_oneone");
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_local_symbol "block_oneone");
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_symbol_t.Entity_bare_symbol "segment_leftextended");
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_symbol_t.Entity_bare_symbol "polysegment")]
);;

testi 4 (
smb_cns_l
(* : Constructor_symbol_t.constructor_symbol list *)
  =
[Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "segment_oneone");
 Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_several_symbol "block_oneone");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "segment_leftextended");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "polysegment")]
);;

testi 5 (
ctt_cps_l 
(* : Caml_paragraph_context_t.caml_paragraph_context list *)
  =
[([(Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_fictive_symbol
     (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_bare_symbol
       "segment_oneone"),
    [1; 1]);
   (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
       "segment_buried"),
    [1])],
  [("item", "extracting"); ("codefile", "implementation");
   ("category", "symbol"); ("entity", "segment_buried")]);
 ([(Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
       "block_oneone"),
    [1; 1]);
   (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
       "segment_buried"),
    [1])],
  [("item", "extracting"); ("codefile", "implementation");
   ("category", "symbol"); ("entity", "segment_buried")]);
 ([(Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_fictive_symbol
     (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_bare_symbol
       "segment_leftextended"),
    [1; 1]);
   (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
       "segment_buried"),
    [1])],
  [("item", "extracting"); ("codefile", "implementation");
   ("category", "symbol"); ("entity", "segment_buried")]);
 ([(Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_fictive_symbol
     (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_bare_symbol
       "polysegment"),
    [1; 1]);
   (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
       "segment_buried"),
    [1])],
  [("item", "extracting"); ("codefile", "implementation");
   ("category", "symbol"); ("entity", "segment_buried")])]
);;

testi 6 (
 ecc_l 
(* : Entitycategorycodefile_t.entitycategorycodefile list *)
 =
[(Entitycategorycodefile_t.Ens_t.Entity_fictive_symbol
   (Entitycategorycodefile_t.Ens_t.Entity_bare_symbol "segment_oneone"),
  Entitycategorycodefile_t.Cts_t.Empty, Entitycategorycodefile_t.Cfs_t.Empty);
 (Entitycategorycodefile_t.Ens_t.Entity_proper_symbol
   (Entitycategorycodefile_t.Ens_t.Entity_local_symbol "block_oneone"),
  Entitycategorycodefile_t.Cts_t.Symbol_symbol,
  Entitycategorycodefile_t.Cfs_t.Implementation_symbol);
 (Entitycategorycodefile_t.Ens_t.Entity_fictive_symbol
   (Entitycategorycodefile_t.Ens_t.Entity_bare_symbol "segment_leftextended"),
  Entitycategorycodefile_t.Cts_t.Empty, Entitycategorycodefile_t.Cfs_t.Empty);
 (Entitycategorycodefile_t.Ens_t.Entity_fictive_symbol
   (Entitycategorycodefile_t.Ens_t.Entity_bare_symbol "polysegment"),
  Entitycategorycodefile_t.Cts_t.Empty, Entitycategorycodefile_t.Cfs_t.Empty)]
);;

testi 7 (
ecs_l 
(* : Entitycategorysuffix_t.entitycategorysuffix list *)
=
[(Entitycategorysuffix_t.Ens_t.Entity_fictive_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_bare_symbol "segment_oneone"),
  Entitycategorysuffix_t.Cts_t.Empty, Entitycategorysuffix_t.Cfs_t.Empty);
 (Entitycategorysuffix_t.Ens_t.Entity_proper_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_local_symbol "block_oneone"),
  Entitycategorysuffix_t.Cts_t.Symbol_symbol, Entitycategorysuffix_t.Cfs_t.V);
 (Entitycategorysuffix_t.Ens_t.Entity_fictive_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_bare_symbol "segment_leftextended"),
  Entitycategorysuffix_t.Cts_t.Empty, Entitycategorysuffix_t.Cfs_t.Empty);
 (Entitycategorysuffix_t.Ens_t.Entity_fictive_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_bare_symbol "polysegment"),
  Entitycategorysuffix_t.Cts_t.Empty, Entitycategorysuffix_t.Cfs_t.Empty)]
);;

testi 8 (
ctt_cpg_ppr 
(* : Caml_paragraph_context_t.caml_paragraph_context *)
  =
([(Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
    (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
      "block_oneone"),
   [1; 1]);
  (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
    (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
      "segment_buried"),
   [1])],
 [("item", "extracting"); ("codefile", "implementation");
  ("category", "symbol"); ("entity", "segment_buried")])
);;

testi 9 (
suf_ppr 
(* : Codefile_suffix_t.codefile_suffix *)
= 
Codefile_suffix_t.V
);;

testi 10 (
sco_ppr 
(* : Scope_t.scope *)
 = 
Scope_t.Scope_public
);;

testi 11 (
Ecc_v.codefile_suffix_of_entitycategorycodefile ecc_ppr
=
Csu_v.suffix_v
);;

testi 12 (
Ecs_v.codefile_suffix_off_entitycategorysuffix ecs_ppr
=
Csu_v.suffix_v
);;

testi 13 (
List.nth (Tre_v.list_off_tree frm_itm) 0
(* : Item_formula_t.Cps_t.caml_paragraph_symbol *)
=
Item_formula_t.Cps_t.Heading_symbol
 ([(Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
       "segment_buried"),
    [1])],
  [("item", "extracting"); ("codefile", "implementation");
   ("category", "symbol"); ("entity", "segment_buried")])
);;

testi 14 (
List.nth (Tre_v.list_off_tree frm_itm) 1
(* : Item_formula_t.Cps_t.caml_paragraph_symbol *)
=
Item_formula_t.Cps_t.Functions_definitions_symbol
 (Item_formula_t.Cps_t.Function_function_symbol
   (Item_formula_t.Cps_t.Function_s_off_t_function
     ([(Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
         (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
           "block_oneone"),
        [1; 1]);
       (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
         (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
           "segment_buried"),
        [1])],
      [("item", "extracting"); ("codefile", "implementation");
       ("category", "symbol"); ("entity", "segment_buried")])))
);;

testi 15 (
List.nth (Tre_v.list_off_tree frm_itm) 4
(* : Item_formula_t.Cps_t.caml_paragraph_symbol *)
=
Item_formula_t.Cps_t.Functions_definitions_symbol
 (Item_formula_t.Cps_t.Function_argument_symbol
   (Item_formula_t.Cps_t.Function_b_off_t_t_argument
     ([(Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
         (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
           "block_onesingleonetriple"),
        [1; 1; 1]);
       (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
         (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
           "block_oneone"),
        [1; 1]);
       (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
         (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
           "segment_buried"),
        [1])],
      [("item", "extracting"); ("codefile", "implementation");
       ("category", "symbol"); ("entity", "segment_buried")])))
);;

testi 16 (
List.nth (Tre_v.list_off_tree frm_itm) 7
(* : Item_formula_t.Cps_t.caml_paragraph_symbol *)
=
Item_formula_t.Cps_t.Functions_definitions_symbol
 (Item_formula_t.Cps_t.Function_argument_symbol
   (Item_formula_t.Cps_t.Function_b_off_t_t_argument
     ([(Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
         (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
           "block_onetripleonesingle"),
        [1; 1; 1]);
       (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
         (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
           "block_oneone"),
        [1; 1]);
       (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
         (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
           "segment_buried"),
        [1])],
      [("item", "extracting"); ("codefile", "implementation");
       ("category", "symbol"); ("entity", "segment_buried")])))
);;

testi 17 (
nam_fil_itm
(* : string *)
= 
"segment_buried_symbol_extracting_v.ml"
);;

testi 18 (
val_itm 
(* : Item_value_t.item_value *)
  =
Item_value_t.Tre_t.Inner (["(** {6 Extracting.} *)"],
 [Item_value_t.Tre_t.Inner
   (["let block_oneone_symbol_off_segment_buried_symbol = function";
     "  | Sbs_v smb_boo -> smb_boo";
     "  | s -> Erm_v.print_fatal_error nam_cod\n     \"block_oneone_symbol_off_segment_buried_symbol\"\n     \"Block_oneone_symbol\"\n     (name s)\n    \"check\"";
     ";;"],
   [Item_value_t.Tre_t.Leaf
     ["let block_onesingleonesingle_symbol_off_segment_buried_symbol smb_seb =";
      "  let smb_boo = block_oneone_symbol_off_segment_buried_symbol smb_seb in";
      "    B11s_v_off_block_oneone_symbol smb_boo"; ";;"];
    Item_value_t.Tre_t.Leaf
     ["let block_onesingleonedouble_symbol_off_segment_buried_symbol smb_seb =";
      "  let smb_boo = block_oneone_symbol_off_segment_buried_symbol smb_seb in";
      "    B11s_v_off_block_oneone_symbol smb_boo"; ";;"];
    Item_value_t.Tre_t.Leaf
     ["let block_onesingleonetriple_symbol_off_segment_buried_symbol smb_seb =";
      "  let smb_boo = block_oneone_symbol_off_segment_buried_symbol smb_seb in";
      "    B11s_v_off_block_oneone_symbol smb_boo"; ";;"];
    Item_value_t.Tre_t.Leaf
     ["let block_onedoubleonesingle_symbol_off_segment_buried_symbol smb_seb =";
      "  let smb_boo = block_oneone_symbol_off_segment_buried_symbol smb_seb in";
      "    B11s_v_off_block_oneone_symbol smb_boo"; ";;"];
    Item_value_t.Tre_t.Leaf
     ["let block_onedoubleonedouble_symbol_off_segment_buried_symbol smb_seb =";
      "  let smb_boo = block_oneone_symbol_off_segment_buried_symbol smb_seb in";
      "    B11s_v_off_block_oneone_symbol smb_boo"; ";;"];
    Item_value_t.Tre_t.Leaf
     ["let block_onetripleonesingle_symbol_off_segment_buried_symbol smb_seb =";
      "  let smb_boo = block_oneone_symbol_off_segment_buried_symbol smb_seb in";
      "    B11s_v_off_block_oneone_symbol smb_boo"; ";;"]])])
);;

let oc = Fio_v.open_write_of_string_of_string_of_file_name nam_cod "oc" nam_fil_itm;; 
Itv_v.write oc val_itm;;
close_out oc;


