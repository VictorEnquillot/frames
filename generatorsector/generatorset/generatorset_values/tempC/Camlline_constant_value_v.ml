(** {3 The functionalities for a Value for a Camlline_constant.}  *)

let nam_cod = "Camlline_constant_value_v.ml";;

(** {6 Aliases} *)


(** {6 Making.} *)

let make_constant_function = function
  | Camlline_constant_function_symbol_t.Let_make_nam_s_equal ->
      Format.sprintf "let make nam s ="
 
  | Camlline_constant_function_symbol_t.Match_capitalize_nam_with ->
      Format.sprintf "  match String.capitalize nam with"
 
  | Camlline_constant_function_symbol_t.Let_make_argument_equal_function ->
      Format.sprintf "let make s = function" 

  | Camlline_constant_function_symbol_t.Let_make_equal_function ->
      Format.sprintf "let make = function" 

  | Camlline_constant_function_symbol_t.Let_name_equal_function ->
      Format.sprintf "let name = function" 

  | Camlline_constant_function_symbol_t.Let_longname_equal_function ->
      Format.sprintf "let longname = function" 

  | Camlline_constant_function_symbol_t.Let_string_off_equal_function ->
      Format.sprintf "let string_off = function" 

  | Camlline_constant_function_symbol_t.Let_print_ppf_equal_function -> 
      Format.sprintf "let print ppf = function" 

  | Camlline_constant_function_symbol_t.Let_print_ppf_str_equal ->
      Format.sprintf "let print ppf str =" 

  | Camlline_constant_function_symbol_t.Pipe_underscore_arrow ->
      Format.sprintf "  | _ ->" 

  | Camlline_constant_function_symbol_t.Pipe_underscore_arrow_false ->
      Format.sprintf "  | _ -> false" 

  | Camlline_constant_function_symbol_t.Pipe_underscore_arrow_true ->
      Format.sprintf "  | _ -> true" 

(* making print_fatal_error last line *)
  | Camlline_constant_function_symbol_t.Pipe_print_fatal_error_make_4_lines -> 
      Format.sprintf "  Error_messages_v.print_fatal_error\
      @.      nam_cod \"make\"\
      @.      \"a valid leaf name\"\
      @.      str \"check\""
;;

let make_constant_pervasive soi_cal sym_ccp =
  match sym_ccp with
  | Camlline_constant_pervasive_symbol_t.Basic_type -> 
      Utils_v.not_yet_implemented nam_cod 
	"make_constant_pervasive Basic_type"

  | Camlline_constant_pervasive_symbol_t.Begin_line -> 
      Format.sprintf "    begin" 

  | Camlline_constant_pervasive_symbol_t.Item_title nam_ite ->
      Format.sprintf "(** {6 %s} *)" (String.capitalize nam_ite)
  
  | Camlline_constant_pervasive_symbol_t.Double_semicolon -> 
      Format.sprintf ";;" 

  | Camlline_constant_pervasive_symbol_t.Else_line -> 
      Format.sprintf "  else" 

  | Camlline_constant_pervasive_symbol_t.Empty_line -> 
      Format.sprintf "" 

  | Camlline_constant_pervasive_symbol_t.End_line -> 
      Format.sprintf "    end" 

  | Camlline_constant_pervasive_symbol_t.Then_false -> 
      Format.sprintf "  then false" 
;;

let make sym_clc soi_cal = 
  match sym_clc with
  | Camlline_constant_symbol_t.Camlline_constant_function_symbol sym_ccf ->
      make_constant_function sym_ccf

  | Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol sym_ccp ->
      make_constant_pervasive soi_cal sym_ccp

  | Camlline_constant_symbol_t.Camlline_constant_value_symbol sym ->
      Utils_v.not_yet_implemented nam_cod "make_constant_value"
;;

(** {6 Naming.} *)

let name val_cld = val_cld;;

(** {6 Writing.} *)

let write_of_oc_of_camlline_constant_value oc val_cld =
  output_string oc (Format.sprintf "%s@." (name val_cld))
;;

