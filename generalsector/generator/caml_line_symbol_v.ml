(** {3 The functionalities fro a Symbol for a Line in a Paragraph of Caml.}  *)

let nam_cod = "Caml_line_symbol_v"

(** {6 Modules.} *)

module Cls_t = Caml_line_symbol_t
module Erm_v = Error_messages_v
module Cns_t = Constructor_symbol_t
module Dbt_v = Doublet_v

(** {6 Making.} *)

(** {6 Displaying.} *)

let name_constant_symbol = function
  | Cls_t.Basic_type_line_symbol s -> "basic_type " ^ s 
  | Cls_t.Comment_line_item_symbol _ -> "comment_line_item"
  | Cls_t.Double_semicolon_symbol -> "double_semicolon"
  | Cls_t.Empty_line_symbol -> "empty_line"
  | Cls_t.Let_name_eq_function_symbol -> "let_name_eq_function"
  | Cls_t.Let_print_eq_function_symbol -> "let_print_eq_function"
  | Cls_t.Val_name_symbol -> "val_name"
  | Cls_t.Val_print_format_formatter_arrow_symbol -> "val_print_format_formatter_arrow"
  | Cls_t.Pipe_arrow_false_symbol -> "pipe_arrow_false"
  | Cls_t.Then_false_else_begin_symbol -> "then_false_else_begin"
  | Cls_t.End_line_symbol -> "end_line"
;;

let name_singlet_symbol = function
  | Cls_t.B_arrow_symbol _ -> "b_arrow"
  | Cls_t.B_symbol _ -> "b"
  | Cls_t.Createdby_symbol _ -> "createdby"
  | Cls_t.Doublet_left_symbol _ -> "doublet_left"
  | Cls_t.Doublet_right_symbol _ -> "doublet_right"
  | Cls_t.Let_name_b_eq_symbol _ -> "let_name_b_eq"
  | Cls_t.Let_name_t_eq_symbol _ -> "let_name_t_eq"
  | Cls_t.Let_print_b_eq_symbol _ -> "let_print_b_eq"
  | Cls_t.Let_print_b_symbol _ -> "let_print_b"
  | Cls_t.Let_print_t_eq_symbol _ -> "let_print_t_eq"
  | Cls_t.Module_m_eq_m_symbol _ -> "module_m_eq_m_symbol"
  | Cls_t.Let_nam_cod_symbol _ -> "let_nam_cod"
  | Cls_t.Pipe_datastructure_s_arrow_symbol _ -> "pipe_datastructure_s_arrow"
  | Cls_t.S_arrow_symbol _ -> "s_arrow"
  | Cls_t.S_name_s_symbol _ -> "s_name_s"
  | Cls_t.S_print_s_symbol _ -> "s_print_s"
  | Cls_t.S_symbol _ -> "s"
  | Cls_t.T_arrow_symbol _ -> "t_arrow"
  | Cls_t.T_symbol _ -> "t"
  | Cls_t.Title_function_symbol _ -> "title_function"
  | Cls_t.Title_type_symbol _ -> "title_type"
  | Cls_t.Triplet_left_symbol _ -> "triplet_left"
  | Cls_t.Triplet_middle_symbol _ -> "triplet_middle"
  | Cls_t.Triplet_right_symbol _ -> "triplet_right"
  | Cls_t.Type_definition_symbol _ -> "type_definition"
  | Cls_t.Type_pipe_bare_symbol _ -> "type_pipe_bare"
  | Cls_t.Type_pipe_s_of_s_dot_s_symbol _ -> "type_pipe_s_of_s_dot_s"
;;

let name_pair_symbol = function
  | Cls_t.Name_pipe_t_dot_s_arrow_s_symbol _ -> "name_pipe_t_dot_s_arrow_s"
  | Cls_t.Pipe_s_off_t_print_fatal_error_symbol _ -> "pipe_s_off_t_print_fatal_error"
  | Cls_t.Print_pipe_t_dot_s_arrow_s_symbol _ -> "print_pipe_t_dot_s_arrow_s"
  | Cls_t.Pipe_t_dot_s_arrow_symbol _ -> "pipe_t_dot_s_arrow"
  | Cls_t.Pipe_t_dot_s_s_arrow_s_symbol _ -> "pipe_t_dot_s_s_arrow_s"
  | Cls_t.Pipe_t_dot_s_s_arrow_symbol _ -> "pipe_t_dot_s_s_arrow"
  | Cls_t.Let_s_off_t_function_symbol _ -> "let_s_off_t_function"
  | Cls_t.Let_b_off_t_t_argument_symbol _ -> "let_b_off_t_t_argument"
  | Cls_t.Let_s_off_t_t_argument_symbol _ -> "let_s_off_t_t_argument"
  | Cls_t.Let_u_u_off_t_t_in_symbol _ -> "let_u_u_off_t_t_in"
  | Cls_t.B_off_u_u_symbol _ -> "x_off_u_u"
  | Cls_t.Let_is_s_off_t_function_symbol _ -> "let_is_s_off_t_function"
  | Cls_t.Let_is_b_off_t_t_argument_symbol _ -> "let_is_b_off_t_t_argument"
  | Cls_t.Pipe_t_dot_s_arrow_true_symbol _ -> "pipe_t_dot_s_arrow_true"
  | Cls_t.Let_t_of_s_s_eq_symbol _ -> "let_t_of_s_s_eq"
  | Cls_t.Let_t_of_b_b_eq_symbol _ -> "let_t_of_b_b_eq"
  | Cls_t.T_dot_s_s_symbol _ -> "t_dot_s_s"
  | Cls_t.Let_s_eq_t_dot_s_symbol _ -> "let_s_eq_t_dot_s"
  | Cls_t.Let_u_eq_u_dot_u_of_b_b_in_symbol _ -> "let_u_eq_u_dot_u_of_b_b_in"
  | Cls_t.T_of_u_u_symbol _ -> "t_of_u_u"
  | Cls_t.Type_pipe_s_of_b_symbol _ -> "type_pipe_s_of_b"
  | Cls_t.If_not_is_u_off_t_t_symbol _ -> "if_not_is_u_off_t_t"
  | Cls_t.U_is_b_off_u_u_symbol _ -> "u_is_b_off_u_u"
  | Cls_t.Val_t_of_b_symbol _ -> "val_t_of_b"
  | Cls_t.Val_t_of_s_symbol _ -> "val_t_of_s"
  | Cls_t.Val_b_off_t_symbol _ -> "val_b_off_t"
  | Cls_t.Val_s_off_t_symbol _ -> "val_s_off_t"
  | Cls_t.Val_s_colon_t_symbol _ -> "val_s_colon_t"
  | Cls_t.Val_is_b_off_t_symbol _ -> "val_is_b_off_t"
  | Cls_t.Val_is_s_off_t_symbol _ -> "val_is_s_off_t"
  | Cls_t.Val_b_colon_t_symbol _ -> "val_b_colon_t"
;;

let name_trio_symbol = function
  | Cls_t.Let_b_eq_t_of_u_u_dot_b_symbol _ -> "b_t_of_u_b"
;;

let name_datastructure_symbol = function
 | Cls_t.Type_pipe_doublet_a_b_symbol _ -> "type_pipe_doublet_a_b"
 | Cls_t.Type_pipe_triplet_a_b_c_symbol _ -> "type_pipe_triplet_a_b_c"
 | Cls_t.Type_pipe_list_a_symbol _ -> "type_pipe_list_a"
 | Cls_t.Type_pipe_tree_a_symbol _ -> "type_pipe_tree_a"
 | Cls_t.Doublet_name_s_a_b_symbol _ -> "doublet_name_s_a_b_symbol"
 | Cls_t.Triplet_name_s_a_b_c_symbol _ -> "triplet_name_s_a_b_c_symbol"
 | Cls_t.Tree_name_s_a_symbol _ -> "tree_name_s_a_symbol"
 | Cls_t.Doublet_print_s_a_b_symbol _ -> "doublet_print_s_a_b_symbol"
 | Cls_t.Triplet_print_s_a_b_c_symbol _ -> "triplet_print_s_a_b_c_symbol"
 | Cls_t.Tree_print_s_a_symbol _ -> "tree_print_s_a_symbol"
;;

let name = function
  | Cls_t.Constant_symbol smb -> name_constant_symbol smb
  | Cls_t.Singlet_symbol smb -> name_singlet_symbol smb
  | Cls_t.Pair_symbol smb -> name_pair_symbol smb
  | Cls_t.Trio_symbol smb -> name_trio_symbol smb
  | Cls_t.Datastructure_symbol smb -> name_datastructure_symbol smb
;;

(** {6 Retrieving.} *)

let key smb_cal =
  Dbt_v.make "caml_line" (name smb_cal)
;;

(** {6 Abbreviating.} *)

let caml_line_symbol_of_constant_symbol s = Cls_t.Constant_symbol s;;
let caml_line_symbol_of_singlet_symbol s = Cls_t.Singlet_symbol s;;
let caml_line_symbol_of_pair_symbol s = Cls_t.Pair_symbol s;;
let caml_line_symbol_of_trio_symbol s = Cls_t.Trio_symbol s;;
let caml_line_symbol_of_datastructure_symbol s = Cls_t.Datastructure_symbol s;;

let comment_line_item ctt_cpg =
 caml_line_symbol_of_constant_symbol (Cls_t.Comment_line_item_symbol ctt_cpg)
;;

let double_semicolon () =
 caml_line_symbol_of_constant_symbol Cls_t.Double_semicolon_symbol
;;

let empty_line () =
 caml_line_symbol_of_constant_symbol Cls_t.Empty_line_symbol
;;

let let_name_eq_function () =
 caml_line_symbol_of_constant_symbol Cls_t.Let_name_eq_function_symbol
;;

let let_print_eq_function () =
 caml_line_symbol_of_constant_symbol Cls_t.Let_print_eq_function_symbol
;;

let basic_type_line str =
 caml_line_symbol_of_constant_symbol (Cls_t.Basic_type_line_symbol str)
;;

let val_print_format_formatter_arrow () =
 caml_line_symbol_of_constant_symbol Cls_t.Val_print_format_formatter_arrow_symbol
;;

let pipe_arrow_false () = 
 caml_line_symbol_of_constant_symbol Cls_t.Pipe_arrow_false_symbol
;;

let then_false_else_begin () =
  caml_line_symbol_of_constant_symbol (Cls_t.Then_false_else_begin_symbol)
;;

let end_line () =
  caml_line_symbol_of_constant_symbol (Cls_t.End_line_symbol)
;;

let val_name () =
 caml_line_symbol_of_constant_symbol Cls_t.Val_name_symbol
;;

(** {6 Singlet.} *)

let type_definition ctt_cpg =
 caml_line_symbol_of_singlet_symbol (Cls_t.Type_definition_symbol ctt_cpg)
;;

let createdby ctt_cpg =
 caml_line_symbol_of_singlet_symbol (Cls_t.Createdby_symbol ctt_cpg)
;;

let module_m_eq_m_symbol ctt_cpg =
 caml_line_symbol_of_singlet_symbol (Cls_t.Module_m_eq_m_symbol ctt_cpg)
;;

let type_pipe_bare smb_ent_bar =
 caml_line_symbol_of_singlet_symbol (Cls_t.Type_pipe_bare_symbol smb_ent_bar)
;;

let type_pipe_s_of_s_dot_s ctt_cpg =
 caml_line_symbol_of_singlet_symbol (Cls_t.Type_pipe_s_of_s_dot_s_symbol ctt_cpg)
;;

let let_nam_cod ecc_t =
 caml_line_symbol_of_singlet_symbol (Cls_t.Let_nam_cod_symbol ecc_t)
;;

let let_name_b_eq ctt_cpg =
 caml_line_symbol_of_singlet_symbol (Cls_t.Let_name_b_eq_symbol ctt_cpg)
;;

let let_name_t_eq ctt_cpg =
 caml_line_symbol_of_singlet_symbol (Cls_t.Let_name_t_eq_symbol ctt_cpg)
;;

let let_print_b_eq ctt_cpg =
 caml_line_symbol_of_singlet_symbol (Cls_t.Let_print_b_eq_symbol ctt_cpg)
;;

let let_print_t_eq ctt_cpg =
 caml_line_symbol_of_singlet_symbol (Cls_t.Let_print_t_eq_symbol ctt_cpg)
;;

let s_name_s ctt_cpg =
 caml_line_symbol_of_singlet_symbol (Cls_t.S_name_s_symbol ctt_cpg)
;;

let let_print_b ctt_cpg =
 caml_line_symbol_of_singlet_symbol (Cls_t.Let_print_b_symbol ctt_cpg)
;;

let s_print_s ctt_cpg =
 caml_line_symbol_of_singlet_symbol (Cls_t.S_print_s_symbol ctt_cpg)
;;

let b_arrow ctt_cpg =
 caml_line_symbol_of_singlet_symbol (Cls_t.B_arrow_symbol ctt_cpg)
;;

let s_arrow ctt_cpg =
 caml_line_symbol_of_singlet_symbol (Cls_t.S_arrow_symbol ctt_cpg)
;;

let t_arrow ctt_cpg =
 caml_line_symbol_of_singlet_symbol (Cls_t.T_arrow_symbol ctt_cpg)
;;

let s ctt_cpg =
 caml_line_symbol_of_singlet_symbol (Cls_t.S_symbol ctt_cpg)
;;

let t ctt_cpg =
 caml_line_symbol_of_singlet_symbol (Cls_t.T_symbol ctt_cpg)
;;

let b ctt_cpg =
 caml_line_symbol_of_singlet_symbol (Cls_t.B_symbol ctt_cpg)
;;

let title_function ctt_cpg =
 caml_line_symbol_of_singlet_symbol (Cls_t.Title_function_symbol ctt_cpg)
;;

let title_type ctt_cpg =
 caml_line_symbol_of_singlet_symbol (Cls_t.Title_type_symbol ctt_cpg)
;;

let doublet_left ctt_cpg = (* ctt_cpg is doublet entity "aggregate" *)
 caml_line_symbol_of_singlet_symbol (Cls_t.Doublet_left_symbol ctt_cpg)
;;

let doublet_right ctt_cpg = 
 caml_line_symbol_of_singlet_symbol (Cls_t.Doublet_right_symbol ctt_cpg)
;;

let triplet_left ctt_cpg = (* ctt_cpg is triplet entity *)
 caml_line_symbol_of_singlet_symbol (Cls_t.Triplet_left_symbol ctt_cpg)
;;

let triplet_middle ctt_cpg = 
 caml_line_symbol_of_singlet_symbol (Cls_t.Triplet_middle_symbol ctt_cpg)
;;

let triplet_right ctt_cpg = 
 caml_line_symbol_of_singlet_symbol (Cls_t.Triplet_right_symbol ctt_cpg)
;;

(** {6 Pair.} *)

let name_pipe_t_dot_s_arrow_s ctt_cpg =
 caml_line_symbol_of_pair_symbol (Cls_t.Name_pipe_t_dot_s_arrow_s_symbol ctt_cpg)
;;

let pipe_s_off_t_print_fatal_error ctt_cpg =
 caml_line_symbol_of_pair_symbol (Cls_t.Pipe_s_off_t_print_fatal_error_symbol ctt_cpg)
;;

let print_pipe_t_dot_s_arrow_s ctt_cpg =
 caml_line_symbol_of_pair_symbol (Cls_t.Print_pipe_t_dot_s_arrow_s_symbol ctt_cpg)
;;

let pipe_t_dot_s_arrow ctt_cpg =
 caml_line_symbol_of_pair_symbol (Cls_t.Pipe_t_dot_s_arrow_symbol ctt_cpg)
;;

let pipe_datastructure_s_arrow s =
 caml_line_symbol_of_singlet_symbol (Cls_t.Pipe_datastructure_s_arrow_symbol s)
;;

let pipe_t_dot_s_arrow_true ctt_cpg =
 caml_line_symbol_of_pair_symbol (Cls_t.Pipe_t_dot_s_arrow_true_symbol ctt_cpg)
;;

let pipe_t_dot_s_s_arrow_s ctt_cpg =
 caml_line_symbol_of_pair_symbol (Cls_t.Pipe_t_dot_s_s_arrow_s_symbol ctt_cpg)
;;

let pipe_t_dot_s_s_arrow ctt_cpg =
 caml_line_symbol_of_pair_symbol (Cls_t.Pipe_t_dot_s_s_arrow_symbol ctt_cpg)
;;

let let_s_eq_t_dot_s ctt_cpg =
 caml_line_symbol_of_pair_symbol (Cls_t.Let_s_eq_t_dot_s_symbol ctt_cpg)
;;

let let_s_off_t_function ctt_cpg =
 caml_line_symbol_of_pair_symbol (Cls_t.Let_s_off_t_function_symbol ctt_cpg)
;;

let let_b_off_t_t_argument ctt_cpg =
 caml_line_symbol_of_pair_symbol (Cls_t.Let_b_off_t_t_argument_symbol ctt_cpg)
;;

let let_s_off_t_t_argument ctt_cpg =
 caml_line_symbol_of_pair_symbol (Cls_t.Let_s_off_t_t_argument_symbol ctt_cpg)
;;

let let_u_u_off_t_t_in ctt_cpg =
 caml_line_symbol_of_pair_symbol (Cls_t.Let_u_u_off_t_t_in_symbol ctt_cpg)
;;

let let_is_s_off_t_function ctt_cpg = 
  caml_line_symbol_of_pair_symbol (Cls_t.Let_is_s_off_t_function_symbol ctt_cpg)
;;

let let_is_b_off_t_t_argument ctt_cpg = 
  caml_line_symbol_of_pair_symbol (Cls_t.Let_is_b_off_t_t_argument_symbol ctt_cpg)
;;

let u_is_b_off_u_u ctt_cpg = 
  caml_line_symbol_of_pair_symbol (Cls_t.U_is_b_off_u_u_symbol ctt_cpg)
;;

let if_not_is_u_off_t_t ctt_cpg =
  caml_line_symbol_of_pair_symbol (Cls_t.If_not_is_u_off_t_t_symbol ctt_cpg)
;;

let b_off_u_u ctt_cpg =
 caml_line_symbol_of_pair_symbol (Cls_t.B_off_u_u_symbol ctt_cpg)
;;

let let_t_of_s_s_eq ctt_cpg =
 caml_line_symbol_of_pair_symbol (Cls_t.Let_t_of_s_s_eq_symbol ctt_cpg)
;;

let let_t_of_b_b_eq ctt_cpg =
 caml_line_symbol_of_pair_symbol (Cls_t.Let_t_of_b_b_eq_symbol ctt_cpg)
;;

let t_dot_s_s ctt_cpg =
 caml_line_symbol_of_pair_symbol (Cls_t.T_dot_s_s_symbol ctt_cpg)
;;

let let_u_eq_u_dot_u_of_b_b_in ctt_cpg =
 caml_line_symbol_of_pair_symbol (Cls_t.Let_u_eq_u_dot_u_of_b_b_in_symbol ctt_cpg)
;;

let t_of_u_u ctt_cpg =
 caml_line_symbol_of_pair_symbol (Cls_t.T_of_u_u_symbol ctt_cpg)
;;

let type_pipe_s_of_b ctt_cpg =
 caml_line_symbol_of_pair_symbol (Cls_t.Type_pipe_s_of_b_symbol ctt_cpg)
;;

let val_t_of_b ctt_cpg =
 caml_line_symbol_of_pair_symbol (Cls_t.Val_t_of_b_symbol ctt_cpg)
;;

let val_t_of_s ctt_cpg =
 caml_line_symbol_of_pair_symbol (Cls_t.Val_t_of_s_symbol ctt_cpg)
;;

let val_b_off_t ctt_cpg =
 caml_line_symbol_of_pair_symbol (Cls_t.Val_b_off_t_symbol ctt_cpg)
;;

let val_s_off_t ctt_cpg =
 caml_line_symbol_of_pair_symbol (Cls_t.Val_s_off_t_symbol ctt_cpg)
;;

let val_s_colon_t ctt_cpg =
 caml_line_symbol_of_pair_symbol (Cls_t.Val_s_colon_t_symbol ctt_cpg)
;;

let val_is_b_off_t ctt_cpg =
 caml_line_symbol_of_pair_symbol (Cls_t.Val_is_b_off_t_symbol ctt_cpg)
;;

let val_is_s_off_t ctt_cpg =
 caml_line_symbol_of_pair_symbol (Cls_t.Val_is_s_off_t_symbol ctt_cpg)
;;

let val_b_colon_t ctt_cpg =
 caml_line_symbol_of_pair_symbol (Cls_t.Val_b_colon_t_symbol ctt_cpg)
;;

(** {6 Trio.} *)

let type_pipe_doublet_a_b ecs_gs_l =
 caml_line_symbol_of_datastructure_symbol (Cls_t.Type_pipe_doublet_a_b_symbol ecs_gs_l)
;;

let type_pipe_triplet_a_b_c ecs_gs_l =
 caml_line_symbol_of_datastructure_symbol (Cls_t.Type_pipe_triplet_a_b_c_symbol ecs_gs_l)
;;

let type_pipe_list_a ecs_gs_l =
 caml_line_symbol_of_datastructure_symbol (Cls_t.Type_pipe_list_a_symbol ecs_gs_l)
;;

let type_pipe_tree_a ecs_gs_l =
 caml_line_symbol_of_datastructure_symbol (Cls_t.Type_pipe_tree_a_symbol ecs_gs_l)
;;

let doublet_name_s_a_b ctt_cpg =
 caml_line_symbol_of_datastructure_symbol (Cls_t.Doublet_name_s_a_b_symbol ctt_cpg)
;;

let triplet_name_s_a_b_c ctt_cpg =
 caml_line_symbol_of_datastructure_symbol (Cls_t.Triplet_name_s_a_b_c_symbol ctt_cpg)
;;

let tree_name_s_a ctt_cpg =
 caml_line_symbol_of_datastructure_symbol (Cls_t.Tree_name_s_a_symbol ctt_cpg)
;;

let doublet_print_s_a_b ctt_cpg =
 caml_line_symbol_of_datastructure_symbol (Cls_t.Doublet_print_s_a_b_symbol ctt_cpg)
;;

let triplet_print_s_a_b_c ctt_cpg =
 caml_line_symbol_of_datastructure_symbol (Cls_t.Triplet_print_s_a_b_c_symbol ctt_cpg)
;;

let tree_print_s_a ctt_cpg =
 caml_line_symbol_of_datastructure_symbol (Cls_t.Tree_print_s_a_symbol ctt_cpg)
;;

let let_b_eq_t_of_u_u_dot_b tri =
 caml_line_symbol_of_trio_symbol (Cls_t.Let_b_eq_t_of_u_u_dot_b_symbol tri)
;;

