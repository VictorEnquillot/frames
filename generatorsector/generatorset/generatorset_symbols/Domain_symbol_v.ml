(** {3 The Symbol for a Domain_symbol}  *)
(**   "Author : François Colonna 31 octobre 2018 at 11:21:12+01:00"; *)

(** {6 see ~/sources/ocaml/frames/Architecture/diagrams/Presentation.pdf} *)

let name = function
  | Domain_symbol_t.Common -> "common"
  | Domain_symbol_t.Database -> "database"
  | Domain_symbol_t.Elementary -> "elementary"
  | Domain_symbol_t.Figure -> "figure"
  | Domain_symbol_t.General -> "general"
  | Domain_symbol_t.Generator -> "generator"
  | Domain_symbol_t.Localinput -> "localinput"
  | Domain_symbol_t.Operator -> "operator"
  | Domain_symbol_t.Primitive -> "primitive"
  | Domain_symbol_t.Property -> "property"
  | Domain_symbol_t.Prototype -> "prototype"
  | Domain_symbol_t.Skeleton -> "skeleton"
  | Domain_symbol_t.Wavefunction -> "wavefunction"
;;

let longname sym_dom = 
  "Camlline_datastructure_function_symbol_t." ^ (String.capitalize_ascii (name sym_dom))
;;

let string_off sym_dom = "";;

let make nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | "common" -> Domain_symbol_t.Common
  | "database" -> Domain_symbol_t.Database
  | "elementary" -> Domain_symbol_t.Elementary
  | "figure" -> Domain_symbol_t.Figure
  | "general" -> Domain_symbol_t.General
  | "generator" -> Domain_symbol_t.Generator
  | "localinput" -> Domain_symbol_t.Localinput
  | "operator" -> Domain_symbol_t.Operator
  | "primitive" -> Domain_symbol_t.Primitive
  | "property" -> Domain_symbol_t.Property
  | "prototype" -> Domain_symbol_t.Prototype
  | "skeleton" -> Domain_symbol_t.Skeleton
  | "wavefunction" -> Domain_symbol_t.Wavefunction
  | s -> failwith (Format.sprintf "Domain_symbol_v: Unknown Domain name >%s< add it to menu" s)
;;

let domain_symbol_of_list_index idx_dom =
  let nam_dom = Domain_name_by_ordinal_provider_v.provide idx_dom in
  make nam_dom
;;


let list_index_of_domain_symbol sym_dom =
  let nam_dom = name sym_dom in
  let ord_dom = Domain_ordinal_by_domain_name_provider_v.provide nam_dom in
  ord_dom -1
;;  
    
let abbreviation = function
  | Domain_symbol_t.Common -> "Com"
  | Domain_symbol_t.Database -> "Dat"
  | Domain_symbol_t.Elementary -> "Ele"
  | Domain_symbol_t.Figure -> "Fig"
  | Domain_symbol_t.General -> "Gen"
  | Domain_symbol_t.Generator -> "Gtr"
  | Domain_symbol_t.Localinput -> "Loc"
  | Domain_symbol_t.Operator -> "Ope"
  | Domain_symbol_t.Primitive -> "Pri"
  | Domain_symbol_t.Property -> "Prt"
  | Domain_symbol_t.Prototype -> "Pro"
  | Domain_symbol_t.Skeleton -> "Ske"
  | Domain_symbol_t.Wavefunction -> "Wav"
;;
