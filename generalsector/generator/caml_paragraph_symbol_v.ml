(** {3 The Symbol for a Paragraph of Caml_line in an Item.}  *)

let nam_cod = "caml_paragraph_symbol_v.ml";;

(** {6 Modules.} *)

module Cnm_v = Constructor_tag_v
module Cnp_v = Constructor_path_v
module Cns_t = Constructor_symbol_t
module Cns_v = Constructor_symbol_v
module Cpc_v = Caml_paragraph_context_v
module Cps_t = Caml_paragraph_symbol_t
module Erm_v = Error_messages_v
module Cts_t = Category_symbol_t
module Cts_v = Category_symbol_v
module Dbt_v = Doublet_v
module Its_t = Item_symbol_t
module Its_v = Item_symbol_v
module Kyl_v = Key_list_v
module Cfs_t = Codefile_symbol_t
module Cfs_v = Codefile_symbol_v
module Trp_v = Triplet_v

(** {6 Making.} *)

(** {6 Upgrading.} *)

let codefile_name ecc = Cps_t.Codefile_name_symbol ecc;;
let empty ecc = Cps_t.Empty_symbol ecc;;
let ending ecc = Cps_t.Ending_symbol ecc;;
let heading ecc = Cps_t.Heading_symbol ecc;;

let functions_definitions smb =
  Cps_t.Functions_definitions_symbol smb
;;

let function_constant ecc_l = 
  functions_definitions (Cps_t.Function_constant_symbol ecc_l)
;;

let function_argument smb =
  functions_definitions (Cps_t.Function_argument_symbol smb)
;;

let function_function smb =
  functions_definitions (Cps_t.Function_function_symbol smb)
;;

let function_name_argument ecc_l = 
  function_argument (Cps_t.Function_name_argument ecc_l)
;;

let function_print_argument ecc_l =
  function_argument (Cps_t.Function_print_argument ecc_l)
;;

let function_t_of_s_argument ecc_l = 
  function_argument (Cps_t.Function_t_of_s_argument ecc_l)
;;

let function_t_of_b_argument ecc_l = 
  function_argument (Cps_t.Function_t_of_b_argument ecc_l)
;;

let function_b_off_t_t_argument ecc_l =
  function_argument (Cps_t.Function_b_off_t_t_argument ecc_l)
;;

let function_s_off_t_t_argument_datastructure ecc_l =
  function_argument (Cps_t.Function_s_off_t_t_datastructure_argument ecc_l)
;;

let function_s_off_t_t_argument_datastructure ecc_l = 
  function_argument (Cps_t.Function_s_off_t_t_datastructure_argument ecc_l)
;;

let function_name_function ecc_l = 
  function_function (Cps_t.Function_name_function ecc_l)
;;

let function_print_function ecc_l =
  function_function (Cps_t.Function_print_function ecc_l)
;;

let function_s_off_t_function ecc_l = 
  function_function (Cps_t.Function_s_off_t_function ecc_l)
;;

let function_is_b_off_t_t_argument ecc_l = 
  function_argument (Cps_t.Function_is_b_off_t_t_argument ecc_l)
;;

let function_is_s_off_t_function ecc_l = 
  function_function (Cps_t.Function_is_s_off_t_function ecc_l)
;;

let modules_definitions smb = Cps_t.Modules_definitions_symbol smb;;

let modules_type_definitions smb = 
  modules_definitions (Cps_t.Modules_type_definitions_symbol smb)
;;

let modules_implementation_definitions smb = 
  modules_definitions (Cps_t.Modules_implementation_definitions_symbol smb)
;;

let modules_type_definitions_local ecc_l = 
  modules_type_definitions (Cps_t.Modules_type_local_definitions_symbol ecc_l)
;;

let modules_type_definitions_external ecc_l = 
  modules_type_definitions (Cps_t.Modules_type_external_definitions_symbol ecc_l)
;;

let modules_implementation_definitions_local ecc_l = 
  modules_implementation_definitions (Cps_t.Modules_implementation_local_definitions_symbol ecc_l)
;;

let modules_implementation_definitions_external ecc_l = 
  modules_implementation_definitions (Cps_t.Modules_implementation_external_definitions_symbol ecc_l)
;;

let type_definition ecc_l = Cps_t.Type_definition_symbol ecc_l;;


(** {6 Querying.} *)

(** {6 Naming.} *)

let name_function_argument_symbol = function 
  | Cps_t.Function_name_argument ecc_l -> 
      Format.sprintf "function_name_argument"  
  | Cps_t.Function_print_argument ecc_l -> 
       Format.sprintf "function_print_argument" 

  | Cps_t.Function_t_of_b_argument ecc_l -> 
       Format.sprintf "function_t_of_b_argument" 
  | Cps_t.Function_t_of_s_argument ecc_l -> 
       Format.sprintf "function_t_of_s" 

  | Cps_t.Function_b_off_t_t_argument ecc_l -> 
       Format.sprintf "function_b_off_t_t_argument" 
  | Cps_t.Function_s_off_t_t_datastructure_argument ecc_l -> 
       Format.sprintf "function_s_off_t_t_argument_datastructure" 

  | Cps_t.Function_is_b_off_t_t_argument ecc_l -> 
       Format.sprintf "function_is_b_off_t_t_argument" 
;;

let name_function_function_symbol = function 
  | Cps_t.Function_name_function ecc_l -> 
       Format.sprintf "function_name_function" 
  | Cps_t.Function_print_function ecc_l -> 
       Format.sprintf "function_print_function" 

  | Cps_t.Function_s_off_t_function ecc_l -> 
       Format.sprintf "function_s_off_t_function" 

  | Cps_t.Function_is_s_off_t_function ecc_l -> 
       Format.sprintf "function_is_s_off_t_function" 
;;

let name_functions_definitions_symbol = function
  | Cps_t.Function_argument_symbol smb -> 
      name_function_argument_symbol smb
  | Cps_t.Function_function_symbol smb -> 
      name_function_function_symbol smb
  | Cps_t.Function_constant_symbol ecc_l -> 
       Format.sprintf "function_constant" 
;;

let name_modules_type_definitions = function
  | Cps_t.Modules_type_local_definitions_symbol _ -> 
      Format.sprintf "modules_type_definitions_local" 
  | Cps_t.Modules_type_external_definitions_symbol _ -> 
      Format.sprintf "modules_type_definitions_external" 
;;

let name_modules_implementation_definitions = function
  | Cps_t.Modules_implementation_local_definitions_symbol _ -> 
      Format.sprintf "modules_implementation_definitions_local" 
  | Cps_t.Modules_implementation_external_definitions_symbol _ -> 
      Format.sprintf "modules_implementation_definitions_external" 
;;

let name_modules_definitions = function
  | Cps_t.Modules_type_definitions_symbol smb ->
      name_modules_type_definitions smb 
  | Cps_t.Modules_implementation_definitions_symbol smb -> 
      name_modules_implementation_definitions smb
;;

let name = function
  | Cps_t.Empty_symbol _ -> 
      Format.sprintf "empty" 
  | Cps_t.Heading_symbol _ -> 
      Format.sprintf "heading" 
  | Cps_t.Type_definition_symbol _ -> 
      Format.sprintf "type_definition" 
  | Cps_t.Codefile_name_symbol _ -> 
      Format.sprintf "codefile_name" 
  | Cps_t.Modules_definitions_symbol smb_mod -> 
      name_modules_definitions smb_mod 
  | Cps_t.Ending_symbol _ -> 
      Format.sprintf "ending"
  | Cps_t.Functions_definitions_symbol smb_fun -> 
      name_functions_definitions_symbol smb_fun
;;	

(** {6 Keying.} *)

let key smb_cap =
  Dbt_v.make "caml_paragraph" (name smb_cap)
;;

(** {6 Comparing.} *)

let compare smb_cpg_1 smb_cpg_2 =
  compare (name smb_cpg_1) (name smb_cpg_2)
;;

(** {6 Extracting.} *)

let entitycategorycodefile_list_off_caml_paragraph_function_function_symbol = function
(* the lowest constructor used in the paragraph *)
  | Cps_t.Function_name_function ecc_l -> ecc_l
  | Cps_t.Function_print_function ecc_l -> ecc_l
  | Cps_t.Function_s_off_t_function ecc_l -> ecc_l
  | Cps_t.Function_is_s_off_t_function ecc_l -> ecc_l
;;	

let entitycategorycodefile_list_off_caml_paragraph_function_argument_symbol = function
(* the lowest constructor used in the paragraph *)
  | Cps_t.Function_name_argument ecc_l -> ecc_l
  | Cps_t.Function_print_argument ecc_l -> ecc_l

  | Cps_t.Function_t_of_b_argument ecc_l -> ecc_l
  | Cps_t.Function_t_of_s_argument ecc_l -> ecc_l

  | Cps_t.Function_b_off_t_t_argument ecc_l -> ecc_l
  | Cps_t.Function_s_off_t_t_datastructure_argument (ecc_l, pos) -> ecc_l

  | Cps_t.Function_is_b_off_t_t_argument ecc_l -> ecc_l
;;

let entitycategorycodefile_list_off_caml_paragraph_functions_definitions_symbol = function
  | Cps_t.Function_argument_symbol smb -> 
      entitycategorycodefile_list_off_caml_paragraph_function_argument_symbol smb
  | Cps_t.Function_function_symbol smb -> 
      entitycategorycodefile_list_off_caml_paragraph_function_function_symbol smb
  | Cps_t.Function_constant_symbol ecc -> [ecc]
;;

let entitycategorycodefile_list_off_caml_paragraph_modules_type_definitions_symbol = function
  | Cps_t.Modules_type_local_definitions_symbol ecc_l -> ecc_l 
  | Cps_t.Modules_type_external_definitions_symbol ecc_l -> ecc_l 
;;

let entitycategorycodefile_list_off_caml_paragraph_modules_implementation_definitions_symbol = function
  | Cps_t.Modules_implementation_local_definitions_symbol ecc_l -> ecc_l
  | Cps_t.Modules_implementation_external_definitions_symbol ecc_l -> ecc_l
;;

let entitycategorycodefile_list_off_caml_paragraph_modules_definitions_symbol = function
  | Cps_t.Modules_type_definitions_symbol smb ->
      entitycategorycodefile_list_off_caml_paragraph_modules_type_definitions_symbol smb 
  | Cps_t.Modules_implementation_definitions_symbol smb -> 
      entitycategorycodefile_list_off_caml_paragraph_modules_implementation_definitions_symbol smb
;;

let entitycategorycodefile_list_off_caml_paragraph_symbol = function
  | Cps_t.Empty_symbol ecc -> [ecc] 
  | Cps_t.Heading_symbol ecc -> [ecc] 
  | Cps_t.Type_definition_symbol ecc -> [ecc] 
  | Cps_t.Codefile_name_symbol ecc -> [ecc]
  | Cps_t.Modules_definitions_symbol smb_mod -> 
      entitycategorycodefile_list_off_caml_paragraph_modules_definitions_symbol smb_mod
  | Cps_t.Ending_symbol ecc -> [ecc]
  | Cps_t.Functions_definitions_symbol smb_fun -> 
      entitycategorycodefile_list_off_caml_paragraph_functions_definitions_symbol smb_fun
;;

(**
let constructor_path_off_caml_paragraph_symbol smb_cpg =
  let ecc_l = 
    entitycategorycodefile_list_off_caml_paragraph_symbol smb_cpg 
  in
  Cpc_v.constructor_path_off_entitycategorycodefile_list ecc_l
;;

let item_key_list_off_caml_paragraph_symbol smb_cpg =
  let ecc_l = 
    entitycategorycodefile_list_off_caml_paragraph_symbol smb_cpg 
  in
  Cpc_v.item_key_list_off_entitycategorycodefile_list ecc_l
;;

let entitycategorycodefile_off_caml_paragraph_symbol smb_cpg =
  let kyl_itm = item_key_list_off_caml_paragraph_symbol smb_cpg in
  Kyl_v.entitycategorycodefile_off_key_list kyl_itm
;;

let item_symbol_off_caml_paragraph_symbol smb_cpg =
  let kyl_itm = item_key_list_off_caml_paragraph_symbol smb_cpg in
  Kyl_v.item_symbol_off_key_list kyl_itm
;;
**)
