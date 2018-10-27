(** {3 Camlline_for_symbol_bare_son_top_symbol_v} *)


let documentation () = 
[
  "Needs: ";
  "Current : CDOS:Camlline_for_symbol_bare_son_top_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name = function
  | Camlline_for_symbol_bare_son_top_symbol_t.Let_es_equal_et_symbol_tdot_es -> "Let_es_equal_et_symbol_tdot_es"
  | Camlline_for_symbol_bare_son_top_symbol_t.Pipe_et_symbol_tdot_es_arrow -> "Pipe_et_symbol_tdot_es_arrow"
  | Camlline_for_symbol_bare_son_top_symbol_t.Pipe_et_symbol_tdot_es_arrow_string -> "Pipe_et_symbol_tdot_es_arrow_string"
  | Camlline_for_symbol_bare_son_top_symbol_t.Space_let_ac_at_equal_et_symbol_vdot_es_in -> "Space_let_ac_at_equal_et_symbol_vdot_es_in"
;;


(** {6 Extracting_topson} *)


(** {6 Extracting_grandson} *)


(** {6 Querying_topson} *)


(** {6 Querying_grandson} *)


(** {6 Upgrading_topson} *)


(** {6 Upgrading_grandson} *)


(** {6 Abbreviating_topson} *)

let let_es_equal_et_symbol_tdot_es = Camlline_for_symbol_bare_son_top_symbol_t.Let_es_equal_et_symbol_tdot_es;;

let pipe_et_symbol_tdot_es_arrow = Camlline_for_symbol_bare_son_top_symbol_t.Pipe_et_symbol_tdot_es_arrow;;

let pipe_et_symbol_tdot_es_arrow_string = Camlline_for_symbol_bare_son_top_symbol_t.Pipe_et_symbol_tdot_es_arrow_string;;

let space_let_ac_at_equal_et_symbol_vdot_es_in = Camlline_for_symbol_bare_son_top_symbol_t.Space_let_ac_at_equal_et_symbol_vdot_es_in;;


(** {6 Abbreviating_grandson} *)


(** {6 Making} *)

let make nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "let_es_equal_et_symbol_tdot_es" -> let_es_equal_et_symbol_tdot_es
  | "pipe_et_symbol_tdot_es_arrow" -> pipe_et_symbol_tdot_es_arrow
  | "pipe_et_symbol_tdot_es_arrow_string" -> pipe_et_symbol_tdot_es_arrow_string
  | "space_let_ac_at_equal_et_symbol_vdot_es_in" -> space_let_ac_at_equal_et_symbol_vdot_es_in
  | _ ->
    failwith "Not_Camlline_for_symbol_bare_son_top_symbol:Camlline_for_symbol_bare_son_top_symbol_v:make"
;;


(** created by ./generator camlline_for_symbol_bare_son_top implementation symbol at 10:33 5 Feb 2013. *)



