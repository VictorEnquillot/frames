(* $Id: pdb_print_spec.ml,v 1.2 2007-06-01 06:59:48 weis Exp $ *)

    definitions used in the Caml description of the pdb records and files
    that define proteins. *)

open Pdb_type_specs;;
open Private_types;;

open Format;;

let print_type_name ppf = function
  | Type_name tn -> fprintf ppf "%s" tn
;;

let print_constructor_name ppf = function
  | Constructor_name cn -> fprintf ppf "%s" cn
;;

let print_doc ppf =
  let print_docs ppf docs =
    List.iter (fun doc -> fprintf ppf "@ %s" doc) docs in
  function
  | [] -> ()
  | docs -> fprintf ppf "@ @[<hov 4>(**%a@ *)@]" print_docs docs
;;
  
let rec print_constructor_arguments ppf = function
  | [] -> ()
  | arg :: args ->
    fprintf ppf "%a" print_type_name arg;
    List.iter
     (function arg -> fprintf ppf " *@ %a" print_type_name arg) args
;;

let print_constructor ppf = function
  | { constructor_name = cn;
      constructor_doc = cd;
      constructor_arguments = args } ->
    match args with
    | [] ->
      fprintf ppf "@[<v 2>| %a%a@]" print_constructor_name cn print_doc cd
    | args ->
      fprintf ppf "@[<v 2>| %a of @[<2>%a@]%a@]"
        print_constructor_name cn
        print_constructor_arguments args
        print_doc cd
;;

let print_constructors ppf cl =
  let loop ppf = function
  | [] -> ()
  | c :: cl ->
    fprintf ppf "%a" print_constructor c;
    List.iter (fun c -> fprintf ppf "@ %a" print_constructor c) cl in
  fprintf ppf "@[<v>%a@]" loop cl
;;

let print_pdb_enum_type_definition ppf = function
  | { type_name = tn; constructors = cl; type_doc = doc; } ->
    fprintf ppf "@.@[<v>%a@]@.@[<v 3>type %a =@ %a@]@.;;@."
      print_doc doc
      print_type_name tn
      print_constructors cl  
;;

let constructor_name_of_type_name = function
  | Type_name tn -> constructor_name (String.capitalize tn)

let constructor_of_pdb_enum_type = function
  | { type_name = tn; constructors = _; type_doc = _; } ->
    {constructor_name = constructor_name_of_type_name tn;
     constructor_doc = [];
     constructor_arguments = [tn]; }

let print_pdb_type_definition ppf = function
  | { pdb_type_name = tn; pdb_types = tydefs; pdb_type_doc = doc; } ->
    List.iter (print_pdb_enum_type_definition ppf) tydefs;
    let cl =
      List.map constructor_of_pdb_enum_type tydefs in
    print_pdb_enum_type_definition ppf
      { type_name = tn; constructors = cl; type_doc = doc; }
;;

let add_pdb_single_spec b spec =
  print_pdb_enum_type_definition (formatter_of_buffer b) spec
;;

let add_pdb_multi_spec b spec =
  print_pdb_type_definition (formatter_of_buffer b) spec
;;
