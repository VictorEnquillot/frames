(** {3 The functionalities for a Module Abbreviation.}  *)

let nam_cod = "Abbreviation_module_v.ml";;

(** {6 Modules.} *)



(** Conventions : 
    tri   t
    tetra q
    penta c
    hexa  s
    poly  x 
*)

(** {6 Module suffix.} *)

(* Improve move to Contentfile_symbol_v.ml ??? *)

let module_suffix_of_contentfile_symbol = function
  | Contentfile_symbol_t.Type_alone -> "_t"
  | Contentfile_symbol_t.Type_n_value -> "_p"
  | Contentfile_symbol_t.Value_alone -> "_v"
;;

(** {6 Category_symbol.} *)

let abbreviation_module_of_category_symbol = function
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

let abbreviation_module_of_entity_external_constrained_symbol sym_exc =
  let abb_arg = 
    Abbreviation_argument_v.abbreviation_argument_of_entity_external_constrained_symbol sym_exc
  in
  String.capitalize abb_arg
;;

let abbreviation_module_of_entity_external_datastructure_symbol sym_exd =
  let abb_arg = 
    Abbreviation_argument_v.abbreviation_argument_of_entity_external_datastructure_symbol sym_exd
  in
  String.capitalize abb_arg
;;

let abbreviation_module_of_entity_fictive_basicnullary_symbol = function
  | Entity_fictive_basicnullary_symbol_t.Integer s ->      
      (Abbreviation_default_v.abbreviation_default_module_of_string s) ^ "_i"
  | Entity_fictive_basicnullary_symbol_t.Integer_positive s ->      
      (Abbreviation_default_v.abbreviation_default_module_of_string s) ^ "_j"
  | Entity_fictive_basicnullary_symbol_t.Integer_nonnegative s ->      
      (Abbreviation_default_v.abbreviation_default_module_of_string s) ^ "_k"
  | Entity_fictive_basicnullary_symbol_t.Boolean s ->
      (Abbreviation_default_v.abbreviation_default_module_of_string s) ^ "_b"
  | Entity_fictive_basicnullary_symbol_t.String s -> 
      (Abbreviation_default_v.abbreviation_default_module_of_string s) ^ "_s"
  | Entity_fictive_basicnullary_symbol_t.Float s -> 
      (Abbreviation_default_v.abbreviation_default_module_of_string s) ^ "_f"
  | Entity_fictive_basicnullary_symbol_t.Float_positive s -> 
      (Abbreviation_default_v.abbreviation_default_module_of_string s) ^ "_g"
  | Entity_fictive_basicnullary_symbol_t.Float_zero_pi s -> 
      (Abbreviation_default_v.abbreviation_default_module_of_string s) ^ "_p"
  | Entity_fictive_basicnullary_symbol_t.Float_zero_twopi s -> 
      (Abbreviation_default_v.abbreviation_default_module_of_string s) ^ "_z"
;;

let abbreviation_module_of_entity_fictive_symbol = function
  | Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol sym_efb ->
      abbreviation_module_of_entity_fictive_basicnullary_symbol sym_efb

  | Entity_fictive_symbol_t.Entity_fictive_nullary_symbol sym_efn ->
      let nam_efn = Entity_fictive_nullary_symbol_v.string_off sym_efn in
      Abbreviation_default_v.abbreviation_default_module_of_string nam_efn
;;

let abbreviation_module_of_entity_proper_with_sons = function
  | "deoxyribonucleotide_purinic" -> "dpu"
  | "deoxyribonucleotide_pyrimidinic" -> "dpy"
  | "molecule_linear_pentatomic" -> "mlc"
  | "molecule_linear_polyatomic" -> "mlp"
  | "molecule_linear_tetratomic" -> "mlq"
  | "molecule_linear_triatomic" -> "mlt"
  | "nucleoside" -> "ns"
  | "nucleotide" -> "nt"
  | "polyglycine" -> "pg"
  | "polypeptide" -> "pd"
  | "polypeptide_regular" -> "pr"
  | "polyproline" -> "pp"
  | "purine_base" -> "pu"
  | "pyrimidine_base" -> "py"
  | "ribonucleotide_purinic" -> "rpu"
  | "ribonucleotide_pyrimidic" -> "rpy"
  | s -> 
      String.capitalize (Abbreviation_default_v.abbreviation_default_module_of_string s)
;;

let abbreviation_module_of_entity_proper_with_one_son s =
  String.capitalize (Abbreviation_default_v.abbreviation_default_module_of_string s)
;;

let abbreviation_module_of_entity_external_tool_symbol = function
  | Entity_external_tool_symbol_t.Error_messages -> "erm"
  | Entity_external_tool_symbol_t.Messages -> "mes"
  | Entity_external_tool_symbol_t.Utils -> "uti"
;;

let abbreviation_module_of_entity_external_symbol = function
  | Entity_external_symbol_t.Entity_external_constrained_symbol sym_exc ->
      abbreviation_module_of_entity_external_constrained_symbol sym_exc

  | Entity_external_symbol_t.Entity_external_datastructure_symbol sym_exd -> 
      abbreviation_module_of_entity_external_datastructure_symbol sym_exd

  | Entity_external_symbol_t.Entity_external_tool_symbol sym_ext -> 
      abbreviation_module_of_entity_external_tool_symbol sym_ext 
;;

let abbreviation_module_of_entity_proper_symbol = function
  | Entity_proper_symbol_t.Entity_proper_with_one_son s ->
      abbreviation_module_of_entity_proper_with_one_son s
  | Entity_proper_symbol_t.Entity_proper_with_sons s ->
      abbreviation_module_of_entity_proper_with_sons s 
;;

let abbreviation_module_of_entity_symbol = function
  | Entity_symbol_t.Entity_external_symbol sym_enx -> 
      abbreviation_module_of_entity_external_symbol sym_enx

  | Entity_symbol_t.Entity_fictive_symbol sym_enf -> 
      abbreviation_module_of_entity_fictive_symbol sym_enf
 
  | Entity_symbol_t.Entity_proper_symbol sym_enp  -> 
      abbreviation_module_of_entity_proper_symbol sym_enp
;;

(** ordinal -> Ord *)
(** atom -> At *)
(** xaa_yaa_zaa -> Xyz  *)

let abbreviation_module_of_category_symbol_of_entity_symbol sym_cat sym_ent =
  let abb_ent = abbreviation_module_of_entity_symbol sym_ent in 
  let abb_cat = abbreviation_module_of_category_symbol sym_cat in 

  match sym_ent with
    | Entity_symbol_t.Entity_fictive_symbol _ -> ""
    | _ ->  
	Format.sprintf "%s%s" abb_ent abb_cat
;;

let abbreviation_module_of_contentfile_symbol_of_category_symbol_of_entity_symbol sym_cof sym_cat sym_ent =
  let abm_ent = abbreviation_module_of_entity_symbol sym_ent in
  let abm_cat = abbreviation_module_of_category_symbol sym_cat in
  let mod_suf = module_suffix_of_contentfile_symbol sym_cof in
  Format.sprintf "%s%s%s" abm_ent abm_cat mod_suf
;;


(** string -> fails *)
(** atom_symbol -> Ats *)

(********* 
let abbreviation_module_of_constructor_symbol = function
  | Constructor_symbol_t.Constructor_proper_symbol
      (Constructor_symbol_t.Constructor_oneline_symbol
	 (Constructor_symbol_t.Constructor_external_symbol sym_enx)) ->
	   abbreviation_module_of_entity_external_symbol sym_enx

  | sym_cnt ->
      let str = Item_interface_symbol_v.name sym_cnt in
      let abb = String_v.first_characters_string_of_underscored_string str in
      match String.length abb with
      | 1 -> (String.capitalize abb) ^ (String.sub str 1 1)
      | _ -> (String.capitalize abb) 
;;
(** xaa_yaa_zaa -> Xyz  *)

**********)
