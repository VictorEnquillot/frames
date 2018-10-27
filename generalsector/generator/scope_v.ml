(** {3 The functionalities for the Scope for an Entity.}  *)

let nam_cod = "scope_v.ml";;

(** {6 Modules.} *)

module Dbt_v = Doublet_v
module Ens_v = Entity_symbol_v
module Cts_v = Category_symbol_v
module Enc_v = Entitycategory_v
module Erm_v = Error_messages_v
module Fio_v = Fileio_v
module Fln_v = Filename_p
module Pas_v = Parameter_symbol_v
module Pav_v = Parameter_value_v
module Pvp_v = Parameter_value_provider_v
module Scp_t = Scope_t
module Str_v = String_v

(** {6 Making.} *)

let make = function
  | "public" -> Scp_t.Scope_public
  | "private" -> Scp_t.Scope_private
  | s -> Erm_v.print_fatal_error nam_cod
	"make"
	"public|private"
	(Format.sprintf ">%s<" s) "check"
;;

(** {6 Displaying.} *)

let name = function
  | Scp_t.Scope_empty -> "empty"
  | Scp_t.Scope_public -> "public"
  | Scp_t.Scope_private -> "private"
;;

let scope_empty = Scp_t.Scope_empty;;
let scope_public = Scp_t.Scope_public;;
let scope_private = Scp_t.Scope_private;;
let scope_filename = 
  Pav_v.filename_off_parameter_value 
    (Pvp_v.provide Pas_v.module_scope_file)
;;

let entitycategory_private_scope_off_string = function
  | s when String.length s > 0 ->
      let w_l = Str_v.split_of_c ' ' s in
      if List.length w_l <> 2 
      then Erm_v.print_fatal_error nam_cod
	  "entitycategory_private_scope_off_string"
	  "2 elements separated by a > <"
	  (Format.sprintf ">%s<" s) "check"
      else
	begin
	  let nam_ent = List.nth w_l 0 in
	  let nam_cat = List.nth w_l 1 in
	  
	  let smb_ent = Ens_v.make nam_ent in
	  let smb_cat = Cts_v.make nam_cat in
	  
	  Enc_v.make smb_ent smb_cat
	end

  | s -> Erm_v.print_fatal_error nam_cod
	"entitycategory_private_scope_off_string"
	"2 words string like >ordinal symbol< "
	"Empty string" 
	(Format.sprintf "check scope file >%s<" (Fln_v.name scope_filename)) 
;;

let entitycategory_private_scope_list () =
  let par_scf = Pvp_v.provide Pas_v.module_scope_file in
  let fln = Pav_v.filename_off_parameter_value par_scf in
  if not (Fio_v.is_existing_of_filename fln)
  then Erm_v.print_fatal_error nam_cod
      "entitycategory_private_scope_list"
      (Format.sprintf "file >%s< exist" (Fln_v.name fln))
      "File not found" "check why file does not exit\n    or modify file name in parameter_value_v.ml"
  else
    let str_l = 
      List.filter (fun s -> s <> "" ) 
	(Fio_v.string_list_of_filename fln) 
    in
    
    List.map entitycategory_private_scope_off_string str_l
;;


