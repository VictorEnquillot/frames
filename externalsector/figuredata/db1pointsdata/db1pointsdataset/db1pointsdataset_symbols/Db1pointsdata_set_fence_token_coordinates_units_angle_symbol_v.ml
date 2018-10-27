(** {3 Db1pointsdata_set_fence_token_coordinates_units_angle_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Db1pointsdata_set_fence_token_coordinates_units_angle_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Db1pointsdata_set_fence_token_coordinates_units_angle_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol sym_dad ->
    Db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol_v.name sym_dad
  | Db1pointsdata_set_fence_token_coordinates_units_angle_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_angle_noangle_symbol sym_dan ->
    Db1pointsdata_set_fence_token_coordinates_units_angle_noangle_symbol_v.name sym_dan
  | Db1pointsdata_set_fence_token_coordinates_units_angle_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol sym_dar ->
    Db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol_v.name sym_dar
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Db1pointsdata_set_fence_token_coordinates_units_angle_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol sym_dad ->
  Db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol_v.string_off sym_dad
  | Db1pointsdata_set_fence_token_coordinates_units_angle_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_angle_noangle_symbol sym_dan ->
  Db1pointsdata_set_fence_token_coordinates_units_angle_noangle_symbol_v.string_off sym_dan
  | Db1pointsdata_set_fence_token_coordinates_units_angle_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol sym_dar ->
  Db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol_v.string_off sym_dar
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_dua =
  Format.sprintf "Db1pointsdata_set_fence_token_coordinates_units_angle_symbol_t.%s" (String.capitalize (name sym_dua))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_dua =
  Format.sprintf "%s \"%s\"" (longname sym_dua) (string_off sym_dua)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol_off_db1pointsdata_set_fence_token_coordinates_units_angle_symbol = function
  | Db1pointsdata_set_fence_token_coordinates_units_angle_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol sym_dad -> sym_dad
  | sym_dua -> Error_messages_v.print_fatal_error
      nam_cod "db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol_off_db1pointsdata_set_fence_token_coordinates_units_angle_symbol"
      "Db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol"
      (name sym_dua) "check"
;;

let db1pointsdata_set_fence_token_coordinates_units_angle_noangle_symbol_off_db1pointsdata_set_fence_token_coordinates_units_angle_symbol = function
  | Db1pointsdata_set_fence_token_coordinates_units_angle_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_angle_noangle_symbol sym_dan -> sym_dan
  | sym_dua -> Error_messages_v.print_fatal_error
      nam_cod "db1pointsdata_set_fence_token_coordinates_units_angle_noangle_symbol_off_db1pointsdata_set_fence_token_coordinates_units_angle_symbol"
      "Db1pointsdata_set_fence_token_coordinates_units_angle_noangle_symbol"
      (name sym_dua) "check"
;;

let db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol_off_db1pointsdata_set_fence_token_coordinates_units_angle_symbol = function
  | Db1pointsdata_set_fence_token_coordinates_units_angle_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol sym_dar -> sym_dar
  | sym_dua -> Error_messages_v.print_fatal_error
      nam_cod "db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol_off_db1pointsdata_set_fence_token_coordinates_units_angle_symbol"
      "Db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol"
      (name sym_dua) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol_off_db1pointsdata_set_fence_token_coordinates_units_angle_symbol = function
  | Db1pointsdata_set_fence_token_coordinates_units_angle_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol _ -> true
  | _ -> false
;;

let is_db1pointsdata_set_fence_token_coordinates_units_angle_noangle_symbol_off_db1pointsdata_set_fence_token_coordinates_units_angle_symbol = function
  | Db1pointsdata_set_fence_token_coordinates_units_angle_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_angle_noangle_symbol _ -> true
  | _ -> false
;;

let is_db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol_off_db1pointsdata_set_fence_token_coordinates_units_angle_symbol = function
  | Db1pointsdata_set_fence_token_coordinates_units_angle_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_db1pointsdata_set_fence_token_coordinates_units_angle_degree_constructor sym_dua =
  if not (is_db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol_off_db1pointsdata_set_fence_token_coordinates_units_angle_symbol sym_dua)
  then false
  else
    begin
      let sym_dad = db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol_off_db1pointsdata_set_fence_token_coordinates_units_angle_symbol sym_dua in
      Db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_angle_degree_constructor sym_dad
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_units_angle_noangle_constructor sym_dua =
  if not (is_db1pointsdata_set_fence_token_coordinates_units_angle_noangle_symbol_off_db1pointsdata_set_fence_token_coordinates_units_angle_symbol sym_dua)
  then false
  else
    begin
      let sym_dan = db1pointsdata_set_fence_token_coordinates_units_angle_noangle_symbol_off_db1pointsdata_set_fence_token_coordinates_units_angle_symbol sym_dua in
      Db1pointsdata_set_fence_token_coordinates_units_angle_noangle_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_angle_noangle_constructor sym_dan
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_units_angle_radian_constructor sym_dua =
  if not (is_db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol_off_db1pointsdata_set_fence_token_coordinates_units_angle_symbol sym_dua)
  then false
  else
    begin
      let sym_dar = db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol_off_db1pointsdata_set_fence_token_coordinates_units_angle_symbol sym_dua in
      Db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_angle_radian_constructor sym_dar
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let db1pointsdata_set_fence_token_coordinates_units_angle_symbol_of_db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol sym_dad = 
  Db1pointsdata_set_fence_token_coordinates_units_angle_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol sym_dad
;;

let db1pointsdata_set_fence_token_coordinates_units_angle_symbol_of_db1pointsdata_set_fence_token_coordinates_units_angle_noangle_symbol sym_dan = 
  Db1pointsdata_set_fence_token_coordinates_units_angle_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_angle_noangle_symbol sym_dan
;;

let db1pointsdata_set_fence_token_coordinates_units_angle_symbol_of_db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol sym_dar = 
  Db1pointsdata_set_fence_token_coordinates_units_angle_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol sym_dar
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let db1pointsdata_set_fence_token_coordinates_units_angle_degree_constructor s = db1pointsdata_set_fence_token_coordinates_units_angle_symbol_of_db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol (Db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol_v.db1pointsdata_set_fence_token_coordinates_units_angle_degree_constructor s);;

let db1pointsdata_set_fence_token_coordinates_units_angle_noangle_constructor s = db1pointsdata_set_fence_token_coordinates_units_angle_symbol_of_db1pointsdata_set_fence_token_coordinates_units_angle_noangle_symbol (Db1pointsdata_set_fence_token_coordinates_units_angle_noangle_symbol_v.db1pointsdata_set_fence_token_coordinates_units_angle_noangle_constructor s);;

let db1pointsdata_set_fence_token_coordinates_units_angle_radian_constructor s = db1pointsdata_set_fence_token_coordinates_units_angle_symbol_of_db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol (Db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol_v.db1pointsdata_set_fence_token_coordinates_units_angle_radian_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Db1pointsdata_set_fence_token_coordinates_units_angle_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Db1pointsdata_set_fence_token_coordinates_units_angle_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try db1pointsdata_set_fence_token_coordinates_units_angle_symbol_of_db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol
      (Db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol:Db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol_v.ml:make" ->
  try db1pointsdata_set_fence_token_coordinates_units_angle_symbol_of_db1pointsdata_set_fence_token_coordinates_units_angle_noangle_symbol
      (Db1pointsdata_set_fence_token_coordinates_units_angle_noangle_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_set_fence_token_coordinates_units_angle_noangle_symbol:Db1pointsdata_set_fence_token_coordinates_units_angle_noangle_symbol_v.ml:make" ->
  try db1pointsdata_set_fence_token_coordinates_units_angle_symbol_of_db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol
      (Db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol:Db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Db1pointsdata_set_fence_token_coordinates_units_angle_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Db1pointsdata_set_fence_token_coordinates_units_angle_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Db1pointsdata_set_fence_token_coordinates_units_angle_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Db1pointsdata_set_fence_token_coordinates_units_angle_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Db1pointsdata_set_fence_token_coordinates_units_angle subtype" nam s)
      "it does not exists"
      "Check file Db1pointsdata_set_fence_token_coordinates_units_angle_symbol_v.ml"
    in
    failwith "Not_a_db1pointsdata_set_fence_token_coordinates_units_angle_symbol:Db1pointsdata_set_fence_token_coordinates_units_angle_symbol_v.ml:make"
;;


(** Db1pointsdata_set_fence_token_coordinates_units_angle_symbol_v at 12:40:41 on 4 Jun 2017. created by version v2.4 of generator *)



