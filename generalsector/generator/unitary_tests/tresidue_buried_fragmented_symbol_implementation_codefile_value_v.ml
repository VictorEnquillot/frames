open Gentest_v;;

testing "Residue_buried_fragmented Symbol Implementation Codefile_value_v";;

(* toplevel 
   #use "tresidue_buried_fragmented_symbol_implementation_codefile_value_v.ml";; 
 *)

let nam_cod = "tresidue_buried_fragmented_symbol_implementation_codefile_value_v.ml";;
 
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

let nam_ent = "residue_buried_fragmented";;
let smb_ent = Ens_v.make nam_ent;;
let smb_cnt = Cns_v.make smb_ent;;
let smb_cat = Cts_v.category_symbol;;
let smb_cfi = Cfs_v.codefile_implementation;;

let frm_cfi = Cff_v.retrieve (smb_cfi, smb_cat);;

let kyl_cfi = [("codefile", Cfs_v.name smb_cfi); ("category", Cts_v.name smb_cat); ("entity", Ens_v.name smb_ent)];;

let nam_fil_cfi = Cfv_v.codefile_file_name_of_key_list kyl_cfi;;

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
=
"residue_buried_fragmented_symbol_v"
);;

testi 2 (
ecs
(* : Entitycategorysuffix_t.entitycategorysuffix *)
=
(Entitycategorysuffix_t.Ens_t.Entity_proper_symbol
  (Entitycategorysuffix_t.Ens_t.Entity_local_symbol "residue_buried_fragmented"),
 Entitycategorysuffix_t.Cts_t.Symbol_symbol, Entitycategorysuffix_t.Cfs_t.V)
);;

let val_cfi = Cfv_v.make kyl_cfi;;

testi 3 (
Lst_v.drop_last_elements_of_int_of_list 2 val_cfi 
(* : Codefile_value_t.Itv_t.item_value *)
=
[Codefile_value_t.Itv_t.Tre_t.Inner
  (["(** {3 A Symbol for a Residue_buried_fragmented.} *)"],
  [Codefile_value_t.Itv_t.Tre_t.Leaf
    ["let nam_cod = \"residue_buried_fragmented_symbol_v.ml\";;"]]);
 Codefile_value_t.Itv_t.Tre_t.Inner (["(** {6 Modules.} *)"],
  [Codefile_value_t.Itv_t.Tre_t.Leaf
    ["module Mars_v = Molecule_aminoacid_regular_symbol_v"];
   Codefile_value_t.Itv_t.Tre_t.Leaf
    ["module Mars_t = Molecule_aminoacid_regular_symbol_t";
     "module Rbfs_t = Residue_buried_fragmented_symbol_t"];
   Codefile_value_t.Itv_t.Tre_t.Leaf []]);
 Codefile_value_t.Itv_t.Tre_t.Inner (["(** {6 Naming.} *)"],
  [Codefile_value_t.Itv_t.Tre_t.Leaf
    ["let name = function";
     "  | Rbfs_t.Molecule_aminoacid_proline -> \"molecule_aminoacid_proline\"";
     "  | Rbfs_t.Molecule_aminoacid_regular_symbol smb_mar ->";
     "      Mars_v.name smb_mar"; ";;"]]);
 Codefile_value_t.Itv_t.Tre_t.Inner (["(** {6 Printing.} *)"],
  [Codefile_value_t.Itv_t.Tre_t.Leaf
    ["let print ppf = function"; "  | Rbfs_t.Molecule_aminoacid_proline  ->";
     "      .print ppf ";
     "  | Rbfs_t.Molecule_aminoacid_regular_symbol smb_mar ->";
     "      Mars_v.print ppf smb_mar"; ";;"]]);
 Codefile_value_t.Itv_t.Tre_t.Inner (["(** {6 Extracting.} *)"],
  [Codefile_value_t.Itv_t.Tre_t.Inner ([],
    [Codefile_value_t.Itv_t.Tre_t.Leaf
      ["let molecule_aminoacid_regular_symbol_off_residue_buried_fragmented_symbol = function";
       "  | Rbfs_t.Molecule_aminoacid_regular_symbol smb_mar -> smb_mar";
       "  | s -> Erm_v.print_fatal_error nam_cod\n     \"molecule_aminoacid_regular_symbol_off_residue_buried_fragmented_symbol\"\n     \"Molecule_aminoacid_regular_symbol\"\n     (name s)\n    \"check\"";
       ";;"]])]);
 Codefile_value_t.Itv_t.Tre_t.Inner (["(** {6 Querying.} *)"],
  [Codefile_value_t.Itv_t.Tre_t.Inner ([],
    [Codefile_value_t.Itv_t.Tre_t.Leaf
      ["let is_molecule_aminoacid_regular_symbol_off_residue_buried_fragmented_symbol = function";
       "  | Rbfs_t.Molecule_aminoacid_regular_symbol _ -> true";
       "  | _ -> false"; ";;"]])]);
 Codefile_value_t.Itv_t.Tre_t.Inner (["(** {6 Upgrading.} *)"],
  [Codefile_value_t.Itv_t.Tre_t.Inner ([],
    [Codefile_value_t.Itv_t.Tre_t.Leaf
      ["let molecule_aminoacid_proline = residue_buried_fragmented_symbol_of_residue_buried_fragmented_symbol Rbfs_t.Molecule_aminoacid_proline;;"];
     Codefile_value_t.Itv_t.Tre_t.Inner
      (["let residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol smb_mar =";
        "Rbfs_t.Molecule_aminoacid_regular_symbol smb_mar"; ";;"],
      [Codefile_value_t.Itv_t.Tre_t.Leaf
        ["let alanine = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Alanine;;"];
       Codefile_value_t.Itv_t.Tre_t.Leaf
        ["let arginine = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Arginine;;"];
       Codefile_value_t.Itv_t.Tre_t.Leaf
        ["let asparagine = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Asparagine;;"];
       Codefile_value_t.Itv_t.Tre_t.Leaf
        ["let aspartic = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Aspartic;;"];
       Codefile_value_t.Itv_t.Tre_t.Leaf
        ["let cysteine = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Cysteine;;"];
       Codefile_value_t.Itv_t.Tre_t.Leaf
        ["let glutamine = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Glutamine;;"];
       Codefile_value_t.Itv_t.Tre_t.Leaf
        ["let glutamic = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Glutamic;;"];
       Codefile_value_t.Itv_t.Tre_t.Leaf
        ["let histidine = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Histidine;;"];
       Codefile_value_t.Itv_t.Tre_t.Leaf
        ["let isoleucine = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Isoleucine;;"];
       Codefile_value_t.Itv_t.Tre_t.Leaf
        ["let leucine = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Leucine;;"];
       Codefile_value_t.Itv_t.Tre_t.Leaf
        ["let lysine = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Lysine;;"];
       Codefile_value_t.Itv_t.Tre_t.Leaf
        ["let methionine = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Methionine;;"];
       Codefile_value_t.Itv_t.Tre_t.Leaf
        ["let phenylalanine = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Phenylalanine;;"];
       Codefile_value_t.Itv_t.Tre_t.Leaf
        ["let serine = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Serine;;"];
       Codefile_value_t.Itv_t.Tre_t.Leaf
        ["let threonine = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Threonine;;"];
       Codefile_value_t.Itv_t.Tre_t.Leaf
        ["let tryptophan = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Tryptophan;;"];
       Codefile_value_t.Itv_t.Tre_t.Leaf
        ["let tyrosine = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Tyrosine;;"];
       Codefile_value_t.Itv_t.Tre_t.Leaf
        ["let valine = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Valine;;"]])])])]
);;

testi 4 (
nam_fil_cfi
(* : string *)
= 
"residue_buried_fragmented_symbol_v.ml"
);;

let oc = Fio_v.open_write_of_string_of_string_of_file_name nam_cod "oc" nam_fil_cfi;; 
Cfv_v.write oc val_cfi;;
close_out oc;
