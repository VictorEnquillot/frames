open Gentest_v;;

testing "Atom_onetied Upgrading Item_formula_v";;

(* toplevel 
   #use "tatom_onetied_symbol_implementation_upgrading_item_formula_v.ml";; 
 *)

module Cmtp_v = Constructor_tag_tree_provider_v
module Cns_t = Constructor_symbol_t
module Cns_v = Constructor_symbol_v
module Cts_v = Category_symbol_v
module Cpc_v = Caml_paragraph_context_v
module Cps_v = Caml_paragraph_symbol_v
module Ens_v = Entity_symbol_v
module Its_v = Item_symbol_v
module Itf_v = Item_formula_v
module Cfs_t = Codefile_symbol_t
module Cfs_v = Codefile_symbol_v
module Tgv_v = Target_value_v
module Tgp_v = Target_value_provider_v
module Tre_t = Tree_t
module Tre_v = Tree_v

let nam_ent = "atom_onetied";;
let smb_epr = Ens_v.entity_proper_symbol_of_string nam_ent;;
let smb_ent = Ens_v.make nam_ent;;
let smb_cnt = Cns_v.make smb_ent;;
let smb_cat = Cts_v.category_symbol;;
let smb_cfi = Cfs_v.codefile_implementation;;
let smb_itm = Its_v.upgrading;;

let val_tgt = Tgv_v.make smb_epr smb_cat smb_cfi;;
Tgp_v.store_force "current" val_tgt;; 

let mrk_cnt_t = Cmtp_v.provide smb_cnt;;
let kyl_itm = [("item", Its_v.name smb_itm); ("codefile", Cfs_v.name smb_cfi); ("category", Cts_v.name smb_cat); ("entity", Ens_v.name smb_ent)];;

let frm_itm = Itf_v.retrieve kyl_itm;;
let smb_cpg_l = Tree_v.list_off_tree frm_itm;;

testi 0 (
 mrk_cnt_t
(* : Cmtp_v.Csdt_t.constructor_tag_tree *)
=
Cmtp_v.Csdt_t.Tre_t.Inner
 ((Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_proper_symbol
    (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_several_symbol "atom_onetied"),
   [1]),
 [Cmtp_v.Csdt_t.Tre_t.Inner
   ((Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_proper_symbol
      (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_oneline_symbol
        (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_nodeoneline_symbol
          "atom_onetied_conjugated")),
     [1; 1]),
   [Cmtp_v.Csdt_t.Tre_t.Leaf
     (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_fictive_symbol
       (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_bare_symbol "o_c"),
      [1; 1; 1])]);
  Cmtp_v.Csdt_t.Tre_t.Inner
   ((Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_proper_symbol
      (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_oneline_symbol
        (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_nodeoneline_symbol
          "atom_onetied_double")),
     [2; 1]),
   [Cmtp_v.Csdt_t.Tre_t.Leaf
     (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_fictive_symbol
       (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_bare_symbol "o_d"),
      [1; 2; 1])]);
  Cmtp_v.Csdt_t.Tre_t.Inner
   ((Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_proper_symbol
      (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_several_symbol
        "atom_onetied_single"),
     [3; 1]),
   [Cmtp_v.Csdt_t.Tre_t.Leaf
     (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_fictive_symbol
       (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_bare_symbol "h_s"),
      [1; 3; 1]);
    Cmtp_v.Csdt_t.Tre_t.Leaf
     (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_fictive_symbol
       (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_bare_symbol "f_s"),
      [2; 3; 1])]);
  Cmtp_v.Csdt_t.Tre_t.Inner
   ((Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_proper_symbol
      (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_several_symbol
        "atom_onetied_triple"),
     [4; 1]),
   [Cmtp_v.Csdt_t.Tre_t.Leaf
     (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_fictive_symbol
       (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_bare_symbol "n_t"),
      [1; 4; 1]);
    Cmtp_v.Csdt_t.Tre_t.Leaf
     (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_fictive_symbol
       (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_bare_symbol "o_t"),
      [2; 4; 1])])])
);;

testi 1 (
List.length smb_cpg_l
(* : int *)
= 
12
);;

testi 2 (
List.nth smb_cpg_l 0
(* : Item_formula_t.Cps_t.caml_paragraph_symbol *)
=
Item_formula_t.Cps_t.Heading_symbol
 ([(Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
       "atom_onetied"),
    [1])],
  [("item", "upgrading"); ("codefile", "implementation");
   ("category", "symbol"); ("entity", "atom_onetied")])
);;

testi 3 (
List.nth smb_cpg_l 1
(* : Item_formula_t.Cps_t.caml_paragraph_symbol *)
=
Item_formula_t.Cps_t.Empty_symbol
 ([(Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
       "atom_onetied"),
    [1])],
  [("item", "upgrading"); ("codefile", "implementation");
   ("category", "symbol"); ("entity", "atom_onetied")])
);;

testi 4 (
List.nth smb_cpg_l 2
(* : Item_formula_t.Cps_t.caml_paragraph_symbol *)
=
Item_formula_t.Cps_t.Functions_definitions_symbol
 (Item_formula_t.Cps_t.Function_argument_symbol
   (Item_formula_t.Cps_t.Function_t_of_s_argument
     ([(Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
         (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
           (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_nodeoneline_symbol
             "atom_onetied_conjugated")),
        [1; 1]);
       (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
         (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
           "atom_onetied"),
        [1])],
      [("item", "upgrading"); ("codefile", "implementation");
       ("category", "symbol"); ("entity", "atom_onetied")])))
);;

testi 5 (
List.nth smb_cpg_l 6
(* : Item_formula_t.Cps_t.caml_paragraph_symbol *)
=
Item_formula_t.Cps_t.Functions_definitions_symbol
 (Item_formula_t.Cps_t.Function_argument_symbol
   (Item_formula_t.Cps_t.Function_t_of_s_argument
     ([(Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
         (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
           "atom_onetied_single"),
        [3; 1]);
       (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
         (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
           "atom_onetied"),
        [1])],
      [("item", "upgrading"); ("codefile", "implementation");
       ("category", "symbol"); ("entity", "atom_onetied")])))
);;

testi 6 (
List.nth smb_cpg_l 7 
(* : Item_formula_t.Cps_t.caml_paragraph_symbol *)
=
Item_formula_t.Cps_t.Functions_definitions_symbol
 (Item_formula_t.Cps_t.Function_constant_symbol
   ([(Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_fictive_symbol
       (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_bare_symbol
         "h_s"),
      [1; 3; 1]);
     (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
       (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
         "atom_onetied_single"),
      [3; 1]);
     (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
       (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
         "atom_onetied"),
      [1])],
    [("item", "upgrading"); ("codefile", "implementation");
     ("category", "symbol"); ("entity", "atom_onetied")]))
);;
