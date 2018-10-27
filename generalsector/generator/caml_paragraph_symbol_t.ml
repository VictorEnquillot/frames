(** {3 The Symbol for a Paragraph of Caml_line in an Item.}  *)

(** {6 Modules.} *)

module Cpc_t = Caml_paragraph_context_t
module Ecc_t = Entitycategorycodefile_t
module Dbt_t = Doublet_t
module Idx_p = Index_p

(** {6 Typing.} *)

type caml_paragraph_symbol =
  | Codefile_name_symbol of Ecc_t.entitycategorycodefile    (* let nam_cod = "atom_symbol_v.ml";; *)

  | Empty_symbol of Ecc_t.entitycategorycodefile

  | Ending_symbol of Ecc_t.entitycategorycodefile           (* generator version and date *)

  | Heading_symbol of Ecc_t.entitycategorycodefile          (* Comment {3 A .. Entity . } *)

  | Type_definition_symbol of Ecc_t.entitycategorycodefile

  | Functions_definitions_symbol of functions_definitions_symbol
  | Modules_definitions_symbol of modules_definitions_symbol 

and functions_definitions_symbol =
  | Function_argument_symbol of function_argument_symbol
  | Function_function_symbol of function_function_symbol
  | Function_constant_symbol of Ecc_t.entitycategorycodefile (* upgrading : let ar = atom_symbol_of_atom_zerotied_raregas_symbol Args_t.Ar;;*)

and function_argument_symbol =
  | Function_name_argument of Ecc_t.entitycategorycodefile list
  | Function_print_argument of Ecc_t.entitycategorycodefile list

  | Function_b_off_t_t_argument of Ecc_t.entitycategorycodefile list
        (* atom_zerotied_raregas_symbol_off_atom_symbol *)
  | Function_s_off_t_t_datastructure_argument of (Ecc_t.entitycategorycodefile list, Idx_p.index) Dbt_t.doublet
        (* string_off_aggregate_symbol with Dbt_v.left_off_doublet smb_agg need ecc_l and position in son list for left *)

  | Function_is_b_off_t_t_argument of Ecc_t.entitycategorycodefile list
   (* let is_atom_zerotied_anion_minus_two_symbol_off_atom_symbol smb_atm =*)

  | Function_t_of_s_argument of Ecc_t.entitycategorycodefile list
  | Function_t_of_b_argument of Ecc_t.entitycategorycodefile list

and function_function_symbol =
  | Function_name_function of Ecc_t.entitycategorycodefile list 
  | Function_print_function of Ecc_t.entitycategorycodefile list

  | Function_s_off_t_function of Ecc_t.entitycategorycodefile list
  | Function_is_s_off_t_function of Ecc_t.entitycategorycodefile list
  (* let is_atom_zerotied_symbol_off_atom_symbol = function *)


and modules_definitions_symbol =
  | Modules_type_definitions_symbol of modules_type_definitions_symbol
  | Modules_implementation_definitions_symbol of modules_implementation_definitions_symbol
	
and modules_type_definitions_symbol =
  | Modules_type_local_definitions_symbol of Ecc_t.entitycategorycodefile list
        (* module Azs_t = Atom_zerotied_symbol_t *)

  | Modules_type_external_definitions_symbol of Ecc_t.entitycategorycodefile list
        (* module Ord_p = Ordinal_p *)

and modules_implementation_definitions_symbol =
  | Modules_implementation_local_definitions_symbol of Ecc_t.entitycategorycodefile list
        (* module Azs_v = Atom_zerotied_symbol_v *)

  | Modules_implementation_external_definitions_symbol of Ecc_t.entitycategorycodefile list
        (* module Ord_p = Ordinal_p *)

;;
(** A Caml Paragraph is a set of Caml lines not closed by a ";;"
                     and eventually indented.

    A Paragraph Symbol as a meaning in a Context

    For Paragraph that are function code the name of the type is 
        associated with that of the function, because the function name
        fully determines its content.
*)
