(** {3 Camlline_constant_pervasive_value_t}  *)

(** {6 Typing} *)

type camlline_constant_pervasive_value =
  | Basic_type             of string (* string *)
  | Begin_line             of string (* begin *)
  | Bracket_left           of string (* [ *)
  | Bracket_right          of string (* ] *)
  | Curly_bracket_left     of string (* { *)
  | Curly_bracket_right    of string (* } *)
  | Double_semicolon       of string (* ;; *)
  | Else_line              of string (* else *)
  | Empty_line             of string (* *)
  | End_line               of string (* end *)
  | Item_title             of string (* (** {6 Extracting}*) *)
  | Parenthesis_left       of string (* ( *)
  | Parenthesis_right      of string (* ( *)
  | Semicolon              of string (* ; *)
  | Then_false             of string (* then false *)
;;
