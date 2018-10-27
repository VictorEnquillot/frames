open Gentest_v;;

testing "Atom_zerotied Symbol Implementation Naming Item_value_v";;

(* toplevel 
   #use "tatom_zerotied_symbol_implementation_naming_item_value_v.ml";; 
 *)

(** smb_cpg is hinted from ctt_cpg through the tag
    1 -> heading
    2 -> function
*)
let nam_cod = "tatom_zerotied_symbol_implementation_naming_item_value_v.ml";; 

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

let nam_ent = "atom_zerotied";;
let smb_ent = Ens_v.make nam_ent;;
let smb_cat = Cts_v.category_symbol;;
let smb_cfi = Cfs_v.codefile_implementation;;
let smb_itm = Its_v.naming;;

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
      "atom_zerotied"),
   [1])],
 [("item", "naming"); ("codefile", "implementation");
  ("category", "symbol"); ("entity", "atom_zerotied")])

(* : Caml_paragraph_symbol_t.caml_paragraph_symbol *)
);;

testi 1 (
 trp_imc 
(* : (Item_symbol_t.item_symbol, Codefile_symbol_t.codefile_symbol,
   Category_symbol_t.category_symbol)
  Triplet_t.triplet *)
=
(Item_symbol_t.Naming_symbol, 
 Codefile_symbol_t.Implementation_symbol,
 Category_symbol_t.Symbol_symbol)
);;

testi 2 (
smb_cpg 
(* : Caml_paragraph_symbol_t.caml_paragraph_symbol *)
=
Caml_paragraph_symbol_t.Functions_definitions_symbol
 (Caml_paragraph_symbol_t.Function_function_symbol
   (Caml_paragraph_symbol_t.Function_name_function
     ([(Caml_paragraph_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
         (Caml_paragraph_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
           "atom_zerotied"),
        [1])],
      [("item", "naming"); ("codefile", "implementation");
       ("category", "symbol"); ("entity", "atom_zerotied")])))
);;

testi 3 (
smb_ens_l
(* : Entity_symbol_t.entity_symbol list *)
=
[Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_local_symbol "atom_zerotied_raregas");
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_local_symbol "atom_zerotied_anion");
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_local_symbol "atom_zerotied_cation");
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_local_symbol "halfbridge")]
);;

testi 4 (
smb_cns_l
(* : Constructor_symbol_t.constructor_symbol list *)
  =
[Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_several_symbol "atom_zerotied_raregas");
 Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_several_symbol "atom_zerotied_anion");
 Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_several_symbol "atom_zerotied_cation");
 Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_several_symbol "halfbridge")]
);;

testi 5 (
ctt_cps_l 
(* : Caml_paragraph_context_t.caml_paragraph_context list *)
=
[([(Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
       "atom_zerotied_raregas"),
    [1; 1]);
   (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
       "atom_zerotied"),
    [1])],
  [("item", "naming"); ("codefile", "implementation");
   ("category", "symbol"); ("entity", "atom_zerotied")]);
 ([(Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
       "atom_zerotied_anion"),
    [2; 1]);
   (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
       "atom_zerotied"),
    [1])],
  [("item", "naming"); ("codefile", "implementation");
   ("category", "symbol"); ("entity", "atom_zerotied")]);
 ([(Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
       "atom_zerotied_cation"),
    [3; 1]);
   (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
       "atom_zerotied"),
    [1])],
  [("item", "naming"); ("codefile", "implementation");
   ("category", "symbol"); ("entity", "atom_zerotied")]);
 ([(Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
       "halfbridge"),
    [4; 1]);
   (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
       "atom_zerotied"),
    [1])],
  [("item", "naming"); ("codefile", "implementation");
   ("category", "symbol"); ("entity", "atom_zerotied")])]
);;

testi 6 (
 ecc_l 
(* : Entitycategorycodefile_t.entitycategorycodefile list *)
 =
[(Entitycategorycodefile_t.Ens_t.Entity_proper_symbol
   (Entitycategorycodefile_t.Ens_t.Entity_local_symbol
     "atom_zerotied_raregas"),
  Entitycategorycodefile_t.Cts_t.Symbol_symbol,
  Entitycategorycodefile_t.Cfs_t.Implementation_symbol);
 (Entitycategorycodefile_t.Ens_t.Entity_proper_symbol
   (Entitycategorycodefile_t.Ens_t.Entity_local_symbol "atom_zerotied_anion"),
  Entitycategorycodefile_t.Cts_t.Symbol_symbol,
  Entitycategorycodefile_t.Cfs_t.Implementation_symbol);
 (Entitycategorycodefile_t.Ens_t.Entity_proper_symbol
   (Entitycategorycodefile_t.Ens_t.Entity_local_symbol "atom_zerotied_cation"),
  Entitycategorycodefile_t.Cts_t.Symbol_symbol,
  Entitycategorycodefile_t.Cfs_t.Implementation_symbol);
 (Entitycategorycodefile_t.Ens_t.Entity_proper_symbol
   (Entitycategorycodefile_t.Ens_t.Entity_local_symbol "halfbridge"),
  Entitycategorycodefile_t.Cts_t.Symbol_symbol,
  Entitycategorycodefile_t.Cfs_t.Implementation_symbol)]
);;

testi 7 (
ecs_l 
(* : Entitycategorysuffix_t.entitycategorysuffix list *)
=
[(Entitycategorysuffix_t.Ens_t.Entity_proper_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_local_symbol "atom_zerotied_raregas"),
  Entitycategorysuffix_t.Cts_t.Symbol_symbol, Entitycategorysuffix_t.Cfs_t.V);
 (Entitycategorysuffix_t.Ens_t.Entity_proper_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_local_symbol "atom_zerotied_anion"),
  Entitycategorysuffix_t.Cts_t.Symbol_symbol, Entitycategorysuffix_t.Cfs_t.V);
 (Entitycategorysuffix_t.Ens_t.Entity_proper_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_local_symbol "atom_zerotied_cation"),
  Entitycategorysuffix_t.Cts_t.Symbol_symbol, Entitycategorysuffix_t.Cfs_t.V);
 (Entitycategorysuffix_t.Ens_t.Entity_proper_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_local_symbol "halfbridge"),
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
2
);;

(* Cpg Heading : atom_zerotied *)

testi 13 (
List.nth smb_cpg_l 0
(* : Item_formula_t.Cps_t.caml_paragraph_symbol list *)
=
Item_formula_t.Cps_t.Heading_symbol
 ([(Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
       "atom_zerotied"),
    [1])],
  [("item", "naming"); ("codefile", "implementation");
   ("category", "symbol"); ("entity", "atom_zerotied")])
);;

testi 14 (
List.nth smb_cli_l 0
(* : Caml_line_symbol_t.caml_line_symbol list *)
=
Caml_line_symbol_t.Constant_symbol
  (Caml_line_symbol_t.Comment_line_item_symbol
    ([(Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
        (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
          "atom_zerotied"),
       [1])],
     [("item", "naming"); ("codefile", "implementation");
      ("category", "symbol"); ("entity", "atom_zerotied")]))
);;

(* Cpg Empty : atom_zerotied skipped *)

testi 15 (
List.nth smb_cpg_l 1
(* : Item_formula_t.Cps_t.caml_paragraph_symbol list *)
=
Item_formula_t.Cps_t.Functions_definitions_symbol
 (Item_formula_t.Cps_t.Function_function_symbol
   (Item_formula_t.Cps_t.Function_name_function
     ([(Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
         (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
           "atom_zerotied"),
        [1])],
      [("item", "naming"); ("codefile", "implementation");
       ("category", "symbol"); ("entity", "atom_zerotied")])))
);;

(* Cpg : atom_zerotied_raregas  *)

(*
let is_atom_zerotied_raregas_symbol_off_atom_zerotied_symbol = function
  | A0s_t.Atom_zerotied_raregas_symbol _ -> true
  | _ -> false
;;

*)

testi 16 (
List.nth smb_cli_l 1
(* : Caml_line_symbol_t.caml_line_symbol list *)
=
Caml_line_symbol_t.Constant_symbol
 Caml_line_symbol_t.Let_name_eq_function_symbol
);;

testi 17 (
List.nth smb_cli_l 2
(* : Caml_line_symbol_t.caml_line_symbol list *)
=
Caml_line_symbol_t.Pair_symbol
 (Caml_line_symbol_t.Pipe_t_dot_s_s_arrow_symbol
   ([(Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
       (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
         "atom_zerotied_raregas"),
      [1; 1]);
     (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
       (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
         "atom_zerotied"),
      [1])],
    [("item", "naming"); ("codefile", "implementation");
     ("category", "symbol"); ("entity", "atom_zerotied")]))
);;

testi 18 (
List.nth smb_cli_l 3
(* : Caml_line_symbol_t.caml_line_symbol list *)
=
Caml_line_symbol_t.Singlet_symbol
 (Caml_line_symbol_t.S_name_s_symbol
   ([(Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
       (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
         "atom_zerotied_raregas"),
      [1; 1]);
     (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
       (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
         "atom_zerotied"),
      [1])],
    [("item", "naming"); ("codefile", "implementation");
     ("category", "symbol"); ("entity", "atom_zerotied")]))
);;

testi 19 (
List.nth smb_cli_l 4
(* : Caml_line_symbol_t.caml_line_symbol list *)
=
Caml_line_symbol_t.Pair_symbol
 (Caml_line_symbol_t.Pipe_t_dot_s_s_arrow_symbol
   ([(Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
       (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
         "atom_zerotied_anion"),
      [2; 1]);
     (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
       (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
         "atom_zerotied"),
      [1])],
    [("item", "naming"); ("codefile", "implementation");
     ("category", "symbol"); ("entity", "atom_zerotied")]))
);;

testi 20 (
 List.nth ctt_cpg_l 2
(* : Caml_paragraph_context_t.caml_paragraph_context *)
 =
([(Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_fictive_symbol
    (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_bare_symbol "ar"),
   [1; 1; 1]);
  (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
    (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
      "atom_zerotied_raregas"),
   [1; 1]);
  (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
    (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
      "atom_zerotied"),
   [1])],
 [("item", "naming"); ("codefile", "implementation"); ("category", "symbol");
  ("entity", "atom_zerotied")])
);;

(* Cps_v.bottom_caml_paragraph_symbol_of_bottom_caml_paragraph_context ctt_cpb *)
let ctt_cpb = List.nth ctt_cpg_l 2;;
let smb_cnb = Cpc_v.bottom_constructor_symbol_off_caml_paragraph_context ctt_cpb;;
let dep_cnb = Cpc_v.bottom_constructor_depth_off_caml_paragraph_context ctt_cpb ;;
let trp_imc = Cpc_v.symboltriplet_off_caml_paragraph_context ctt_cpb ;;

testi 21 (
List.nth smb_cli_l 5
(* : Caml_line_symbol_t.caml_line_symbol list *)
=
Caml_line_symbol_t.Singlet_symbol
 (Caml_line_symbol_t.S_name_s_symbol
   ([(Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
       (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
         "atom_zerotied_anion"),
      [2; 1]);
     (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
       (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
         "atom_zerotied"),
      [1])],
    [("item", "naming"); ("codefile", "implementation");
     ("category", "symbol"); ("entity", "atom_zerotied")]))
);;

testi 22 (
List.nth smb_cli_l 6
(* : Caml_line_symbol_t.caml_line_symbol list *)
=
Caml_line_symbol_t.Pair_symbol
 (Caml_line_symbol_t.Pipe_t_dot_s_s_arrow_symbol
   ([(Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
       (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
         "atom_zerotied_cation"),
      [3; 1]);
     (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
       (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
         "atom_zerotied"),
      [1])],
    [("item", "naming"); ("codefile", "implementation");
     ("category", "symbol"); ("entity", "atom_zerotied")]))
);;

testi 23 (
nam_fil_itm
(* : string *)
= 
"atom_zerotied_symbol_naming_v.ml"
);;

let val_itm = Itv_v.make kyl_itm;;

testi 24 (
val_itm 
(* : Item_value_t.item_value *)
  =  
  Item_value_t.Tre_t.Inner (["(** {6 Naming.} *)"],
   [Item_value_t.Tre_t.Leaf
     ["let name = function";
      "  | A0s_t.Atom_zerotied_raregas_symbol smb_a0r ->";
      "      A0rs_v.name smb_a0r";
      "  | A0s_t.Atom_zerotied_anion_symbol smb_a0a ->";
      "      A0as_v.name smb_a0a";
      "  | A0s_t.Atom_zerotied_cation_symbol smb_a0c ->";
      "      A0cs_v.name smb_a0c"; 
      "  | A0s_t.Halfbridge_symbol smb_hae ->";
      "      Has_v.name smb_hae"; 
      ";;"]])
);;

let oc = Fio_v.open_write_of_string_of_string_of_file_name nam_cod "oc" nam_fil_itm;; 
Itv_v.write oc val_itm;;
close_out oc;


