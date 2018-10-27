(** {3 The functionalities for an Argument.}  *)

let nam_cod = "Abbreviation_argument_v.ml"

(** {6 Modules.} *)


(** {6 Making from Category_symbol.} *)

let abbreviation_argument_of_category_symbol = function
  | Camlline_symbol_t.Empty -> ""
  | Camlline_symbol_t.Formula -> "for"
  | Camlline_symbol_t.Path -> "pth"
  | Camlline_symbol_t.Property -> "pty"
  | Camlline_symbol_t.Provider -> "pro"
  | Camlline_symbol_t.Symbol -> "sym"
  | Camlline_symbol_t.Tag -> "tag"
  | Camlline_symbol_t.Value -> "val"
;;

(** {6 Making from Entity_symbol.} *)

let abbreviation_argument_of_constructor_container_symbol = function
  | Camlline_constant_symbol_t.Tree_footed_capped -> "cft"
  | Camlline_constant_symbol_t.Tree_leafed_capped -> "clt"
  | Camlline_constant_symbol_t.Doublet -> "dou"
  | Camlline_constant_symbol_t.Doublet_list -> "dol"
  | Camlline_constant_symbol_t.Duo -> "duo"
  | Camlline_constant_symbol_t.Tree_leafed -> "let"
  | Camlline_constant_symbol_t.Tree -> "tre"
  | Camlline_constant_symbol_t.Trio -> "tri"
  | Camlline_constant_symbol_t.Triplet -> "trp"
  | Camlline_constant_symbol_t.Uno -> "uno"
;;

let abbreviation_argument_of_framestype_ocamltype_pervasive_symbol = function
  | Framestype_ocamltype_pervasive_symbol_t.Integer -> "int"
  | Framestype_ocamltype_pervasive_symbol_t.Boolean -> "boo"
  | Framestype_ocamltype_pervasive_symbol_t.String -> "str"
  | Framestype_ocamltype_pervasive_symbol_t.Float -> "flo"
;;

let abbreviation_argument_of_entity_local_symbol = function 
  | s -> 
      Abbreviation_default_v.abbreviation_default_argument_of_string s
;;

let abbreviation_argument_of_entity_proper_datastructure_symbol = function 
  | s -> 
      Abbreviation_default_v.abbreviation_default_argument_of_string s
;;

let abbreviation_argument_of_constructor_es_symbolential_symbol sym_ces =
    Utilities_v.not_yet_implemented nam_cod 
    "abbreviation_argument_of_constructor_es_symbolential_symbol"
;;

let abbreviation_argument_of_entity_proper_name = function
  | "deoxyribonucleotide_purinic" -> "dpu"
  | "deoxyribonucleotide_pyrimidinic" -> "dpy"
  | "molecule_linear_pentatomic" -> "mlc"
  | "molecule_linear_polyatomic" -> "mlp"
  | "molecule_linear_tetratomic" -> "mlq"
  | "molecule_linear_triatomic" -> "mlt"
  | "nucleoside" -> "nus"
  | "nucleotide" -> "nut"
  | "purine_base" -> "pub"
  | "pyrimidine_base" -> "pyb"
  | "ribonucleotide_purinic" -> "rpu"
  | "ribonucleotide_pyrimidic" -> "rpy"
  | s -> 
      Abbreviation_default_v.abbreviation_default_argument_of_string s
;;

let abbreviation_argument_of_framestype_es_symbolential_symbol sym_fte =
  let nam_ent = Framestype_es_symbolential_symbol_v.entity_name sym_fte in
  let aba_ent = abbreviation_argument_of_entity_proper_name nam_ent in
  let sym_cat = Camlline_symbol_t.Symbol in 
  let aba_cat = abbreviation_argument_of_category_symbol sym_cat in
  Format.sprintf "%s_%s" aba_cat aba_ent
;;

(** string -> str *)
(** atom_symbol -> smb_aom *)

(** {6 Making.} *)

let abbreviation_argument_of_framestype_container_symbol s =
    Utilities_v.not_yet_implemented nam_cod 
    "abbreviation_argument_of_framestype_container_symbol"
;;

let abbreviation_argument_of_framestype_library_symbol s =
    Utilities_v.not_yet_implemented nam_cod 
    "abbreviation_argument_of_framestype_library_symbol"
;;

let abbreviation_argument_of_framestype_ocamltype_symbol s =
    Utilities_v.not_yet_implemented nam_cod 
    "abbreviation_argument_of_framestype_ocamltype_symbol"
;;

let abbreviation_argument_of_framestype_symbol = function
  | Framestype_symbol_t.Framestype_container_symbol s ->
      abbreviation_argument_of_framestype_container_symbol s
  | Framestype_symbol_t.Framestype_es_symbolential_symbol s ->
      abbreviation_argument_of_framestype_es_symbolential_symbol s
  | Framestype_symbol_t.Framestype_library_symbol s ->
      abbreviation_argument_of_framestype_library_symbol s
  | Framestype_symbol_t.Framestype_ocamltype_symbol s ->
      abbreviation_argument_of_framestype_ocamltype_symbol s
;;

let abbreviation_argument_of_framestype_extended_symbol = function
  | Framestype_extended_symbol_t.Framestype_es_symbolential_symbol sym_fes -> 
      abbreviation_argument_of_framestype_es_symbolential_symbol sym_fes
  | Framestype_extended_symbol_t.Constructor_es_symbolential_symbol sym_ces ->
      abbreviation_argument_of_constructor_es_symbolential_symbol sym_ces
;;

(*
  | smb_cnt ->
      let str = Contentfile_symbol_v.name smb_cnt in
      let rvs = String_v.reverse_string str in
      let abb = String_v.first_characters_string_of_underscored_string str in
      match String.length abb with
      | 1 -> abb ^ (String_v.reverse_string (String.sub rvs 0 2))
      | 2 -> abb ^ (String.sub rvs 0 1)
      | _ -> abb
;;
*)
(** xaa_yaa_zaa -> xyz  *)
