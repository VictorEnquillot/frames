(** {3 The functionalities for a Symbol for an Entity.}  *)

let nam_cod = "entity_symbol_v.ml";;

(** {6 Modules.} *)

module Abd_v = Abbreviation_default_v
module End_v = Entity_data_v
module Edp_v = Entity_data_provider_v
module Ens_t = Entity_symbol_t
module Erm_v = Error_messages_v
module Exs_v = Entity_external_symbol_v
module Mes_v = Messages_v
module Str_v = String_v

(** {6 Querying off string.} *)

let is_entity_proper_datastructure_symbol_off_string str =
  End_v.is_datastructure_off_entityname str
;;

let is_entity_local_symbol_off_string str = 
  let dat_ent = Edp_v.provide str in
  List.length dat_ent > 0
;;

let is_entity_external_symbol_off_string str = 
  Exs_v.is_entity_external_symbol_off_string str
;;

let is_entity_proper_symbol_off_string str = 
  (is_entity_proper_datastructure_symbol_off_string str)
||
  (is_entity_local_symbol_off_string str)
;;

let is_entity_barebasic_symbol_off_string = function 
  | "string" 
  | "integer"
  | "float" 
  | "boolean" -> true
  | _ -> false
;;

let is_entity_fictive_symbol_off_string str =
  not (is_entity_proper_symbol_off_string str)
    &&
  not (is_entity_external_symbol_off_string str)
;;

let is_entity_bare_symbol_off_string str =
  (is_entity_fictive_symbol_off_string str)
    &&  
  not (is_entity_barebasic_symbol_off_string str)
;;

(** {6 Upgrading.} *)

let entity_fictive_symbol_of_entity_barebasic_symbol smb_ebb =
  Ens_t.Entity_barebasic_symbol smb_ebb
;;

let entity_fictive_symbol_of_entity_bare_symbol smb_eba =
  Ens_t.Entity_bare_symbol smb_eba
;;

let entity_symbol_of_entity_fictive_symbol smb_efv =
  Ens_t.Entity_fictive_symbol smb_efv
;;

let entity_symbol_of_entity_barebasic_symbol smb_ebb =
  let smb_efv = 
    entity_fictive_symbol_of_entity_barebasic_symbol smb_ebb
  in
  Ens_t.Entity_fictive_symbol smb_efv
;;

let entity_proper_symbol_of_entity_external_symbol smb_enr =
  Ens_t.Entity_external_symbol smb_enr
;;

let entity_proper_symbol_of_entity_local_symbol smb_enl =
  Ens_t.Entity_local_symbol smb_enl
;;

let entity_symbol_of_entity_proper_symbol smb_epr =
  Ens_t.Entity_proper_symbol smb_epr
;;

let entity_proper_symbol_of_entity_proper_datastructure_symbol smb_end =
  Ens_t.Entity_proper_datastructure_symbol smb_end
;;

let entity_symbol_of_entity_proper_datastructure_symbol smb_end =
  Ens_t.Entity_proper_symbol 
    (entity_proper_symbol_of_entity_proper_datastructure_symbol smb_end)
;;

let entity_external_datastructure_symbol_of_entity_proper_datastructure_symbol nam_ent =
  let knd_dst = End_v.datastructure_kind_of_entityname nam_ent in
  Exs_v.entity_external_datastructure_symbol_of_string knd_dst
;;

let entity_external_symbol_of_entity_proper_datastructure_symbol nam_ent =
  let smb_exd = 
    entity_external_datastructure_symbol_of_entity_proper_datastructure_symbol 
      nam_ent in
  Exs_v.make_of_entity_external_datastructure_symbol smb_exd
;;

let entity_symbol_of_entity_external_symbol smb_enr =
 Ens_t.Entity_external_symbol smb_enr
;;

let entity_symbol_of_entity_proper_datastructure_symbol nam_ent =
  let smb_ext = 
    entity_external_symbol_of_entity_proper_datastructure_symbol 
      nam_ent in
  entity_symbol_of_entity_external_symbol smb_ext
;;

let entity_symbol_of_entity_local_symbol smb_enl =
  let smb_epr =
    entity_proper_symbol_of_entity_local_symbol smb_enl
  in
  entity_symbol_of_entity_proper_symbol smb_epr
;;

(** {6 Making.} *)

let entity_barebasic_symbol_of_string = function 
  | "string" -> Ens_t.String
  | "integer" -> Ens_t.Integer
  | "float" -> Ens_t.Float
  | "boolean" -> Ens_t.Boolean
  | s -> 
      Erm_v.print_fatal_error nam_cod
	"entity_barebasic_symbol_of_string"
	"string|integer|float|boolean"
	(Format.sprintf ">%s<" s)
	"check"
;;

let entity_external_symbol_of_string str =
  Exs_v.entity_external_symbol_of_string str
;; 

let entity_fictive_symbol_of_string = function
  | s when is_entity_barebasic_symbol_off_string s ->
      let smb_ebb = entity_barebasic_symbol_of_string s in
       Ens_t.Entity_barebasic_symbol smb_ebb 

  | s when not (is_entity_proper_symbol_off_string s) -> (* bare *) 
      Ens_t.Entity_bare_symbol s

  | str -> 
      Erm_v.print_fatal_error nam_cod
	"entity_fictive_symbol_of_xstring"
	"entity_fictive_symbol" str "check"
;;

let entity_proper_symbol_of_string = function
  | s when is_entity_proper_datastructure_symbol_off_string s ->
      Ens_t.Entity_proper_datastructure_symbol s

  | s when is_entity_local_symbol_off_string s ->
       Ens_t.Entity_local_symbol s

  | str -> 
      Erm_v.print_fatal_error nam_cod
	"entity_barebasic_symbol_of_string"
	"string|integer|float|boolean"
	(Format.sprintf ">%s<" str)
	"check"
;;

let make = function  
  | s when is_entity_proper_symbol_off_string s ->
      let smb_enp = entity_proper_symbol_of_string s in
      entity_symbol_of_entity_proper_symbol smb_enp

  | s when is_entity_fictive_symbol_off_string s ->
      let smb_enp = entity_fictive_symbol_of_string s in
      entity_symbol_of_entity_fictive_symbol smb_enp

  | s when Exs_v.is_entity_external_symbol_off_string s ->
      Ens_t.Entity_external_symbol (Exs_v.make s)

  | str -> 
      Erm_v.print_fatal_error nam_cod
	"make"
	"entity_symbol" str "check"
;;

(** {6 Displaying.} *)

let name_of_entity_bare_symbol str = String.uncapitalize str;;

let name_of_entity_barebasic_symbol = function
  | Ens_t.String -> "string"
  | Ens_t.Integer -> "integer"
  | Ens_t.Float -> "float"
  | Ens_t.Boolean -> "boolean"
;;

let name_of_entity_fictive_symbol = function
  | Ens_t.Entity_barebasic_symbol smb_ebb ->
      name_of_entity_barebasic_symbol smb_ebb
  | Ens_t.Entity_bare_symbol str -> 
      String.uncapitalize str
;;

let name_of_entity_local_symbol smb_enl = 
  smb_enl
;;

let name_of_entity_external_symbol smb_enr = 
  Exs_v.name smb_enr 
;;

let name_of_entity_proper_symbol = function
  | Ens_t.Entity_proper_datastructure_symbol str -> 
      String.uncapitalize str
  | Ens_t.Entity_local_symbol str -> 
      String.uncapitalize str
;;

let name = function
  | Ens_t.Entity_fictive_symbol smb_efv -> 
      name_of_entity_fictive_symbol smb_efv

  | Ens_t.Entity_proper_symbol str ->
      name_of_entity_proper_symbol str

  | Ens_t.Entity_external_symbol smb_enr ->
      name_of_entity_external_symbol smb_enr
;;

let name_capitalized smb_ent =
  let nam_ent = name smb_ent in
  String.capitalize nam_ent
;; 

let key smb_ent =
  Key_v.make "entity" (name smb_ent)
;;

let entityname_off_entity_proper_symbol smb_epr =
  name_of_entity_proper_symbol smb_epr
;;
 
let entityname_off_entity_fictive_symbol smb_efv =
  name_of_entity_fictive_symbol smb_efv
;;

let entityname_off_entity_symbol smb_ent =
  name smb_ent
;;
 
(** {6 Querying.} *)
 
let is_datastructure_off_entity_proper_symbol = function
  | Ens_t.Entity_proper_datastructure_symbol smb_end -> true
  | _ -> false
;;

let is_datastructure_off_entity_symbol = function
  | Ens_t.Entity_proper_symbol smb_epr ->
      is_datastructure_off_entity_proper_symbol smb_epr
  | _ -> false
;;

let is_entity_barebasic_symbol_off_entity_fictive_symbol = function
  | Ens_t.Entity_barebasic_symbol _ -> true
  | Ens_t.Entity_bare_symbol _ -> false
;;

let is_entity_bare_symbol_off_entity_fictive_symbol = function
  | Ens_t.Entity_barebasic_symbol _ -> false
  | Ens_t.Entity_bare_symbol _ -> true
;;

let is_entity_barebasic_symbol_off_entity_symbol = function 
  | Ens_t.Entity_fictive_symbol smb_efv -> 
      is_entity_barebasic_symbol_off_entity_fictive_symbol smb_efv
  | _ -> false
;;

let is_entity_bare_symbol_off_entity_symbol = function 
  | Ens_t.Entity_fictive_symbol smb_efv -> 
      is_entity_bare_symbol_off_entity_fictive_symbol smb_efv
  | _ -> false
;;

let is_entity_local_symbol_off_entity_proper_symbol = function 
  | Ens_t.Entity_local_symbol _ -> true
  | _ -> false
;;

let is_entity_external_symbol_off_entity_symbol = function 
  | Ens_t.Entity_external_symbol _ -> true
  | _ -> false
;;

let is_entity_proper_datastructure_symbol_off_entity_proper_symbol = function 
  | Ens_t.Entity_proper_datastructure_symbol _ -> true
  | _ -> false
;;

let is_entity_proper_symbol_off_entity_symbol = function 
  | Ens_t.Entity_proper_symbol _ -> true
  | _ -> false
;;

(** {6 Extracting} *)

let entity_external_symbol_off_entity_symbol = function
  | Ens_t.Entity_external_symbol smb_ext -> smb_ext
  | s -> Erm_v.print_fatal_error nam_cod 
	"entity_external_symbol_off_entity_symbol"
	"Entity_external_symbol"
	(name s) "check"
;;
 
let entity_external_datastructure_symbol_off_entity_symbol smb_ent =
  let smb_ext = entity_external_symbol_off_entity_symbol smb_ent in
  Exs_v.entity_external_datastructure_symbol_off_entity_external_symbol smb_ext
;;
