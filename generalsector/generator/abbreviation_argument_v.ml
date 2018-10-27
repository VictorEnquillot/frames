(** {3 The functionalities for an Argument.}  *)

(** {6 Modules.} *)

module Abd_v = Abbreviation_default_v
module Cns_t = Constructor_symbol_t
module Cns_v = Constructor_symbol_v
module Cts_t = Category_symbol_t
module Erm_v = Error_messages_v
module Enc_v = Entitycategory_v
module Ens_t = Entity_symbol_t
module Ens_v = Entity_symbol_v
module Exs_t = Entity_external_symbol_t
module Idx_p = Index_p
module Lst_v = List_v
module Str_v = String_v

(** {6 Making from Entity_symbol.} *)

let abbreviation_argument_of_entity_external_symbol smb_enx =
  let str = Ens_v.name_of_entity_external_symbol smb_enx in
  match str with
  | "doublet" -> "dbt"
  | "empty" -> ""
  | "error_messages" -> "erm" 
  | "index" -> "idx"
  | "list_frames" -> "lst"
  | "messages" -> "mes" 
  | "ordinal" -> "ord"
  | "string_frames" -> "str"
  | "tree" -> "tre"
  | "triplet" -> "trp"
  | "utils" -> "utl"
  | s ->
      Abd_v.abbreviation_default_argument_of_string s
;;

let abbreviation_argument_of_entity_barebasic_symbol smb_ebb =
  let str = Ens_v.name_of_entity_barebasic_symbol smb_ebb in
  match str with
  | "string" -> "str"
  | "integer" -> "int"
  | "float" -> "flt"
  | "boolean" -> "bol"
  | s ->
      Abd_v.abbreviation_default_argument_of_string s
;;

let abbreviation_argument_of_entity_fictive_symbol = function
  | Ens_t.Entity_bare_symbol smb_eba ->
      ""

  | Ens_t.Entity_barebasic_symbol smb_ebb ->
      abbreviation_argument_of_entity_barebasic_symbol smb_ebb
;;

let abbreviation_argument_of_entity_local_symbol = function 
  | s -> 
      Abd_v.abbreviation_default_argument_of_string s
;;

let abbreviation_argument_of_entity_proper_datastructure_symbol = function 
  | s -> 
      Abd_v.abbreviation_default_argument_of_string s
;;

let abbreviation_argument_of_entity_proper_symbol smb_enp =
  let str = Ens_v.name_of_entity_proper_symbol smb_enp in
  match str with
  | "block_onebifork" -> "bob"
  | "block_onedoublebifork" -> "odb"
  | "block_onedoubleonedouble" -> "odd" 
  | "block_onedoubleonesingle" -> "ods"
  | "block_oneend" -> "boe"
  | "block_onefork" -> "bof"
  | "block_oneone" -> "boo"
  | "block_onesinglebifork" -> "osb"
  | "block_onesinglebiforksinglesingle" -> "oss"
  | "block_onesingleonedouble" -> "sod"
  | "block_onesingleonesingle" -> "sos"
  | "block_onesingleonetriple" -> "sot"
  | "block_onesingletriforksinglesinglesingle" -> "sss"
  | "block_onetrifork" -> "bot"
  | "block_onetripleonesingle" -> "ots"
  | "block_onezero" -> "boz"
  | "block_zerobifork" -> "bzb" 
  | "block_zeroone" -> "bzo"
  | "block_zeroonedouble" -> "zod" 
  | "block_zeroonesingle" -> "zos" 
  | "block_zeroonetriple" -> "zot" 
  | "block_zeroquadrifork" -> "bzq" 
  | "block_zerotrifork" -> "bzt" 
  | "block_zerozero" -> "bzz"
  | "block_zerozero_diatomic" -> "zzd" 
  | "block_zerozero_pentatomic" -> "zzc" 
  | "block_zerozero_tetratomic" -> "zzq" 
  | "block_zerozero_triatomic" -> "zzt" 
  | "bond" -> "bnd"
  | "box" -> "box"
  | "deoxyribonucleotide_purinic" -> "dpu"
  | "deoxyribonucleotide_pyrimidinic" -> "dpy"
  | "molecule_linear_pentatomic" -> "mlc"
  | "molecule_linear_polyatomic" -> "mlp"
  | "molecule_linear_tetratomic" -> "mlq"
  | "molecule_linear_triatomic" -> "mlt"
  | "nucleoside" -> "nus"
  | "nucleotide" -> "nut"
  | "polypeptide" -> "pde"
  | "polypeptide_regular" -> "prg"
  | "polyglycine" -> "pgn"
  | "polyproline" -> "ppn"
  | "purine_base" -> "pub"
  | "pyrimidine_base" -> "pyb"
  | "ribonucleotide_purinic" -> "rpu"
  | "ribonucleotide_pyrimidic" -> "rpy"
  | "segment_oneone" -> "soo"
  | s -> 
      Abd_v.abbreviation_default_argument_of_string s
;;

let abbreviation_argument_of_entity_symbol = function
  | Ens_t.Entity_fictive_symbol smb_efv -> 
      abbreviation_argument_of_entity_fictive_symbol smb_efv
  | Ens_t.Entity_proper_symbol smb_epr ->
      abbreviation_argument_of_entity_proper_symbol smb_epr 
  | Ens_t.Entity_external_symbol smb_enr ->
      abbreviation_argument_of_entity_external_symbol smb_enr
;;

(** {6 Making from Category_symbol.} *)

let abbreviation_argument_of_category_symbol = function
  | Cts_t.Symbol_symbol -> "smb"
  | Cts_t.Path_symbol -> "pth"
  | Cts_t.Tag_symbol -> "mrk"
  | Cts_t.Formula_symbol -> "frm"
  | Cts_t.Provider_symbol -> "prv"
  | Cts_t.Value_symbol -> "val"
  | Cts_t.Empty -> ""
;;

let abbreviation_argument_of_entitycategory enc =
  let smb_ent = Enc_v.entity_symbol_off_entitycategory enc in
  let smb_cat = Enc_v.category_symbol_off_entitycategory enc in
  let abb_ent = abbreviation_argument_of_entity_symbol smb_ent in 

  match smb_cat with
    | Cts_t.Empty -> abb_ent
    | _ ->
	let abb_cat = abbreviation_argument_of_category_symbol smb_cat in 
	Format.sprintf "%s_%s" abb_cat abb_ent 
;;

(** string -> str *)
(** atom_symbol -> smb_aom *)

(** {6 Making from Constructor_symbol.} *)

let abbreviation_argument_of_constructor_symbol = function
  | Cns_t.Constructor_proper_symbol
      (Cns_t.Constructor_oneline_symbol
	 (Cns_t.Constructor_external_symbol smb_enx)) ->
	   abbreviation_argument_of_entity_external_symbol smb_enx

  | smb_cnt ->
      let str = Cns_v.name smb_cnt in
      let rvs = Str_v.reverse_string str in
      let abb = Str_v.first_characters_string_of_underscored_string str in
      match String.length abb with
      | 1 -> abb ^ (Str_v.reverse_string (String.sub rvs 0 2))
      | 2 -> abb ^ (String.sub rvs 0 1)
      | _ -> abb
;;
(** xaa_yaa_zaa -> xyz  *)

