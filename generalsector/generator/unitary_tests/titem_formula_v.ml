open Gentest_v;;

testing "Item_formula_v";;

(* toplevel 
   #use "titem_formula_v.ml";; 
 *)

module Cns_t = Constructor_symbol_t
module Cts_v = Category_symbol_v
module Cps_t = Caml_paragraph_symbol_t
module Ens_v = Entity_symbol_v
module Its_v = Item_symbol_v
module Itf_v = Item_formula_v
module Cfs_t = Codefile_symbol_t
module Cfs_v = Codefile_symbol_v

module Tgv_v = Target_value_v
module Tgp_v = Target_value_provider_v
module Tre_t = Tree_t

(* typing from atom *)

let smb_ent = Ens_v.make "atom";;
let smb_cat = Cts_v.make "symbol";;
let smb_cfi = Cfs_v.make "type";;

let val_tgt = Tgv_v.make smb_epr smb_cat smb_cfi ;;
Tgp_v.store_force "current" val_tgt;; 

let smb_cfi_typ = Cfs_t.Type_symbol;;
let smb_itm_typ = Its_v.typing;;
let kyl_itm_typ = [("item", "typing"); ("codefile", "type"); ("category", "symbol"); ("entity", "atom")];;
let frm_itm_typ = Itf_v.retrieve kyl_itm_typ;;

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

(* extracting from atom_onetied_single *)

let smb_ent = Ens_v.make "atom_onetied_single";;
let smb_cat = Cts_v.make "symbol";;
let smb_cfi = Cfs_v.make "type";;

let val_tgt = Tgv_v.make smb_epr smb_cat smb_cfi ;;
Tgp_v.store_force "current" val_tgt;; 

let smb_cfi_ssg = Cfs_t.Implementation_symbol;;
let smb_itm_ssg = Its_v.extracting;;
let kyl_itm_ssg = [("item", "extracting"); ("codefile", "function"); ("category", "symbol"); ("entity", "atom_onetied_single")];;

let frm_itm_ssg = Itf_v.retrieve kyl_itm_ssg;;

testi 0 (
Cfs_v.name smb_cfi_typ
(* : string *)
= 
"type"
);;

testi 1 (
Its_v.name smb_itm_typ 
=
 "typing"
);;

testi 2 (
Itf_v.retrieve kyl_itm_typ 
(* : Item_formula_t.item_formula *)
=
Item_formula_t.Caml_paragraph_symbol
 (Item_formula_t.Cps_t.Type_definition_symbol
   (Item_formula_t.Cps_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Item_formula_t.Cps_t.Cnm_t.Cns_t.Constructor_several_symbol "atom"),
    1))
);;

testi 3 (
Cfs_v.name smb_cfi_xot
(* : string *)
= 
"function"
);;

(* extracting from atom_onetied_single *)

testi 4 (
Its_v.name smb_itm_ssg 
=
 "extracting"
);;
testi 5 (
kyl_itm_ssg 
= 
[
 ("item", "extracting"); 
 ("codefile", "function"); 
 ("category", "symbol"); 
 ("entity", "atom_onetied_single")
]
);;

testi 6 (
frm_itm_ssg 
(* : Item_formula_t.item_formula *)
  =
Item_formula_t.Caml_paragraph_tag_tree_list
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

(* extracting from atom_onetied *)

testi 7 (
Its_v.name smb_itm_xot 
=
 "extracting"
);;
testi 8 (
kyl_itm_xot 
= 
[
 ("item", "extracting"); 
 ("codefile", "function"); 
 ("category", "symbol"); 
 ("entity", "atom_onetied")
]
);;

testi 9 (
frm_itm_xot
(* : Item_formula_t.item_formula *)
  =
Item_formula_t.Caml_paragraph_tag_tree_list
 [Item_formula_t.Cpmt_t.Tre_t.Inner
   ((Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Function_symbol
      (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Function_function_symbol
        (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Function_s_off_t_function
          (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_proper_symbol
            (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_oneline_symbol
              (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_nodeoneline_symbol
                "atom_onetied_conjugated")),
           2))),
     2),
   [Item_formula_t.Cpmt_t.Tre_t.Leaf
     (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Function_symbol
       (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Function_argument_symbol
         (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Function_argument_s_off_e
           (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_fictive_symbol
             (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Leaf_constructor_fictive_symbol
               (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_leave_symbol
                 "o_c")),
            3))),
      3)]);
  Item_formula_t.Cpmt_t.Tre_t.Inner
   ((Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Function_symbol
      (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Function_function_symbol
        (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Function_s_off_t_function
          (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_proper_symbol
            (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_oneline_symbol
              (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_nodeoneline_symbol
                "atom_onetied_double")),
           2))),
     2),
   [Item_formula_t.Cpmt_t.Tre_t.Leaf
     (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Function_symbol
       (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Function_argument_symbol
         (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Function_argument_s_off_e
           (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_fictive_symbol
             (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Leaf_constructor_fictive_symbol
               (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_leave_symbol
                 "o_d")),
            3))),
      3)]);
  Item_formula_t.Cpmt_t.Tre_t.Inner
   ((Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Function_symbol
      (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Function_function_symbol
        (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Function_s_off_t_function
          (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_proper_symbol
            (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_several_symbol
              "atom_onetied_single"),
           2))),
     2),
   [Item_formula_t.Cpmt_t.Tre_t.Leaf
     (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Function_symbol
       (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Function_argument_symbol
         (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Function_argument_s_off_e
           (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_fictive_symbol
             (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Leaf_constructor_fictive_symbol
               (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_leave_symbol
                 "h_s")),
            3))),
      [1; 1; 1]);
    Item_formula_t.Cpmt_t.Tre_t.Leaf
     (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Function_symbol
       (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Function_argument_symbol
         (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Function_argument_s_off_e
           (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_fictive_symbol
             (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Leaf_constructor_fictive_symbol
               (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_leave_symbol
                 "f_s")),
            3))),
      3)]);
  Item_formula_t.Cpmt_t.Tre_t.Inner
   ((Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Function_symbol
      (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Function_function_symbol
        (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Function_s_off_t_function
          (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_proper_symbol
            (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_several_symbol
              "atom_onetied_triple"),
           2))),
     2),
   [Item_formula_t.Cpmt_t.Tre_t.Leaf
     (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Function_symbol
       (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Function_argument_symbol
         (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Function_argument_s_off_e
           (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_fictive_symbol
             (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Leaf_constructor_fictive_symbol
               (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_leave_symbol
                 "n_t")),
            3))),
      [1; 1; 1]);
    Item_formula_t.Cpmt_t.Tre_t.Leaf
     (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Function_symbol
       (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Function_argument_symbol
         (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Function_argument_s_off_e
           (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_fictive_symbol
             (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Leaf_constructor_fictive_symbol
               (Item_formula_t.Cpmt_t.Cnm_t.Cns_t.Cnm_t.Cns_t.Constructor_leave_symbol
                 "o_t")),
            3))),
      3)])]

);;

