(** {3 Figure_set_body_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Figure_set_body_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Figure_set_body_symbol_t.Figure_set_body_triangle_symbol sym_fbt ->
    Figure_set_body_triangle_symbol_v.name sym_fbt
  | Figure_set_body_symbol_t.Figure_set_body_segment_symbol sym_fbs ->
    Figure_set_body_segment_symbol_v.name sym_fbs
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Figure_set_body_symbol_t.Figure_set_body_triangle_symbol sym_fbt ->
  Figure_set_body_triangle_symbol_v.string_off sym_fbt
  | Figure_set_body_symbol_t.Figure_set_body_segment_symbol sym_fbs ->
  Figure_set_body_segment_symbol_v.string_off sym_fbs
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_fsb =
  Format.sprintf "Figure_set_body_symbol_t.%s" (String.capitalize_ascii (name sym_fsb))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_fsb =
  Format.sprintf "%s \"%s\"" (longname sym_fsb) (string_off sym_fsb)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let figure_set_body_triangle_symbol_off_figure_set_body_symbol = function
  | Figure_set_body_symbol_t.Figure_set_body_triangle_symbol sym_fbt -> sym_fbt
  | sym_fsb -> Error_messages_v.print_fatal_error
      nam_cod "figure_set_body_triangle_symbol_off_figure_set_body_symbol"
      "Figure_set_body_triangle_symbol"
      (name sym_fsb) "check"
;;

let figure_set_body_segment_symbol_off_figure_set_body_symbol = function
  | Figure_set_body_symbol_t.Figure_set_body_segment_symbol sym_fbs -> sym_fbs
  | sym_fsb -> Error_messages_v.print_fatal_error
      nam_cod "figure_set_body_segment_symbol_off_figure_set_body_symbol"
      "Figure_set_body_segment_symbol"
      (name sym_fsb) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let figure_set_body_triangle_isosceles_symbol_off_figure_set_body_symbol sym_fsb = 
  let sym_fbt = figure_set_body_triangle_symbol_off_figure_set_body_symbol sym_fsb in
    Figure_set_body_triangle_symbol_v.figure_set_body_triangle_isosceles_symbol_off_figure_set_body_triangle_symbol sym_fbt
;;

let figure_set_body_triangle_isosceles_acute_symbol_off_figure_set_body_symbol sym_fsb = 
  let sym_fbt = figure_set_body_triangle_symbol_off_figure_set_body_symbol sym_fsb in
    Figure_set_body_triangle_symbol_v.figure_set_body_triangle_isosceles_acute_symbol_off_figure_set_body_triangle_symbol sym_fbt
;;

let figure_set_body_triangle_isosceles_equilateral_symbol_off_figure_set_body_symbol sym_fsb = 
  let sym_fbt = figure_set_body_triangle_symbol_off_figure_set_body_symbol sym_fsb in
    Figure_set_body_triangle_symbol_v.figure_set_body_triangle_isosceles_equilateral_symbol_off_figure_set_body_triangle_symbol sym_fbt
;;

let figure_set_body_triangle_isosceles_obtuse_symbol_off_figure_set_body_symbol sym_fsb = 
  let sym_fbt = figure_set_body_triangle_symbol_off_figure_set_body_symbol sym_fsb in
    Figure_set_body_triangle_symbol_v.figure_set_body_triangle_isosceles_obtuse_symbol_off_figure_set_body_triangle_symbol sym_fbt
;;

let figure_set_body_triangle_isosceles_right_symbol_off_figure_set_body_symbol sym_fsb = 
  let sym_fbt = figure_set_body_triangle_symbol_off_figure_set_body_symbol sym_fsb in
    Figure_set_body_triangle_symbol_v.figure_set_body_triangle_isosceles_right_symbol_off_figure_set_body_triangle_symbol sym_fbt
;;

let figure_set_body_triangle_scalene_symbol_off_figure_set_body_symbol sym_fsb = 
  let sym_fbt = figure_set_body_triangle_symbol_off_figure_set_body_symbol sym_fsb in
    Figure_set_body_triangle_symbol_v.figure_set_body_triangle_scalene_symbol_off_figure_set_body_triangle_symbol sym_fbt
;;

let figure_set_body_triangle_scalene_acute_symbol_off_figure_set_body_symbol sym_fsb = 
  let sym_fbt = figure_set_body_triangle_symbol_off_figure_set_body_symbol sym_fsb in
    Figure_set_body_triangle_symbol_v.figure_set_body_triangle_scalene_acute_symbol_off_figure_set_body_triangle_symbol sym_fbt
;;

let figure_set_body_triangle_scalene_obtuse_symbol_off_figure_set_body_symbol sym_fsb = 
  let sym_fbt = figure_set_body_triangle_symbol_off_figure_set_body_symbol sym_fsb in
    Figure_set_body_triangle_symbol_v.figure_set_body_triangle_scalene_obtuse_symbol_off_figure_set_body_triangle_symbol sym_fbt
;;

let figure_set_body_triangle_scalene_right_symbol_off_figure_set_body_symbol sym_fsb = 
  let sym_fbt = figure_set_body_triangle_symbol_off_figure_set_body_symbol sym_fsb in
    Figure_set_body_triangle_symbol_v.figure_set_body_triangle_scalene_right_symbol_off_figure_set_body_triangle_symbol sym_fbt
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_figure_set_body_triangle_symbol_off_figure_set_body_symbol = function
  | Figure_set_body_symbol_t.Figure_set_body_triangle_symbol _ -> true
  | _ -> false
;;

let is_figure_set_body_segment_symbol_off_figure_set_body_symbol = function
  | Figure_set_body_symbol_t.Figure_set_body_segment_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_figure_set_body_triangle_isosceles_acute_constructor sym_fsb =
  if not (is_figure_set_body_triangle_symbol_off_figure_set_body_symbol sym_fsb)
  then false
  else
    begin
      let sym_fbt = figure_set_body_triangle_symbol_off_figure_set_body_symbol sym_fsb in
      Figure_set_body_triangle_symbol_v.is_figure_set_body_triangle_isosceles_acute_constructor sym_fbt
    end
;;

let is_figure_set_body_triangle_isosceles_equilateral_constructor sym_fsb =
  if not (is_figure_set_body_triangle_symbol_off_figure_set_body_symbol sym_fsb)
  then false
  else
    begin
      let sym_fbt = figure_set_body_triangle_symbol_off_figure_set_body_symbol sym_fsb in
      Figure_set_body_triangle_symbol_v.is_figure_set_body_triangle_isosceles_equilateral_constructor sym_fbt
    end
;;

let is_figure_set_body_triangle_isosceles_obtuse_constructor sym_fsb =
  if not (is_figure_set_body_triangle_symbol_off_figure_set_body_symbol sym_fsb)
  then false
  else
    begin
      let sym_fbt = figure_set_body_triangle_symbol_off_figure_set_body_symbol sym_fsb in
      Figure_set_body_triangle_symbol_v.is_figure_set_body_triangle_isosceles_obtuse_constructor sym_fbt
    end
;;

let is_figure_set_body_triangle_isosceles_right_constructor sym_fsb =
  if not (is_figure_set_body_triangle_symbol_off_figure_set_body_symbol sym_fsb)
  then false
  else
    begin
      let sym_fbt = figure_set_body_triangle_symbol_off_figure_set_body_symbol sym_fsb in
      Figure_set_body_triangle_symbol_v.is_figure_set_body_triangle_isosceles_right_constructor sym_fbt
    end
;;

let is_figure_set_body_triangle_scalene_acute_constructor sym_fsb =
  if not (is_figure_set_body_triangle_symbol_off_figure_set_body_symbol sym_fsb)
  then false
  else
    begin
      let sym_fbt = figure_set_body_triangle_symbol_off_figure_set_body_symbol sym_fsb in
      Figure_set_body_triangle_symbol_v.is_figure_set_body_triangle_scalene_acute_constructor sym_fbt
    end
;;

let is_figure_set_body_triangle_scalene_obtuse_constructor sym_fsb =
  if not (is_figure_set_body_triangle_symbol_off_figure_set_body_symbol sym_fsb)
  then false
  else
    begin
      let sym_fbt = figure_set_body_triangle_symbol_off_figure_set_body_symbol sym_fsb in
      Figure_set_body_triangle_symbol_v.is_figure_set_body_triangle_scalene_obtuse_constructor sym_fbt
    end
;;

let is_figure_set_body_triangle_scalene_right_constructor sym_fsb =
  if not (is_figure_set_body_triangle_symbol_off_figure_set_body_symbol sym_fsb)
  then false
  else
    begin
      let sym_fbt = figure_set_body_triangle_symbol_off_figure_set_body_symbol sym_fsb in
      Figure_set_body_triangle_symbol_v.is_figure_set_body_triangle_scalene_right_constructor sym_fbt
    end
;;

let is_figure_set_body_segment_constructor sym_fsb =
  if not (is_figure_set_body_segment_symbol_off_figure_set_body_symbol sym_fsb)
  then false
  else
    begin
      let sym_fbs = figure_set_body_segment_symbol_off_figure_set_body_symbol sym_fsb in
      Figure_set_body_segment_symbol_v.is_figure_set_body_segment_constructor sym_fbs
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_figure_set_body_triangle_isosceles_symbol_off_figure_set_body_symbol sym_fsb =
  if not (is_figure_set_body_triangle_symbol_off_figure_set_body_symbol sym_fsb)
  then false
  else
    begin
  let sym_fbt = figure_set_body_triangle_symbol_off_figure_set_body_symbol sym_fsb in
  Figure_set_body_triangle_symbol_v.is_figure_set_body_triangle_isosceles_symbol_off_figure_set_body_triangle_symbol sym_fbt
    end
;;

let is_figure_set_body_triangle_isosceles_acute_symbol_off_figure_set_body_symbol sym_fsb =
  if not (is_figure_set_body_triangle_symbol_off_figure_set_body_symbol sym_fsb)
  then false
  else
    begin
  let sym_fbt = figure_set_body_triangle_symbol_off_figure_set_body_symbol sym_fsb in
  Figure_set_body_triangle_symbol_v.is_figure_set_body_triangle_isosceles_acute_symbol_off_figure_set_body_triangle_symbol sym_fbt
    end
;;

let is_figure_set_body_triangle_isosceles_equilateral_symbol_off_figure_set_body_symbol sym_fsb =
  if not (is_figure_set_body_triangle_symbol_off_figure_set_body_symbol sym_fsb)
  then false
  else
    begin
  let sym_fbt = figure_set_body_triangle_symbol_off_figure_set_body_symbol sym_fsb in
  Figure_set_body_triangle_symbol_v.is_figure_set_body_triangle_isosceles_equilateral_symbol_off_figure_set_body_triangle_symbol sym_fbt
    end
;;

let is_figure_set_body_triangle_isosceles_obtuse_symbol_off_figure_set_body_symbol sym_fsb =
  if not (is_figure_set_body_triangle_symbol_off_figure_set_body_symbol sym_fsb)
  then false
  else
    begin
  let sym_fbt = figure_set_body_triangle_symbol_off_figure_set_body_symbol sym_fsb in
  Figure_set_body_triangle_symbol_v.is_figure_set_body_triangle_isosceles_obtuse_symbol_off_figure_set_body_triangle_symbol sym_fbt
    end
;;

let is_figure_set_body_triangle_isosceles_right_symbol_off_figure_set_body_symbol sym_fsb =
  if not (is_figure_set_body_triangle_symbol_off_figure_set_body_symbol sym_fsb)
  then false
  else
    begin
  let sym_fbt = figure_set_body_triangle_symbol_off_figure_set_body_symbol sym_fsb in
  Figure_set_body_triangle_symbol_v.is_figure_set_body_triangle_isosceles_right_symbol_off_figure_set_body_triangle_symbol sym_fbt
    end
;;

let is_figure_set_body_triangle_scalene_symbol_off_figure_set_body_symbol sym_fsb =
  if not (is_figure_set_body_triangle_symbol_off_figure_set_body_symbol sym_fsb)
  then false
  else
    begin
  let sym_fbt = figure_set_body_triangle_symbol_off_figure_set_body_symbol sym_fsb in
  Figure_set_body_triangle_symbol_v.is_figure_set_body_triangle_scalene_symbol_off_figure_set_body_triangle_symbol sym_fbt
    end
;;

let is_figure_set_body_triangle_scalene_acute_symbol_off_figure_set_body_symbol sym_fsb =
  if not (is_figure_set_body_triangle_symbol_off_figure_set_body_symbol sym_fsb)
  then false
  else
    begin
  let sym_fbt = figure_set_body_triangle_symbol_off_figure_set_body_symbol sym_fsb in
  Figure_set_body_triangle_symbol_v.is_figure_set_body_triangle_scalene_acute_symbol_off_figure_set_body_triangle_symbol sym_fbt
    end
;;

let is_figure_set_body_triangle_scalene_obtuse_symbol_off_figure_set_body_symbol sym_fsb =
  if not (is_figure_set_body_triangle_symbol_off_figure_set_body_symbol sym_fsb)
  then false
  else
    begin
  let sym_fbt = figure_set_body_triangle_symbol_off_figure_set_body_symbol sym_fsb in
  Figure_set_body_triangle_symbol_v.is_figure_set_body_triangle_scalene_obtuse_symbol_off_figure_set_body_triangle_symbol sym_fbt
    end
;;

let is_figure_set_body_triangle_scalene_right_symbol_off_figure_set_body_symbol sym_fsb =
  if not (is_figure_set_body_triangle_symbol_off_figure_set_body_symbol sym_fsb)
  then false
  else
    begin
  let sym_fbt = figure_set_body_triangle_symbol_off_figure_set_body_symbol sym_fsb in
  Figure_set_body_triangle_symbol_v.is_figure_set_body_triangle_scalene_right_symbol_off_figure_set_body_triangle_symbol sym_fbt
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let figure_set_body_symbol_of_figure_set_body_triangle_symbol sym_fbt = 
  Figure_set_body_symbol_t.Figure_set_body_triangle_symbol sym_fbt
;;

let figure_set_body_symbol_of_figure_set_body_segment_symbol sym_fbs = 
  Figure_set_body_symbol_t.Figure_set_body_segment_symbol sym_fbs
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let figure_set_body_symbol_of_figure_set_body_triangle_isosceles_symbol sym_fti = 
  let sym_fbt = Figure_set_body_triangle_symbol_v.figure_set_body_triangle_symbol_of_figure_set_body_triangle_isosceles_symbol sym_fti in
    figure_set_body_symbol_of_figure_set_body_triangle_symbol sym_fbt
;;

let figure_set_body_symbol_of_figure_set_body_triangle_isosceles_acute_symbol sym_fia = 
  let sym_fbt = Figure_set_body_triangle_symbol_v.figure_set_body_triangle_symbol_of_figure_set_body_triangle_isosceles_acute_symbol sym_fia in
    figure_set_body_symbol_of_figure_set_body_triangle_symbol sym_fbt
;;

let figure_set_body_symbol_of_figure_set_body_triangle_isosceles_equilateral_symbol sym_fie = 
  let sym_fbt = Figure_set_body_triangle_symbol_v.figure_set_body_triangle_symbol_of_figure_set_body_triangle_isosceles_equilateral_symbol sym_fie in
    figure_set_body_symbol_of_figure_set_body_triangle_symbol sym_fbt
;;

let figure_set_body_symbol_of_figure_set_body_triangle_isosceles_obtuse_symbol sym_fio = 
  let sym_fbt = Figure_set_body_triangle_symbol_v.figure_set_body_triangle_symbol_of_figure_set_body_triangle_isosceles_obtuse_symbol sym_fio in
    figure_set_body_symbol_of_figure_set_body_triangle_symbol sym_fbt
;;

let figure_set_body_symbol_of_figure_set_body_triangle_isosceles_right_symbol sym_fir = 
  let sym_fbt = Figure_set_body_triangle_symbol_v.figure_set_body_triangle_symbol_of_figure_set_body_triangle_isosceles_right_symbol sym_fir in
    figure_set_body_symbol_of_figure_set_body_triangle_symbol sym_fbt
;;

let figure_set_body_symbol_of_figure_set_body_triangle_scalene_symbol sym_fts = 
  let sym_fbt = Figure_set_body_triangle_symbol_v.figure_set_body_triangle_symbol_of_figure_set_body_triangle_scalene_symbol sym_fts in
    figure_set_body_symbol_of_figure_set_body_triangle_symbol sym_fbt
;;

let figure_set_body_symbol_of_figure_set_body_triangle_scalene_acute_symbol sym_fsa = 
  let sym_fbt = Figure_set_body_triangle_symbol_v.figure_set_body_triangle_symbol_of_figure_set_body_triangle_scalene_acute_symbol sym_fsa in
    figure_set_body_symbol_of_figure_set_body_triangle_symbol sym_fbt
;;

let figure_set_body_symbol_of_figure_set_body_triangle_scalene_obtuse_symbol sym_fso = 
  let sym_fbt = Figure_set_body_triangle_symbol_v.figure_set_body_triangle_symbol_of_figure_set_body_triangle_scalene_obtuse_symbol sym_fso in
    figure_set_body_symbol_of_figure_set_body_triangle_symbol sym_fbt
;;

let figure_set_body_symbol_of_figure_set_body_triangle_scalene_right_symbol sym_fsr = 
  let sym_fbt = Figure_set_body_triangle_symbol_v.figure_set_body_triangle_symbol_of_figure_set_body_triangle_scalene_right_symbol sym_fsr in
    figure_set_body_symbol_of_figure_set_body_triangle_symbol sym_fbt
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let figure_set_body_triangle_isosceles_acute_constructor s = figure_set_body_symbol_of_figure_set_body_triangle_symbol (Figure_set_body_triangle_symbol_v.figure_set_body_triangle_isosceles_acute_constructor s);;

let figure_set_body_triangle_isosceles_equilateral_constructor s = figure_set_body_symbol_of_figure_set_body_triangle_symbol (Figure_set_body_triangle_symbol_v.figure_set_body_triangle_isosceles_equilateral_constructor s);;

let figure_set_body_triangle_isosceles_obtuse_constructor s = figure_set_body_symbol_of_figure_set_body_triangle_symbol (Figure_set_body_triangle_symbol_v.figure_set_body_triangle_isosceles_obtuse_constructor s);;

let figure_set_body_triangle_isosceles_right_constructor s = figure_set_body_symbol_of_figure_set_body_triangle_symbol (Figure_set_body_triangle_symbol_v.figure_set_body_triangle_isosceles_right_constructor s);;

let figure_set_body_triangle_scalene_acute_constructor s = figure_set_body_symbol_of_figure_set_body_triangle_symbol (Figure_set_body_triangle_symbol_v.figure_set_body_triangle_scalene_acute_constructor s);;

let figure_set_body_triangle_scalene_obtuse_constructor s = figure_set_body_symbol_of_figure_set_body_triangle_symbol (Figure_set_body_triangle_symbol_v.figure_set_body_triangle_scalene_obtuse_constructor s);;

let figure_set_body_triangle_scalene_right_constructor s = figure_set_body_symbol_of_figure_set_body_triangle_symbol (Figure_set_body_triangle_symbol_v.figure_set_body_triangle_scalene_right_constructor s);;

let figure_set_body_segment_constructor s = figure_set_body_symbol_of_figure_set_body_segment_symbol (Figure_set_body_segment_symbol_v.figure_set_body_segment_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Figure_set_body_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Figure_set_body_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try figure_set_body_symbol_of_figure_set_body_triangle_symbol
      (Figure_set_body_triangle_symbol_v.make nam s)
  with Failure "Not_a_figure_set_body_triangle_symbol:Figure_set_body_triangle_symbol_v.ml:make" ->
  try figure_set_body_symbol_of_figure_set_body_segment_symbol
      (Figure_set_body_segment_symbol_v.make nam s)
  with Failure "Not_a_figure_set_body_segment_symbol:Figure_set_body_segment_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Figure_set_body_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Figure_set_body_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Figure_set_body_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Figure_set_body_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Figure_set_body subtype" nam s)
      "it does not exists"
      "Check file Figure_set_body_symbol_v.ml"
    in
    failwith "Not_a_figure_set_body_symbol:Figure_set_body_symbol_v.ml:make"
;;


(** Figure_set_body_symbol_v at 13:58:5 on 2 Dec 2016. created by version v2.4 of generator *)



