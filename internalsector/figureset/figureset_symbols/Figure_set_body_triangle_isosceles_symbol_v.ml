(** {3 Figure_set_body_triangle_isosceles_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Figure_set_body_triangle_isosceles_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Figure_set_body_triangle_isosceles_symbol_t.Figure_set_body_triangle_isosceles_acute_symbol sym_fia ->
    Figure_set_body_triangle_isosceles_acute_symbol_v.name sym_fia
  | Figure_set_body_triangle_isosceles_symbol_t.Figure_set_body_triangle_isosceles_equilateral_symbol sym_fie ->
    Figure_set_body_triangle_isosceles_equilateral_symbol_v.name sym_fie
  | Figure_set_body_triangle_isosceles_symbol_t.Figure_set_body_triangle_isosceles_obtuse_symbol sym_fio ->
    Figure_set_body_triangle_isosceles_obtuse_symbol_v.name sym_fio
  | Figure_set_body_triangle_isosceles_symbol_t.Figure_set_body_triangle_isosceles_right_symbol sym_fir ->
    Figure_set_body_triangle_isosceles_right_symbol_v.name sym_fir
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Figure_set_body_triangle_isosceles_symbol_t.Figure_set_body_triangle_isosceles_acute_symbol sym_fia ->
  Figure_set_body_triangle_isosceles_acute_symbol_v.string_off sym_fia
  | Figure_set_body_triangle_isosceles_symbol_t.Figure_set_body_triangle_isosceles_equilateral_symbol sym_fie ->
  Figure_set_body_triangle_isosceles_equilateral_symbol_v.string_off sym_fie
  | Figure_set_body_triangle_isosceles_symbol_t.Figure_set_body_triangle_isosceles_obtuse_symbol sym_fio ->
  Figure_set_body_triangle_isosceles_obtuse_symbol_v.string_off sym_fio
  | Figure_set_body_triangle_isosceles_symbol_t.Figure_set_body_triangle_isosceles_right_symbol sym_fir ->
  Figure_set_body_triangle_isosceles_right_symbol_v.string_off sym_fir
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_fti =
  Format.sprintf "Figure_set_body_triangle_isosceles_symbol_t.%s" (String.capitalize_ascii (name sym_fti))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_fti =
  Format.sprintf "%s \"%s\"" (longname sym_fti) (string_off sym_fti)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let figure_set_body_triangle_isosceles_acute_symbol_off_figure_set_body_triangle_isosceles_symbol = function
  | Figure_set_body_triangle_isosceles_symbol_t.Figure_set_body_triangle_isosceles_acute_symbol sym_fia -> sym_fia
  | sym_fti -> Error_messages_v.print_fatal_error
      nam_cod "figure_set_body_triangle_isosceles_acute_symbol_off_figure_set_body_triangle_isosceles_symbol"
      "Figure_set_body_triangle_isosceles_acute_symbol"
      (name sym_fti) "check"
;;

let figure_set_body_triangle_isosceles_equilateral_symbol_off_figure_set_body_triangle_isosceles_symbol = function
  | Figure_set_body_triangle_isosceles_symbol_t.Figure_set_body_triangle_isosceles_equilateral_symbol sym_fie -> sym_fie
  | sym_fti -> Error_messages_v.print_fatal_error
      nam_cod "figure_set_body_triangle_isosceles_equilateral_symbol_off_figure_set_body_triangle_isosceles_symbol"
      "Figure_set_body_triangle_isosceles_equilateral_symbol"
      (name sym_fti) "check"
;;

let figure_set_body_triangle_isosceles_obtuse_symbol_off_figure_set_body_triangle_isosceles_symbol = function
  | Figure_set_body_triangle_isosceles_symbol_t.Figure_set_body_triangle_isosceles_obtuse_symbol sym_fio -> sym_fio
  | sym_fti -> Error_messages_v.print_fatal_error
      nam_cod "figure_set_body_triangle_isosceles_obtuse_symbol_off_figure_set_body_triangle_isosceles_symbol"
      "Figure_set_body_triangle_isosceles_obtuse_symbol"
      (name sym_fti) "check"
;;

let figure_set_body_triangle_isosceles_right_symbol_off_figure_set_body_triangle_isosceles_symbol = function
  | Figure_set_body_triangle_isosceles_symbol_t.Figure_set_body_triangle_isosceles_right_symbol sym_fir -> sym_fir
  | sym_fti -> Error_messages_v.print_fatal_error
      nam_cod "figure_set_body_triangle_isosceles_right_symbol_off_figure_set_body_triangle_isosceles_symbol"
      "Figure_set_body_triangle_isosceles_right_symbol"
      (name sym_fti) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_figure_set_body_triangle_isosceles_acute_symbol_off_figure_set_body_triangle_isosceles_symbol = function
  | Figure_set_body_triangle_isosceles_symbol_t.Figure_set_body_triangle_isosceles_acute_symbol _ -> true
  | _ -> false
;;

let is_figure_set_body_triangle_isosceles_equilateral_symbol_off_figure_set_body_triangle_isosceles_symbol = function
  | Figure_set_body_triangle_isosceles_symbol_t.Figure_set_body_triangle_isosceles_equilateral_symbol _ -> true
  | _ -> false
;;

let is_figure_set_body_triangle_isosceles_obtuse_symbol_off_figure_set_body_triangle_isosceles_symbol = function
  | Figure_set_body_triangle_isosceles_symbol_t.Figure_set_body_triangle_isosceles_obtuse_symbol _ -> true
  | _ -> false
;;

let is_figure_set_body_triangle_isosceles_right_symbol_off_figure_set_body_triangle_isosceles_symbol = function
  | Figure_set_body_triangle_isosceles_symbol_t.Figure_set_body_triangle_isosceles_right_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_figure_set_body_triangle_isosceles_acute_constructor sym_fti =
  if not (is_figure_set_body_triangle_isosceles_acute_symbol_off_figure_set_body_triangle_isosceles_symbol sym_fti)
  then false
  else
    begin
      let sym_fia = figure_set_body_triangle_isosceles_acute_symbol_off_figure_set_body_triangle_isosceles_symbol sym_fti in
      Figure_set_body_triangle_isosceles_acute_symbol_v.is_figure_set_body_triangle_isosceles_acute_constructor sym_fia
    end
;;

let is_figure_set_body_triangle_isosceles_equilateral_constructor sym_fti =
  if not (is_figure_set_body_triangle_isosceles_equilateral_symbol_off_figure_set_body_triangle_isosceles_symbol sym_fti)
  then false
  else
    begin
      let sym_fie = figure_set_body_triangle_isosceles_equilateral_symbol_off_figure_set_body_triangle_isosceles_symbol sym_fti in
      Figure_set_body_triangle_isosceles_equilateral_symbol_v.is_figure_set_body_triangle_isosceles_equilateral_constructor sym_fie
    end
;;

let is_figure_set_body_triangle_isosceles_obtuse_constructor sym_fti =
  if not (is_figure_set_body_triangle_isosceles_obtuse_symbol_off_figure_set_body_triangle_isosceles_symbol sym_fti)
  then false
  else
    begin
      let sym_fio = figure_set_body_triangle_isosceles_obtuse_symbol_off_figure_set_body_triangle_isosceles_symbol sym_fti in
      Figure_set_body_triangle_isosceles_obtuse_symbol_v.is_figure_set_body_triangle_isosceles_obtuse_constructor sym_fio
    end
;;

let is_figure_set_body_triangle_isosceles_right_constructor sym_fti =
  if not (is_figure_set_body_triangle_isosceles_right_symbol_off_figure_set_body_triangle_isosceles_symbol sym_fti)
  then false
  else
    begin
      let sym_fir = figure_set_body_triangle_isosceles_right_symbol_off_figure_set_body_triangle_isosceles_symbol sym_fti in
      Figure_set_body_triangle_isosceles_right_symbol_v.is_figure_set_body_triangle_isosceles_right_constructor sym_fir
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let figure_set_body_triangle_isosceles_symbol_of_figure_set_body_triangle_isosceles_acute_symbol sym_fia = 
  Figure_set_body_triangle_isosceles_symbol_t.Figure_set_body_triangle_isosceles_acute_symbol sym_fia
;;

let figure_set_body_triangle_isosceles_symbol_of_figure_set_body_triangle_isosceles_equilateral_symbol sym_fie = 
  Figure_set_body_triangle_isosceles_symbol_t.Figure_set_body_triangle_isosceles_equilateral_symbol sym_fie
;;

let figure_set_body_triangle_isosceles_symbol_of_figure_set_body_triangle_isosceles_obtuse_symbol sym_fio = 
  Figure_set_body_triangle_isosceles_symbol_t.Figure_set_body_triangle_isosceles_obtuse_symbol sym_fio
;;

let figure_set_body_triangle_isosceles_symbol_of_figure_set_body_triangle_isosceles_right_symbol sym_fir = 
  Figure_set_body_triangle_isosceles_symbol_t.Figure_set_body_triangle_isosceles_right_symbol sym_fir
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let figure_set_body_triangle_isosceles_acute_constructor s = figure_set_body_triangle_isosceles_symbol_of_figure_set_body_triangle_isosceles_acute_symbol (Figure_set_body_triangle_isosceles_acute_symbol_v.figure_set_body_triangle_isosceles_acute_constructor s);;

let figure_set_body_triangle_isosceles_equilateral_constructor s = figure_set_body_triangle_isosceles_symbol_of_figure_set_body_triangle_isosceles_equilateral_symbol (Figure_set_body_triangle_isosceles_equilateral_symbol_v.figure_set_body_triangle_isosceles_equilateral_constructor s);;

let figure_set_body_triangle_isosceles_obtuse_constructor s = figure_set_body_triangle_isosceles_symbol_of_figure_set_body_triangle_isosceles_obtuse_symbol (Figure_set_body_triangle_isosceles_obtuse_symbol_v.figure_set_body_triangle_isosceles_obtuse_constructor s);;

let figure_set_body_triangle_isosceles_right_constructor s = figure_set_body_triangle_isosceles_symbol_of_figure_set_body_triangle_isosceles_right_symbol (Figure_set_body_triangle_isosceles_right_symbol_v.figure_set_body_triangle_isosceles_right_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Figure_set_body_triangle_isosceles_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Figure_set_body_triangle_isosceles_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try figure_set_body_triangle_isosceles_symbol_of_figure_set_body_triangle_isosceles_acute_symbol
      (Figure_set_body_triangle_isosceles_acute_symbol_v.make nam s)
  with Failure "Not_a_figure_set_body_triangle_isosceles_acute_symbol:Figure_set_body_triangle_isosceles_acute_symbol_v.ml:make" ->
  try figure_set_body_triangle_isosceles_symbol_of_figure_set_body_triangle_isosceles_equilateral_symbol
      (Figure_set_body_triangle_isosceles_equilateral_symbol_v.make nam s)
  with Failure "Not_a_figure_set_body_triangle_isosceles_equilateral_symbol:Figure_set_body_triangle_isosceles_equilateral_symbol_v.ml:make" ->
  try figure_set_body_triangle_isosceles_symbol_of_figure_set_body_triangle_isosceles_obtuse_symbol
      (Figure_set_body_triangle_isosceles_obtuse_symbol_v.make nam s)
  with Failure "Not_a_figure_set_body_triangle_isosceles_obtuse_symbol:Figure_set_body_triangle_isosceles_obtuse_symbol_v.ml:make" ->
  try figure_set_body_triangle_isosceles_symbol_of_figure_set_body_triangle_isosceles_right_symbol
      (Figure_set_body_triangle_isosceles_right_symbol_v.make nam s)
  with Failure "Not_a_figure_set_body_triangle_isosceles_right_symbol:Figure_set_body_triangle_isosceles_right_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Figure_set_body_triangle_isosceles_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Figure_set_body_triangle_isosceles_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Figure_set_body_triangle_isosceles_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Figure_set_body_triangle_isosceles_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Figure_set_body_triangle_isosceles subtype" nam s)
      "it does not exists"
      "Check file Figure_set_body_triangle_isosceles_symbol_v.ml"
    in
    failwith "Not_a_figure_set_body_triangle_isosceles_symbol:Figure_set_body_triangle_isosceles_symbol_v.ml:make"
;;


(** Figure_set_body_triangle_isosceles_symbol_v at 13:58:5 on 2 Dec 2016. created by version v2.4 of generator *)



