(** {3 The functionalities for the Typing Section of the Formula for a Caml Paragraph.}  *)

let nam_cod = "caml_paragraph_types_definitions_formula_v.ml";;

(** {6 Modules.} *)

module Cns_v = Constructor_symbol_v
module Cpc_v = Caml_paragraph_context_v
module Cptdf_v = Caml_paragraph_types_definitions_datastructure_formula_v
module Cpthf_v = Caml_paragraph_types_definitions_hierarchical_formula_v

let retrieve_type_definition ctt_cpg =
  let smb_cnt = 
    Cpc_v.top_constructor_symbol_off_caml_paragraph_context ctt_cpg
  in

  match smb_cnt with
    | s when Cns_v.is_constructor_proper_datastructure_symbol_off_constructor_symbol s ->
	Cptdf_v.retrieve_datastructure_type_definition ctt_cpg 

    | _ ->
	Cpthf_v.retrieve_hierarchical_type_definition ctt_cpg 
;;

