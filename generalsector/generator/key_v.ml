(** {3 The functionalities for the Key for Provider management.}  *)

module Dbt_v = Doublet_v

(** {6 Making.} *)

let make st1 st2 = 
  Dbt_v.make st1 st2 
;;
(** Simulation of Constructor_path.
    Example : 
    ("codefile", "atom_symbol_function")
    ("item", "abbreviation")
    ("caml_line", "title")
*)

(** {6 Extracting.} *)

let key_name key =
  Dbt_v.left_off_doublet key
;;

let key_value key =
  Dbt_v.right_off_doublet key
;;

(** {6 Displaying.} *)

let name key =
  Dbt_v.name (fun s->s) (fun s->s) key
;;
