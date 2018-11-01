(** {3 Figure_set_body_triangle_scalene_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Figure_set_body_triangle_scalene_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Figure_set_body_triangle_scalene_symbol_t.Figure_set_body_triangle_scalene_acute_symbol sym_fsa ->
    Figure_set_body_triangle_scalene_acute_symbol_v.name sym_fsa
  | Figure_set_body_triangle_scalene_symbol_t.Figure_set_body_triangle_scalene_obtuse_symbol sym_fso ->
    Figure_set_body_triangle_scalene_obtuse_symbol_v.name sym_fso
  | Figure_set_body_triangle_scalene_symbol_t.Figure_set_body_triangle_scalene_right_symbol sym_fsr ->
    Figure_set_body_triangle_scalene_right_symbol_v.name sym_fsr
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Figure_set_body_triangle_scalene_symbol_t.Figure_set_body_triangle_scalene_acute_symbol sym_fsa ->
  Figure_set_body_triangle_scalene_acute_symbol_v.string_off sym_fsa
  | Figure_set_body_triangle_scalene_symbol_t.Figure_set_body_triangle_scalene_obtuse_symbol sym_fso ->
  Figure_set_body_triangle_scalene_obtuse_symbol_v.string_off sym_fso
  | Figure_set_body_triangle_scalene_symbol_t.Figure_set_body_triangle_scalene_right_symbol sym_fsr ->
  Figure_set_body_triangle_scalene_right_symbol_v.string_off sym_fsr
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_fts =
  Format.sprintf "Figure_set_body_triangle_scalene_symbol_t.%s" (String.capitalize_ascii (name sym_fts))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_fts =
  Format.sprintf "%s \"%s\"" (longname sym_fts) (string_off sym_fts)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let figure_set_body_triangle_scalene_acute_symbol_off_figure_set_body_triangle_scalene_symbol = function
  | Figure_set_body_triangle_scalene_symbol_t.Figure_set_body_triangle_scalene_acute_symbol sym_fsa -> sym_fsa
  | sym_fts -> Error_messages_v.print_fatal_error
      nam_cod "figure_set_body_triangle_scalene_acute_symbol_off_figure_set_body_triangle_scalene_symbol"
      "Figure_set_body_triangle_scalene_acute_symbol"
      (name sym_fts) "check"
;;

let figure_set_body_triangle_scalene_obtuse_symbol_off_figure_set_body_triangle_scalene_symbol = function
  | Figure_set_body_triangle_scalene_symbol_t.Figure_set_body_triangle_scalene_obtuse_symbol sym_fso -> sym_fso
  | sym_fts -> Error_messages_v.print_fatal_error
      nam_cod "figure_set_body_triangle_scalene_obtuse_symbol_off_figure_set_body_triangle_scalene_symbol"
      "Figure_set_body_triangle_scalene_obtuse_symbol"
      (name sym_fts) "check"
;;

let figure_set_body_triangle_scalene_right_symbol_off_figure_set_body_triangle_scalene_symbol = function
  | Figure_set_body_triangle_scalene_symbol_t.Figure_set_body_triangle_scalene_right_symbol sym_fsr -> sym_fsr
  | sym_fts -> Error_messages_v.print_fatal_error
      nam_cod "figure_set_body_triangle_scalene_right_symbol_off_figure_set_body_triangle_scalene_symbol"
      "Figure_set_body_triangle_scalene_right_symbol"
      (name sym_fts) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_figure_set_body_triangle_scalene_acute_symbol_off_figure_set_body_triangle_scalene_symbol = function
  | Figure_set_body_triangle_scalene_symbol_t.Figure_set_body_triangle_scalene_acute_symbol _ -> true
  | _ -> false
;;

let is_figure_set_body_triangle_scalene_obtuse_symbol_off_figure_set_body_triangle_scalene_symbol = function
  | Figure_set_body_triangle_scalene_symbol_t.Figure_set_body_triangle_scalene_obtuse_symbol _ -> true
  | _ -> false
;;

let is_figure_set_body_triangle_scalene_right_symbol_off_figure_set_body_triangle_scalene_symbol = function
  | Figure_set_body_triangle_scalene_symbol_t.Figure_set_body_triangle_scalene_right_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_figure_set_body_triangle_scalene_acute_constructor sym_fts =
  if not (is_figure_set_body_triangle_scalene_acute_symbol_off_figure_set_body_triangle_scalene_symbol sym_fts)
  then false
  else
    begin
      let sym_fsa = figure_set_body_triangle_scalene_acute_symbol_off_figure_set_body_triangle_scalene_symbol sym_fts in
      Figure_set_body_triangle_scalene_acute_symbol_v.is_figure_set_body_triangle_scalene_acute_constructor sym_fsa
    end
;;

let is_figure_set_body_triangle_scalene_obtuse_constructor sym_fts =
  if not (is_figure_set_body_triangle_scalene_obtuse_symbol_off_figure_set_body_triangle_scalene_symbol sym_fts)
  then false
  else
    begin
      let sym_fso = figure_set_body_triangle_scalene_obtuse_symbol_off_figure_set_body_triangle_scalene_symbol sym_fts in
      Figure_set_body_triangle_scalene_obtuse_symbol_v.is_figure_set_body_triangle_scalene_obtuse_constructor sym_fso
    end
;;

let is_figure_set_body_triangle_scalene_right_constructor sym_fts =
  if not (is_figure_set_body_triangle_scalene_right_symbol_off_figure_set_body_triangle_scalene_symbol sym_fts)
  then false
  else
    begin
      let sym_fsr = figure_set_body_triangle_scalene_right_symbol_off_figure_set_body_triangle_scalene_symbol sym_fts in
      Figure_set_body_triangle_scalene_right_symbol_v.is_figure_set_body_triangle_scalene_right_constructor sym_fsr
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let figure_set_body_triangle_scalene_symbol_of_figure_set_body_triangle_scalene_acute_symbol sym_fsa = 
  Figure_set_body_triangle_scalene_symbol_t.Figure_set_body_triangle_scalene_acute_symbol sym_fsa
;;

let figure_set_body_triangle_scalene_symbol_of_figure_set_body_triangle_scalene_obtuse_symbol sym_fso = 
  Figure_set_body_triangle_scalene_symbol_t.Figure_set_body_triangle_scalene_obtuse_symbol sym_fso
;;

let figure_set_body_triangle_scalene_symbol_of_figure_set_body_triangle_scalene_right_symbol sym_fsr = 
  Figure_set_body_triangle_scalene_symbol_t.Figure_set_body_triangle_scalene_right_symbol sym_fsr
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let figure_set_body_triangle_scalene_acute_constructor s = figure_set_body_triangle_scalene_symbol_of_figure_set_body_triangle_scalene_acute_symbol (Figure_set_body_triangle_scalene_acute_symbol_v.figure_set_body_triangle_scalene_acute_constructor s);;

let figure_set_body_triangle_scalene_obtuse_constructor s = figure_set_body_triangle_scalene_symbol_of_figure_set_body_triangle_scalene_obtuse_symbol (Figure_set_body_triangle_scalene_obtuse_symbol_v.figure_set_body_triangle_scalene_obtuse_constructor s);;

let figure_set_body_triangle_scalene_right_constructor s = figure_set_body_triangle_scalene_symbol_of_figure_set_body_triangle_scalene_right_symbol (Figure_set_body_triangle_scalene_right_symbol_v.figure_set_body_triangle_scalene_right_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Figure_set_body_triangle_scalene_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Figure_set_body_triangle_scalene_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try figure_set_body_triangle_scalene_symbol_of_figure_set_body_triangle_scalene_acute_symbol
      (Figure_set_body_triangle_scalene_acute_symbol_v.make nam s)
  with Failure "Not_a_figure_set_body_triangle_scalene_acute_symbol:Figure_set_body_triangle_scalene_acute_symbol_v.ml:make" ->
  try figure_set_body_triangle_scalene_symbol_of_figure_set_body_triangle_scalene_obtuse_symbol
      (Figure_set_body_triangle_scalene_obtuse_symbol_v.make nam s)
  with Failure "Not_a_figure_set_body_triangle_scalene_obtuse_symbol:Figure_set_body_triangle_scalene_obtuse_symbol_v.ml:make" ->
  try figure_set_body_triangle_scalene_symbol_of_figure_set_body_triangle_scalene_right_symbol
      (Figure_set_body_triangle_scalene_right_symbol_v.make nam s)
  with Failure "Not_a_figure_set_body_triangle_scalene_right_symbol:Figure_set_body_triangle_scalene_right_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Figure_set_body_triangle_scalene_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Figure_set_body_triangle_scalene_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Figure_set_body_triangle_scalene_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Figure_set_body_triangle_scalene_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Figure_set_body_triangle_scalene subtype" nam s)
      "it does not exists"
      "Check file Figure_set_body_triangle_scalene_symbol_v.ml"
    in
    failwith "Not_a_figure_set_body_triangle_scalene_symbol:Figure_set_body_triangle_scalene_symbol_v.ml:make"
;;


(** Figure_set_body_triangle_scalene_symbol_v at 13:58:5 on 2 Dec 2016. created by version v2.4 of generator *)



