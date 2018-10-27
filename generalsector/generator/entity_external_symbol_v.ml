(** {3 The functionalities for a Symbol for an Entity_referebce.}  *)

let nam_cod = "entity_external_symbol_v.ml";;

(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Exs_t = Entity_external_symbol_t
module Lst_v = List_v
module Str_v = String_v

(** {6 Making.} *)

let make_of_entity_external_tool_symbol ext =
   Exs_t.Entity_external_tool_symbol ext
;;

let make_of_entity_external_type_symbol ext =
  Exs_t.Entity_external_type_symbol ext
;;

let make_of_entity_external_datastructure_symbol exd =
  Exs_t.Entity_external_datastructure_symbol exd
;;

let entity_external_type_symbol_of_string = function   
  | "index" -> Exs_t.Index
  | "ordinal" -> Exs_t.Ordinal
  | s -> failwith "Not_entity_external_type"
;;

let entity_external_tool_symbol_of_string = function   
  | "error_messages" -> Exs_t.Error_messages
  | "messages" -> Exs_t.Messages
  | "string_frames" -> Exs_t.String_frames
  | "utils" -> Exs_t.Utils
  | s -> failwith "Not_entity_external_tool"
;;

let entity_external_datastructure_symbol_of_string = function   
  | "doublet" -> Exs_t.Doublet
  | "list_frames" -> Exs_t.List_frames
  | "tree" -> Exs_t.Tree
  | "triplet" -> Exs_t.Triplet
  | s -> failwith "Not_entity_external_datastructure"
;;

let make = function   
  | "empty" -> Exs_t.Empty
  | str ->
      try make_of_entity_external_datastructure_symbol (entity_external_datastructure_symbol_of_string str)
      with Failure "Not_entity_external_datastructure" ->
	try make_of_entity_external_tool_symbol (entity_external_tool_symbol_of_string str) 
	with Failure "Not_entity_external_tool" ->
	  try make_of_entity_external_type_symbol (entity_external_type_symbol_of_string str) 
	  with Failure "Not_entity_external_type" ->
	    Erm_v.print_fatal_error nam_cod "make" "entity_external" str "check"
;;
let entity_external_symbol_of_string str = make str;;

(** {6 Displaying.} *)

let name_entity_external_tool_symbol = function
  | Exs_t.Error_messages -> "error_messages"
  | Exs_t.Messages -> "messages"
  | Exs_t.String_frames -> "string_frames"
  | Exs_t.Utils -> "utils"
;;

let name_entity_external_type_symbol = function
  | Exs_t.Index -> "index"
  | Exs_t.Ordinal -> "ordinal"
;;
     
let name_entity_external_datastructure_symbol = function
  | Exs_t.Doublet -> "doublet"
  | Exs_t.List_frames -> "list_frames"
  | Exs_t.Pair -> "pair"
  | Exs_t.Tree -> "tree"
  | Exs_t.Trio -> "trio"
  | Exs_t.Triplet -> "triplet"
;;

let name = function
  | Exs_t.Entity_external_type_symbol s ->
      name_entity_external_type_symbol s
  | Exs_t.Entity_external_tool_symbol s ->
      name_entity_external_tool_symbol s
  | Exs_t.Entity_external_datastructure_symbol s ->
      name_entity_external_datastructure_symbol s
  | Exs_t.Empty -> "empty"
;;

let name_capitalized smb_enr =
  let nam_enr = name smb_enr in
  String.capitalize nam_enr
;; 

let key smb_enr =
  Key_v.make "entity" (name smb_enr)
;;

(** {6 Querying.} *)

let is_entity_external_symbol_off_string = function
  | "doublet" -> true
  | "empty" -> true
  | "error_messages" -> true
  | "index" -> true
  | "list_frames" -> true
  | "messages" -> true
  | "ordinal" -> true
  | "pair" -> true
  | "string_frames" -> true
  | "tree" -> true
  | "trio" -> true
  | "triplet" -> true
  | "utils" -> true
  | _ -> false
;;

(** {6 Extracting} *)

let entity_external_datastructure_symbol_off_entity_external_symbol = function
  | Exs_t.Entity_external_datastructure_symbol smb_dst -> smb_dst
  | s -> Erm_v.print_fatal_error nam_cod 
	"entity_external_datastructure_symbol_off_entity_symbol"
	"Entity_external_datastructure_symbol"
	(name s) "check"
;;
 
