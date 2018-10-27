(** {3 The functionalities for a Symbol for a Parameter.}  *)

let nam_cod = "parameter_symbol_v.ml";;

(** {6 Madules.} *)

module Erm_v = Error_messages_v
module Pas_t = Parameter_symbol_t

(** {6 Making.} *)

let make = function 
  | "entity_external_n_codefile_list" -> 
      Pas_t.File_symbol Pas_t.Entity_external_n_codefile_list

  | "module_scope" ->
      Pas_t.File_symbol Pas_t.Module_scope

  | s -> Erm_v.print_fatal_error nam_cod
	"make" "entity_external_n_codefile_list" 
	(Format.sprintf ">%s<" s) "check or add it"
;;

(** {6 Displaying.} *)

let name_of_file_symbol = function
  | Pas_t.Module_scope -> 
      "file module_scope"

  | Pas_t.Entity_external_n_codefile_list -> 
      "file entity_external_n_codefile_list"
;;

let name = function 
  | Pas_t.File_symbol smb_fil ->
      name_of_file_symbol smb_fil
;;

(** {6 Abbreviating.} *)

let entity_external_n_codefile_list_file = Pas_t.File_symbol Pas_t.Entity_external_n_codefile_list;;
let module_scope_file = Pas_t.File_symbol Pas_t.Module_scope;;
