open Gentest_v;;

testing "Aggregate Implementation Heading Item_value_v";;

(* toplevel 
   #use "taggregate_symbol_implementation_heading_item_value_v.ml";; 
 *)

let nam_cod = "taggregate_symbol_implementation_heading_item_value_v.ml";; 
 
module Cmtp_v = Constructor_tag_tree_provider_v
module Cns_v = Constructor_symbol_v
module Cts_v = Category_symbol_v
module Cpc_v = Caml_paragraph_context_v
module Cps_v = Caml_paragraph_symbol_v
module Ens_v = Entity_symbol_v
module Fio_v = Fileio_v
module Its_v = Item_symbol_v
module Itv_v = Item_value_v
module Itf_v = Item_formula_v
module Cfs_t = Codefile_symbol_t
module Cfs_v = Codefile_symbol_v
module Tre_t = Tree_t
module Tre_v = Tree_v

let nam_ent = "aggregate";;
let smb_ent = Ens_v.make nam_ent;;
let smb_cnt = Cns_v.make smb_ent;;
let smb_cat = Cts_v.category_symbol;;
let smb_cfi = Cfs_v.codefile_implementation;;
let smb_itm = Its_v.heading;;

let mrk_cnt_t = Cmtp_v.provide smb_cnt;;

let kyl_itm = [("item", Its_v.name smb_itm); ("codefile", Cfs_v.name smb_cfi); ("category", Cts_v.name smb_cat); ("entity", Ens_v.name smb_ent)];;

let nam_fil_itm = Itv_v.item_file_name_of_key_list kyl_itm;;
let frm_itm = Itf_v.retrieve kyl_itm;;
let val_itm = Itv_v.make kyl_itm;;

testi 0 (
frm_itm 
(* : Item_formula_t.item_formula *)
= 
Item_formula_t.Tre_t.Inner
 (Item_formula_t.Cps_t.Heading_symbol
   ([(Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
       (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
         (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_datastructure_symbol
           (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_doublet_symbol
             "aggregate"))),
      [1])],
    [("item", "heading"); ("codefile", "implementation");
     ("category", "symbol"); ("entity", "aggregate")]),
 [Item_formula_t.Tre_t.Leaf
   (Item_formula_t.Cps_t.Codefile_name_symbol
     ([(Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
         (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
           (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_datastructure_symbol
             (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_doublet_symbol
               "aggregate"))),
        [1])],
      [("item", "heading"); ("codefile", "implementation");
       ("category", "symbol"); ("entity", "aggregate")]))])
);;

testi 1 (
val_itm 
(* : Item_value_t.item_value *)
=
Item_value_t.Tre_t.Inner (["(** {3 A Symbol for a Aggregate.} *)"],
 [Item_value_t.Tre_t.Leaf ["let nam_cod = \"aggregate_symbol_v.ml\";;"]])
);;

testi 2 (
nam_fil_itm
(* : string *)
= 
"aggregate_symbol_heading_v.ml"
);;

let oc = Fio_v.open_write_of_string_of_string_of_file_name nam_cod "oc" nam_fil_itm;; 
Itv_v.write oc val_itm;;
close_out oc;


