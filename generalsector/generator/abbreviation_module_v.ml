(** {3 The functionalities for a Module Abbreviation.}  *)

let nam_mod = "abbreviation_module_v.ml";;

(** {6 Modules.} *)

module Aab_v = Abbreviation_argument_v
module Abd_v = Abbreviation_default_v
module Cns_t = Constructor_symbol_t
module Cns_v = Constructor_symbol_v
module Cts_t = Category_symbol_t
module Enc_v = Entitycategory_v
module Ens_t = Entity_symbol_t
module Ens_v = Entity_symbol_v
module Str_v = String_v

(** Conventions : 
    tri   t
    tetra q
    penta c
    hexa  s
    poly  x 
*)

(** {6 Making from Entity_symbol.} *)

let abbreviation_module_of_entity_proper_symbol smb_enp =
  let str = Ens_v.name_of_entity_proper_symbol smb_enp in
  match str with
  | "block_onebifork" -> "B1b"
  | "block_onedoublebifork" -> "B1db"
  | "block_onedoubleonedouble" -> "B1d1d" 
  | "block_onedoubleonesingle" -> "B1d1s"
  | "block_oneend" -> "B1e"
  | "block_onefork" -> "B1"
  | "block_oneone" -> "B11"
  | "block_onesinglebifork" -> "B1sb"
  | "block_onesinglebiforksinglesingle" -> "B1sbss"
  | "block_onesingleonedouble" -> "B1s1d"
  | "block_onesingleonesingle" -> "B1s1s"
  | "block_onesingleonetriple" -> "B1s1t"
  | "block_onesingletriforksinglesinglesingle" -> "B1stsss"
  | "block_onetrifork" -> "B1t"
  | "block_onetripleonesingle" -> "B1t1s"
  | "block_onezero" -> "B10"
  | "block_zerobifork" -> "B0b" 
  | "block_zeroone" -> "B01"
  | "block_zeroonedouble" -> "B01d" 
  | "block_zeroonesingle" -> "B01s" 
  | "block_zeroonetriple" -> "B01t" 
  | "block_zeroquadrifork" -> "B0q" 
  | "block_zerotrifork" -> "B0t" 
  | "block_zerozero" -> "B00"
  | "block_zerozero_diatomic" -> "B00d" 
  | "block_zerozero_pentatomic" -> "B00c" 
  | "block_zerozero_tetratomic" -> "B00q" 
  | "block_zerozero_triatomic" -> "B00t" 
  | "bond" -> "Bn"
  | "box" -> "Bx"
  | "chemicalset" -> "Cs"
  | "chain" -> "Ch"
  | "cterminal_subunit" -> "Ct"
  | "deoxyribonucleotide_purinic" -> "Dpu"
  | "deoxyribonucleotide_pyrimidinic" -> "Dpy"
  | "molecule_linear_pentatomic" -> "Mlc"
  | "molecule_linear_polyatomic" -> "Mlp"
  | "molecule_linear_tetratomic" -> "Mlq"
  | "molecule_linear_triatomic" -> "Mlt"
  | "nucleoside" -> "Ns"
  | "nucleotide" -> "Nt"
  | "polyglycine" -> "Pg"
  | "polypeptide" -> "Pd"
  | "polypeptide_regular" -> "Pr"
  | "polyproline" -> "Pp"
  | "purine_base" -> "Pu"
  | "pyrimidine_base" -> "Py"
  | "ribonucleotide_purinic" -> "Rpu"
  | "ribonucleotide_pyrimidic" -> "Rpy"
  | s -> 
      String.capitalize (Abd_v.abbreviation_default_module_of_string s)
;;

let abbreviation_module_of_entity_external_symbol smb_enx =
  let str = Ens_v.name_of_entity_external_symbol smb_enx in
  match str with
  | "doublet" -> "Dbt"
  | "empty" -> ""
  | "error_messages" -> "Erm"
  | "index" -> "Idx"
  | "list_frames" -> "Lst"
  | "messages" -> "Msg"
  | "ordinal" -> "Ord"
  | "string_frames" -> "Str"
  | "tree" -> "Tre"
  | "triplet" -> "Trp"
  | "utils" -> "Utl"
  | s ->
      String.capitalize (Abd_v.abbreviation_default_module_of_string s)
;;

let abbreviation_module_of_entity_symbol = function
  | Ens_t.Entity_fictive_symbol _ -> 
      ""
  | Ens_t.Entity_proper_symbol smb_enp -> 
      abbreviation_module_of_entity_proper_symbol smb_enp

  | Ens_t.Entity_external_symbol smb_enx ->
      abbreviation_module_of_entity_external_symbol smb_enx
;;
(** ordinal -> Ord *)
(** atom -> At *)
(** xaa_yaa_zaa -> Xyz  *)

(** {6 Category_symbol.} *)

let abbreviation_module_of_category_symbol = function
  | Cts_t.Symbol_symbol -> "s"
  | Cts_t.Path_symbol -> "p"
  | Cts_t.Tag_symbol -> "m"
  | Cts_t.Formula_symbol -> "f"
  | Cts_t.Provider_symbol -> "p"
  | Cts_t.Value_symbol -> "v"
  | Cts_t.Empty -> ""
;;

(** {6 Entitycategory.} *)

let abbreviation_module_of_entitycategory enc =
  let smb_ent = Enc_v.entity_symbol_off_entitycategory enc in
  let smb_cat = Enc_v.category_symbol_off_entitycategory enc in
  let abb_ent = abbreviation_module_of_entity_symbol smb_ent in 
  let abb_cat = abbreviation_module_of_category_symbol smb_cat in 

  match smb_ent with
    | Ens_t.Entity_fictive_symbol _ -> ""
    | _ ->  
	Format.sprintf "%s%s" abb_ent abb_cat
;;
(** string -> fails *)
(** atom_symbol -> Ats *)
 
let abbreviation_module_of_constructor_symbol = function
  | Cns_t.Constructor_proper_symbol
      (Cns_t.Constructor_oneline_symbol
	 (Cns_t.Constructor_external_symbol smb_enx)) ->
	   abbreviation_module_of_entity_external_symbol smb_enx

  | smb_cnt ->
      let str = Cns_v.name smb_cnt in
      let abb = Str_v.first_characters_string_of_underscored_string str in
      match String.length abb with
      | 1 -> (String.capitalize abb) ^ (String.sub str 1 1)
      | _ -> (String.capitalize abb) 
;;
(** xaa_yaa_zaa -> Xyz  *)
