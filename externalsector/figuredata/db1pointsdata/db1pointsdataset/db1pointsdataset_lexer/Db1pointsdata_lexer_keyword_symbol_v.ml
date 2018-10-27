(** {3 Db1pointsdata_lexer_keyword_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Db1pointsdata_lexer_keyword_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_character_symbol sym_dkc ->
    Db1pointsdata_lexer_keyword_character_symbol_v.name sym_dkc
  | Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_coordinates_symbol sym_dkc ->
    Db1pointsdata_lexer_keyword_coordinates_symbol_v.name sym_dkc
  | Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_figure_symbol sym_dkf ->
    Db1pointsdata_lexer_keyword_figure_symbol_v.name sym_dkf
  | Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_vertex -> "db1pointsdata_lexer_keyword_vertex"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_character_symbol sym_dkc ->
  Db1pointsdata_lexer_keyword_character_symbol_v.string_off sym_dkc
  | Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_coordinates_symbol sym_dkc ->
  Db1pointsdata_lexer_keyword_coordinates_symbol_v.string_off sym_dkc
  | Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_figure_symbol sym_dkf ->
  Db1pointsdata_lexer_keyword_figure_symbol_v.string_off sym_dkf
  | Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_vertex -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_dlk =
  Format.sprintf "Db1pointsdata_lexer_keyword_symbol_t.%s" (String.capitalize (name sym_dlk))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_dlk =
  Format.sprintf "%s \"%s\"" (longname sym_dlk) (string_off sym_dlk)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let db1pointsdata_lexer_keyword_character_symbol_off_db1pointsdata_lexer_keyword_symbol = function
  | Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_character_symbol sym_dkc -> sym_dkc
  | sym_dlk -> Error_messages_v.print_fatal_error
      nam_cod "db1pointsdata_lexer_keyword_character_symbol_off_db1pointsdata_lexer_keyword_symbol"
      "Db1pointsdata_lexer_keyword_character_symbol"
      (name sym_dlk) "check"
;;

let db1pointsdata_lexer_keyword_coordinates_symbol_off_db1pointsdata_lexer_keyword_symbol = function
  | Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_coordinates_symbol sym_dkc -> sym_dkc
  | sym_dlk -> Error_messages_v.print_fatal_error
      nam_cod "db1pointsdata_lexer_keyword_coordinates_symbol_off_db1pointsdata_lexer_keyword_symbol"
      "Db1pointsdata_lexer_keyword_coordinates_symbol"
      (name sym_dlk) "check"
;;

let db1pointsdata_lexer_keyword_figure_symbol_off_db1pointsdata_lexer_keyword_symbol = function
  | Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_figure_symbol sym_dkf -> sym_dkf
  | sym_dlk -> Error_messages_v.print_fatal_error
      nam_cod "db1pointsdata_lexer_keyword_figure_symbol_off_db1pointsdata_lexer_keyword_symbol"
      "Db1pointsdata_lexer_keyword_figure_symbol"
      (name sym_dlk) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let db1pointsdata_lexer_keyword_coordinates_units_symbol_off_db1pointsdata_lexer_keyword_symbol sym_dlk = 
  let sym_dkc = db1pointsdata_lexer_keyword_coordinates_symbol_off_db1pointsdata_lexer_keyword_symbol sym_dlk in
    Db1pointsdata_lexer_keyword_coordinates_symbol_v.db1pointsdata_lexer_keyword_coordinates_units_symbol_off_db1pointsdata_lexer_keyword_coordinates_symbol sym_dkc
;;


(** {6 Querying_topson_bare_for_symbol} *)

let is_db1pointsdata_lexer_keyword_vertex = function
  | Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_vertex -> true
  | _ -> false
;;


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_db1pointsdata_lexer_keyword_character_symbol_off_db1pointsdata_lexer_keyword_symbol = function
  | Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_character_symbol _ -> true
  | _ -> false
;;

let is_db1pointsdata_lexer_keyword_coordinates_symbol_off_db1pointsdata_lexer_keyword_symbol = function
  | Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_coordinates_symbol _ -> true
  | _ -> false
;;

let is_db1pointsdata_lexer_keyword_figure_symbol_off_db1pointsdata_lexer_keyword_symbol = function
  | Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_figure_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_db1pointsdata_lexer_keyword_character_eof sym_dlk =
  if not (is_db1pointsdata_lexer_keyword_character_symbol_off_db1pointsdata_lexer_keyword_symbol sym_dlk)
  then false
  else
    begin
      let sym_dkc = db1pointsdata_lexer_keyword_character_symbol_off_db1pointsdata_lexer_keyword_symbol sym_dlk in
      Db1pointsdata_lexer_keyword_character_symbol_v.is_db1pointsdata_lexer_keyword_character_eof sym_dkc
    end
;;

let is_db1pointsdata_lexer_keyword_character_eol sym_dlk =
  if not (is_db1pointsdata_lexer_keyword_character_symbol_off_db1pointsdata_lexer_keyword_symbol sym_dlk)
  then false
  else
    begin
      let sym_dkc = db1pointsdata_lexer_keyword_character_symbol_off_db1pointsdata_lexer_keyword_symbol sym_dlk in
      Db1pointsdata_lexer_keyword_character_symbol_v.is_db1pointsdata_lexer_keyword_character_eol sym_dkc
    end
;;

let is_db1pointsdata_lexer_keyword_coordinates_units_angle sym_dlk =
  if not (is_db1pointsdata_lexer_keyword_coordinates_symbol_off_db1pointsdata_lexer_keyword_symbol sym_dlk)
  then false
  else
    begin
      let sym_dkc = db1pointsdata_lexer_keyword_coordinates_symbol_off_db1pointsdata_lexer_keyword_symbol sym_dlk in
      Db1pointsdata_lexer_keyword_coordinates_symbol_v.is_db1pointsdata_lexer_keyword_coordinates_units_angle sym_dkc
    end
;;

let is_db1pointsdata_lexer_keyword_coordinates_units_length sym_dlk =
  if not (is_db1pointsdata_lexer_keyword_coordinates_symbol_off_db1pointsdata_lexer_keyword_symbol sym_dlk)
  then false
  else
    begin
      let sym_dkc = db1pointsdata_lexer_keyword_coordinates_symbol_off_db1pointsdata_lexer_keyword_symbol sym_dlk in
      Db1pointsdata_lexer_keyword_coordinates_symbol_v.is_db1pointsdata_lexer_keyword_coordinates_units_length sym_dkc
    end
;;

let is_db1pointsdata_lexer_keyword_coordinates_kind sym_dlk =
  if not (is_db1pointsdata_lexer_keyword_coordinates_symbol_off_db1pointsdata_lexer_keyword_symbol sym_dlk)
  then false
  else
    begin
      let sym_dkc = db1pointsdata_lexer_keyword_coordinates_symbol_off_db1pointsdata_lexer_keyword_symbol sym_dlk in
      Db1pointsdata_lexer_keyword_coordinates_symbol_v.is_db1pointsdata_lexer_keyword_coordinates_kind sym_dkc
    end
;;

let is_db1pointsdata_lexer_keyword_figure_kind sym_dlk =
  if not (is_db1pointsdata_lexer_keyword_figure_symbol_off_db1pointsdata_lexer_keyword_symbol sym_dlk)
  then false
  else
    begin
      let sym_dkf = db1pointsdata_lexer_keyword_figure_symbol_off_db1pointsdata_lexer_keyword_symbol sym_dlk in
      Db1pointsdata_lexer_keyword_figure_symbol_v.is_db1pointsdata_lexer_keyword_figure_kind sym_dkf
    end
;;

let is_db1pointsdata_lexer_keyword_figure_name sym_dlk =
  if not (is_db1pointsdata_lexer_keyword_figure_symbol_off_db1pointsdata_lexer_keyword_symbol sym_dlk)
  then false
  else
    begin
      let sym_dkf = db1pointsdata_lexer_keyword_figure_symbol_off_db1pointsdata_lexer_keyword_symbol sym_dlk in
      Db1pointsdata_lexer_keyword_figure_symbol_v.is_db1pointsdata_lexer_keyword_figure_name sym_dkf
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_db1pointsdata_lexer_keyword_coordinates_units_symbol_off_db1pointsdata_lexer_keyword_symbol sym_dlk =
  if not (is_db1pointsdata_lexer_keyword_coordinates_symbol_off_db1pointsdata_lexer_keyword_symbol sym_dlk)
  then false
  else
    begin
  let sym_dkc = db1pointsdata_lexer_keyword_coordinates_symbol_off_db1pointsdata_lexer_keyword_symbol sym_dlk in
  Db1pointsdata_lexer_keyword_coordinates_symbol_v.is_db1pointsdata_lexer_keyword_coordinates_units_symbol_off_db1pointsdata_lexer_keyword_coordinates_symbol sym_dkc
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let db1pointsdata_lexer_keyword_symbol_of_db1pointsdata_lexer_keyword_character_symbol sym_dkc = 
  Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_character_symbol sym_dkc
;;

let db1pointsdata_lexer_keyword_symbol_of_db1pointsdata_lexer_keyword_coordinates_symbol sym_dkc = 
  Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_coordinates_symbol sym_dkc
;;

let db1pointsdata_lexer_keyword_symbol_of_db1pointsdata_lexer_keyword_figure_symbol sym_dkf = 
  Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_figure_symbol sym_dkf
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let db1pointsdata_lexer_keyword_symbol_of_db1pointsdata_lexer_keyword_coordinates_units_symbol sym_dcu = 
  let sym_dkc = Db1pointsdata_lexer_keyword_coordinates_symbol_v.db1pointsdata_lexer_keyword_coordinates_symbol_of_db1pointsdata_lexer_keyword_coordinates_units_symbol sym_dcu in
    db1pointsdata_lexer_keyword_symbol_of_db1pointsdata_lexer_keyword_coordinates_symbol sym_dkc
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)

let db1pointsdata_lexer_keyword_vertex = Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_vertex;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let db1pointsdata_lexer_keyword_character_eof = db1pointsdata_lexer_keyword_symbol_of_db1pointsdata_lexer_keyword_character_symbol Db1pointsdata_lexer_keyword_character_symbol_v.db1pointsdata_lexer_keyword_character_eof;;

let db1pointsdata_lexer_keyword_character_eol = db1pointsdata_lexer_keyword_symbol_of_db1pointsdata_lexer_keyword_character_symbol Db1pointsdata_lexer_keyword_character_symbol_v.db1pointsdata_lexer_keyword_character_eol;;

let db1pointsdata_lexer_keyword_coordinates_units_angle = db1pointsdata_lexer_keyword_symbol_of_db1pointsdata_lexer_keyword_coordinates_symbol Db1pointsdata_lexer_keyword_coordinates_symbol_v.db1pointsdata_lexer_keyword_coordinates_units_angle;;

let db1pointsdata_lexer_keyword_coordinates_units_length = db1pointsdata_lexer_keyword_symbol_of_db1pointsdata_lexer_keyword_coordinates_symbol Db1pointsdata_lexer_keyword_coordinates_symbol_v.db1pointsdata_lexer_keyword_coordinates_units_length;;

let db1pointsdata_lexer_keyword_coordinates_kind = db1pointsdata_lexer_keyword_symbol_of_db1pointsdata_lexer_keyword_coordinates_symbol Db1pointsdata_lexer_keyword_coordinates_symbol_v.db1pointsdata_lexer_keyword_coordinates_kind;;

let db1pointsdata_lexer_keyword_figure_kind = db1pointsdata_lexer_keyword_symbol_of_db1pointsdata_lexer_keyword_figure_symbol Db1pointsdata_lexer_keyword_figure_symbol_v.db1pointsdata_lexer_keyword_figure_kind;;

let db1pointsdata_lexer_keyword_figure_name = db1pointsdata_lexer_keyword_symbol_of_db1pointsdata_lexer_keyword_figure_symbol Db1pointsdata_lexer_keyword_figure_symbol_v.db1pointsdata_lexer_keyword_figure_name;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "db1pointsdata_lexer_keyword_vertex" -> db1pointsdata_lexer_keyword_vertex
  | _ ->
  failwith "Not_a_topson_bare:Db1pointsdata_lexer_keyword_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Db1pointsdata_lexer_keyword_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try db1pointsdata_lexer_keyword_symbol_of_db1pointsdata_lexer_keyword_character_symbol
      (Db1pointsdata_lexer_keyword_character_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_lexer_keyword_character_symbol:Db1pointsdata_lexer_keyword_character_symbol_v.ml:make" ->
  try db1pointsdata_lexer_keyword_symbol_of_db1pointsdata_lexer_keyword_coordinates_symbol
      (Db1pointsdata_lexer_keyword_coordinates_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_lexer_keyword_coordinates_symbol:Db1pointsdata_lexer_keyword_coordinates_symbol_v.ml:make" ->
  try db1pointsdata_lexer_keyword_symbol_of_db1pointsdata_lexer_keyword_figure_symbol
      (Db1pointsdata_lexer_keyword_figure_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_lexer_keyword_figure_symbol:Db1pointsdata_lexer_keyword_figure_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Db1pointsdata_lexer_keyword_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Db1pointsdata_lexer_keyword_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Db1pointsdata_lexer_keyword_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Db1pointsdata_lexer_keyword_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Db1pointsdata_lexer_keyword subtype" nam s)
      "it does not exists"
      "Check file Db1pointsdata_lexer_keyword_symbol_v.ml"
    in
    failwith "Not_a_db1pointsdata_lexer_keyword_symbol:Db1pointsdata_lexer_keyword_symbol_v.ml:make"
;;


(** Db1pointsdata_lexer_keyword_symbol_v at 15:47:43 on 25 Feb 2016. created by version v2.4 of generator *)



