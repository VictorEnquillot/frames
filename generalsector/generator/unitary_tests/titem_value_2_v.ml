open Gentest_v;;

testing "Item_value_v";;

(* toplevel 
   #use "titem_value_v.ml";; 
 *)

module Cns_t = Constructor_symbol_t
module Cps_t = Caml_paragraph_symbol_t
module Cts_v = Category_symbol_v
module Ens_v = Entity_symbol_v
module Itf_v = Item_formula_v
module Its_v = Item_symbol_v
module Itv_v = Item_value_v
module Cfs_t = Codefile_symbol_t
module Cfs_v = Codefile_symbol_v
module Tgp_v = Target_value_provider_v
module Tgv_v = Target_value_v
module Tre_t = Tree_t
module Tre_v = Tree_v

(* typing from atom *)

let nam_ent = "atom";;
let smb_ent = Ens_v.make nam_ent;;
let smb_cat = Cts_v.make "symbol";;
let smb_cfi = Cfs_v.make "type";;

let val_tgt = Tgv_v.make smb_epr smb_cat smb_cfi ;;
Tgp_v.store_force "current" val_tgt;; 

let smb_cfi_typ = Cfs_t.Type_symbol;;
let smb_itm_typ = Its_v.typing;;
let kyl_itm_typ = [("item", "typing"); ("codefile", "type"); ("category", "symbol"); ("entity", "atom")];;
let frm_itm_typ = Itf_v.retrieve kyl_itm_typ;;
let mrk_cpg_tl_typ = Itf_v.caml_paragraph_tag_tree_list_off_item_formula frm_itm_typ;;
let val_itm_typ = Itv_v.make kyl_itm_typ;;

(* extracting from atom_onetied_single *)

let smb_ent = Ens_v.make "atom_onetied_single";;
let smb_cat = Cts_v.make "symbol";;
let smb_cfi = Cfs_v.make "type";;

let val_tgt = Tgv_v.make smb_epr smb_cat smb_cfi ;;
Tgp_v.store_force "current" val_tgt;; 

let smb_cfi_xos = Cfs_t.Implementation_symbol;;
let smb_itm_xos = Its_v.extracting;;
let kyl_itm_xos = [("item", "extracting"); ("codefile", "function"); ("category", "symbol"); ("entity", "atom_onetied_single")];;

let frm_itm_xos = Itf_v.retrieve kyl_itm_xos;;
let mrk_cpg_tl_xos = Itf_v.caml_paragraph_tag_tree_list_off_item_formula frm_itm_xos;;
let val_itm_xos = Itv_v.make kyl_itm_xos;;
let val_cpg_tl_xos = Itv_v.caml_paragraph_value_tree_list_off_item_value val_itm_xos;;
(* extracting from atom_onetied *)

let smb_ent = Ens_v.make "atom_onetied";;
let smb_cat = Cts_v.make "symbol";;
let smb_cfi = Cfs_v.make "type";;

let val_tgt = Tgv_v.make smb_epr smb_cat smb_cfi ;;
Tgp_v.store_force "current" val_tgt;; 

let smb_cfi_xot = Cfs_t.Implementation_symbol;;
let smb_itm_xot = Its_v.extracting;;
let kyl_itm_xot = [("item", "extracting"); ("codefile", "function"); ("category", "symbol"); ("entity", "atom_onetied")];;

let frm_itm_xot = Itf_v.retrieve kyl_itm_xot;;
let mrk_cpg_tl_xot = Itf_v.caml_paragraph_tag_tree_list_off_item_formula frm_itm_xot;;
let val_itm_xot = Itv_v.make kyl_itm_xot;;
let val_cpg_tl_xot = Itv_v.caml_paragraph_value_tree_list_off_item_value val_itm_xot;;

testi 0 (
frm_itm_typ
(* : Item_formula_t.item_formula *)
=
Item_formula_t.Caml_paragraph_symbol
 (Item_formula_t.Cps_t.Type_definition_symbol
   (Item_formula_t.Cps_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Item_formula_t.Cps_t.Cnm_t.Cns_t.Constructor_several_symbol "atom"),
    1))
);;

testi 1 ( 
kyl_itm_typ 
(* : (string * string) list *)
=
[
 ("item", "typing"); ("codefile", "type"); ("category", "symbol");
 ("entity", "atom")
]
);;

testi 2 (
val_itm_typ
=
Item_value_t.Caml_paragraph_value
  [
   "type atom_symbol =";
   "  | Atom_zerotied_symbol of Azs_t.atom_zerotied_symbol";
   "  | Atom_onetied_symbol of Aos_t.atom_onetied_symbol";
   "  | Atom_twotied_symbol of Ats_t.atom_twotied_symbol";
   "  | Atom_threetied_symbol of Ats_t.atom_threetied_symbol";
   "  | Atom_fourtied_symbol of Afs_t.atom_fourtied_symbol";
   "  | Atom_fivetied_symbol of Afs_t.atom_fivetied_symbol";
   "  | Atom_sixtied_symbol of Ass_t.atom_sixtied_symbol"
 ]
);;

(* atom_onetied_single *)

testi 3 ( 
kyl_itm_xos 
= 
[
 ("item", "extracting"); ("codefile", "function"); ("category", "symbol"); 
 ("entity", "atom_onetied_single")
]
);;

testi 4 (
mrk_cpg_tl_xos
(* : Item_formula_t.item_formula *)
=
 [Item_formula_t.Cpmt_t.Tre_t.Leaf
   (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Function_symbol
     (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Function_function_symbol
       (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Function_s_off_t_function
         (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_fictive_symbol
           (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Leaf_constructor_fictive_symbol
             (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_leave_symbol
               "h_s")),
          2))),
    [1; 1]);
  Item_formula_t.Cpmt_t.Tre_t.Leaf
   (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Function_symbol
     (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Function_function_symbol
       (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Function_s_off_t_function
         (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_fictive_symbol
           (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Leaf_constructor_fictive_symbol
             (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_leave_symbol
               "f_s")),
          2))),
    [1; 1])]
);;

testi 5 (
frm_itm_xos 
=
Item_formula_t.Caml_paragraph_tag_tree_list mrk_cpg_tl_xos
);;

testi 6 (
val_cpg_tl_xos
=
[
 Caml_paragraph_value_tree_t.Tre_t.Leaf [];
 Caml_paragraph_value_tree_t.Tre_t.Leaf []
]
);;

testi 7 (
val_itm_xos 
(* : Item_value_t.item_value *)
=
Item_value_t.Caml_paragraph_value_tree_list val_cpg_tl_xos
);;

(* atom_onetied *)

testi 8 ( 
kyl_itm_xot 
= 
[
 ("item", "extracting"); ("codefile", "function"); ("category", "symbol"); 
 ("entity", "atom_onetied")
]
);;

testi 9 (
mrk_cpg_tl_xot
(* : Caml_paragraph_value_tree_t.caml_paragraph_value_tree list *)
=
[Caml_paragraph_tag_tree_t.Tre_t.Inner
  ((Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Function_symbol
     (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Function_function_symbol
       (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Function_s_off_t_function
         (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_proper_symbol
           (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_oneline_symbol
             (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_nodeoneline_symbol
               "atom_onetied_conjugated")),
          2))),
    2),
  [Caml_paragraph_tag_tree_t.Tre_t.Leaf
    (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Function_symbol
      (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Function_argument_symbol
        (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Function_argument_s_off_e
          (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_fictive_symbol
            (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Leaf_constructor_fictive_symbol
              (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_leave_symbol
                "o_c")),
           3))),
     3)]);
 Caml_paragraph_tag_tree_t.Tre_t.Inner
  ((Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Function_symbol
     (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Function_function_symbol
       (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Function_s_off_t_function
         (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_proper_symbol
           (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_oneline_symbol
             (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_nodeoneline_symbol
               "atom_onetied_double")),
          2))),
    2),
  [Caml_paragraph_tag_tree_t.Tre_t.Leaf
    (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Function_symbol
      (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Function_argument_symbol
        (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Function_argument_s_off_e
          (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_fictive_symbol
            (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Leaf_constructor_fictive_symbol
              (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_leave_symbol
                "o_d")),
           3))),
     3)]);
 Caml_paragraph_tag_tree_t.Tre_t.Inner
  ((Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Function_symbol
     (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Function_function_symbol
       (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Function_s_off_t_function
         (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_proper_symbol
           (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_several_symbol
             "atom_onetied_single"),
          2))),
    2),
  [Caml_paragraph_tag_tree_t.Tre_t.Leaf
    (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Function_symbol
      (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Function_argument_symbol
        (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Function_argument_s_off_e
          (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_fictive_symbol
            (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Leaf_constructor_fictive_symbol
              (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_leave_symbol
                "h_s")),
           3))),
     [1; 1; 1]);
   Caml_paragraph_tag_tree_t.Tre_t.Leaf
    (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Function_symbol
      (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Function_argument_symbol
        (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Function_argument_s_off_e
          (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_fictive_symbol
            (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Leaf_constructor_fictive_symbol
              (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_leave_symbol
                "f_s")),
           3))),
     3)]);
 Caml_paragraph_tag_tree_t.Tre_t.Inner
  ((Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Function_symbol
     (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Function_function_symbol
       (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Function_s_off_t_function
         (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_proper_symbol
           (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_several_symbol
             "atom_onetied_triple"),
          2))),
    2),
  [Caml_paragraph_tag_tree_t.Tre_t.Leaf
    (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Function_symbol
      (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Function_argument_symbol
        (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Function_argument_s_off_e
          (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_fictive_symbol
            (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Leaf_constructor_fictive_symbol
              (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_leave_symbol
                "n_t")),
           3))),
     [1; 1; 1]);
   Caml_paragraph_tag_tree_t.Tre_t.Leaf
    (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Function_symbol
      (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Function_argument_symbol
        (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Function_argument_s_off_e
          (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_fictive_symbol
            (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Leaf_constructor_fictive_symbol
              (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_leave_symbol
                "o_t")),
           3))),
     3)])]
);;

testi 10 (
frm_itm_xot
(* : Item_formula_t.item_formula *)
  =
Item_formula_t.Caml_paragraph_tag_tree_list mrk_cpg_tl_xot
);;



let mrk_cnt_t = Cmtp_v.provide smb_cnt ;;
let mrk_cpg_t = List.hd mrk_cpg_tl_xos;;                                    

testi 11 (
mrk_cpg_t 
(* : Caml_paragraph_tag_tree_t.caml_paragraph_tag_tree *)
=
  Caml_paragraph_tag_tree_t.Tre_t.Leaf
   (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Function_symbol
     (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Function_function_symbol
       (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Function_s_off_t_function
         (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_fictive_symbol
           (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Leaf_constructor_fictive_symbol
             (Caml_paragraph_tag_tree_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_leave_symbol
               "h_s")),
          2))),
    2)
);;

let kyl_itm = kyl_itm_xos;;  
let kyl_cpg_t = 
    caml_paragraph_key_list_tree_of_item_key_list_of_caml_paragraph_tag_tree
      kyl_itm mrk_cpg_t ;;

testi 12 (
 kyl_cpg_t 
(* : (string, string) Doublet_t.doublet list Tree_t.tree *)
=
  Tree_t.Leaf
   [("caml_paragraph", "function_s_off_t_function (h_s,2)");
    ("item", "extracting"); ("codefile", "function"); ("category", "symbol");
    ("entity", "atom_onetied_single")]
);;

let pth_cnl_t = 
    lowest_constructor_path_tree mrk_cpg_t  ;;


testi 13 ( 
pth_cnl_t 
(* : Constructor_tag_t.constructor_tag list Tree_t.tree *)
=
  Tree_t.Leaf
   [(Constructor_tag_t.Cns_t.Constructor_fictive_symbol
      (Constructor_tag_t.Cns_t.Leaf_constructor_fictive_symbol
        (Constructor_tag_t.Cns_t.Constructor_leave_symbol "h_s")),
     [1; 1])]
);;

let v = Tre_v.map2 Cpv_v.make pth_cnl_t kyl_cpg_t;;
testi 14 (
v 
(* : Caml_paragraph_value_t.caml_paragraph_value Tree_t.tree *)
= Tree_t.Leaf []
);;

(*
testi 15 (
val_cpg_tl_xot
=
);;

testi 16 (
val_itm_xot
(* : Item_value_t.item_value *)
  =
Item_value_t.Caml_paragraph_value_tree_list mrk_cpg_tl_xot
);;

testi 17 (
true
(*
val_itm_xot 
*)
);;
*)
