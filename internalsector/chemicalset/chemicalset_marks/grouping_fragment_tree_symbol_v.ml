(** {3 The functionalities for a Symbol for a Grouping_fragment_tree.} *)

let nam_cod = "grouping_fragment_tree_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Grouping_fragment_tree_symbol_t.Dimethinetrimethyl -> "dimethinetrimethyl"
  | Grouping_fragment_tree_symbol_t.Ethcaracidmethyllamine -> "ethcaracidmethyllamine"
  | Grouping_fragment_tree_symbol_t.Ethcaracidmethylramine -> "ethcaracidmethylramine"
  | Grouping_fragment_tree_symbol_t.Ethineacidlamine -> "ethineacidlamine"
  | Grouping_fragment_tree_symbol_t.Ethineacidramine -> "ethineacidramine"
  | Grouping_fragment_tree_symbol_t.Guanidine -> "guanidine"
  | Grouping_fragment_tree_symbol_t.Guanidinium -> "guanidinium"
  | Grouping_fragment_tree_symbol_t.Methenemethinedimethyl -> "methenemethinedimethyl"
  | Grouping_fragment_tree_symbol_t.Methinedimethyl -> "methinedimethyl"
  | Grouping_fragment_tree_symbol_t.Methineethylmethyl -> "methineethylmethyl"
  | Grouping_fragment_tree_symbol_t.Methinolmethyl -> "methinolmethyl"
  | Grouping_fragment_tree_symbol_t.Trimetheneguanidinium -> "trimetheneguanidinium"
  | Grouping_fragment_tree_symbol_t.Trimethinetetramethyl -> "trimethinetetramethyl"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let dimethinetrimethyl = Grouping_fragment_tree_symbol_t.Dimethinetrimethyl;;

let ethcaracidmethyllamine = Grouping_fragment_tree_symbol_t.Ethcaracidmethyllamine;;

let ethcaracidmethylramine = Grouping_fragment_tree_symbol_t.Ethcaracidmethylramine;;

let ethineacidlamine = Grouping_fragment_tree_symbol_t.Ethineacidlamine;;

let ethineacidramine = Grouping_fragment_tree_symbol_t.Ethineacidramine;;

let guanidine = Grouping_fragment_tree_symbol_t.Guanidine;;

let guanidinium = Grouping_fragment_tree_symbol_t.Guanidinium;;

let methenemethinedimethyl = Grouping_fragment_tree_symbol_t.Methenemethinedimethyl;;

let methinedimethyl = Grouping_fragment_tree_symbol_t.Methinedimethyl;;

let methineethylmethyl = Grouping_fragment_tree_symbol_t.Methineethylmethyl;;

let methinolmethyl = Grouping_fragment_tree_symbol_t.Methinolmethyl;;

let trimetheneguanidinium = Grouping_fragment_tree_symbol_t.Trimetheneguanidinium;;

let trimethinetetramethyl = Grouping_fragment_tree_symbol_t.Trimethinetetramethyl;;


(** {6 Making} *)


let make = function
  | "dimethinetrimethyl" -> dimethinetrimethyl
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "ethcaracidmethyllamine" -> ethcaracidmethyllamine
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "ethcaracidmethylramine" -> ethcaracidmethylramine
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "ethineacidlamine" -> ethineacidlamine
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "ethineacidramine" -> ethineacidramine
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "guanidine" -> guanidine
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "guanidinium" -> guanidinium
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "methenemethinedimethyl" -> methenemethinedimethyl
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "methinedimethyl" -> methinedimethyl
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
  | "trimetheneguanidinium" -> trimetheneguanidinium
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "trimethinetetramethyl" -> trimethinetetramethyl
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator grouping_fragment_tree implementation symbol at 17:27 1 Mar 2012. *)



