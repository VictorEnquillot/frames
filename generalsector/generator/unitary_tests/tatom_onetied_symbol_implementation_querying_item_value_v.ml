open Gentest_v;;

testing "Atom_onetied Symbol Implementation Querying Item_value_v";;

(* toplevel 
   #use "tatom_onetied_symbol_implementation_querying_item_value_v.ml";; 
 *)

let nam_cod = "tatom_onetied_symbol_implementation_querying_item_value_v.ml";; 

module Cmtp_v = Constructor_tag_tree_provider_v
module Cns_t = Constructor_symbol_t
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
module Tgv_v = Target_value_v
module Tgp_v = Target_value_provider_v
module Tre_t = Tree_t
module Tre_v = Tree_v

let nam_ent = "atom_onetied";;
let smb_ent = Ens_v.make nam_ent;;
let smb_epr = Ens_v.entity_proper_symbol_of_string nam_ent;;
let smb_ent = Ens_v.make nam_ent;;
let smb_cnt = Cns_v.make smb_ent;;

let smb_cat = Cts_v.category_symbol;;
let smb_cfi = Cfs_v.codefile_implementation;;
let smb_itm = Its_v.querying;;

let mrk_cnt_t = Cmtp_v.provide smb_cnt;;
let mrk_cne_t =
    Tre_v.subtree_remove (fun (s, d) -> ( 
      match s with
      | Cns_t.Constructor_fictive_symbol _ -> true
      | _ -> false
)
) mrk_cnt_t;;

let kyl_itm = [("item", Its_v.name smb_itm); ("codefile", Cfs_v.name smb_cfi); ("category", Cts_v.name smb_cat); ("entity", Ens_v.name smb_ent)];;

let frm_itm = Itf_v.retrieve kyl_itm;;
let val_itm = Itv_v.make kyl_itm;;
let nam_fil_itm = Itv_v.item_file_name_of_key_list kyl_itm;;

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
mrk_cne_t 
(* : Cmtp_v.Csdt_t.Cnm_t.constructor_tag Tree_t.tree *)
=
Tree_t.Node
 ((Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_proper_symbol
    (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_several_symbol "atom_onetied"),
   [1]),
 [Tree_t.Leaf
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_oneline_symbol
       (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_nodeoneline_symbol
         "atom_onetied_conjugated")),
    [1; 1]);
  Tree_t.Leaf
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_oneline_symbol
       (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_nodeoneline_symbol
         "atom_onetied_double")),
    [2; 1]);
  Tree_t.Leaf
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_several_symbol
       "atom_onetied_single"),
    [3; 1]);
  Tree_t.Leaf
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_several_symbol
       "atom_onetied_triple"),
    [4; 1])])
);;

testi 2 (
val_itm
(* : Item_value_t.item_value  *)
=
Item_value_t.Tre_t.Inner (["(** {6 Querying.} *)"],
 [Item_value_t.Tre_t.Inner ([],
   [Item_value_t.Tre_t.Leaf
     ["let is_atom_onetied_conjugated_symbol_off_atom_onetied_symbol = function";
      "  | A1s_t.Atom_onetied_conjugated_symbol _ -> true"; "  | _ -> false";
      ";;"];
    Item_value_t.Tre_t.Leaf
     ["let is_atom_onetied_double_symbol_off_atom_onetied_symbol = function";
      "  | A1s_t.Atom_onetied_double_symbol _ -> true"; "  | _ -> false";
      ";;"];
    Item_value_t.Tre_t.Leaf
     ["let is_atom_onetied_single_symbol_off_atom_onetied_symbol = function";
      "  | A1s_t.Atom_onetied_single_symbol _ -> true"; "  | _ -> false";
      ";;"];
    Item_value_t.Tre_t.Leaf
     ["let is_atom_onetied_triple_symbol_off_atom_onetied_symbol = function";
      "  | A1s_t.Atom_onetied_triple_symbol _ -> true"; "  | _ -> false";
      ";;"]])])
);;

testi 3 (
nam_fil_itm
(* : string *)
= 
"atom_onetied_symbol_querying_v.ml"
);;

let oc = Fio_v.open_write_of_string_of_string_of_file_name nam_cod "oc" nam_fil_itm;; 
Itv_v.write oc val_itm;;
close_out oc;



