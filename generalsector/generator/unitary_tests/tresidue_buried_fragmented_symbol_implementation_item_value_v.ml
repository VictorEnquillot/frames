open Gentest_v;;

testing "Residue_buried_fragmented Symbol Implementation Upgrading Item_value_v";;

(* toplevel 
   #use "tresidue_buried_fragmented_symbol_implementation_upgrading_item_value_v.ml";; 
 *)

(** smb_cpg is hinted from ctt_cpg through the tag
    1 -> heading
    2 -> function
*)
let nam_cod = "tresidue_buried_fragmented_symbol_implementation_upgrading_item_value_v.ml";; 

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
module Cnp_v = Constructor_path_v
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

let nam_ent = "residue_buried_fragmented";;
let smb_ent = Ens_v.make nam_ent;;
let smb_cat = Cts_v.category_symbol;;
let smb_cfi = Cfs_v.codefile_implementation;;
let smb_itm = Its_v.upgrading;;

let smb_epr = Ens_v.entity_proper_symbol_of_string nam_ent;;
let smb_ent = Ens_v.make nam_ent;;
let smb_cnt = Cns_v.make smb_ent;;

let val_tgt = Tgv_v.make smb_epr smb_cat smb_cfi;;
Tgp_v.store_force "current" val_tgt;; 

let kyl_itm = [("item", Its_v.name smb_itm); ("codefile", Cfs_v.name smb_cfi); ("category", Cts_v.name smb_cat); ("entity", Ens_v.name smb_ent)];;

let mrk_cnt_t = Cmtp_v.provide smb_cnt;;
let mrk_cnt = Tre_v.root_off_tree mrk_cnt_t;; 
let pth_cnt = [mrk_cnt];;

let ctt_cpg_t = Cpc_v.caml_paragraph_context_tree_of_constructor_tag_tree_of_item_key_list mrk_cnt_t kyl_itm;;
let ctt_cpg_l = Tre_v.list_off_tree ctt_cpg_t;;

let ctt_cpg = Tre_v.root_off_tree ctt_cpg_t;; 
let trp_imc = Cpc_v.symboltriplet_off_caml_paragraph_context ctt_cpg;;
let smb_cpg = Cps_v.bottom_caml_paragraph_symbol_of_bottom_caml_paragraph_context ctt_cpg;;
let nam_cpg = Cps_v.name smb_cpg;;

let ctt_cps_l = Cpc_v.son_caml_paragraph_context_list_off_caml_paragraph_context ctt_cpg;;
let smb_cns_l = Cpc_v.son_constructor_symbol_list_off_caml_paragraph_context ctt_cpg;;
let smb_ens_l = List.map Cns_v.entity_symbol_off_constructor_symbol smb_cns_l;;
let ecc_l = List.map Cpc_v.entitycategorycodefile_off_caml_paragraph_context ctt_cps_l;;
let ecs_l = List.map Cpc_v.entitycategorysuffix_off_caml_paragraph_context ctt_cps_l;;
let ecc_one = List.nth ecc_l 1;;
let suf_one = Ecc_v.codefile_suffix_of_entitycategorycodefile ecc_one;;
let sco_one = Ecc_v.scope_of_entitycategorycodefile ecc_one;;
let ecs_one = List.nth ecs_l 1;;

let frm_itm = Itf_v.retrieve kyl_itm;;
let smb_cpg_l = Tre_v.list_off_tree frm_itm;;
let cnt_nod = List.length smb_cpg_l;;
let smb_cli_l = Itf_v.caml_line_symbol_list_off_item_formula frm_itm;;
let nam_fil_itm = Itv_v.item_file_name_of_key_list kyl_itm;;

testi 0 (
ctt_cpg 
(* : Caml_paragraph_context_t.caml_paragraph_context *)
=
([(Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
    (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
      "residue_buried_fragmented"),
   [1])],
 [("item", "upgrading"); ("codefile", "implementation");
  ("category", "symbol"); ("entity", "residue_buried_fragmented")])

(* : Caml_paragraph_symbol_t.caml_paragraph_symbol *)
);;

testi 1 (
 trp_imc 
(* : (Item_symbol_t.item_symbol, Codefile_symbol_t.codefile_symbol,
   Category_symbol_t.category_symbol)
  Triplet_t.triplet *)
=
(Item_symbol_t.Upgrading_symbol, 
 Codefile_symbol_t.Implementation_symbol,
 Category_symbol_t.Symbol_symbol)
);;

testi 2 (
smb_cpg 
(* : Caml_paragraph_symbol_t.caml_paragraph_symbol *)
=
Caml_paragraph_symbol_t.Empty_symbol
 ([(Caml_paragraph_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Caml_paragraph_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
       "residue_buried_fragmented"),
    [1])],
  [("item", "upgrading"); ("codefile", "implementation");
   ("category", "symbol"); ("entity", "residue_buried_fragmented")])
);;

testi 3 (
smb_ens_l
(* : Entity_symbol_t.entity_symbol list *)
=
[Entity_symbol_t.Entity_fictive_symbol
  (Entity_symbol_t.Entity_bare_symbol "molecule_aminoacid_proline");
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_local_symbol "molecule_aminoacid_regular")]
);;

testi 4 (
smb_cns_l
(* : Constructor_symbol_t.constructor_symbol list *)
  =
[Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "molecule_aminoacid_proline");
 Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_several_symbol
    "molecule_aminoacid_regular")]
);;

testi 5 (
ctt_cps_l 
(* : Caml_paragraph_context_t.caml_paragraph_context list *)
=
[([(Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_fictive_symbol
     (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_bare_symbol
       "molecule_aminoacid_proline"),
    [1; 1]);
   (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
       "residue_buried_fragmented"),
    [1])],
  [("item", "upgrading"); ("codefile", "implementation");
   ("category", "symbol"); ("entity", "residue_buried_fragmented")]);
 ([(Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
       "molecule_aminoacid_regular"),
    [1; 1]);
   (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
       "residue_buried_fragmented"),
    [1])],
  [("item", "upgrading"); ("codefile", "implementation");
   ("category", "symbol"); ("entity", "residue_buried_fragmented")])]
);;

testi 6 (
 ecc_l 
(* : Entitycategorycodefile_t.entitycategorycodefile list *)
 =
[(Entitycategorycodefile_t.Ens_t.Entity_fictive_symbol
   (Entitycategorycodefile_t.Ens_t.Entity_bare_symbol
     "molecule_aminoacid_proline"),
  Entitycategorycodefile_t.Cts_t.Empty, Entitycategorycodefile_t.Cfs_t.Empty);
 (Entitycategorycodefile_t.Ens_t.Entity_proper_symbol
   (Entitycategorycodefile_t.Ens_t.Entity_local_symbol
     "molecule_aminoacid_regular"),
  Entitycategorycodefile_t.Cts_t.Symbol_symbol,
  Entitycategorycodefile_t.Cfs_t.Implementation_symbol)]
);;

testi 7 (
ecs_l 
(* : Entitycategorysuffix_t.entitycategorysuffix list *)
=
[(Entitycategorysuffix_t.Ens_t.Entity_fictive_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_bare_symbol
     "molecule_aminoacid_proline"),
  Entitycategorysuffix_t.Cts_t.Empty, Entitycategorysuffix_t.Cfs_t.Empty);
 (Entitycategorysuffix_t.Ens_t.Entity_proper_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_local_symbol
     "molecule_aminoacid_regular"),
  Entitycategorysuffix_t.Cts_t.Symbol_symbol, Entitycategorysuffix_t.Cfs_t.V)]
);;

testi 8 (
suf_one 
(* : Codefile_suffix_t.codefile_suffix *)
= 
Codefile_suffix_t.V
);;

testi 9 (
sco_one
(* : Scope_t.scope *)
 = 
Scope_t.Scope_public
);;

testi 10 (
Ecc_v.codefile_suffix_of_entitycategorycodefile ecc_one
=
Csu_v.suffix_v
);;

testi 11 (
Ecs_v.codefile_suffix_off_entitycategorysuffix ecs_one
=
Csu_v.suffix_v
);;

testi 12 (
cnt_nod
=
22
);;

(* Cpg Heading : residue_buried_fragmented *)

testi 13 (
List.nth smb_cpg_l 0
(* : Item_formula_t.Cps_t.caml_paragraph_symbol list *)
=
Item_formula_t.Cps_t.Heading_symbol
 ([(Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
       "residue_buried_fragmented"),
    [1])],
  [("item", "upgrading"); ("codefile", "implementation");
   ("category", "symbol"); ("entity", "residue_buried_fragmented")])
);;

testi 14 (
List.nth smb_cli_l 0
(* : Caml_line_symbol_t.caml_line_symbol list *)
=
Caml_line_symbol_t.Constant_symbol
  (Caml_line_symbol_t.Comment_line_item_symbol
    ([(Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
        (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
          "residue_buried_fragmented"),
       [1])],
     [("item", "upgrading"); ("codefile", "implementation");
      ("category", "symbol"); ("entity", "residue_buried_fragmented")]))
);;

(* Cpg Empty : residue_buried_fragmented skipped *)

testi 15 (
List.nth smb_cpg_l 1
(* : Item_formula_t.Cps_t.caml_paragraph_symbol list *)
=
Item_formula_t.Cps_t.Empty_symbol
 ([(Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
       "residue_buried_fragmented"),
    [1])],
  [("item", "upgrading"); ("codefile", "implementation");
   ("category", "symbol"); ("entity", "residue_buried_fragmented")])
);;

(* Cpg t_of_s : residue_buried_fragmented_raregas  *)

testi 16 (
List.nth smb_cpg_l 2
(* : Item_formula_t.Cps_t.caml_paragraph_symbol list *)
=
Item_formula_t.Cps_t.Functions_definitions_symbol
 (Item_formula_t.Cps_t.Function_constant_symbol
   ([(Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_fictive_symbol
       (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_bare_symbol
         "molecule_aminoacid_proline"),
      [1; 1]);
     (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
       (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
         "residue_buried_fragmented"),
      [1])],
    [("item", "upgrading"); ("codefile", "implementation");
     ("category", "symbol"); ("entity", "residue_buried_fragmented")]))
);;

(*
let residue_buried_fragmented_symbol_of_residue_buried_fragmented_raregas_symbol smb_a0r =
  A0s_t.Residue_buried_fragmented_raregas_symbol smb_a0r
;;
*)

testi 17 (
List.nth smb_cli_l 1
(* : Caml_line_symbol_t.caml_line_symbol list *)
=
Caml_line_symbol_t.Pair_symbol
 (Caml_line_symbol_t.Let_b_eq_t_of_u_u_dot_b_symbol
   ([(Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_fictive_symbol
       (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_bare_symbol
         "molecule_aminoacid_proline"),
      [1; 1]);
     (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
       (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
         "residue_buried_fragmented"),
      [1])],
    [("item", "upgrading"); ("codefile", "implementation");
     ("category", "symbol"); ("entity", "residue_buried_fragmented")]))
);;

testi 18 (
List.nth smb_cli_l 2
(* : Caml_line_symbol_t.caml_line_symbol list *)
=
Caml_line_symbol_t.Pair_symbol
 (Caml_line_symbol_t.Let_t_of_s_s_eq_symbol
   ([(Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
       (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
         "molecule_aminoacid_regular"),
      [1; 1]);
     (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
       (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
         "residue_buried_fragmented"),
      [1])],
    [("item", "upgrading"); ("codefile", "implementation");
     ("category", "symbol"); ("entity", "residue_buried_fragmented")]))
);;

testi 19 (
List.nth smb_cli_l 3
(* : Caml_line_symbol_t.caml_line_symbol list *)
=
Caml_line_symbol_t.Pair_symbol
 (Caml_line_symbol_t.T_dot_s_s_symbol
   ([(Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
       (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
         "molecule_aminoacid_regular"),
      [1; 1]);
     (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
       (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
         "residue_buried_fragmented"),
      [1])],
    [("item", "upgrading"); ("codefile", "implementation");
     ("category", "symbol"); ("entity", "residue_buried_fragmented")]))
);;

(* Cpg function_constant : ar *)

testi 20 (
 List.nth ctt_cpg_l 2
(* : Caml_paragraph_context_t.caml_paragraph_context *)
 =
([(Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
    (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
      "molecule_aminoacid_regular"),
   [1; 1]);
  (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
    (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
      "residue_buried_fragmented"),
   [1])],
 [("item", "upgrading"); ("codefile", "implementation");
  ("category", "symbol"); ("entity", "residue_buried_fragmented")])
);;

(* Cps_v.bottom_caml_paragraph_symbol_of_bottom_caml_paragraph_context ctt_cpb *)
let ctt_cpb = List.nth ctt_cpg_l 2;;
let smb_cnb = Cpc_v.bottom_constructor_symbol_off_caml_paragraph_context ctt_cpb;;
let dep_cnb = Cpc_v.bottom_constructor_depth_off_caml_paragraph_context ctt_cpb ;;
let trp_imc = Cpc_v.symboltriplet_off_caml_paragraph_context ctt_cpb ;;

(* let ar = residue_buried_fragmented_symbol_of_residue_buried_fragmented_raregas_symbol A0rs_t.Ar;; *)

testi 21 (
List.nth smb_cpg_l 3
(* : Item_formula_t.Cps_t.caml_paragraph_symbol list *)
=
Item_formula_t.Cps_t.Functions_definitions_symbol
 (Item_formula_t.Cps_t.Function_argument_symbol
   (Item_formula_t.Cps_t.Function_t_of_s_argument
     ([(Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
         (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
           "molecule_aminoacid_regular"),
        [1; 1]);
       (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
         (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
           "residue_buried_fragmented"),
        [1])],
      [("item", "upgrading"); ("codefile", "implementation");
       ("category", "symbol"); ("entity", "residue_buried_fragmented")])))
);;

testi 22 (
List.nth smb_cli_l 4
(* : Caml_line_symbol_t.caml_line_symbol list *)
=
Caml_line_symbol_t.Constant_symbol Caml_line_symbol_t.Double_semicolon_symbol
);;

testi 23 (
List.nth smb_cli_l 5
(* : Caml_line_symbol_t.caml_line_symbol list *)
=
Caml_line_symbol_t.Pair_symbol
 (Caml_line_symbol_t.Let_b_eq_t_of_u_u_dot_b_symbol
   ([(Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_fictive_symbol
       (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_bare_symbol
         "alanine"),
      [1; 1; 1]);
     (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
       (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
         "molecule_aminoacid_regular"),
      [1; 1]);
     (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
       (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
         "residue_buried_fragmented"),
      [1])],
    [("item", "upgrading"); ("codefile", "implementation");
     ("category", "symbol"); ("entity", "residue_buried_fragmented")]))
);;

testi 24 (
List.nth smb_cli_l 6
(* : Caml_line_symbol_t.caml_line_symbol list *)
=
Caml_line_symbol_t.Pair_symbol
 (Caml_line_symbol_t.Let_b_eq_t_of_u_u_dot_b_symbol
   ([(Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_fictive_symbol
       (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_bare_symbol
         "arginine"),
      [1; 1; 1]);
     (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
       (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
         "molecule_aminoacid_regular"),
      [1; 1]);
     (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
       (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
         "residue_buried_fragmented"),
      [1])],
    [("item", "upgrading"); ("codefile", "implementation");
     ("category", "symbol"); ("entity", "residue_buried_fragmented")]))
);;

testi 25 (
nam_fil_itm
(* : string *)
= 
"residue_buried_fragmented_symbol_upgrading_v.ml"
);;

let val_itm = Itv_v.make kyl_itm;;

testi 26 (
val_itm 
(* : Item_value_t.item_value *)
  =  
  Item_value_t.Tre_t.Inner (["(** {6 Upgrading.} *)"],
   [Item_value_t.Tre_t.Inner ([],
     [Item_value_t.Tre_t.Leaf
       ["let molecule_aminoacid_proline = residue_buried_fragmented_symbol_of_residue_buried_fragmented_symbol Rbfs_t.Molecule_aminoacid_proline;;"];
      Item_value_t.Tre_t.Inner
       (["let residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol smb_mar =";
         "Rbfs_t.Molecule_aminoacid_regular_symbol smb_mar"; ";;"],
       [Item_value_t.Tre_t.Leaf
         ["let alanine = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Alanine;;"];
        Item_value_t.Tre_t.Leaf
         ["let arginine = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Arginine;;"];
        Item_value_t.Tre_t.Leaf
         ["let asparagine = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Asparagine;;"];
        Item_value_t.Tre_t.Leaf
         ["let aspartic = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Aspartic;;"];
        Item_value_t.Tre_t.Leaf
         ["let cysteine = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Cysteine;;"];
        Item_value_t.Tre_t.Leaf
         ["let glutamine = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Glutamine;;"];
        Item_value_t.Tre_t.Leaf
         ["let glutamic = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Glutamic;;"];
        Item_value_t.Tre_t.Leaf
         ["let histidine = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Histidine;;"];
        Item_value_t.Tre_t.Leaf
         ["let isoleucine = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Isoleucine;;"];
        Item_value_t.Tre_t.Leaf
         ["let leucine = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Leucine;;"];
        Item_value_t.Tre_t.Leaf
         ["let lysine = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Lysine;;"];
        Item_value_t.Tre_t.Leaf
         ["let methionine = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Methionine;;"];
        Item_value_t.Tre_t.Leaf
         ["let phenylalanine = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Phenylalanine;;"];
        Item_value_t.Tre_t.Leaf
         ["let serine = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Serine;;"];
        Item_value_t.Tre_t.Leaf
         ["let threonine = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Threonine;;"];
        Item_value_t.Tre_t.Leaf
         ["let tryptophan = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Tryptophan;;"];
        Item_value_t.Tre_t.Leaf
         ["let tyrosine = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Tyrosine;;"];
        Item_value_t.Tre_t.Leaf
         ["let valine = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Valine;;"]])])])
);;

let oc = Fio_v.open_write_of_string_of_string_of_file_name nam_cod "oc" nam_fil_itm;; 
Itv_v.write oc val_itm;;
close_out oc;


