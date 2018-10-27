(** {3 The functionalities for a Symbol for a Grouping_bridged.} *)

let nam_cod = "grouping_bridged_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Grouping_bridged_symbol_t.Benzale -> "benzale"
  | Grouping_bridged_symbol_t.Benzole -> "benzole"
  | Grouping_bridged_symbol_t.Benzyl -> "benzyl"
  | Grouping_bridged_symbol_t.Indole -> "indole"
  | Grouping_bridged_symbol_t.Metheneimidazole -> "metheneimidazole"
  | Grouping_bridged_symbol_t.Metheneindole -> "metheneindole"
  | Grouping_bridged_symbol_t.Dimethonecarbonhydroxyldimethone -> "dimethonecarbonhydroxyldimethone"
  | Grouping_bridged_symbol_t.Dimethone -> "dimethone"
  | Grouping_bridged_symbol_t.Phenol -> "phenol"
  | Grouping_bridged_symbol_t.Pyrrole -> "pyrrole"
  | Grouping_bridged_symbol_t.Methenephenol -> "methenephenol"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let benzale = Grouping_bridged_symbol_t.Benzale;;

let benzole = Grouping_bridged_symbol_t.Benzole;;

let benzyl = Grouping_bridged_symbol_t.Benzyl;;

let indole = Grouping_bridged_symbol_t.Indole;;

let metheneimidazole = Grouping_bridged_symbol_t.Metheneimidazole;;

let metheneindole = Grouping_bridged_symbol_t.Metheneindole;;

let dimethonecarbonhydroxyldimethone = Grouping_bridged_symbol_t.Dimethonecarbonhydroxyldimethone;;

let dimethone = Grouping_bridged_symbol_t.Dimethone;;

let phenol = Grouping_bridged_symbol_t.Phenol;;

let pyrrole = Grouping_bridged_symbol_t.Pyrrole;;

let methenephenol = Grouping_bridged_symbol_t.Methenephenol;;


(** {6 Making} *)


let make = function
  | "benzale" -> benzale
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "benzole" -> benzole
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "benzyl" -> benzyl
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "indole" -> indole
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "metheneimidazole" -> metheneimidazole
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "metheneindole" -> metheneindole
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "dimethonecarbonhydroxyldimethone" -> dimethonecarbonhydroxyldimethone
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "dimethone" -> dimethone
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "phenol" -> phenol
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "pyrrole" -> pyrrole
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "methenephenol" -> methenephenol
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator grouping_bridged implementation symbol at 17:27 1 Mar 2012. *)



