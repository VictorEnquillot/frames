open Gentest_v;;

testing "Segment_oneone Symbol Implementation Codefile_value_v";;

(* toplevel 
   #use "tsegment_oneone_symbol_implementation_codefile_value_v.ml";; 
 *)

let nam_cod = "tsegment_oneone_symbol_implementation_codefile_value_v.ml";;
 
module Cfp_v = Codefile_filename_provider_v
module Cmtp_v = Constructor_tag_tree_provider_v
module Cns_t = Constructor_symbol_t
module Cns_v = Constructor_symbol_v
module Cts_v = Category_symbol_v
module Cpc_v = Caml_paragraph_context_v
module Cps_v = Caml_paragraph_symbol_v
module Ens_v = Entity_symbol_v
module Ecc_v = Entitycategorycodefile_v
module Ecs_v = Entitycategorysuffix_v
module Fio_v = Fileio_v
module Fln_v = Filename_p
module Its_v = Item_symbol_v
module Itf_v = Item_formula_v
module Cff_v = Codefile_formula_v
module Cfs_t = Codefile_symbol_t
module Cfs_v = Codefile_symbol_v
module Cfv_v = Codefile_value_v
module Tgv_v = Target_value_v
module Tgp_v = Target_value_provider_v
module Tre_t = Tree_t
module Tre_v = Tree_v

let nam_ent = "segment_oneone";;
let smb_ent = Ens_v.make nam_ent;;
let smb_cnt = Cns_v.make smb_ent;;
let smb_cat = Cts_v.category_symbol;;
let smb_cfi = Cfs_v.codefile_implementation;;

let frm_cfi = Cff_v.retrieve (smb_cfi, smb_cat);;

let kyl_cfi = [("codefile", Cfs_v.name smb_cfi); ("category", Cts_v.name smb_cat); ("entity", Ens_v.name smb_ent)];;

let ecc = Ecc_v.make smb_ent smb_cat smb_cfi;;
let ecs = Ecs_v.entitycategorysuffix_of_entitycategorycodefile ecc;;

testi 0 (
frm_cfi
(* Item_symbol_t.item_symbol list *) 
= 
[Its_v.heading;
 Its_v.modules;
 Its_v.naming;
 Its_v.printing;
 Its_v.extracting;
 Its_v.querying;
 Its_v.upgrading;
 Its_v.including;
 Its_v.ending]
);;

testi 1 (
Ecs_v.name ecs
(* : string *)
  =
"segment_oneone"
);;

testi 2 (
ecs
(* : Entitycategorysuffix_t.entitycategorysuffix *)
=
(Entitycategorysuffix_t.Ens_t.Entity_fictive_symbol
  (Entitycategorysuffix_t.Ens_t.Entity_bare_symbol "segment_oneone"),
 Entitycategorysuffix_t.Cts_t.Empty, Entitycategorysuffix_t.Cfs_t.Empty)
);;

testi 3 (
Ecs_v.codefile_suffix_name_of_entitycategorysuffix ecs
(* : string *)
=
""
);;

testi 4 (
Cfs_v.file_extension smb_cfi
(* : string *)
  = 
"ml"
);;

test_raises_some_exc Cfv_v.codefile_file_name_of_key_list kyl_cfi;;

test_raises_some_exc Cfv_v.make kyl_cfi;;


