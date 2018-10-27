(** {3 The functionalities for a Symbol for a Grouping_polypeptide_sidegroup.} *)

let nam_cod = "grouping_polypeptide_sidegroup_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Grouping_polypeptide_sidegroup_symbol_t.Benzyl -> "benzyl"
  | Grouping_polypeptide_sidegroup_symbol_t.Dietheneamine -> "dietheneamine"
  | Grouping_polypeptide_sidegroup_symbol_t.Dimethenesmethyl -> "dimethenesmethyl"
  | Grouping_polypeptide_sidegroup_symbol_t.Methinedimethyl -> "methinedimethyl"
  | Grouping_polypeptide_sidegroup_symbol_t.Etheneacid -> "etheneacid"
  | Grouping_polypeptide_sidegroup_symbol_t.Etheneamide -> "etheneamide"
  | Grouping_polypeptide_sidegroup_symbol_t.Metheneacid -> "metheneacid"
  | Grouping_polypeptide_sidegroup_symbol_t.Metheneamide -> "metheneamide"
  | Grouping_polypeptide_sidegroup_symbol_t.Metheneimidazole -> "metheneimidazole"
  | Grouping_polypeptide_sidegroup_symbol_t.Methenemethinedimethyl -> "methenemethinedimethyl"
  | Grouping_polypeptide_sidegroup_symbol_t.Methenephenol -> "methenephenol"
  | Grouping_polypeptide_sidegroup_symbol_t.Methenethiol -> "methenethiol"
  | Grouping_polypeptide_sidegroup_symbol_t.Metheneindole -> "metheneindole"
  | Grouping_polypeptide_sidegroup_symbol_t.Methenol -> "methenol"
  | Grouping_polypeptide_sidegroup_symbol_t.Methineethylmethyl -> "methineethylmethyl"
  | Grouping_polypeptide_sidegroup_symbol_t.Methinolmethyl -> "methinolmethyl"
  | Grouping_polypeptide_sidegroup_symbol_t.Methyl -> "methyl"
  | Grouping_polypeptide_sidegroup_symbol_t.Trimetheneguanidinium -> "trimetheneguanidinium"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let benzyl = Grouping_polypeptide_sidegroup_symbol_t.Benzyl;;

let dietheneamine = Grouping_polypeptide_sidegroup_symbol_t.Dietheneamine;;

let dimethenesmethyl = Grouping_polypeptide_sidegroup_symbol_t.Dimethenesmethyl;;

let methinedimethyl = Grouping_polypeptide_sidegroup_symbol_t.Methinedimethyl;;

let etheneacid = Grouping_polypeptide_sidegroup_symbol_t.Etheneacid;;

let etheneamide = Grouping_polypeptide_sidegroup_symbol_t.Etheneamide;;

let metheneacid = Grouping_polypeptide_sidegroup_symbol_t.Metheneacid;;

let metheneamide = Grouping_polypeptide_sidegroup_symbol_t.Metheneamide;;

let metheneimidazole = Grouping_polypeptide_sidegroup_symbol_t.Metheneimidazole;;

let methenemethinedimethyl = Grouping_polypeptide_sidegroup_symbol_t.Methenemethinedimethyl;;

let methenephenol = Grouping_polypeptide_sidegroup_symbol_t.Methenephenol;;

let methenethiol = Grouping_polypeptide_sidegroup_symbol_t.Methenethiol;;

let metheneindole = Grouping_polypeptide_sidegroup_symbol_t.Metheneindole;;

let methenol = Grouping_polypeptide_sidegroup_symbol_t.Methenol;;

let methineethylmethyl = Grouping_polypeptide_sidegroup_symbol_t.Methineethylmethyl;;

let methinolmethyl = Grouping_polypeptide_sidegroup_symbol_t.Methinolmethyl;;

let methyl = Grouping_polypeptide_sidegroup_symbol_t.Methyl;;

let trimetheneguanidinium = Grouping_polypeptide_sidegroup_symbol_t.Trimetheneguanidinium;;


(** {6 Making} *)


let make = function
  | "benzyl" -> benzyl
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "dietheneamine" -> dietheneamine
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "dimethenesmethyl" -> dimethenesmethyl
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "methinedimethyl" -> methinedimethyl
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "etheneacid" -> etheneacid
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "etheneamide" -> etheneamide
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "metheneacid" -> metheneacid
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "metheneamide" -> metheneamide
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "metheneimidazole" -> metheneimidazole
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "methenemethinedimethyl" -> methenemethinedimethyl
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "methenephenol" -> methenephenol
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "methenethiol" -> methenethiol
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "metheneindole" -> metheneindole
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "methenol" -> methenol
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "methineethylmethyl" -> methineethylmethyl
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "methinolmethyl" -> methinolmethyl
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "methyl" -> methyl
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "trimetheneguanidinium" -> trimetheneguanidinium
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator grouping_polypeptide_sidegroup implementation symbol at 17:27 1 Mar 2012. *)



