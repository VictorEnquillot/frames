(** {3 The functionalities for a Symbol for a Caml Codefile for Frames}  *)

let nam_cod = "codefile_symbol_v.ml";;

(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Cfs_t = Codefile_symbol_t
module Msu_v = Codefile_suffix_v

(** {6 Querying off String.} *)

let is_codefile_symbol_off_string = function
  | "type" 
  | "empty" 
  | "implementation" 
  | "interface" -> true
  | s -> false
;;

(** {6 Making.} *)

let make = function
  | "type" -> Cfs_t.Type_symbol
  | "empty" -> Cfs_t.Empty
  | "implementation" -> Cfs_t.Implementation_symbol
  | "interface" -> Cfs_t.Interface_symbol
  | s -> Erm_v.print_fatal_error nam_cod
	"make"
	"type|implementation|interface|provider"
	s "check"
;;

(** {6 Displaying.} *)

let name = function
  | Cfs_t.Empty -> "empty"
  | Cfs_t.Type_symbol -> "type"
  | Cfs_t.Implementation_symbol -> "implementation"
  | Cfs_t.Interface_symbol -> "interface"
;;

let file_extension = function
  | Cfs_t.Empty -> ""
  | Cfs_t.Type_symbol -> "ml"
  | Cfs_t.Implementation_symbol -> "ml"
  | Cfs_t.Interface_symbol -> "mli"
;;

let key smb_cfi =
  Key_v.make "codefile" (name smb_cfi)
;;

(** {6 Upgrading} *)

let codefile_empty = Cfs_t.Empty;;
let codefile_type = Cfs_t.Type_symbol;;
let codefile_implementation = Cfs_t.Implementation_symbol;;
let codefile_interface = Cfs_t.Interface_symbol;;

