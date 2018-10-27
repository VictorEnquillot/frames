(** {3 The functionalities fro a Symbol for a Line in a Paragraph of Caml.}  *)

(** {6 Making.} *)
(**
val make_hierarchical :
    Caml_paragraph_context_t.caml_paragraph_context ->
      string ->
	Caml_line_symbol_t.caml_line_symbol 
;;

val make_datastructure :
    Entitycategorysuffix_t.entitycategorysuffix list ->
      string ->
	Caml_line_symbol_t.caml_line_symbol 
;;
**)
(** {6 Displaying.} *)

val name :
    Caml_line_symbol_t.caml_line_symbol ->
      string
;;

(** {6 Retrieving.} *)

val key :
    Caml_line_symbol_t.caml_line_symbol ->
      Key_t.key
;;

(** {6 Abbreviating.} *)

val double_semicolon :
    unit ->
      Caml_line_symbol_t.caml_line_symbol
;;

val then_false_else_begin :
    unit ->
      Caml_line_symbol_t.caml_line_symbol
;;

val end_line :
    unit ->
      Caml_line_symbol_t.caml_line_symbol
;;

val empty_line :
    unit ->
      Caml_line_symbol_t.caml_line_symbol
;;

val pipe_arrow_false :
    unit ->
     Caml_line_symbol_t.caml_line_symbol
;;

val let_name_eq_function :
    unit ->
      Caml_line_symbol_t.caml_line_symbol
;;

val let_print_eq_function :
    unit ->
      Caml_line_symbol_t.caml_line_symbol
;;

val val_name :
    unit ->
      Caml_line_symbol_t.caml_line_symbol
;;

val val_print_format_formatter_arrow :
    unit ->
      Caml_line_symbol_t.caml_line_symbol
;;

val basic_type_line :
    string ->
      Caml_line_symbol_t.caml_line_symbol
;;

val comment_line_item :
  Caml_paragraph_context_t.caml_paragraph_context ->
     Caml_line_symbol_t.caml_line_symbol
;;

(** Singlet *)

val pipe_datastructure_s_arrow :
    Entitycategorycodefile_t.entitycategorycodefile ->
      Caml_line_symbol_t.caml_line_symbol
;;

val type_pipe_list_a :
    Entitycategorycodefile_t.entitycategorycodefile ->
      Caml_line_symbol_t.caml_line_symbol
;;

val type_pipe_tree_a :
    Entitycategorycodefile_t.entitycategorycodefile ->
      Caml_line_symbol_t.caml_line_symbol
;;

val doublet_left :
    Entitycategorycodefile_t.entitycategorycodefile ->
      Caml_line_symbol_t.caml_line_symbol
;;

val doublet_right :
    Entitycategorycodefile_t.entitycategorycodefile ->
      Caml_line_symbol_t.caml_line_symbol
;;

val triplet_left :
    Entitycategorycodefile_t.entitycategorycodefile ->
      Caml_line_symbol_t.caml_line_symbol
;;

val triplet_middle :
    Entitycategorycodefile_t.entitycategorycodefile ->
      Caml_line_symbol_t.caml_line_symbol
;;

val triplet_right :
    Entitycategorycodefile_t.entitycategorycodefile ->
      Caml_line_symbol_t.caml_line_symbol
;;

val module_m_eq_m_symbol :
    Entitycategorycodefile_t.entitycategorycodefile ->
      Caml_line_symbol_t.caml_line_symbol
;;

val createdby :
    Entitycategorycodefile_t.entitycategorycodefile ->
      Caml_line_symbol_t.caml_line_symbol
;;

val let_nam_cod :
    Entitycategorycodefile_t.entitycategorycodefile ->
      Caml_line_symbol_t.caml_line_symbol
;;

val type_definition :
    Entitycategorycodefile_t.entitycategorycodefile ->
      Caml_line_symbol_t.caml_line_symbol
;;

val type_pipe_bare :
    Entity_symbol_t.entity_bare_symbol ->
      Caml_line_symbol_t.caml_line_symbol
;;

val type_pipe_s_of_s_dot_s :
    Entitycategorycodefile_t.entitycategorycodefile ->
      Caml_line_symbol_t.caml_line_symbol
;;

val let_name_b_eq :
    Entitycategorycodefile_t.entitycategorycodefile ->
      Caml_line_symbol_t.caml_line_symbol
;;

val let_name_t_eq :
    Entitycategorycodefile_t.entitycategorycodefile ->
      Caml_line_symbol_t.caml_line_symbol
;;

val let_print_b_eq :
    Entitycategorycodefile_t.entitycategorycodefile -> 
      Caml_line_symbol_t.caml_line_symbol
;;

val let_print_t_eq :
    Entitycategorycodefile_t.entitycategorycodefile -> 
      Caml_line_symbol_t.caml_line_symbol
;;

val s_name_s :
    Entitycategorycodefile_t.entitycategorycodefile ->
     Caml_line_symbol_t.caml_line_symbol
;;

val let_print_b :
    Entitycategorycodefile_t.entitycategorycodefile ->
      Caml_line_symbol_t.caml_line_symbol
;;

val s_print_s :
    Entitycategorycodefile_t.entitycategorycodefile ->
     Caml_line_symbol_t.caml_line_symbol
;;

val b_arrow :
    Entitycategorycodefile_t.entitycategorycodefile ->
      Caml_line_symbol_t.caml_line_symbol
;;

val s_arrow :
  Entitycategorycodefile_t.entitycategorycodefile ->
     Caml_line_symbol_t.caml_line_symbol
;;

val t_arrow :
  Entitycategorycodefile_t.entitycategorycodefile ->
     Caml_line_symbol_t.caml_line_symbol
;;

val s :
  Entitycategorycodefile_t.entitycategorycodefile ->
     Caml_line_symbol_t.caml_line_symbol
;;

val t :
  Entitycategorycodefile_t.entitycategorycodefile ->
     Caml_line_symbol_t.caml_line_symbol
;;

val b :
  Entitycategorycodefile_t.entitycategorycodefile ->
     Caml_line_symbol_t.caml_line_symbol
;;

val title_function :
    Entitycategorycodefile_t.entitycategorycodefile ->
     Caml_line_symbol_t.caml_line_symbol
;;

val title_type :
    Entitycategorycodefile_t.entitycategorycodefile ->
      Caml_line_symbol_t.caml_line_symbol
;;

(** Pair *)

val pipe_t_dot_s_s_arrow :
    Entitycategorycodefile_t.entitycategorycodefile Pair_t.pair ->
      Caml_line_symbol_t.caml_line_symbol
;;

val pipe_t_dot_s_arrow_true :
    Entitycategorycodefile_t.entitycategorycodefile Pair_t.pair ->
      Caml_line_symbol_t.caml_line_symbol
;;

val name_pipe_t_dot_s_arrow_s :
    Entitycategorycodefile_t.entitycategorycodefile Pair_t.pair ->
      Caml_line_symbol_t.caml_line_symbol
;;

val print_pipe_t_dot_s_arrow_s :
    Entitycategorycodefile_t.entitycategorycodefile Pair_t.pair ->
      Caml_line_symbol_t.caml_line_symbol
;;

val pipe_s_off_t_print_fatal_error :
    Entitycategorycodefile_t.entitycategorycodefile Pair_t.pair ->
      Caml_line_symbol_t.caml_line_symbol
;;

val pipe_t_dot_s_s_arrow_s :
    Entitycategorycodefile_t.entitycategorycodefile Pair_t.pair ->
      Caml_line_symbol_t.caml_line_symbol
;;

val pipe_t_dot_s_s_arrow :
    Entitycategorycodefile_t.entitycategorycodefile Pair_t.pair ->
      Caml_line_symbol_t.caml_line_symbol
;;

val let_s_off_t_function :
    Entitycategorycodefile_t.entitycategorycodefile Pair_t.pair ->
      Caml_line_symbol_t.caml_line_symbol
;;

val let_b_off_t_t_argument :
    Entitycategorycodefile_t.entitycategorycodefile Pair_t.pair ->
      Caml_line_symbol_t.caml_line_symbol
;;

val let_s_off_t_t_argument :
    Entitycategorycodefile_t.entitycategorycodefile Pair_t.pair ->
      Caml_line_symbol_t.caml_line_symbol
;;

val let_u_u_off_t_t_in :
    Entitycategorycodefile_t.entitycategorycodefile Pair_t.pair ->
      Caml_line_symbol_t.caml_line_symbol
;;

val b_off_u_u :
    Entitycategorycodefile_t.entitycategorycodefile Pair_t.pair ->
      Caml_line_symbol_t.caml_line_symbol
;;

val if_not_is_u_off_t_t :
    Entitycategorycodefile_t.entitycategorycodefile Pair_t.pair ->
      Caml_line_symbol_t.caml_line_symbol
;;

val u_is_b_off_u_u :
  Entitycategorycodefile_t.entitycategorycodefile Pair_t.pair ->
     Caml_line_symbol_t.caml_line_symbol
;;

val let_is_s_off_t_function :
  Entitycategorycodefile_t.entitycategorycodefile Pair_t.pair ->
     Caml_line_symbol_t.caml_line_symbol
;;

val let_s_eq_t_dot_s :
  Entitycategorycodefile_t.entitycategorycodefile Pair_t.pair ->
     Caml_line_symbol_t.caml_line_symbol
;;

val let_is_b_off_t_t_argument :
  Entitycategorycodefile_t.entitycategorycodefile Pair_t.pair ->
     Caml_line_symbol_t.caml_line_symbol
;;

val let_t_of_s_s_eq :
  Entitycategorycodefile_t.entitycategorycodefile Pair_t.pair ->
     Caml_line_symbol_t.caml_line_symbol
;;

val let_t_of_b_b_eq :
  Entitycategorycodefile_t.entitycategorycodefile Pair_t.pair ->
     Caml_line_symbol_t.caml_line_symbol
;;

val t_dot_s_s :
  Entitycategorycodefile_t.entitycategorycodefile Pair_t.pair ->
     Caml_line_symbol_t.caml_line_symbol
;;

val let_u_eq_u_dot_u_of_b_b_in :
  Entitycategorycodefile_t.entitycategorycodefile Pair_t.pair ->
     Caml_line_symbol_t.caml_line_symbol
;;

val t_of_u_u :
  Entitycategorycodefile_t.entitycategorycodefile Pair_t.pair ->
     Caml_line_symbol_t.caml_line_symbol
;;

val type_pipe_s_of_b :
  Entitycategorycodefile_t.entitycategorycodefile Pair_t.pair ->
     Caml_line_symbol_t.caml_line_symbol
;;

val val_t_of_b :
  Entitycategorycodefile_t.entitycategorycodefile Pair_t.pair ->
     Caml_line_symbol_t.caml_line_symbol
;;

val val_t_of_s :
  Entitycategorycodefile_t.entitycategorycodefile Pair_t.pair ->
     Caml_line_symbol_t.caml_line_symbol
;;

val val_b_off_t :
  Entitycategorycodefile_t.entitycategorycodefile Pair_t.pair ->
     Caml_line_symbol_t.caml_line_symbol
;;

val val_s_off_t :
  Entitycategorycodefile_t.entitycategorycodefile Pair_t.pair ->
     Caml_line_symbol_t.caml_line_symbol
;;

val val_is_b_off_t :
  Entitycategorycodefile_t.entitycategorycodefile Pair_t.pair ->
     Caml_line_symbol_t.caml_line_symbol
;;

val val_b_colon_t :
  Entitycategorycodefile_t.entitycategorycodefile Pair_t.pair ->
     Caml_line_symbol_t.caml_line_symbol
;;

val val_s_colon_t :
  Entitycategorycodefile_t.entitycategorycodefile Pair_t.pair ->
     Caml_line_symbol_t.caml_line_symbol
;;

val val_is_s_off_t :
  Entitycategorycodefile_t.entitycategorycodefile Pair_t.pair ->
     Caml_line_symbol_t.caml_line_symbol
;;

val type_pipe_doublet_a_b :
  Entitycategorycodefile_t.entitycategorycodefile Pair_t.pair ->
     Caml_line_symbol_t.caml_line_symbol
;;

val tree_name_s_a :
    Entitycategorycodefile_t.entitycategorycodefile Pair_t.pair ->
      Caml_line_symbol_t.caml_line_symbol
;;

val tree_print_s_a :
    Entitycategorycodefile_t.entitycategorycodefile Pair_t.pair ->
      Caml_line_symbol_t.caml_line_symbol
;;
(** Trio *)

val let_b_eq_t_of_u_u_dot_b :
    Entitycategorycodefile_t.entitycategorycodefile Trio_t.trio ->
      Caml_line_symbol_t.caml_line_symbol
;;

val type_pipe_triplet_a_b_c :
    Entitycategorycodefile_t.entitycategorycodefile Trio_t.trio ->
      Caml_line_symbol_t.caml_line_symbol
;;

val doublet_name_s_a_b :
    Entitycategorycodefile_t.entitycategorycodefile Trio_t.trio ->
      Caml_line_symbol_t.caml_line_symbol
;;

val doublet_print_s_a_b :
    Entitycategorycodefile_t.entitycategorycodefile Trio_t.trio ->
      Caml_line_symbol_t.caml_line_symbol
;;

(** Quatuor *)

val triplet_print_s_a_b_c :
    Entitycategorycodefile_t.entitycategorycodefile Quatuor_t.quatuor ->
      Caml_line_symbol_t.caml_line_symbol
;;

val triplet_name_s_a_b_c :
    Entitycategorycodefile_t.entitycategorycodefile Quatuor_t.quatuor ->
      Caml_line_symbol_t.caml_line_symbol
;;

