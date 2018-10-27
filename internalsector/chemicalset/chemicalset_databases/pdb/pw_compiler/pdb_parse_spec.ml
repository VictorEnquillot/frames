(** The module that parses pdb type specification files. *)

(* $Id: pdb_parse_spec.ml,v 1.2 2007-06-01 06:59:48 weis Exp $ *)

open Pdb_type_specs;;
open Private_types;;

let debug s =
  if Mode_flags.get_debug_mode () then prerr_endline s;;

(* stops when
   the next line is empty, or
   the next line does not start by a space. *)
let scan_doc ib =
debug "scan_doc";
  let rec scan accu =
debug "scan_doc_scan";
    if Scanf.Scanning.end_of_input ib then List.rev accu else
    Scanf.bscanf ib "%0c" (function
    | ' ' ->
      Scanf.bscanf ib " %s@\n"
        (fun doc ->
debug (Printf.sprintf "Seen doc:\n  %s" doc);
         scan (doc :: accu))
    | _ -> List.rev accu) in
  if Scanf.Scanning.end_of_input ib then [] else
  Scanf.bscanf ib "%0c" (function
  | ' ' -> scan []
  | '\n' -> Scanf.bscanf ib "%_c" []
  | _ -> [])
;;

let scan_constructor ib =
debug "scan_constructor";
  Scanf.bscanf ib " %s@\t" (fun cn ->
debug cn;
    { constructor_name = constructor_name cn;
      constructor_doc = scan_doc ib;
      constructor_arguments = []; })
;;

let expand_constructor_n c cs =
  let add_string_to_constructor cn s =
      constructor_name (cn ^ s) in
  let add_char_to_constructor cn c =
      add_string_to_constructor cn (String.make 1 c) in
  let Constructor_name cn = c.constructor_name in
  let len = String.length cn in
  if len = 6 && cn.[len - 1] = 'n' then
    let c_no_n = String.sub cn 0 (len -1) in
    {c with constructor_name = add_char_to_constructor c_no_n '1'} ::
    {c with constructor_name = add_char_to_constructor c_no_n '2'} ::
    {c with constructor_name = add_char_to_constructor c_no_n '3'} :: cs else
  if cn.[len - 1] = ')' then
    Scanf.sscanf cn "%s@(%s@)" (fun cn args ->
      if String.length args = 1 then
        { c with
          constructor_name =
            constructor_name (Printf.sprintf "%s_%s" cn args);
          constructor_arguments = [type_name args] } :: cs else
        Scanf.sscanf args "%s@,%s" (fun arg1 arg2 ->
           { c with
             constructor_name =
               constructor_name (Printf.sprintf "%s_%s_%s" cn arg1 arg2);
             constructor_arguments = [type_name arg1; type_name arg2] } :: cs
        )
    )
  else c :: cs
;;

let rec scan_constructor_list ib =
debug "scan_constructor_list";
if Scanf.Scanning.end_of_input ib then [] else
  Scanf.bscanf ib "%0c" (function
  | '\n' ->
    Scanf.bscanf ib " " []
  | _ ->
    let c = scan_constructor ib in
    let cs = scan_constructor_list ib in
    expand_constructor_n c cs)
;;

let scan_enum_type_definition ib =
debug "scan_enum_type_definition";
  Scanf.bscanf ib " %[^\n]%_[\n]" (fun tn ->
debug tn;
  let doc = scan_doc ib in
  Scanf.bscanf ib "%0c" (function
  | '\n' -> Scanf.bscanf ib "%_c" ()
  | _ -> ());
  { type_name = type_name tn;
    constructors = scan_constructor_list ib;
    type_doc = doc;
  })
;;

let rec scan_enum_type_definition_list ib =
debug "scan_enum_type_definition_list";
  if Scanf.Scanning.end_of_input ib then [] else
  let td = scan_enum_type_definition ib in
  td :: scan_enum_type_definition_list ib
;;

let parse_pdb_single_type_definition = scan_enum_type_definition;;

let parse_pdb_multi_type_definition ib =
debug "scan_pdb_type_definition";
  Scanf.bscanf ib " %[^\n]%_[\n]" (fun tn ->
debug tn;
 let doc = scan_doc ib in
 { pdb_type_name = type_name tn;
   pdb_types = scan_enum_type_definition_list ib;
   pdb_type_doc = doc;
 })
;;
