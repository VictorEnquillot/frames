(** {3 The Key for Provider management.}  *)

module Dbt_t = Doublet_t

(** {6 Typing.} *)

type key = (string, string) Dbt_t.doublet
;;
(** Simulation of Constructor_path for the Caml code management.
  
      key         value

    Example : 
    ("codefile",         "function")
    ("category",       "constructor_path")
    ("entity",         "atom")
    ("item",           "extracting")
    ("caml_paragraph", "function_s_off_e")
    ("caml_line",      "let_a_of_b_function")
*)

