open Gentest_v;;

testing "Atom Symbol Implementation Extracting Item_value_v";;

(* toplevel 
   #use "tatom_symbol_implementation_extracting_item_value_v.ml";; 
 *)

(** smb_cpg is hinted from ctt_cpg through the tag
    1 -> heading
    2 -> function
*)
let nam_cod = "tatom_symbol_implementation_extracting_item_value_v.ml";; 

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
module Cpt_v = Constructor_path_tree_v
module Itv_v = Item_value_v
module Sco_v = Scope_v
module Tgp_v = Target_value_provider_v
module Tgv_v = Target_value_v
module Tre_v = Tree_v
module Scp_v = Scope_provider_v

let nam_ent = "atom";;
let smb_ent = Ens_v.make nam_ent;;
let smb_cat = Cts_v.category_symbol;;
let smb_cfi = Cfs_v.codefile_implementation;;
let smb_itm = Its_v.extracting;;

let smb_ent = Ens_v.make nam_ent;;
let smb_cnt = Cns_v.make smb_ent;;

let kyl_itm = [("item", Its_v.name smb_itm); ("codefile", Cfs_v.name smb_cfi); ("category", Cts_v.name smb_cat); ("entity", Ens_v.name smb_ent)];;

let mrk_cnt_t = Cmtp_v.provide smb_cnt;;
let mrk_cnt = Tre_v.root_off_tree mrk_cnt_t;; 

let pth_cnt_t = Cpt_v.constructor_path_tree_of_constructor_tag_tree mrk_cnt_t;;
let pth_cnt = Tre_v.root_off_tree pth_cnt_t;;
let pth_cnt_l = Tre_v.list_off_tree pth_cnt_t;;

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
let smb_cli_l = Itf_v.caml_line_symbol_list_off_item_formula frm_itm;;
let nam_fil_itm = Itv_v.item_file_name_of_key_list kyl_itm;;

testi 0 (
ctt_cpg 
(* : Caml_paragraph_context_t.caml_paragraph_context *)
=
([(Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
    (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
      "atom"),
   [1])],
 [("item", "extracting"); ("codefile", "implementation");
  ("category", "symbol"); ("entity", "atom")])

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
Caml_paragraph_symbol_t.Empty_symbol
 ([(Caml_paragraph_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Caml_paragraph_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
       "atom"),
    [1])],
  [("item", "extracting"); ("codefile", "implementation");
   ("category", "symbol"); ("entity", "atom")])
);;

testi 3 (
smb_ens_l
(* : Entity_symbol_t.entity_symbol list *)
=
[Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_local_symbol "atom_zerotied");
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_local_symbol "atom_onetied");
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_local_symbol "atom_twotied");
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_local_symbol "atom_threetied");
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_local_symbol "atom_fourtied");
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_local_symbol "atom_fivetied");
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_local_symbol "atom_sixtied")]
);;

testi 4 (
smb_cns_l
(* : Constructor_symbol_t.constructor_symbol list *)
  =
[Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_several_symbol "atom_zerotied");
 Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_several_symbol "atom_onetied");
 Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_several_symbol "atom_twotied");
 Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_several_symbol "atom_threetied");
 Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_several_symbol "atom_fourtied");
 Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_oneline_symbol
    (Constructor_symbol_t.Constructor_nodeoneline_symbol "atom_fivetied"));
 Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_oneline_symbol
    (Constructor_symbol_t.Constructor_nodeoneline_symbol "atom_sixtied"))]
);;

testi 5 (
ctt_cps_l 
(* : Caml_paragraph_context_t.caml_paragraph_context list *)
=

[([(Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
       "atom_zerotied"),
    [1; 1]);
   (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
       "atom"),
    [1])],
  [("item", "extracting"); ("codefile", "implementation");
   ("category", "symbol"); ("entity", "atom")]);
 ([(Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
       "atom_onetied"),
    [2; 1]);
   (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
       "atom"),
    [1])],
  [("item", "extracting"); ("codefile", "implementation");
   ("category", "symbol"); ("entity", "atom")]);
 ([(Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
       "atom_twotied"),
    [3; 1]);
   (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
       "atom"),
    [1])],
  [("item", "extracting"); ("codefile", "implementation");
   ("category", "symbol"); ("entity", "atom")]);
 ([(Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
       "atom_threetied"),
    [4; 1]);
   (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
       "atom"),
    [1])],
  [("item", "extracting"); ("codefile", "implementation");
   ("category", "symbol"); ("entity", "atom")]);
 ([(Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
       "atom_fourtied"),
    [5; 1]);
   (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
       "atom"),
    [1])],
  [("item", "extracting"); ("codefile", "implementation");
   ("category", "symbol"); ("entity", "atom")]);
 ([(Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
       (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_nodeoneline_symbol
         "atom_fivetied")),
    [6; 1]);
   (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
       "atom"),
    [1])],
  [("item", "extracting"); ("codefile", "implementation");
   ("category", "symbol"); ("entity", "atom")]);
 ([(Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
       (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_nodeoneline_symbol
         "atom_sixtied")),
    [7; 1]);
   (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
       "atom"),
    [1])],
  [("item", "extracting"); ("codefile", "implementation");
   ("category", "symbol"); ("entity", "atom")])]
);;

testi 6 (
 ecc_l 
(* : Entitycategorycodefile_t.entitycategorycodefile list *)
 =
[(Entitycategorycodefile_t.Ens_t.Entity_proper_symbol
   (Entitycategorycodefile_t.Ens_t.Entity_local_symbol "atom_zerotied"),
  Entitycategorycodefile_t.Cts_t.Symbol_symbol,
  Entitycategorycodefile_t.Cfs_t.Implementation_symbol);
 (Entitycategorycodefile_t.Ens_t.Entity_proper_symbol
   (Entitycategorycodefile_t.Ens_t.Entity_local_symbol "atom_onetied"),
  Entitycategorycodefile_t.Cts_t.Symbol_symbol,
  Entitycategorycodefile_t.Cfs_t.Implementation_symbol);
 (Entitycategorycodefile_t.Ens_t.Entity_proper_symbol
   (Entitycategorycodefile_t.Ens_t.Entity_local_symbol "atom_twotied"),
  Entitycategorycodefile_t.Cts_t.Symbol_symbol,
  Entitycategorycodefile_t.Cfs_t.Implementation_symbol);
 (Entitycategorycodefile_t.Ens_t.Entity_proper_symbol
   (Entitycategorycodefile_t.Ens_t.Entity_local_symbol "atom_threetied"),
  Entitycategorycodefile_t.Cts_t.Symbol_symbol,
  Entitycategorycodefile_t.Cfs_t.Implementation_symbol);
 (Entitycategorycodefile_t.Ens_t.Entity_proper_symbol
   (Entitycategorycodefile_t.Ens_t.Entity_local_symbol "atom_fourtied"),
  Entitycategorycodefile_t.Cts_t.Symbol_symbol,
  Entitycategorycodefile_t.Cfs_t.Implementation_symbol);
 (Entitycategorycodefile_t.Ens_t.Entity_proper_symbol
   (Entitycategorycodefile_t.Ens_t.Entity_local_symbol "atom_fivetied"),
  Entitycategorycodefile_t.Cts_t.Symbol_symbol,
  Entitycategorycodefile_t.Cfs_t.Implementation_symbol);
 (Entitycategorycodefile_t.Ens_t.Entity_proper_symbol
   (Entitycategorycodefile_t.Ens_t.Entity_local_symbol "atom_sixtied"),
  Entitycategorycodefile_t.Cts_t.Symbol_symbol,
  Entitycategorycodefile_t.Cfs_t.Implementation_symbol)]
);;

testi 7 (
ecs_l 
(* : Entitycategorysuffix_t.entitycategorysuffix list *)
=
[(Entitycategorysuffix_t.Ens_t.Entity_proper_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_local_symbol "atom_zerotied"),
  Entitycategorysuffix_t.Cts_t.Symbol_symbol, Entitycategorysuffix_t.Cfs_t.V);
 (Entitycategorysuffix_t.Ens_t.Entity_proper_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_local_symbol "atom_onetied"),
  Entitycategorysuffix_t.Cts_t.Symbol_symbol, Entitycategorysuffix_t.Cfs_t.V);
 (Entitycategorysuffix_t.Ens_t.Entity_proper_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_local_symbol "atom_twotied"),
  Entitycategorysuffix_t.Cts_t.Symbol_symbol, Entitycategorysuffix_t.Cfs_t.V);
 (Entitycategorysuffix_t.Ens_t.Entity_proper_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_local_symbol "atom_threetied"),
  Entitycategorysuffix_t.Cts_t.Symbol_symbol, Entitycategorysuffix_t.Cfs_t.V);
 (Entitycategorysuffix_t.Ens_t.Entity_proper_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_local_symbol "atom_fourtied"),
  Entitycategorysuffix_t.Cts_t.Symbol_symbol, Entitycategorysuffix_t.Cfs_t.V);
 (Entitycategorysuffix_t.Ens_t.Entity_proper_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_local_symbol "atom_fivetied"),
  Entitycategorysuffix_t.Cts_t.Symbol_symbol, Entitycategorysuffix_t.Cfs_t.V);
 (Entitycategorysuffix_t.Ens_t.Entity_proper_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_local_symbol "atom_sixtied"),
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
List.length pth_cnt_l
=
34
);;

testi 13 (
List.length smb_cpg_l
=
34
);;

testi 14 (
List.length smb_cli_l
=
129
);;

(* Cpg Heading : atom *)

testi 15 (
List.nth smb_cpg_l 0
(* : Item_formula_t.Cps_t.caml_paragraph_symbol list *)
=
Item_formula_t.Cps_t.Heading_symbol
 ([(Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
       "atom"),
    [1])],
  [("item", "extracting"); ("codefile", "implementation");
   ("category", "symbol"); ("entity", "atom")])
);;

testi 16 (
List.nth smb_cli_l 0
(* : Caml_line_symbol_t.caml_line_symbol list *)
=
Caml_line_symbol_t.Constant_symbol
  (Caml_line_symbol_t.Comment_line_item_symbol
    ([(Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
        (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
          "atom"),
       [1])],
     [("item", "extracting"); ("codefile", "implementation");
      ("category", "symbol"); ("entity", "atom")]))
);;

(* Cpg Empty : atom skipped *)

testi 17 (
List.nth smb_cpg_l 1
(* : Item_formula_t.Cps_t.caml_paragraph_symbol list *)
=
Item_formula_t.Cps_t.Empty_symbol
 ([(Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
       "atom"),
    [1])],
  [("item", "extracting"); ("codefile", "implementation");
   ("category", "symbol"); ("entity", "atom")])
);;

(* Cpg t_of_s : atom_raregas  *)

testi 18 (
List.nth smb_cpg_l 2
(* : Item_formula_t.Cps_t.caml_paragraph_symbol list *)
=
Item_formula_t.Cps_t.Functions_definitions_symbol
 (Item_formula_t.Cps_t.Function_function_symbol
   (Item_formula_t.Cps_t.Function_s_off_t_function
     ([(Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
         (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
           "atom_raregas"),
        [1; 1]);
       (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
         (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
           "atom"),
        [1])],
      [("item", "extracting"); ("codefile", "implementation");
       ("category", "symbol"); ("entity", "atom")])))
);;

(*
let atom_raregas_symbol_off_atom_symbol = function
  | Azes_t.Atom_raregas_symbol smb_arg -> smb_arg
  | s ->  print_fatal_error
      "atom_raregas_symbol_off_atom_symbol"
      "Atom_raregas_symbol" (name s)
;;
*)

testi 19 (
List.nth smb_cli_l 1
(* : Caml_line_symbol_t.caml_line_symbol list *)
=
Caml_line_symbol_t.Pair_symbol
 (Caml_line_symbol_t.Let_s_off_t_function_symbol
   ([(Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
       (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
         "atom_raregas"),
      [1; 1]);
     (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
       (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
         "atom"),
      [1])],
    [("item", "extracting"); ("codefile", "implementation");
     ("category", "symbol"); ("entity", "atom")]))
);;

testi 20 (
List.nth smb_cli_l 2
(* : Caml_line_symbol_t.caml_line_symbol list *)
=
Caml_line_symbol_t.Pair_symbol
 (Caml_line_symbol_t.Pipe_t_dot_s_s_arrow_s_symbol
   ([(Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
       (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
         "atom_raregas"),
      [1; 1]);
     (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
       (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
         "atom"),
      [1])],
    [("item", "extracting"); ("codefile", "implementation");
     ("category", "symbol"); ("entity", "atom")]))
);;

testi 21 (
List.nth smb_cli_l 3
(* : Caml_line_symbol_t.caml_line_symbol list *)
=
Caml_line_symbol_t.Singlet_symbol
 (Caml_line_symbol_t.Pipe_s_off_t_print_fatal_error_symbol
   ([(Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
       (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
         "atom_raregas"),
      [1; 1]);
     (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
       (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
         "atom"),
      [1])],
    [("item", "extracting"); ("codefile", "implementation");
     ("category", "symbol"); ("entity", "atom")]))
);;

testi 22 (
List.nth smb_cli_l 4
(* : Caml_line_symbol_t.caml_line_symbol list *)
=
Caml_line_symbol_t.Constant_symbol Caml_line_symbol_t.Double_semicolon_symbol
);;

testi 23 (
 List.nth ctt_cpg_l 2
(* : Caml_paragraph_context_t.caml_paragraph_context *)
 =
([(Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_fictive_symbol
    (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_bare_symbol "ar"),
   [1; 1; 1]);
  (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
    (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
      "atom_raregas"),
   [1; 1]);
  (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
    (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
      "atom"),
   [1])],
 [("item", "extracting"); ("codefile", "implementation");
  ("category", "symbol"); ("entity", "atom")])
);;

(*
let atom_anion_minus_one_symbol_off_atom_symbol smb_aze =
  let smb_aza = atom_anion_symbol_off_atom_symbol smb_aze in
    Aans_v.atom_anion_minus_one_symbol_off_atom_anion_symbol smb_aza
;;
*)
(* Cps_v.bottom_caml_paragraph_symbol_of_bottom_caml_paragraph_context ctt_cpb *)
let ctt_cpb = List.nth ctt_cpg_l 2;;
let smb_cnb = Cpc_v.bottom_constructor_symbol_off_caml_paragraph_context ctt_cpb;;
let dep_cnb = Cpc_v.bottom_constructor_depth_off_caml_paragraph_context ctt_cpb ;;
let trp_imc = Cpc_v.symboltriplet_off_caml_paragraph_context ctt_cpb ;;

testi 24 (
List.nth smb_cpg_l 3
(* : Item_formula_t.Cps_t.caml_paragraph_symbol list *)
=
Item_formula_t.Cps_t.Functions_definitions_symbol
 (Item_formula_t.Cps_t.Function_function_symbol
   (Item_formula_t.Cps_t.Function_s_off_t_function
     ([(Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
         (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
           "atom_anion"),
        [2; 1]);
       (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
         (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
           "atom"),
        [1])],
      [("item", "extracting"); ("codefile", "implementation");
       ("category", "symbol"); ("entity", "atom")])))
);;

testi 25 (
List.nth smb_cli_l 5
(* : Caml_line_symbol_t.caml_line_symbol list *)
=
Caml_line_symbol_t.Pair_symbol
 (Caml_line_symbol_t.Let_s_off_t_function_symbol
   ([(Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
       (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
         "atom_anion"),
      [2; 1]);
     (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
       (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
         "atom"),
      [1])],
    [("item", "extracting"); ("codefile", "implementation");
     ("category", "symbol"); ("entity", "atom")]))
);;

testi 26 (
List.nth smb_cli_l 6
(* : Caml_line_symbol_t.caml_line_symbol list *)
=
Caml_line_symbol_t.Pair_symbol
 (Caml_line_symbol_t.Pipe_t_dot_s_s_arrow_s_symbol
   ([(Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
       (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
         "atom_anion"),
      [2; 1]);
     (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
       (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
         "atom"),
      [1])],
    [("item", "extracting"); ("codefile", "implementation");
     ("category", "symbol"); ("entity", "atom")]))
);;

testi 27 (
nam_fil_itm
(* : string *)
= 
"atom_symbol_extracting_v.ml"
);;

let val_itm = Itv_v.make kyl_itm;;

testi 28 (
val_itm 
(* : Item_value_t.item_value *)
  =  
  Item_value_t.Tre_t.Inner (["(** {6 Extracting.} *)"],
   [Item_value_t.Tre_t.Inner ([],
     [Item_value_t.Tre_t.Leaf
       ["let atom_raregas_symbol_off_atom_symbol = function";
        "  | A0s_t.Atom_raregas_symbol smb_a0r -> smb_a0r";
        "  | s -> Erm_v.print_fatal_error nam_cod\n     \"atom_raregas_symbol_off_atom_symbol\"\n     \"Atom_raregas_symbol\"\n     (name s)\n    \"check\"";
        ";;"];
      Item_value_t.Tre_t.Inner
       (["let atom_anion_symbol_off_atom_symbol = function";
         "  | A0s_t.Atom_anion_symbol smb_a0a -> smb_a0a";
         "  | s -> Erm_v.print_fatal_error nam_cod\n     \"atom_anion_symbol_off_atom_symbol\"\n     \"Atom_anion_symbol\"\n     (name s)\n    \"check\"";
         ";;"],
       [Item_value_t.Tre_t.Leaf
         ["let atom_anion_minus_one_symbol_off_atom_symbol smb_at0 =";
          "  let smb_a0a = atom_anion_symbol_off_atom_symbol smb_at0 in";
          "    A0as_v_off_atom_anion_symbol smb_a0a"; ";;"];
        Item_value_t.Tre_t.Leaf
         ["let atom_anion_minus_two_symbol_off_atom_symbol smb_at0 =";
          "  let smb_a0a = atom_anion_symbol_off_atom_symbol smb_at0 in";
          "    A0as_v_off_atom_anion_symbol smb_a0a"; ";;"]]);
      Item_value_t.Tre_t.Inner
       (["let atom_cation_symbol_off_atom_symbol = function";
         "  | A0s_t.Atom_cation_symbol smb_a0c -> smb_a0c";
         "  | s -> Erm_v.print_fatal_error nam_cod\n     \"atom_cation_symbol_off_atom_symbol\"\n     \"Atom_cation_symbol\"\n     (name s)\n    \"check\"";
         ";;"],
       [Item_value_t.Tre_t.Leaf
         ["let atom_cation_plus_one_symbol_off_atom_symbol smb_at0 =";
          "  let smb_a0c = atom_cation_symbol_off_atom_symbol smb_at0 in";
          "    A0cs_v_off_atom_cation_symbol smb_a0c"; ";;"];
        Item_value_t.Tre_t.Leaf
         ["let atom_cation_plus_two_symbol_off_atom_symbol smb_at0 =";
          "  let smb_a0c = atom_cation_symbol_off_atom_symbol smb_at0 in";
          "    A0cs_v_off_atom_cation_symbol smb_a0c"; ";;"];
        Item_value_t.Tre_t.Leaf
         ["let atom_cation_plus_three_symbol_off_atom_symbol smb_at0 =";
          "  let smb_a0c = atom_cation_symbol_off_atom_symbol smb_at0 in";
          "    A0cs_v_off_atom_cation_symbol smb_a0c"; ";;"]]);
      Item_value_t.Tre_t.Leaf
       ["let halfbridge_symbol_off_atom_symbol = function";
        "  | A0s_t.Halfbridge_symbol smb_hae -> smb_hae";
        "  | s -> Erm_v.print_fatal_error nam_cod\n     \"halfbridge_symbol_off_atom_symbol\"\n     \"Halfbridge_symbol\"\n     (name s)\n    \"check\"";
        ";;"]])])
);;

let oc = Fio_v.open_write_of_string_of_string_of_file_name nam_cod "oc" nam_fil_itm;; 
Itv_v.write oc val_itm;;
close_out oc;


