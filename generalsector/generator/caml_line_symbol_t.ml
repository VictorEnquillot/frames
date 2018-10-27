(** {3 The Symbol for a Line in a Paragraph of Caml in an Item.}  *)

(** {6 Modules.} *)

module Cpc_t = Caml_paragraph_context_t
module Ens_t = Entity_symbol_t
module Ecc_t = Entitycategorycodefile_t
module Par_t = Pair_t
module Qua_t = Quatuor_t
module Tri_t = Trio_t

(** {6 Typing.} *)

type caml_line_symbol =
  | Constant_symbol of constant_symbol
  | Singlet_symbol of singlet_symbol
  | Pair_symbol of pair_symbol
  | Trio_symbol of trio_symbol
  | Datastructure_symbol of datastructure_symbol

and constant_symbol =
  | Comment_line_item_symbol of Cpc_t.caml_paragraph_context          (* (** {6 Abbreviating. }*) *)
  | Double_semicolon_symbol                                           (* ;; *)
  | Empty_line_symbol                                                 (* *)
  | Basic_type_line_symbol of string                                  (*    string *)
  | Let_name_eq_function_symbol                                       (* let name = function *)
  | Let_print_eq_function_symbol                                      (* let print ppf = function *)
(* querying let third line *)
  | Pipe_arrow_false_symbol                                           (*  | _ -> false *)
  | Then_false_else_begin_symbol                                      (*  then false else begin *)
  | End_line_symbol                                                   (*     end *)
  | Val_name_symbol                                                   (* val name : *)
  | Val_print_format_formatter_arrow_symbol                           (* val print : Format.formatter -> *)

and singlet_symbol =
  | Createdby_symbol of Ecc_t.entitycategorycodefile                  (* (** created by ./generator atom implementation symbol 12 January 2011. *) *)
  | Let_nam_cod_symbol of Ecc_t.entitycategorycodefile                (* let nam_cod ="Atom_symbol_v.ml";; *)

  | Let_name_b_eq_symbol of Ecc_t.entitycategorycodefile                (* let name b = *)
  | Let_name_t_eq_symbol of Ecc_t.entitycategorycodefile                (* let name t = *)

  | Let_print_b_eq_symbol of Ecc_t.entitycategorycodefile               (* let print b = *)
  | Let_print_t_eq_symbol of Ecc_t.entitycategorycodefile               (* let print t = *)

  | Type_definition_symbol of Ecc_t.entitycategorycodefile            (* type atom_zerotied_symbol of Cpc_t.caml_paragraph_context= *)
  | Type_pipe_bare_symbol of Ens_t.entity_bare_symbol               (*   | Cl_5s *)
  | Type_pipe_s_of_s_dot_s_symbol of Ecc_t.entitycategorycodefile     (*   | Atom_zerotied of Azs_t.atom_zerotied                   *)
  | Module_m_eq_m_symbol of Ecc_t.entitycategorycodefile              (* module Ats_v = Atom_symbol_v *)
  | Pipe_datastructure_s_arrow_symbol of Ecc_t.entitycategorycodefile (* | Doublet dbt -> *)
  | S_name_s_symbol of Ecc_t.entitycategorycodefile                   (*   Aocs_v.name smb_aoc *)
  | Let_print_b_symbol of Ecc_t.entitycategorycodefile                (* let print ppf smb_x = *)
  | S_print_s_symbol of Ecc_t.entitycategorycodefile                  (*   Aocs_v.print ppf smb_aoc *)

  | B_arrow_symbol of Ecc_t.entitycategorycodefile                    (*   B -> *)
  | S_arrow_symbol of Ecc_t.entitycategorycodefile                    (*   S -> *)
  | T_arrow_symbol of Ecc_t.entitycategorycodefile                    (*   T -> *)
  | B_symbol of Ecc_t.entitycategorycodefile                          (*       B *)
  | S_symbol of Ecc_t.entitycategorycodefile                          (*       S *)
  | T_symbol of Ecc_t.entitycategorycodefile                          (*       T *)

  | Title_function_symbol of Ecc_t.entitycategorycodefile             (* (** {3 The functionalities for a Symbol for an Atom.} *) *)
  | Title_type_symbol of Ecc_t.entitycategorycodefile                 (* (** {3 A Symbol for an Atom.} *) *)

  | Doublet_left_symbol of Ecc_t.entitycategorycodefile               (*  Dbt_v.left_off_doublet dbt *)
  | Doublet_right_symbol of Ecc_t.entitycategorycodefile              (*  Dbt_v.right_off_doublet dbt *)
  | Triplet_left_symbol of Ecc_t.entitycategorycodefile               (*  Dbt_v.left_off_triplet dbt *)
  | Triplet_middle_symbol of Ecc_t.entitycategorycodefile             (*  Dbt_v.middle_off_triplet dbt *)
  | Triplet_right_symbol of Ecc_t.entitycategorycodefile              (*  Dbt_v.right_off_triplet dbt *)

and pair_symbol =
  | Name_pipe_t_dot_s_arrow_s_symbol of Ecc_t.entitycategorycodefile Par_t.pair  (*   | Asxs_t.S_6s -> "s_6s" *)
  | Pipe_s_off_t_print_fatal_error_symbol of Ecc_t.entitycategorycodefile Par_t.pair 
         (*   | s -> Erm_v.print_fatal_error nam_cod *)
         (*            "atom_twotied_single_double_symbol_off_atom_twotied_symbol" *)
         (*            "Atom_twotied_single_double_symbol" (name s) *)
  | Print_pipe_t_dot_s_arrow_s_symbol of Ecc_t.entitycategorycodefile Par_t.pair (*   | Asxs_t.S_6s -> Format.fprintf ppf "s_6s" *)
  | Pipe_t_dot_s_arrow_symbol of Ecc_t.entitycategorycodefile Par_t.pair             (*   | Ats_t.atom_zerotied ->*)
  | Pipe_t_dot_s_s_arrow_symbol of Ecc_t.entitycategorycodefile Par_t.pair       (*   | Ats_t.atom_zerotied s -> *)
  | Pipe_t_dot_s_s_arrow_s_symbol of Ecc_t.entitycategorycodefile Par_t.pair     (*   | Ats_t.atom_zerotied s -> s *)

(* extracting let first line *)
  | Let_s_off_t_function_symbol of Ecc_t.entitycategorycodefile Par_t.pair       (* let s_off_t = function *)
  | Let_b_off_t_t_argument_symbol of Ecc_t.entitycategorycodefile Par_t.pair     (* let b_off_t_t = *)
  | Let_s_off_t_t_argument_symbol of Ecc_t.entitycategorycodefile Par_t.pair     (* let s_off_t_t = for datastructure*)

(* extracting let second line *)
  | Let_u_u_off_t_t_in_symbol of Ecc_t.entitycategorycodefile Par_t.pair         (*   let u = u_off_t t in *)

(* extracting let third line *)
  | B_off_u_u_symbol of Ecc_t.entitycategorycodefile Par_t.pair                  (*     b_off_u u *)

(* extracting val first line *)
  | Val_b_off_t_symbol of Ecc_t.entitycategorycodefile Par_t.pair                (* val b_off_t : *)
  | Val_s_off_t_symbol of Ecc_t.entitycategorycodefile Par_t.pair                (* val s_off_t : *)

(* querying let first line *)
  | Let_is_s_off_t_function_symbol of Ecc_t.entitycategorycodefile Par_t.pair    (* let is_s_off_t = function *)
  | Let_is_b_off_t_t_argument_symbol of Ecc_t.entitycategorycodefile Par_t.pair  (* let is_b_off_t t = *)

(* querying let second line *)
  | Pipe_t_dot_s_arrow_true_symbol of Ecc_t.entitycategorycodefile Par_t.pair    (*  | Ats_t.Atom_zerotied_symbol _ -> true *)
  | If_not_is_u_off_t_t_symbol of Ecc_t.entitycategorycodefile Par_t.pair        (*   if not (is_u_off_t t)                 *)        
                                               (* if not (is_atom_zerotied_anion_symbol_off_atom_symbol smb_atm) *)
(* querying begin first line *)

(* querying begin second line *)
  | U_is_b_off_u_u_symbol of Ecc_t.entitycategorycodefile Par_t.pair             (*  U.is_b_off_u u *)  
                        (* Aans_v.is_atom_zerotied_anion_minus_one_symbol_off_atom_zerotied_anion_symbol smb_aza *)

(* upgrading let first line *)
  | Let_t_of_s_s_eq_symbol of Ecc_t.entitycategorycodefile Par_t.pair   (* let t_of_s s = *)
  | Let_t_of_b_b_eq_symbol of Ecc_t.entitycategorycodefile Par_t.pair   (* let t_of_b b =  *)

(* upgrading let second line *)
  | T_dot_s_s_symbol of Ecc_t.entitycategorycodefile Par_t.pair                  (* Ats_t.atom_zerotied s *)
  | Let_u_eq_u_dot_u_of_b_b_in_symbol of Ecc_t.entitycategorycodefile Par_t.pair (* let u = U.u_of_b b in *)
(* Ex. : let smb_ath = A3s_v.atom_threetied_symbol_of_atom_threetied_double_double_double_symbol smb_addd in *)

(* upgrading let third line *)
  | T_of_u_u_symbol of Ecc_t.entitycategorycodefile Par_t.pair                   (*     t_of_u u *)

(* upgrading let one line for non entity constructor *)
  | Let_s_eq_t_dot_s_symbol of Ecc_t.entitycategorycodefile Par_t.pair           (* let s = T.s *)
                  (* Ex. : let o_c = Aocs_t.O_c;;*)

  | Val_b_colon_t_symbol of Ecc_t.entitycategorycodefile Par_t.pair              (* val b : T.t;;*)
  | Type_pipe_s_of_b_symbol of Ecc_t.entitycategorycodefile Par_t.pair           (*   | Frompdbid of string *)

  | Val_t_of_b_symbol of Ecc_t.entitycategorycodefile Par_t.pair                 (* val t_of_b : *)
  | Val_t_of_s_symbol of Ecc_t.entitycategorycodefile Par_t.pair                 (* val t_of_s : *)
  | Val_s_colon_t_symbol of Ecc_t.entitycategorycodefile Par_t.pair              (* val s : t *)
            (* val o_c : Atom_onetied_conjugated_symbol_t.atom_onetied_conjugated_symbol;;*)
  | Val_is_b_off_t_symbol of Ecc_t.entitycategorycodefile Par_t.pair             (* val is_b_off_t : *)
  | Val_is_s_off_t_symbol of Ecc_t.entitycategorycodefile Par_t.pair             (* val is_s_off_t : *)

and trio_symbol =
  | Let_b_eq_t_of_u_u_dot_b_symbol of Ecc_t.entitycategorycodefile Tri_t.trio (* let b = u_of_b U_t.b *)
                  (* Ex. : let ar = atom_zerotied_symbol_of_atom_zerotied_raregas_symbol Azrs_t.Ar;; *)

and datastructure_symbol =
  | Type_pipe_doublet_a_b_symbol of Ecc_t.entitycategorycodefile Pair_t.pair (*   | A of (a, b) Dbt_t.doublet *)
  | Type_pipe_triplet_a_b_c_symbol of Ecc_t.entitycategorycodefile Trio_t.trio (*   | A of (a, b, c) Trp_t.triplet *)
  | Type_pipe_list_a_symbol of Ecc_t.entitycategorycodefile                    (*   | A of a Lst_t.list *)
  | Type_pipe_tree_a_symbol of Ecc_t.entitycategorycodefile                    (*   | A of a Tre_t.tree *)

  | Doublet_name_s_a_b_symbol of Ecc_t.entitycategorycodefile Tri_t.trio  (*   Dbt_v.name A_v.name B_v.name t *)
  | Triplet_name_s_a_b_c_symbol of Ecc_t.entitycategorycodefile Qua_t.quatuor (*   Trp_v.name A_v.name B_v.name C_v.name t *)
  | Tree_name_s_a_symbol of Ecc_t.entitycategorycodefile Par_t.pair       (*   Tre_v.name A_v.name t *)

  | Doublet_print_s_a_b_symbol of Ecc_t.entitycategorycodefile Tri_t.trio (*   Dbt_v.print A_v.print B_v.print t *)
  | Triplet_print_s_a_b_c_symbol of Ecc_t.entitycategorycodefile Qua_t.quatuor (*   Trp_v.print A_v.print B_v.print C_v.print t *)
  | Tree_print_s_a_symbol of Ecc_t.entitycategorycodefile Par_t.pair      (*   Tre_v.print A_v.print t *)

;;
(** The type gives which kind of entity is considered
    t is constructor with depth = 1 (top entity)
    s is constructor with depth = 2 (son of top entity)
    b is any constructor with depth > 2
    u is any constructor with dep = dep(b) -1
    d is any constructor with dep = dep(b) +1 (usually not an entity)

    bt basic type : string int float

   Datastructure code is managed using the Datastructure codefiles
   no need to introduce items for usual entity
   Mind these are one Constructor type like : 
 
 type polyproline_symbol =
  | Doublet of (string, Ord_p.ordinal) Dbt_t.doublet
;;
*)
