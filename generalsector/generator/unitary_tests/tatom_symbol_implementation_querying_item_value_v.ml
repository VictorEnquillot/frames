open Gentest_v;;

testing "Atom Symbol Implementation Querying Item_value_v";;

(* toplevel 
   #use "tatom_symbol_implementation_querying_item_value_v.ml";; 
 *)

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

let nam_ent = "atom";;
let smb_ent = Ens_v.make nam_ent;;
let smb_epr = Ens_v.entity_proper_symbol_of_string nam_ent;;
let smb_cnt = Cns_v.make smb_ent;;
let smb_cat = Cts_v.category_symbol;;
let smb_cfi = Cfs_v.codefile_implementation;;
let smb_itm = Its_v.querying;;

let mrk_cnt_t = Cmtp_v.provide smb_cnt;;
let mrk_cnt = Tre_v.root_off_tree mrk_cnt_t;;
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
mrk_cnt
(* : Cmtp_v.Csdt_t.Cnm_t.constructor_tag *)
=
(Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_proper_symbol
  (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_several_symbol "atom"),
 [1])
);;

testi 1 (
List.nth (Tre_v.list_off_tree frm_itm) 0
(* : Item_formula_t.Cps_t.caml_paragraph_symbol *)
=
Item_formula_t.Cps_t.Heading_symbol
 ([(Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
       "atom"),
    [1])],
  [("item", "querying"); ("codefile", "implementation");
   ("category", "symbol"); ("entity", "atom")])
);;

testi 2 (
List.nth (Tre_v.list_off_tree frm_itm) (List.length (Tre_v.list_off_tree frm_itm)/2)
(* : Item_formula_t.Cps_t.caml_paragraph_symbol *)
=
Item_formula_t.Cps_t.Functions_definitions_symbol
 (Item_formula_t.Cps_t.Function_function_symbol
   (Item_formula_t.Cps_t.Function_is_s_off_t_function
     ([(Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
         (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
           "atom_twotied"),
        [3; 1]);
       (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
         (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
           "atom"),
        [1])],
      [("item", "querying"); ("codefile", "implementation");
       ("category", "symbol"); ("entity", "atom")])))
);;

testi 3 (
List.nth (Tre_v.list_off_tree frm_itm) (List.length (Tre_v.list_off_tree frm_itm) -1)
(* : Item_formula_t.Cps_t.caml_paragraph_symbol *)
=
Item_formula_t.Cps_t.Functions_definitions_symbol
 (Item_formula_t.Cps_t.Function_function_symbol
   (Item_formula_t.Cps_t.Function_is_s_off_t_function
     ([(Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
         (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
           (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_nodeoneline_symbol
             "atom_sixtied")),
        [7; 1]);
       (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
         (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
           "atom"),
        [1])],
      [("item", "querying"); ("codefile", "implementation");
       ("category", "symbol"); ("entity", "atom")])))
);;

testi 4 (
nam_fil_itm
(* : string *)
= 
"atom_symbol_querying_v.ml"
);;

testi 5 (
List.nth (Tre_v.list_off_tree frm_itm) 0
=
Item_formula_t.Cps_t.Heading_symbol
 ([(Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
       "atom"),
    [1])],
  [("item", "querying"); ("codefile", "implementation");
   ("category", "symbol"); ("entity", "atom")])
);;

testi 6 (
List.nth (Tre_v.list_off_tree frm_itm) (List.length (Tre_v.list_off_tree val_itm)/2)
=
Item_formula_t.Cps_t.Functions_definitions_symbol
 (Item_formula_t.Cps_t.Function_function_symbol
   (Item_formula_t.Cps_t.Function_is_s_off_t_function
     ([(Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
         (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
           "atom_twotied"),
        [3; 1]);
       (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
         (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
           "atom"),
        [1])],
      [("item", "querying"); ("codefile", "implementation");
       ("category", "symbol"); ("entity", "atom")])))
);;

testi 7 (
List.nth (Tre_v.list_off_tree frm_itm) (List.length (Tre_v.list_off_tree val_itm) -1)
=
Item_formula_t.Cps_t.Functions_definitions_symbol
 (Item_formula_t.Cps_t.Function_function_symbol
   (Item_formula_t.Cps_t.Function_is_s_off_t_function
     ([(Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
         (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
           (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_nodeoneline_symbol
             "atom_sixtied")),
        [7; 1]);
       (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
         (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
           "atom"),
        [1])],
      [("item", "querying"); ("codefile", "implementation");
       ("category", "symbol"); ("entity", "atom")])))
);;

let oc = Fio_v.open_write_of_string_of_string_of_file_name "tatom_symbol_interface_codefile_value_v" "oc" nam_fil_itm;; 
Itv_v.write oc val_itm;;
close_out oc;

