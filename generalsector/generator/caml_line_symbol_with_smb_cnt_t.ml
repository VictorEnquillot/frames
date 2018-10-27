(** {3 The Symbol for a Line in a Paragraph of Caml in an Item.}  *)

(** {6 Modules.} *)

module Ecm_t = Entitycategorycodefile_t
module Par_t = Pair_t
module Qua_t = Quatuor_t
module Tri_t = Trio_t

(** {6 Typing.} *)

type caml_line_symbol =
  | Constant_symbol of constant_symbol
  | Singlet_symbol of singlet_symbol
  | Pair_symbol of pair_symbol

and constant_symbol =
  | Comment_line_item_symbol           (* (** {6 Abbreviating. }*) *)
  | Double_semicolon_symbol            (* ;; *)
  | Empty_line_symbol                  (* *)
  | Let_name_eq_function_symbol           (* let name = function *)
  | Let_print_eq_function_symbol          (* let print ppf = function *)

and singlet_symbol =
  | Pipe_t_dot_s_s_arrow_symbol of Ecm_t.entitycategorycodefile    
	(*   | Ats_t.atom_zerotied ->*)
  | Type_definition_symbol of Ecm_t.entitycategorycodefile
        (* type atom_zerotied_symbol = *)
  | Type_pipe_bare_symbol of Ecm_t.entitycategorycodefile
        (*   | Cl_5s *)
  | Type_pipe_s_of_s_dot_s_symbol of Ecm_t.entitycategorycodefile
        (*   | Atom_zerotied of Azs_t.atom_zerotied *)
  | Nam_cod_symbol of Ecm_t.entitycategorycodefile
	(* let nam_cfi ="Atom_symbol_v";; *)
  | Let_name_b_eq_symbol of Ecm_t.entitycategorycodefile
	(* let name b = *)
  | Name_pipe_t_dot_s_arrow_s_symbol of Ecm_t.entitycategorycodefile
	(*   | Asxs_t.S_6s -> Format.sprintf "%s" "s_6s" *)
  | Print_pipe_t_dot_s_arrow_s_symbol of Ecm_t.entitycategorycodefile
	(*   | Asxs_t.S_6s -> Format.fprintf ppf "%s" "s_6s" *)
  | Pipe_s_off_t_print_fatal_error_symbol of Ecm_t.entitycategorycodefile
	(*   | s ->  print_fatal_error
             "atom_twotied_single_double_symbol_off_atom_twotied_symbol"
             "Atom_twotied_single_double_symbol" (name s) *)
  | S_name_s_symbol of Ecm_t.entitycategorycodefile
        (*   Aocs_v.name smb_aoc *)
  | Let_print_b_symbol of Ecm_t.entitycategorycodefile
                 (* let print ppf smb_x = *)
  | S_print_s_symbol of Ecm_t.entitycategorycodefile
        (*   Aocs_v.print ppf smb_aoc *)
  | E_arrow_symbol of Ecm_t.entitycategorycodefile
        (*   E -> *)
  | E_symbol of Ecm_t.entitycategorycodefile
        (*       E *)
  | Title_function_symbol of Ecm_t.entitycategorycodefile
        (* (** {3 The functionalities for a Symbol for an Atom.} *) *)
  | Title_type_symbol of Ecm_t.entitycategorycodefile
        (* (** {3 A Symbol for an Atom.} *) *)

and pair_symbol =
  | Pipe_t_dot_s_s_arrow_s_symbol of Ecm_t.entitycategorycodefile Par_t.pair
	(*   | Ats_t.atom_zerotied s -> s *)
  | Pipe_t_dot_s_s_arrow_symbol of Ecm_t.entitycategorycodefile Par_t.pair
	(*   | Ats_t.atom_zerotied s -> *)
  | Let_u_eq_u_dot_u_of_b_b_in_symbol of Ecm_t.entitycategorycodefile Par_t.pair
        (* let e = t_of_b x in*)
  | Let_t_of_b_function_symbol of Ecm_t.entitycategorycodefile Par_t.pair
        (* let t_of_b = function *)
  | Let_t_of_b_b_symbol of Ecm_t.entitycategorycodefile Par_t.pair
        (* let t_of_b x = *)
  | Let_s_off_t_function_symbol of Ecm_t.entitycategorycodefile Par_t.pair
	(* let se_off_e = function *)
  | Let_b_off_t_function_symbol of Ecm_t.entitycategorycodefile Par_t.pair
        (* let sse_off_e e = *)
  | Let_u_u_off_t_t_in_symbol of Ecm_t.entitycategorycodefile Par_t.pair
        (* let x = b_off_t e in *)
  | T_of_b_b_symbol of Ecm_t.entitycategorycodefile Par_t.pair
        (*         t_of_b x *)
  | X_off_t_t_symbol of Ecm_t.entitycategorycodefile Par_t.pair
        (*         x_of_e e *)
  | B_off_u_u_symbol of Ecm_t.entitycategorycodefile Par_t.pair
        (*         sse_of_f f *)
  | Type_pipe_t_of_b_symbol of Ecm_t.entitycategorycodefile Par_t.pair
        (*   | Frompdbid of string *)
  | Val_t_of_b_symbol of Ecm_t.entitycategorycodefile Par_t.pair
        (* val t_of_b : *)
  | Val_b_off_t_symbol of Ecm_t.entitycategorycodefile Par_t.pair
        (* val b_off_t : *)
	
and datastructure_symbol =
  | Type_pipe_doublet_a_b_symbol of Ecm_t.entitycategorycodefile Tri_t.trio
	(*   | A of (b, c) Dbt_t.doublet *)
  | Type_pipe_triplet_a_b_c_symbol of Ecm_t.entitycategorycodefile Qua_t.quatuor
	(*   | A of (b, c, d) Trp_t.triplet *)
  | Type_pipe_list_a_symbol of Ecm_t.entitycategorycodefile Par_t.pair
        (*   | A of b Lst_t.list *)
  | Type_pipe_tree_a_symbol of Ecm_t.entitycategorycodefile Par_t.pair
        (*   | A of b Tre_t.tree *)
;;
(** The type gives which kind of entity is considered
    e is constructor with depth = 1 (top entity)
    x is any constructor with depth > 1
    f is any father of x with dep(f) = dep(x) + 1
    se is constructor with depth = 2
    sse is constructor with depth > 2
 *)
