(** {3 The functionalities for an Argument.}  *)

let nam_cod = "Abbreviation_argument_v.ml"

(** {6 Modules.} *)



(** {6 Making from Category_symbol.} *)

let abbreviation_argument_of_category_symbol = function
  | Category_symbol_t.Any -> "any"
  | Category_symbol_t.Empty -> ""
  | Category_symbol_t.Formula -> "for"
  | Category_symbol_t.Mark -> "mar"
  | Category_symbol_t.Path -> "pat"
  | Category_symbol_t.Property -> "pty"
  | Category_symbol_t.Provider -> "pro"
  | Category_symbol_t.Symbol -> "sym"
  | Category_symbol_t.Tag -> "tag"
  | Category_symbol_t.Value -> "val"
;;

let abbreviation_argument_one_letter_of_category_symbol = function
  | Category_symbol_t.Any -> "a"
  | Category_symbol_t.Empty -> ""
  | Category_symbol_t.Formula -> "f"
  | Category_symbol_t.Mark -> "m"
  | Category_symbol_t.Path -> "p"
  | Category_symbol_t.Property -> "p"
  | Category_symbol_t.Provider -> "p"
  | Category_symbol_t.Symbol -> "s"
  | Category_symbol_t.Tag -> "t"
  | Category_symbol_t.Value -> "v"
;;

(** {6 Making from Entity_symbol.} *)


(** string -> str *)
(** atom_symbol -> smb_aom *)

(** {6 Making.} *)

let abbreviation_argument_of_entity_external_constrained_symbol = function
  | Entity_external_constrained_symbol_t.Index -> "ind"
  | Entity_external_constrained_symbol_t.Ordinal -> "ord"
  | Entity_external_constrained_symbol_t.Float_positive -> "fpo"
  | Entity_external_constrained_symbol_t.Float_zero_pi -> "fzp"
  | Entity_external_constrained_symbol_t.Float_zero_twopi -> "fzt"
;;

let abbreviation_argument_of_entity_external_datastructure_recursive str =
  let low_str = String.lowercase str in
  match low_str with 
  | "list_caml" -> "lic"
  | "list_frames" -> "lif"
  | "tree" -> "tre"
  | str -> Error_messages_v.print_fatal_error nam_cod 
	"abbreviation_argument_of_entity_external_datastructure_recursive"
        (Format.sprintf "string >%s< were defined" str)
        "it is NOT defined" "Check or add it"
;;

let abbreviation_argument_of_entity_external_datastructure_tuple str =
  let low_str = String.lowercase str in
  match low_str with 
  | "couple_caml" -> "coc"
  | "doublet" -> "dou"
  | "doublet_list" -> "dol"
  | "doublet_tree" -> "dot"
  | "duo" -> "duo"
  | "singlet" -> "sin"
  | "trio" -> "tri"
  | "triplet" -> "trp"
  | str -> Error_messages_v.print_fatal_error nam_cod 
	"abbreviation_argument_of_entity_external_datastructure_tuple"
        (Format.sprintf "string >%s< were defined" str)
        "it is NOT defined" "Check or add it"
;;

let abbreviation_argument_of_entity_external_datastructure_tuple_recursive str =
  let low_str = String.lowercase str in
  match low_str with 
  | "capped_list" -> "cal"
  | "capped_tree" -> "cat"
  | "tree_footed_capped" -> "tfc"
  | "tree_leafed" -> "tle"
  | "tree_leafed_capped" -> "tlc"
  | "triplet_list" -> "tli"
  | str -> Error_messages_v.print_fatal_error nam_cod 
	"abbreviation_argument_of_entity_external_datastructure_tuple_recursive"
        (Format.sprintf "string >%s< were defined" str)
        "it is NOT defined" "Check or add it"
;;

let abbreviation_argument_of_entity_external_datastructure_symbol = function
  | Entity_external_datastructure_symbol_t.Recursive str ->
      abbreviation_argument_of_entity_external_datastructure_recursive str
  | Entity_external_datastructure_symbol_t.Tuple str ->
      abbreviation_argument_of_entity_external_datastructure_tuple str
  | Entity_external_datastructure_symbol_t.Tuple_recursive str ->
      abbreviation_argument_of_entity_external_datastructure_tuple_recursive str
;;

let abbreviation_argument_of_entity_external_tool_symbol = function
  | Entity_external_tool_symbol_t.Error_messages -> "erm"
  | Entity_external_tool_symbol_t.Messages -> "mes"
  | Entity_external_tool_symbol_t.Utils -> "uti"
;;

let abbreviation_argument_of_entity_external_symbol = function
  | Entity_external_symbol_t.Entity_external_constrained_symbol sym_exc ->
      abbreviation_argument_of_entity_external_constrained_symbol sym_exc

  | Entity_external_symbol_t.Entity_external_datastructure_symbol sym_exd -> 
      abbreviation_argument_of_entity_external_datastructure_symbol sym_exd

  | Entity_external_symbol_t.Entity_external_tool_symbol sym_ext -> 
      abbreviation_argument_of_entity_external_tool_symbol sym_ext 
;;

let abbreviation_argument_of_entity_fictive_basicnullary_symbol = function
  | Entity_fictive_basicnullary_symbol_t.Integer s -> "int"     
  | Entity_fictive_basicnullary_symbol_t.Integer_positive s -> "inp"      
  | Entity_fictive_basicnullary_symbol_t.Integer_nonnegative s -> "inn"     
  | Entity_fictive_basicnullary_symbol_t.Boolean s -> "bol"
  | Entity_fictive_basicnullary_symbol_t.String s -> "str"
  | Entity_fictive_basicnullary_symbol_t.Float s -> "flo"
  | Entity_fictive_basicnullary_symbol_t.Float_positive s -> "flp" 
  | Entity_fictive_basicnullary_symbol_t.Float_zero_pi s -> "flz"
  | Entity_fictive_basicnullary_symbol_t.Float_zero_twopi s -> "fzt"
;;

let abbreviation_argument_of_entity_fictive_symbol = function
  | Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol sym_efb ->
      abbreviation_argument_of_entity_fictive_basicnullary_symbol sym_efb

  | Entity_fictive_symbol_t.Entity_fictive_nullary_symbol sym_efn ->
      let str_efn = Entity_fictive_nullary_symbol_v.string_off sym_efn in
      Abbreviation_default_v.abbreviation_default_argument_of_string str_efn
;;

let abbreviation_argument_of_entity_proper_with_sons = function
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
  | "triangle_isoceles" -> "tis"
  | s -> 
      Abbreviation_default_v.abbreviation_default_argument_of_string s
;;

let abbreviation_argument_of_entity_proper_with_one_son s =
      Abbreviation_default_v.abbreviation_default_argument_of_string s
;;

let abbreviation_argument_of_entity_proper_symbol = function
  | Entity_proper_symbol_t.Entity_proper_with_one_son s ->
      abbreviation_argument_of_entity_proper_with_one_son s

  | Entity_proper_symbol_t.Entity_proper_with_sons s ->
      abbreviation_argument_of_entity_proper_with_sons s
;;

let abbreviation_argument_of_entity_symbol = function
  | Entity_symbol_t.Entity_external_symbol sym_enx -> 
      abbreviation_argument_of_entity_external_symbol sym_enx

  | Entity_symbol_t.Entity_fictive_symbol sym_enf -> 
      abbreviation_argument_of_entity_fictive_symbol sym_enf
 
  | Entity_symbol_t.Entity_proper_symbol sym_enp -> 
      abbreviation_argument_of_entity_proper_symbol sym_enp
;;

