(** {3 The functionalities for a Value for a Caml_line.}  *)

(** {6 Making.} *)

val make_title_type :
 Entitycategorycodefile_t.entitycategorycodefile -> 
    Caml_line_value_t.caml_line_value
;;

val make_title_function :
 Entitycategorycodefile_t.entitycategorycodefile -> 
    Caml_line_value_t.caml_line_value
;;

val make_let_nam_cod :
 Entitycategorycodefile_t.entitycategorycodefile -> 
    Caml_line_value_t.caml_line_value
;;

(** {9 Typing.} *)

val make_type_definition :
 Entitycategorycodefile_t.entitycategorycodefile ->
    Caml_line_value_t.caml_line_value
;;

val make_type_pipe_bare :
    Entity_symbol_t.entity_bare_symbol ->
    Caml_line_value_t.caml_line_value
;;

val make_pipe_barebasic :
    string ->
    Caml_line_value_t.caml_line_value
;;

val make_type_pipe_s_of_s_dot_s :
 Entitycategorycodefile_t.entitycategorycodefile ->
    Caml_line_value_t.caml_line_value
;;

val make_type_pipe_t_of_b :
 Entitycategorycodefile_t.entitycategorycodefile ->
 Entitycategorycodefile_t.entitycategorycodefile ->
    Caml_line_value_t.caml_line_value
;;

val make_pipe_t_dot_s_arrow_true :
    Entitycategorycodefile_t.entitycategorycodefile ->
      Entitycategorycodefile_t.entitycategorycodefile ->
	Caml_line_value_t.caml_line_value
;;

val make_pipe_t_dot_s_s_arrow_s :
    Entitycategorycodefile_t.entitycategorycodefile ->
      Entitycategorycodefile_t.entitycategorycodefile ->
	Caml_line_value_t.caml_line_value
;;

val make_pipe_t_dot_s_s_arrow :
    Entitycategorycodefile_t.entitycategorycodefile ->
      Entitycategorycodefile_t.entitycategorycodefile ->
	Caml_line_value_t.caml_line_value
;;

val make_pipe_t_dot_s_arrow :
    Entitycategorycodefile_t.entitycategorycodefile ->
      Entitycategorycodefile_t.entitycategorycodefile ->
	Caml_line_value_t.caml_line_value
;;

val make_pipe_constructor_argument_to_argument :
    Entitycategorycodefile_t.entitycategorycodefile ->
    Caml_line_value_t.caml_line_value
;;

val make_double_semicolon :
    unit ->
    Caml_line_value_t.caml_line_value
;;

val make_val_s_colon_t :
    Entitycategorycodefile_t.entitycategorycodefile ->
      Entitycategorycodefile_t.entitycategorycodefile ->
	Caml_line_value_t.caml_line_value
;;

(** {6 Extracting} *)

val make_let_s_off_t_function :
 Entitycategorycodefile_t.entitycategorycodefile ->
 Entitycategorycodefile_t.entitycategorycodefile ->
    Caml_line_value_t.caml_line_value
;;

val make_b_off_t_t :
 Entitycategorycodefile_t.entitycategorycodefile ->
 Entitycategorycodefile_t.entitycategorycodefile ->
    Caml_line_value_t.caml_line_value
;;

val make_let_t_of_b_function :
    Entitycategorycodefile_t.entitycategorycodefile ->
      Entitycategorycodefile_t.entitycategorycodefile ->
	Caml_line_value_t.caml_line_value
;;

val make_let_b_b_off_t_t :
    Entitycategorycodefile_t.entitycategorycodefile ->
      Entitycategorycodefile_t.entitycategorycodefile ->
	Caml_line_value_t.caml_line_value
;;

val make_let_u_eq_u_dot_u_of_b_b_in :
    Entitycategorycodefile_t.entitycategorycodefile ->
      Entitycategorycodefile_t.entitycategorycodefile ->
	Caml_line_value_t.caml_line_value
;;

val make_let_b_eq_t_of_u_u_dot_b :
    Entitycategorycodefile_t.entitycategorycodefile ->
      Entitycategorycodefile_t.entitycategorycodefile ->
	Entitycategorycodefile_t.entitycategorycodefile ->
	  Caml_line_value_t.caml_line_value
;;
    
val make_let_t_of_b_b_eq :
    Entitycategorycodefile_t.entitycategorycodefile ->
      Entitycategorycodefile_t.entitycategorycodefile ->
	Caml_line_value_t.caml_line_value
;;

val make_u_is_b_off_u_u :
    Entitycategorycodefile_t.entitycategorycodefile ->
      Entitycategorycodefile_t.entitycategorycodefile ->
	Caml_line_value_t.caml_line_value
;;

val make_val_b_off_t :
    Entitycategorycodefile_t.entitycategorycodefile ->
    Entitycategorycodefile_t.entitycategorycodefile ->
        Caml_line_value_t.caml_line_value
;;

val make_t_arrow :
 Entitycategorycodefile_t.entitycategorycodefile ->
    Caml_line_value_t.caml_line_value
;;

val make_t :
    Entitycategorycodefile_t.entitycategorycodefile ->
      Caml_line_value_t.caml_line_value
;;

(** {6 Displaying functions.} *)

val make_let_name_eq_function :
    unit ->
    Caml_line_value_t.caml_line_value
;;

val make_let_print_eq_function :
    unit ->
    Caml_line_value_t.caml_line_value
;;

val make_let_name_b_eq :
 Entitycategorycodefile_t.entitycategorycodefile ->
    Caml_line_value_t.caml_line_value
;;

val make_let_print_b_eq :
 Entitycategorycodefile_t.entitycategorycodefile ->
    Caml_line_value_t.caml_line_value
;;

val make_s_name_s :
 Entitycategorycodefile_t.entitycategorycodefile ->
    Caml_line_value_t.caml_line_value
;;

val make_s_print_s :
 Entitycategorycodefile_t.entitycategorycodefile ->
    Caml_line_value_t.caml_line_value
;;

val make_val_name :
    unit ->
    Caml_line_value_t.caml_line_value
;;

val make_val_print_format_formatter_arrow :
    unit ->
    Caml_line_value_t.caml_line_value
;;

(** {6 Displaying leaf_pure constructor.} *)

val make_name_pipe_t_dot_s_arrow_s :
    Entitycategorycodefile_t.entitycategorycodefile ->
      Entitycategorycodefile_t.entitycategorycodefile ->
	Caml_line_value_t.caml_line_value
;;

val make_print_pipe_t_dot_s_arrow_s :
    Entitycategorycodefile_t.entitycategorycodefile ->
      Entitycategorycodefile_t.entitycategorycodefile ->
	Caml_line_value_t.caml_line_value
;;

(** {6 Making.} *)

val make :
    Caml_line_symbol_t.caml_line_symbol ->
      Caml_line_value_t.caml_line_value
;;

val make_b_off_t_t :
    Entitycategorycodefile_t.entitycategorycodefile ->
      Entitycategorycodefile_t.entitycategorycodefile ->
	Caml_line_value_t.caml_line_value
;;

(** {6 Displaying.} *)

val name : 
    Caml_line_value_t.caml_line_value ->
      string
;;

val print : Format.formatter  -> 
  Caml_line_value_t.caml_line_value ->
    unit
;;

val write : out_channel ->
  Caml_line_value_t.caml_line_value ->
    unit
;;
