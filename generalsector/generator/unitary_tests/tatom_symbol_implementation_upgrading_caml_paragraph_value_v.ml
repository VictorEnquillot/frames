open Gentest_v;;

testing "Atom Upgrading Caml_paragraph_value_v";;

(* toplevel 
   #use "tatom_upgrading_caml_paragraph_value_v.ml";; 
 *)

module Cls_v = Caml_line_symbol_v
module Cmt_v = Constructor_tag_tree_v
module Cmtp_v = Constructor_tag_tree_provider_v
module Cnm_v = Constructor_tag_v
module Cns_v = Constructor_symbol_v
module Cpc_v = Caml_paragraph_context_v
module Cpff_v = Caml_paragraph_function_formula_v
module Cps_t = Caml_paragraph_symbol_t
module Cps_v = Caml_paragraph_symbol_v
module Cpv_v = Caml_paragraph_value_v
module Cts_v = Category_symbol_v
module Cst_v = Constructor_symbol_tree_v
module Dbt_v = Doublet_v
module Ens_v = Entity_symbol_v
module Fio_v = Fileio_v
module Its_v = Item_symbol_v
module Cfs_t = Codefile_symbol_t
module Cfs_v = Codefile_symbol_v
module Tgp_v = Target_value_provider_v
module Tgv_v = Target_value_v
module Tre_v = Tree_v

let nam_ent = "atom";;
let smb_ent = Ens_v.make nam_ent;;
let smb_cat = Cts_v.category_symbol;;
let smb_cfi = Cfs_v.codefile_implementation;;
let smb_itm = Its_v.upgrading;;

let val_tgt = Tgv_v.make smb_epr smb_cat smb_cfi;;
Tgp_v.store_force "current" val_tgt;; 

let kyl_itm = [("item", Its_v.name smb_itm); ("codefile", Cfs_v.name smb_cfi); ("category", Cts_v.name smb_cat); ("entity", Ens_v.name smb_ent)];;

let smb_cpg = Cps_v.make function_t_of_b_argument ctt_cpg;;
let kyl_cpg = ("caml_paragraph", Cps_v.name smb_cpg) :: kyl_itm ;;

let mrk_cnt_t = Cmtp_v.provide smb_cnt;;
let mrk_cnt = Tre_v.root_off_tree mrk_cnt_t;; 
let pth_cnt = [mrk_cnt];;

let val_cpg = Cpv_v.make smb_cpg;;
let nam_fil_cpg = Cfv_v.codefile_file_name_of_key_list kyl_cpg;;

testi 0 (
pth_cnt
(* : Constructor_path_t.constructor_path *)
=
[mrk_cnt]
);;

testi 1 (
smb_cli_l 
(* : Caml_line_symbol_t.caml_line_symbol list *)
=
[Caml_line_symbol_t.Pair_symbol
  (Caml_line_symbol_t.Let_b_off_t_t_argument_symbol
    ([(Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
        (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
          "atom"),
       [1])],
     [("item", "upgrading"); ("codefile", "function"); ("category", "symbol");
      ("entity", "atom")]));
 Caml_line_symbol_t.Pair_symbol
  (Caml_line_symbol_t.Let_u_u_off_t_t_in_symbol
    ([(Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
        (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
          "atom"),
       [1])],
     [("item", "upgrading"); ("codefile", "function"); ("category", "symbol");
      ("entity", "atom")]));
 Caml_line_symbol_t.Pair_symbol
  (Caml_line_symbol_t.B_off_u_u_symbol
    ([(Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
        (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
          "atom"),
       [1])],
     [("item", "upgrading"); ("codefile", "function"); ("category", "symbol");
      ("entity", "atom")]))]
);;

testi 2 (
val_cpg 
(* Caml_paragraph_value_t.caml_paragraph_value *)
=
[]
);;
