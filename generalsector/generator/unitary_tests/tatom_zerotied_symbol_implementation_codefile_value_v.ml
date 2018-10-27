open Gentest_v;;

testing "Atom_zerotied Symbol Implementation Codefile_value_v";;

(* toplevel 
   #use "tatom_zerotied_symbol_implementation_codefile_value_v.ml";; 
 *)

let nam_cod = "tatom_zerotied_symbol_implementation_codefile_value_v.ml";;
 
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

let nam_ent = "atom_zerotied";;
let smb_ent = Ens_v.make nam_ent;;
let smb_cnt = Cns_v.make smb_ent;;
let smb_cat = Cts_v.category_symbol;;
let smb_cfi = Cfs_v.codefile_implementation;;

let frm_cfi = Cff_v.retrieve (smb_cfi, smb_cat);;

let kyl_cfi = [("codefile", Cfs_v.name smb_cfi); ("category", Cts_v.name smb_cat); ("entity", Ens_v.name smb_ent)];;

let ecc = Ecc_v.make smb_ent smb_cat smb_cfi;;  
let ecs = Ecs_v.entitycategorysuffix_of_entitycategorycodefile ecc;;
let nam_fil_cfi = Cfv_v.codefile_file_name_of_key_list kyl_cfi;;
let val_cfi = Cfv_v.make kyl_cfi;;

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
"atom_zerotied_symbol_v"
);;

testi 2 (
ecs
(* : Entitycategorysuffix_t.entitycategorysuffix *)
=
(Entitycategorysuffix_t.Ens_t.Entity_proper_symbol
  (Entitycategorysuffix_t.Ens_t.Entity_local_symbol "atom_zerotied"),
 Entitycategorysuffix_t.Cts_t.Symbol_symbol, Entitycategorysuffix_t.Cfs_t.V)
);;

testi 3 (
nam_fil_cfi
(* : string *)
= 
"atom_zerotied_symbol_v.ml"
);;

testi 4 (
Lst_v.left_half_off_list val_cfi 
(* : Codefile_value_t.Itv_t.item_value *)
=
[Codefile_value_t.Itv_t.Tre_t.Inner
  (["(** {3 A Symbol for a Atom_zerotied.} *)"],
  [Codefile_value_t.Itv_t.Tre_t.Leaf
    ["let nam_cod = \"atom_zerotied_symbol_v.ml\";;"]]);
 Codefile_value_t.Itv_t.Tre_t.Inner (["(** {6 Modules.} *)"],
  [Codefile_value_t.Itv_t.Tre_t.Leaf
    ["module Has_v = Halfbridge_symbol_v";
     "module A0cp3s_v = Atom_zerotied_cation_plus_three_symbol_v";
     "module A0cp2s_v = Atom_zerotied_cation_plus_two_symbol_v";
     "module A0cp1s_v = Atom_zerotied_cation_plus_one_symbol_v";
     "module A0cs_v = Atom_zerotied_cation_symbol_v";
     "module A0am2s_v = Atom_zerotied_anion_minus_two_symbol_v";
     "module A0am1s_v = Atom_zerotied_anion_minus_one_symbol_v";
     "module A0as_v = Atom_zerotied_anion_symbol_v";
     "module A0rs_v = Atom_zerotied_raregas_symbol_v"];
   Codefile_value_t.Itv_t.Tre_t.Leaf
    ["module A0cp3s_t = Atom_zerotied_cation_plus_three_symbol_t";
     "module A0cp2s_t = Atom_zerotied_cation_plus_two_symbol_t";
     "module A0cp1s_t = Atom_zerotied_cation_plus_one_symbol_t";
     "module A0am2s_t = Atom_zerotied_anion_minus_two_symbol_t";
     "module A0am1s_t = Atom_zerotied_anion_minus_one_symbol_t";
     "module Has_t = Halfbridge_symbol_t";
     "module A0cs_t = Atom_zerotied_cation_symbol_t";
     "module A0as_t = Atom_zerotied_anion_symbol_t";
     "module A0rs_t = Atom_zerotied_raregas_symbol_t";
     "module A0s_t = Atom_zerotied_symbol_t"];
   Codefile_value_t.Itv_t.Tre_t.Leaf []]);
 Codefile_value_t.Itv_t.Tre_t.Inner (["(** {6 Naming.} *)"],
  [Codefile_value_t.Itv_t.Tre_t.Leaf
    ["let name = function";
     "  | A0s_t.Atom_zerotied_raregas_symbol smb_a0r ->";
     "      A0rs_v.name smb_a0r";
     "  | A0s_t.Atom_zerotied_anion_symbol smb_a0a ->";
     "      A0as_v.name smb_a0a";
     "  | A0s_t.Atom_zerotied_cation_symbol smb_a0c ->";
     "      A0cs_v.name smb_a0c"; "  | A0s_t.Halfbridge_symbol smb_hae ->";
     "      Has_v.name smb_hae"; ";;"]]);
 Codefile_value_t.Itv_t.Tre_t.Inner (["(** {6 Printing.} *)"],
  [Codefile_value_t.Itv_t.Tre_t.Leaf
    ["let print ppf = function";
     "  | A0s_t.Atom_zerotied_raregas_symbol smb_a0r ->";
     "      A0rs_v.print ppf smb_a0r";
     "  | A0s_t.Atom_zerotied_anion_symbol smb_a0a ->";
     "      A0as_v.print ppf smb_a0a";
     "  | A0s_t.Atom_zerotied_cation_symbol smb_a0c ->";
     "      A0cs_v.print ppf smb_a0c";
     "  | A0s_t.Halfbridge_symbol smb_hae ->";
     "      Has_v.print ppf smb_hae"; ";;"]])]
);;

testi 5 (
Lst_v.left_half_off_list (Lst_v.right_half_off_list val_cfi) 
(* : Codefile_value_t.Itv_t.item_value *)
=
[Codefile_value_t.Itv_t.Tre_t.Inner (["(** {6 Extracting.} *)"],
  [Codefile_value_t.Itv_t.Tre_t.Inner ([],
    [Codefile_value_t.Itv_t.Tre_t.Leaf
      ["let atom_zerotied_raregas_symbol_off_atom_zerotied_symbol = function";
       "  | A0s_t.Atom_zerotied_raregas_symbol smb_a0r -> smb_a0r";
       "  | s -> Erm_v.print_fatal_error nam_cod\n     \"atom_zerotied_raregas_symbol_off_atom_zerotied_symbol\"\n     \"Atom_zerotied_raregas_symbol\"\n     (name s)\n    \"check\"";
       ";;"];
     Codefile_value_t.Itv_t.Tre_t.Inner
      (["let atom_zerotied_anion_symbol_off_atom_zerotied_symbol = function";
        "  | A0s_t.Atom_zerotied_anion_symbol smb_a0a -> smb_a0a";
        "  | s -> Erm_v.print_fatal_error nam_cod\n     \"atom_zerotied_anion_symbol_off_atom_zerotied_symbol\"\n     \"Atom_zerotied_anion_symbol\"\n     (name s)\n    \"check\"";
        ";;"],
      [Codefile_value_t.Itv_t.Tre_t.Leaf
        ["let atom_zerotied_anion_minus_one_symbol_off_atom_zerotied_symbol smb_at0 =";
         "  let smb_a0a = atom_zerotied_anion_symbol_off_atom_zerotied_symbol smb_at0 in";
         "    A0as_v_off_atom_zerotied_anion_symbol smb_a0a"; ";;"];
       Codefile_value_t.Itv_t.Tre_t.Leaf
        ["let atom_zerotied_anion_minus_two_symbol_off_atom_zerotied_symbol smb_at0 =";
         "  let smb_a0a = atom_zerotied_anion_symbol_off_atom_zerotied_symbol smb_at0 in";
         "    A0as_v_off_atom_zerotied_anion_symbol smb_a0a"; ";;"]]);
     Codefile_value_t.Itv_t.Tre_t.Inner
      (["let atom_zerotied_cation_symbol_off_atom_zerotied_symbol = function";
        "  | A0s_t.Atom_zerotied_cation_symbol smb_a0c -> smb_a0c";
        "  | s -> Erm_v.print_fatal_error nam_cod\n     \"atom_zerotied_cation_symbol_off_atom_zerotied_symbol\"\n     \"Atom_zerotied_cation_symbol\"\n     (name s)\n    \"check\"";
        ";;"],
      [Codefile_value_t.Itv_t.Tre_t.Leaf
        ["let atom_zerotied_cation_plus_one_symbol_off_atom_zerotied_symbol smb_at0 =";
         "  let smb_a0c = atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_at0 in";
         "    A0cs_v_off_atom_zerotied_cation_symbol smb_a0c"; ";;"];
       Codefile_value_t.Itv_t.Tre_t.Leaf
        ["let atom_zerotied_cation_plus_two_symbol_off_atom_zerotied_symbol smb_at0 =";
         "  let smb_a0c = atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_at0 in";
         "    A0cs_v_off_atom_zerotied_cation_symbol smb_a0c"; ";;"];
       Codefile_value_t.Itv_t.Tre_t.Leaf
        ["let atom_zerotied_cation_plus_three_symbol_off_atom_zerotied_symbol smb_at0 =";
         "  let smb_a0c = atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_at0 in";
         "    A0cs_v_off_atom_zerotied_cation_symbol smb_a0c"; ";;"]]);
     Codefile_value_t.Itv_t.Tre_t.Leaf
      ["let halfbridge_symbol_off_atom_zerotied_symbol = function";
       "  | A0s_t.Halfbridge_symbol smb_hae -> smb_hae";
       "  | s -> Erm_v.print_fatal_error nam_cod\n     \"halfbridge_symbol_off_atom_zerotied_symbol\"\n     \"Halfbridge_symbol\"\n     (name s)\n    \"check\"";
       ";;"]])]);
 Codefile_value_t.Itv_t.Tre_t.Inner (["(** {6 Querying.} *)"],
  [Codefile_value_t.Itv_t.Tre_t.Inner ([],
    [Codefile_value_t.Itv_t.Tre_t.Leaf
      ["let is_atom_zerotied_raregas_symbol_off_atom_zerotied_symbol = function";
       "  | A0s_t.Atom_zerotied_raregas_symbol _ -> true"; "  | _ -> false";
       ";;"];
     Codefile_value_t.Itv_t.Tre_t.Inner
      (["let is_atom_zerotied_anion_symbol_off_atom_zerotied_symbol = function";
        "  | A0s_t.Atom_zerotied_anion_symbol _ -> true"; "  | _ -> false";
        ";;"],
      [Codefile_value_t.Itv_t.Tre_t.Leaf
        ["let is_atom_zerotied_anion_minus_one_symbol_off_atom_zerotied_symbol smb_at0 =";
         "  if not (is_atom_zerotied_anion_symbol_off_atom_zerotied_symbol smb_at0)";
         "  then false\n  else\n    begin";
         "  let smb_a0a = atom_zerotied_anion_symbol_off_atom_zerotied_symbol smb_at0 in";
         "      A0as_v.is_atom_zerotied_anion_minus_one_symbol_off_atom_zerotied_anion_symbol smb_a0a";
         "    end"; ";;"];
       Codefile_value_t.Itv_t.Tre_t.Leaf
        ["let is_atom_zerotied_anion_minus_two_symbol_off_atom_zerotied_symbol smb_at0 =";
         "  if not (is_atom_zerotied_anion_symbol_off_atom_zerotied_symbol smb_at0)";
         "  then false\n  else\n    begin";
         "  let smb_a0a = atom_zerotied_anion_symbol_off_atom_zerotied_symbol smb_at0 in";
         "      A0as_v.is_atom_zerotied_anion_minus_two_symbol_off_atom_zerotied_anion_symbol smb_a0a";
         "    end"; ";;"]]);
     Codefile_value_t.Itv_t.Tre_t.Inner
      (["let is_atom_zerotied_cation_symbol_off_atom_zerotied_symbol = function";
        "  | A0s_t.Atom_zerotied_cation_symbol _ -> true"; "  | _ -> false";
        ";;"],
      [Codefile_value_t.Itv_t.Tre_t.Leaf
        ["let is_atom_zerotied_cation_plus_one_symbol_off_atom_zerotied_symbol smb_at0 =";
         "  if not (is_atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_at0)";
         "  then false\n  else\n    begin";
         "  let smb_a0c = atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_at0 in";
         "      A0cs_v.is_atom_zerotied_cation_plus_one_symbol_off_atom_zerotied_cation_symbol smb_a0c";
         "    end"; ";;"];
       Codefile_value_t.Itv_t.Tre_t.Leaf
        ["let is_atom_zerotied_cation_plus_two_symbol_off_atom_zerotied_symbol smb_at0 =";
         "  if not (is_atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_at0)";
         "  then false\n  else\n    begin";
         "  let smb_a0c = atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_at0 in";
         "      A0cs_v.is_atom_zerotied_cation_plus_two_symbol_off_atom_zerotied_cation_symbol smb_a0c";
         "    end"; ";;"];
       Codefile_value_t.Itv_t.Tre_t.Leaf
        ["let is_atom_zerotied_cation_plus_three_symbol_off_atom_zerotied_symbol smb_at0 =";
         "  if not (is_atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_at0)";
         "  then false\n  else\n    begin";
         "  let smb_a0c = atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_at0 in";
         "      A0cs_v.is_atom_zerotied_cation_plus_three_symbol_off_atom_zerotied_cation_symbol smb_a0c";
         "    end"; ";;"]]);
     Codefile_value_t.Itv_t.Tre_t.Leaf
      ["let is_halfbridge_symbol_off_atom_zerotied_symbol = function";
       "  | A0s_t.Halfbridge_symbol _ -> true"; "  | _ -> false"; ";;"]])])]
);;

testi 6 (
 Lst_v.drop_last_elements_of_int_of_list 2 (Lst_v.right_half_off_list (Lst_v.right_half_off_list val_cfi))
=
[Codefile_value_t.Itv_t.Tre_t.Inner (["(** {6 Upgrading.} *)"],
  [Codefile_value_t.Itv_t.Tre_t.Inner ([],
    [Codefile_value_t.Itv_t.Tre_t.Inner
      (["let atom_zerotied_symbol_of_atom_zerotied_raregas_symbol smb_a0r =";
        "A0s_t.Atom_zerotied_raregas_symbol smb_a0r"; ";;"],
      [Codefile_value_t.Itv_t.Tre_t.Leaf
        ["let ar = atom_zerotied_symbol_of_atom_zerotied_raregas_symbol A0rs_t.Ar;;"];
       Codefile_value_t.Itv_t.Tre_t.Leaf
        ["let he = atom_zerotied_symbol_of_atom_zerotied_raregas_symbol A0rs_t.He;;"];
       Codefile_value_t.Itv_t.Tre_t.Leaf
        ["let kr = atom_zerotied_symbol_of_atom_zerotied_raregas_symbol A0rs_t.Kr;;"];
       Codefile_value_t.Itv_t.Tre_t.Leaf
        ["let ne = atom_zerotied_symbol_of_atom_zerotied_raregas_symbol A0rs_t.Ne;;"];
       Codefile_value_t.Itv_t.Tre_t.Leaf
        ["let xe = atom_zerotied_symbol_of_atom_zerotied_raregas_symbol A0rs_t.Xe;;"]]);
     Codefile_value_t.Itv_t.Tre_t.Inner
      (["let atom_zerotied_symbol_of_atom_zerotied_anion_symbol smb_a0a =";
        "A0s_t.Atom_zerotied_anion_symbol smb_a0a"; ";;"],
      [Codefile_value_t.Itv_t.Tre_t.Inner
        (["let atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_one_symbol smb_am1 =";
          "  let smb_a0a = A0as_v.atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_one_symbol smb_am1 in";
          "atom_zerotied_symbol_of_atom_zerotied_anion_symbol smb_a0a"; ";;"],
        [Codefile_value_t.Itv_t.Tre_t.Leaf
          ["let f_1m = atom_zerotied_symbol_of_atom_zerotied_anion_minus_one_symbol A0am1s_t.F_1m;;"];
         Codefile_value_t.Itv_t.Tre_t.Leaf
          ["let h_1m = atom_zerotied_symbol_of_atom_zerotied_anion_minus_one_symbol A0am1s_t.H_1m;;"];
         Codefile_value_t.Itv_t.Tre_t.Leaf
          ["let cl_1m = atom_zerotied_symbol_of_atom_zerotied_anion_minus_one_symbol A0am1s_t.Cl_1m;;"];
         Codefile_value_t.Itv_t.Tre_t.Leaf
          ["let br_1m = atom_zerotied_symbol_of_atom_zerotied_anion_minus_one_symbol A0am1s_t.Br_1m;;"];
         Codefile_value_t.Itv_t.Tre_t.Leaf
          ["let i_1m = atom_zerotied_symbol_of_atom_zerotied_anion_minus_one_symbol A0am1s_t.I_1m;;"]]);
       Codefile_value_t.Itv_t.Tre_t.Inner
        (["let atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_two_symbol smb_am2 =";
          "  let smb_a0a = A0as_v.atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_two_symbol smb_am2 in";
          "atom_zerotied_symbol_of_atom_zerotied_anion_symbol smb_a0a"; ";;"],
        [Codefile_value_t.Itv_t.Tre_t.Leaf
          ["let o_2m = atom_zerotied_symbol_of_atom_zerotied_anion_minus_two_symbol A0am2s_t.O_2m;;"];
         Codefile_value_t.Itv_t.Tre_t.Leaf
          ["let s_2m = atom_zerotied_symbol_of_atom_zerotied_anion_minus_two_symbol A0am2s_t.S_2m;;"]])]);
     Codefile_value_t.Itv_t.Tre_t.Inner
      (["let atom_zerotied_symbol_of_atom_zerotied_cation_symbol smb_a0c =";
        "A0s_t.Atom_zerotied_cation_symbol smb_a0c"; ";;"],
      [Codefile_value_t.Itv_t.Tre_t.Inner
        (["let atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_one_symbol smb_cp1 =";
          "  let smb_a0c = A0cs_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_one_symbol smb_cp1 in";
          "atom_zerotied_symbol_of_atom_zerotied_cation_symbol smb_a0c";
          ";;"],
        [Codefile_value_t.Itv_t.Tre_t.Leaf
          ["let h_1p = atom_zerotied_symbol_of_atom_zerotied_cation_plus_one_symbol A0cp1s_t.H_1p;;"];
         Codefile_value_t.Itv_t.Tre_t.Leaf
          ["let k_1p = atom_zerotied_symbol_of_atom_zerotied_cation_plus_one_symbol A0cp1s_t.K_1p;;"];
         Codefile_value_t.Itv_t.Tre_t.Leaf
          ["let li_1p = atom_zerotied_symbol_of_atom_zerotied_cation_plus_one_symbol A0cp1s_t.Li_1p;;"];
         Codefile_value_t.Itv_t.Tre_t.Leaf
          ["let na_1p = atom_zerotied_symbol_of_atom_zerotied_cation_plus_one_symbol A0cp1s_t.Na_1p;;"];
         Codefile_value_t.Itv_t.Tre_t.Leaf
          ["let ni_1p = atom_zerotied_symbol_of_atom_zerotied_cation_plus_one_symbol A0cp1s_t.Ni_1p;;"];
         Codefile_value_t.Itv_t.Tre_t.Leaf
          ["let cu_1p = atom_zerotied_symbol_of_atom_zerotied_cation_plus_one_symbol A0cp1s_t.Cu_1p;;"]]);
       Codefile_value_t.Itv_t.Tre_t.Inner
        (["let atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_two_symbol smb_cp2 =";
          "  let smb_a0c = A0cs_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_two_symbol smb_cp2 in";
          "atom_zerotied_symbol_of_atom_zerotied_cation_symbol smb_a0c";
          ";;"],
        [Codefile_value_t.Itv_t.Tre_t.Leaf
          ["let mg_2p = atom_zerotied_symbol_of_atom_zerotied_cation_plus_two_symbol A0cp2s_t.Mg_2p;;"];
         Codefile_value_t.Itv_t.Tre_t.Leaf
          ["let ca_2p = atom_zerotied_symbol_of_atom_zerotied_cation_plus_two_symbol A0cp2s_t.Ca_2p;;"];
         Codefile_value_t.Itv_t.Tre_t.Leaf
          ["let fe_2p = atom_zerotied_symbol_of_atom_zerotied_cation_plus_two_symbol A0cp2s_t.Fe_2p;;"];
         Codefile_value_t.Itv_t.Tre_t.Leaf
          ["let zn_2p = atom_zerotied_symbol_of_atom_zerotied_cation_plus_two_symbol A0cp2s_t.Zn_2p;;"];
         Codefile_value_t.Itv_t.Tre_t.Leaf
          ["let cu_2p = atom_zerotied_symbol_of_atom_zerotied_cation_plus_two_symbol A0cp2s_t.Cu_2p;;"]]);
       Codefile_value_t.Itv_t.Tre_t.Inner
        (["let atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_three_symbol smb_cp3 =";
          "  let smb_a0c = A0cs_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_three_symbol smb_cp3 in";
          "atom_zerotied_symbol_of_atom_zerotied_cation_symbol smb_a0c";
          ";;"],
        [Codefile_value_t.Itv_t.Tre_t.Leaf
          ["let fe_3p = atom_zerotied_symbol_of_atom_zerotied_cation_plus_three_symbol A0cp3s_t.Fe_3p;;"];
         Codefile_value_t.Itv_t.Tre_t.Leaf
          ["let ni_3p = atom_zerotied_symbol_of_atom_zerotied_cation_plus_three_symbol A0cp3s_t.Ni_3p;;"]])]);
     Codefile_value_t.Itv_t.Tre_t.Inner
      (["let atom_zerotied_symbol_of_halfbridge_symbol smb_hae =";
        "A0s_t.Halfbridge_symbol smb_hae"; ";;"],
      [Codefile_value_t.Itv_t.Tre_t.Leaf
        ["let hbc = atom_zerotied_symbol_of_halfbridge_symbol Has_t.Hbc;;"];
       Codefile_value_t.Itv_t.Tre_t.Leaf
        ["let hbd = atom_zerotied_symbol_of_halfbridge_symbol Has_t.Hbd;;"];
       Codefile_value_t.Itv_t.Tre_t.Leaf
        ["let hbs = atom_zerotied_symbol_of_halfbridge_symbol Has_t.Hbs;;"];
       Codefile_value_t.Itv_t.Tre_t.Leaf
	 ["let hbt = atom_zerotied_symbol_of_halfbridge_symbol Has_t.Hbt;;"]])])])]
);;

let oc = Fio_v.open_write_of_string_of_string_of_file_name nam_cod "oc" nam_fil_cfi;; 
Cfv_v.write oc val_cfi;;
close_out oc;
