(* $Id: pdb_type_specs.ml,v 1.2 2007-06-01 06:59:48 weis Exp $ *)


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


  type type_name =
     | Type_name of string
  ;;

  let identify_string s =
    let b = Buffer.create (String.length s) in
    for i = 0 to String.length s - 1 do
      let c = s.[i] in
      match c with
      | ' ' -> Buffer.add_char b '_'
      | '+' -> Buffer.add_string b "Plus"
      | c -> Buffer.add_char b c
    done;
    Buffer.contents b
  ;;

  let type_name_of_string s =
    String.lowercase (identify_string s)
  ;;

  let type_name s = Type_name (type_name_of_string s)
  ;;

  type constructor_name =
     | Constructor_name of string
  ;;

  let constructor_name_of_string s =
    String.capitalize (identify_string s)
  ;;

  let constructor_name s = Constructor_name (constructor_name_of_string s)
  ;;

end;;

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
