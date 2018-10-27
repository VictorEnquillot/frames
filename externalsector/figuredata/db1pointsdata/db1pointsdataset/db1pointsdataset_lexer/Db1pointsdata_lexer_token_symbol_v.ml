(** {3 Db1pointsdata_lexer_token_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Db1pointsdata_lexer_token_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Db1pointsdata_lexer_token_symbol_t.Db1pointsdata_lexer_token_figure_symbol sym_dtf ->
    Db1pointsdata_lexer_token_figure_symbol_v.name sym_dtf
  | Db1pointsdata_lexer_token_symbol_t.Db1pointsdata_lexer_token_units_symbol sym_dtu ->
    Db1pointsdata_lexer_token_units_symbol_v.name sym_dtu
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Db1pointsdata_lexer_token_symbol_t.Db1pointsdata_lexer_token_figure_symbol sym_dtf ->
  Db1pointsdata_lexer_token_figure_symbol_v.string_off sym_dtf
  | Db1pointsdata_lexer_token_symbol_t.Db1pointsdata_lexer_token_units_symbol sym_dtu ->
  Db1pointsdata_lexer_token_units_symbol_v.string_off sym_dtu
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_dlt =
  Format.sprintf "Db1pointsdata_lexer_token_symbol_t.%s" (String.capitalize (name sym_dlt))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_dlt =
  Format.sprintf "%s \"%s\"" (longname sym_dlt) (string_off sym_dlt)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let db1pointsdata_lexer_token_figure_symbol_off_db1pointsdata_lexer_token_symbol = function
  | Db1pointsdata_lexer_token_symbol_t.Db1pointsdata_lexer_token_figure_symbol sym_dtf -> sym_dtf
  | sym_dlt -> Error_messages_v.print_fatal_error
      nam_cod "db1pointsdata_lexer_token_figure_symbol_off_db1pointsdata_lexer_token_symbol"
      "Db1pointsdata_lexer_token_figure_symbol"
      (name sym_dlt) "check"
;;

let db1pointsdata_lexer_token_units_symbol_off_db1pointsdata_lexer_token_symbol = function
  | Db1pointsdata_lexer_token_symbol_t.Db1pointsdata_lexer_token_units_symbol sym_dtu -> sym_dtu
  | sym_dlt -> Error_messages_v.print_fatal_error
      nam_cod "db1pointsdata_lexer_token_units_symbol_off_db1pointsdata_lexer_token_symbol"
      "Db1pointsdata_lexer_token_units_symbol"
      (name sym_dlt) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let db1pointsdata_lexer_token_figure_kind_symbol_off_db1pointsdata_lexer_token_symbol sym_dlt = 
  let sym_dtf = db1pointsdata_lexer_token_figure_symbol_off_db1pointsdata_lexer_token_symbol sym_dlt in
    Db1pointsdata_lexer_token_figure_symbol_v.db1pointsdata_lexer_token_figure_kind_symbol_off_db1pointsdata_lexer_token_figure_symbol sym_dtf
;;

let db1pointsdata_lexer_token_units_angle_symbol_off_db1pointsdata_lexer_token_symbol sym_dlt = 
  let sym_dtu = db1pointsdata_lexer_token_units_symbol_off_db1pointsdata_lexer_token_symbol sym_dlt in
    Db1pointsdata_lexer_token_units_symbol_v.db1pointsdata_lexer_token_units_angle_symbol_off_db1pointsdata_lexer_token_units_symbol sym_dtu
;;

let db1pointsdata_lexer_token_units_length_symbol_off_db1pointsdata_lexer_token_symbol sym_dlt = 
  let sym_dtu = db1pointsdata_lexer_token_units_symbol_off_db1pointsdata_lexer_token_symbol sym_dlt in
    Db1pointsdata_lexer_token_units_symbol_v.db1pointsdata_lexer_token_units_length_symbol_off_db1pointsdata_lexer_token_units_symbol sym_dtu
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_db1pointsdata_lexer_token_figure_symbol_off_db1pointsdata_lexer_token_symbol = function
  | Db1pointsdata_lexer_token_symbol_t.Db1pointsdata_lexer_token_figure_symbol _ -> true
  | _ -> false
;;

let is_db1pointsdata_lexer_token_units_symbol_off_db1pointsdata_lexer_token_symbol = function
  | Db1pointsdata_lexer_token_symbol_t.Db1pointsdata_lexer_token_units_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_db1pointsdata_lexer_token_figure_kind_point sym_dlt =
  if not (is_db1pointsdata_lexer_token_figure_symbol_off_db1pointsdata_lexer_token_symbol sym_dlt)
  then false
  else
    begin
      let sym_dtf = db1pointsdata_lexer_token_figure_symbol_off_db1pointsdata_lexer_token_symbol sym_dlt in
      Db1pointsdata_lexer_token_figure_symbol_v.is_db1pointsdata_lexer_token_figure_kind_point sym_dtf
    end
;;

let is_db1pointsdata_lexer_token_figure_kind_segment sym_dlt =
  if not (is_db1pointsdata_lexer_token_figure_symbol_off_db1pointsdata_lexer_token_symbol sym_dlt)
  then false
  else
    begin
      let sym_dtf = db1pointsdata_lexer_token_figure_symbol_off_db1pointsdata_lexer_token_symbol sym_dlt in
      Db1pointsdata_lexer_token_figure_symbol_v.is_db1pointsdata_lexer_token_figure_kind_segment sym_dtf
    end
;;

let is_db1pointsdata_lexer_token_figure_kind_triangle sym_dlt =
  if not (is_db1pointsdata_lexer_token_figure_symbol_off_db1pointsdata_lexer_token_symbol sym_dlt)
  then false
  else
    begin
      let sym_dtf = db1pointsdata_lexer_token_figure_symbol_off_db1pointsdata_lexer_token_symbol sym_dlt in
      Db1pointsdata_lexer_token_figure_symbol_v.is_db1pointsdata_lexer_token_figure_kind_triangle sym_dtf
    end
;;

let is_db1pointsdata_lexer_token_figure_name sym_dlt =
  if not (is_db1pointsdata_lexer_token_figure_symbol_off_db1pointsdata_lexer_token_symbol sym_dlt)
  then false
  else
    begin
      let sym_dtf = db1pointsdata_lexer_token_figure_symbol_off_db1pointsdata_lexer_token_symbol sym_dlt in
      Db1pointsdata_lexer_token_figure_symbol_v.is_db1pointsdata_lexer_token_figure_name sym_dtf
    end
;;

let is_db1pointsdata_lexer_token_units_angle_degree sym_dlt =
  if not (is_db1pointsdata_lexer_token_units_symbol_off_db1pointsdata_lexer_token_symbol sym_dlt)
  then false
  else
    begin
      let sym_dtu = db1pointsdata_lexer_token_units_symbol_off_db1pointsdata_lexer_token_symbol sym_dlt in
      Db1pointsdata_lexer_token_units_symbol_v.is_db1pointsdata_lexer_token_units_angle_degree sym_dtu
    end
;;

let is_db1pointsdata_lexer_token_units_angle_radian sym_dlt =
  if not (is_db1pointsdata_lexer_token_units_symbol_off_db1pointsdata_lexer_token_symbol sym_dlt)
  then false
  else
    begin
      let sym_dtu = db1pointsdata_lexer_token_units_symbol_off_db1pointsdata_lexer_token_symbol sym_dlt in
      Db1pointsdata_lexer_token_units_symbol_v.is_db1pointsdata_lexer_token_units_angle_radian sym_dtu
    end
;;

let is_db1pointsdata_lexer_token_units_length_angstrom sym_dlt =
  if not (is_db1pointsdata_lexer_token_units_symbol_off_db1pointsdata_lexer_token_symbol sym_dlt)
  then false
  else
    begin
      let sym_dtu = db1pointsdata_lexer_token_units_symbol_off_db1pointsdata_lexer_token_symbol sym_dlt in
      Db1pointsdata_lexer_token_units_symbol_v.is_db1pointsdata_lexer_token_units_length_angstrom sym_dtu
    end
;;

let is_db1pointsdata_lexer_token_units_length_bohr sym_dlt =
  if not (is_db1pointsdata_lexer_token_units_symbol_off_db1pointsdata_lexer_token_symbol sym_dlt)
  then false
  else
    begin
      let sym_dtu = db1pointsdata_lexer_token_units_symbol_off_db1pointsdata_lexer_token_symbol sym_dlt in
      Db1pointsdata_lexer_token_units_symbol_v.is_db1pointsdata_lexer_token_units_length_bohr sym_dtu
    end
;;

let is_db1pointsdata_lexer_token_units_length_meter sym_dlt =
  if not (is_db1pointsdata_lexer_token_units_symbol_off_db1pointsdata_lexer_token_symbol sym_dlt)
  then false
  else
    begin
      let sym_dtu = db1pointsdata_lexer_token_units_symbol_off_db1pointsdata_lexer_token_symbol sym_dlt in
      Db1pointsdata_lexer_token_units_symbol_v.is_db1pointsdata_lexer_token_units_length_meter sym_dtu
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_db1pointsdata_lexer_token_figure_kind_symbol_off_db1pointsdata_lexer_token_symbol sym_dlt =
  if not (is_db1pointsdata_lexer_token_figure_symbol_off_db1pointsdata_lexer_token_symbol sym_dlt)
  then false
  else
    begin
  let sym_dtf = db1pointsdata_lexer_token_figure_symbol_off_db1pointsdata_lexer_token_symbol sym_dlt in
  Db1pointsdata_lexer_token_figure_symbol_v.is_db1pointsdata_lexer_token_figure_kind_symbol_off_db1pointsdata_lexer_token_figure_symbol sym_dtf
    end
;;

let is_db1pointsdata_lexer_token_units_angle_symbol_off_db1pointsdata_lexer_token_symbol sym_dlt =
  if not (is_db1pointsdata_lexer_token_units_symbol_off_db1pointsdata_lexer_token_symbol sym_dlt)
  then false
  else
    begin
  let sym_dtu = db1pointsdata_lexer_token_units_symbol_off_db1pointsdata_lexer_token_symbol sym_dlt in
  Db1pointsdata_lexer_token_units_symbol_v.is_db1pointsdata_lexer_token_units_angle_symbol_off_db1pointsdata_lexer_token_units_symbol sym_dtu
    end
;;

let is_db1pointsdata_lexer_token_units_length_symbol_off_db1pointsdata_lexer_token_symbol sym_dlt =
  if not (is_db1pointsdata_lexer_token_units_symbol_off_db1pointsdata_lexer_token_symbol sym_dlt)
  then false
  else
    begin
  let sym_dtu = db1pointsdata_lexer_token_units_symbol_off_db1pointsdata_lexer_token_symbol sym_dlt in
  Db1pointsdata_lexer_token_units_symbol_v.is_db1pointsdata_lexer_token_units_length_symbol_off_db1pointsdata_lexer_token_units_symbol sym_dtu
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let db1pointsdata_lexer_token_symbol_of_db1pointsdata_lexer_token_figure_symbol sym_dtf = 
  Db1pointsdata_lexer_token_symbol_t.Db1pointsdata_lexer_token_figure_symbol sym_dtf
;;

let db1pointsdata_lexer_token_symbol_of_db1pointsdata_lexer_token_units_symbol sym_dtu = 
  Db1pointsdata_lexer_token_symbol_t.Db1pointsdata_lexer_token_units_symbol sym_dtu
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let db1pointsdata_lexer_token_symbol_of_db1pointsdata_lexer_token_figure_kind_symbol sym_dfk = 
  let sym_dtf = Db1pointsdata_lexer_token_figure_symbol_v.db1pointsdata_lexer_token_figure_symbol_of_db1pointsdata_lexer_token_figure_kind_symbol sym_dfk in
    db1pointsdata_lexer_token_symbol_of_db1pointsdata_lexer_token_figure_symbol sym_dtf
;;

let db1pointsdata_lexer_token_symbol_of_db1pointsdata_lexer_token_units_angle_symbol sym_dua = 
  let sym_dtu = Db1pointsdata_lexer_token_units_symbol_v.db1pointsdata_lexer_token_units_symbol_of_db1pointsdata_lexer_token_units_angle_symbol sym_dua in
    db1pointsdata_lexer_token_symbol_of_db1pointsdata_lexer_token_units_symbol sym_dtu
;;

let db1pointsdata_lexer_token_symbol_of_db1pointsdata_lexer_token_units_length_symbol sym_dul = 
  let sym_dtu = Db1pointsdata_lexer_token_units_symbol_v.db1pointsdata_lexer_token_units_symbol_of_db1pointsdata_lexer_token_units_length_symbol sym_dul in
    db1pointsdata_lexer_token_symbol_of_db1pointsdata_lexer_token_units_symbol sym_dtu
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let db1pointsdata_lexer_token_figure_kind_point = db1pointsdata_lexer_token_symbol_of_db1pointsdata_lexer_token_figure_symbol Db1pointsdata_lexer_token_figure_symbol_v.db1pointsdata_lexer_token_figure_kind_point;;

let db1pointsdata_lexer_token_figure_kind_segment = db1pointsdata_lexer_token_symbol_of_db1pointsdata_lexer_token_figure_symbol Db1pointsdata_lexer_token_figure_symbol_v.db1pointsdata_lexer_token_figure_kind_segment;;

let db1pointsdata_lexer_token_figure_kind_triangle = db1pointsdata_lexer_token_symbol_of_db1pointsdata_lexer_token_figure_symbol Db1pointsdata_lexer_token_figure_symbol_v.db1pointsdata_lexer_token_figure_kind_triangle;;

let db1pointsdata_lexer_token_figure_name = db1pointsdata_lexer_token_symbol_of_db1pointsdata_lexer_token_figure_symbol Db1pointsdata_lexer_token_figure_symbol_v.db1pointsdata_lexer_token_figure_name;;

let db1pointsdata_lexer_token_units_angle_degree = db1pointsdata_lexer_token_symbol_of_db1pointsdata_lexer_token_units_symbol Db1pointsdata_lexer_token_units_symbol_v.db1pointsdata_lexer_token_units_angle_degree;;

let db1pointsdata_lexer_token_units_angle_radian = db1pointsdata_lexer_token_symbol_of_db1pointsdata_lexer_token_units_symbol Db1pointsdata_lexer_token_units_symbol_v.db1pointsdata_lexer_token_units_angle_radian;;

let db1pointsdata_lexer_token_units_length_angstrom = db1pointsdata_lexer_token_symbol_of_db1pointsdata_lexer_token_units_symbol Db1pointsdata_lexer_token_units_symbol_v.db1pointsdata_lexer_token_units_length_angstrom;;

let db1pointsdata_lexer_token_units_length_bohr = db1pointsdata_lexer_token_symbol_of_db1pointsdata_lexer_token_units_symbol Db1pointsdata_lexer_token_units_symbol_v.db1pointsdata_lexer_token_units_length_bohr;;

let db1pointsdata_lexer_token_units_length_meter = db1pointsdata_lexer_token_symbol_of_db1pointsdata_lexer_token_units_symbol Db1pointsdata_lexer_token_units_symbol_v.db1pointsdata_lexer_token_units_length_meter;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Db1pointsdata_lexer_token_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Db1pointsdata_lexer_token_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try db1pointsdata_lexer_token_symbol_of_db1pointsdata_lexer_token_figure_symbol
      (Db1pointsdata_lexer_token_figure_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_lexer_token_figure_symbol:Db1pointsdata_lexer_token_figure_symbol_v.ml:make" ->
  try db1pointsdata_lexer_token_symbol_of_db1pointsdata_lexer_token_units_symbol
      (Db1pointsdata_lexer_token_units_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_lexer_token_units_symbol:Db1pointsdata_lexer_token_units_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Db1pointsdata_lexer_token_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Db1pointsdata_lexer_token_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Db1pointsdata_lexer_token_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Db1pointsdata_lexer_token_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Db1pointsdata_lexer_token subtype" nam s)
      "it does not exists"
      "Check file Db1pointsdata_lexer_token_symbol_v.ml"
    in
    failwith "Not_a_db1pointsdata_lexer_token_symbol:Db1pointsdata_lexer_token_symbol_v.ml:make"
;;


(** Db1pointsdata_lexer_token_symbol_v at 15:47:43 on 25 Feb 2016. created by version v2.4 of generator *)



