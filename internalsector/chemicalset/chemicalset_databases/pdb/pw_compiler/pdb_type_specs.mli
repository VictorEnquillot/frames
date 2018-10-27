(* $Id: pdb_type_specs.mli,v 1.2 2007-06-01 06:59:48 weis Exp $ *)

(** The AST of pdb specification files. *)

module type PRIVATE_TYPES = sig

  type type_name = private
     | Type_name of string
  ;;

  val type_name : string -> type_name
  ;;

  type constructor_name = private
     | Constructor_name of string
  ;;

  val constructor_name : string -> constructor_name
  ;;

end;;

module Private_types : PRIVATE_TYPES;;

open Private_types;;

type doc = string list
;;

type enum_type_definition = {
  type_name : type_name;
  constructors : constructor list;
  type_doc : doc;
}

and constructor = {
  constructor_name : constructor_name;
  constructor_doc : doc;
  constructor_arguments : type_name list;
};;

type pdb_type_definition = {
  pdb_type_name : type_name;
  pdb_types : enum_type_definition list;
  pdb_type_doc : doc;
}
;;
