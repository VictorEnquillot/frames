open Gentest_v;;

testing "Aggregate Symbol Interface Codefile_value_v";;

(* toplevel 
   #use "taggregate_symbol_interface_codefile_value_v.ml";; 
 *)

let nam_cod = "taggregate_symbol_interface_codefile_value_v.ml";;
 
module Cff_v = Codefile_formula_v
module Cfs_t = Codefile_symbol_t
module Cfs_v = Codefile_symbol_v
module Cfv_v = Codefile_value_v
module Cmtp_v = Constructor_tag_tree_provider_v
module Cns_t = Constructor_symbol_t
module Cns_v = Constructor_symbol_v
module Cpc_v = Caml_paragraph_context_v
module Cps_v = Caml_paragraph_symbol_v
module Cts_v = Category_symbol_v
module Ecc_v = Entitycategorycodefile_v
module Ecs_v = Entitycategorysuffix_v
module Ens_v = Entity_symbol_v
module Fio_v = Fileio_v
module Itf_v = Item_formula_v
module Its_v = Item_symbol_v
module Lst_v = List_v
module Tgp_v = Target_value_provider_v
module Tgv_v = Target_value_v
module Tre_t = Tree_t
module Tre_v = Tree_v

let nam_ent = "aggregate";;
let smb_ent = Ens_v.make nam_ent;;
let smb_cnt = Cns_v.make smb_ent;;
let smb_cat = Cts_v.category_symbol;;
let smb_cfi = Cfs_v.codefile_interface;;

let frm_cfi = Cff_v.retrieve (smb_cfi, smb_cat);;

let kyl_cfi = [("codefile", Cfs_v.name smb_cfi); ("category", Cts_v.name smb_cat); ("entity", Ens_v.name smb_ent)];;

let nam_fil_cfi = Cfv_v.codefile_file_name_of_key_list kyl_cfi;;

testi 0 (
frm_cfi
(* Item_symbol_t.item_symbol list *) 
= 
[Its_v.heading;
 Its_v.naming;
 Its_v.printing;
 Its_v.extracting;
 Its_v.querying;
 Its_v.upgrading;
 Its_v.including;
 Its_v.ending]
);;

let val_cfi = Cfv_v.make kyl_cfi;;

testi 1 (
Lst_v.drop_last_elements_of_int_of_list 1 val_cfi
(* : Codefile_value_t.Itv_t.item_value *)
=
[Codefile_value_t.Itv_t.Tre_t.Leaf ["(** {3 A Symbol for a Aggregate.} *)"];
 Codefile_value_t.Itv_t.Tre_t.Inner (["(** {6 Naming.} *)"],
  [Codefile_value_t.Itv_t.Tre_t.Leaf
    ["let name smb_age =";
     "  Dbt_v.name (Format.sprintf \"%s\") Ord_p.name smb_age"; ";;"]]);
 Codefile_value_t.Itv_t.Tre_t.Inner (["(** {6 Printing.} *)"],
  [Codefile_value_t.Itv_t.Tre_t.Leaf
    ["let print ppf smb_age =";
     "  Dbt_v.print (Format.fprintf ppf \"%s\") Ord_p.print ppf smb_age";
     ";;"]]);
 Codefile_value_t.Itv_t.Tre_t.Inner (["(** {6 Extracting.} *)"],
  [Codefile_value_t.Itv_t.Tre_t.Leaf
    ["val aggregate_symbol_off_doublet :";
     "  Aggregate_symbol_t.aggregate_symbol ->"; "    Dbt_v"; ";;"];
   Codefile_value_t.Itv_t.Tre_t.Leaf
    ["val aggregate_symbol_off_doublet :";
     "  Aggregate_symbol_t.aggregate_symbol ->"; "    Dbt_v"; ";;"]]);
 Codefile_value_t.Itv_t.Tre_t.Inner (["(** {6 Querying.} *)"], []);
 Codefile_value_t.Itv_t.Tre_t.Inner (["(** {6 Upgrading.} *)"], []);
 Codefile_value_t.Itv_t.Tre_t.Empty]

);;

testi 2 (
nam_fil_cfi
(* : string *)
= 
"aggregate_symbol_v.ml"
);;

let oc = Fio_v.open_write_of_string_of_string_of_file_name nam_cod "oc" nam_fil_cfi;; 
Cfv_v.write oc val_cfi;;
close_out oc;
