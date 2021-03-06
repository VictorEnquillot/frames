(** {3 Db1pointsdata_set_fence_keyword_coordinates_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Db1pointsdata_set_fence_keyword_coordinates_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Db1pointsdata_set_fence_keyword_coordinates_symbol_t.Db1pointsdata_set_fence_keyword_coordinates_units_symbol sym_dcu ->
    Db1pointsdata_set_fence_keyword_coordinates_units_symbol_v.name sym_dcu
  | Db1pointsdata_set_fence_keyword_coordinates_symbol_t.Db1pointsdata_set_fence_keyword_coordinates_kind_symbol sym_dck ->
    Db1pointsdata_set_fence_keyword_coordinates_kind_symbol_v.name sym_dck
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Db1pointsdata_set_fence_keyword_coordinates_symbol_t.Db1pointsdata_set_fence_keyword_coordinates_units_symbol sym_dcu ->
  Db1pointsdata_set_fence_keyword_coordinates_units_symbol_v.string_off sym_dcu
  | Db1pointsdata_set_fence_keyword_coordinates_symbol_t.Db1pointsdata_set_fence_keyword_coordinates_kind_symbol sym_dck ->
  Db1pointsdata_set_fence_keyword_coordinates_kind_symbol_v.string_off sym_dck
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_dkc =
  Format.sprintf "Db1pointsdata_set_fence_keyword_coordinates_symbol_t.%s" (String.capitalize (name sym_dkc))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_dkc =
  Format.sprintf "%s \"%s\"" (longname sym_dkc) (string_off sym_dkc)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let db1pointsdata_set_fence_keyword_coordinates_units_symbol_off_db1pointsdata_set_fence_keyword_coordinates_symbol = function
  | Db1pointsdata_set_fence_keyword_coordinates_symbol_t.Db1pointsdata_set_fence_keyword_coordinates_units_symbol sym_dcu -> sym_dcu
  | sym_dkc -> Error_messages_v.print_fatal_error
      nam_cod "db1pointsdata_set_fence_keyword_coordinates_units_symbol_off_db1pointsdata_set_fence_keyword_coordinates_symbol"
      "Db1pointsdata_set_fence_keyword_coordinates_units_symbol"
      (name sym_dkc) "check"
;;

let db1pointsdata_set_fence_keyword_coordinates_kind_symbol_off_db1pointsdata_set_fence_keyword_coordinates_symbol = function
  | Db1pointsdata_set_fence_keyword_coordinates_symbol_t.Db1pointsdata_set_fence_keyword_coordinates_kind_symbol sym_dck -> sym_dck
  | sym_dkc -> Error_messages_v.print_fatal_error
      nam_cod "db1pointsdata_set_fence_keyword_coordinates_kind_symbol_off_db1pointsdata_set_fence_keyword_coordinates_symbol"
      "Db1pointsdata_set_fence_keyword_coordinates_kind_symbol"
      (name sym_dkc) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let db1pointsdata_set_fence_keyword_coordinates_units_angle_symbol_off_db1pointsdata_set_fence_keyword_coordinates_symbol sym_dkc = 
  let sym_dcu = db1pointsdata_set_fence_keyword_coordinates_units_symbol_off_db1pointsdata_set_fence_keyword_coordinates_symbol sym_dkc in
    Db1pointsdata_set_fence_keyword_coordinates_units_symbol_v.db1pointsdata_set_fence_keyword_coordinates_units_angle_symbol_off_db1pointsdata_set_fence_keyword_coordinates_units_symbol sym_dcu
;;

let db1pointsdata_set_fence_keyword_coordinates_units_length_symbol_off_db1pointsdata_set_fence_keyword_coordinates_symbol sym_dkc = 
  let sym_dcu = db1pointsdata_set_fence_keyword_coordinates_units_symbol_off_db1pointsdata_set_fence_keyword_coordinates_symbol sym_dkc in
    Db1pointsdata_set_fence_keyword_coordinates_units_symbol_v.db1pointsdata_set_fence_keyword_coordinates_units_length_symbol_off_db1pointsdata_set_fence_keyword_coordinates_units_symbol sym_dcu
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_db1pointsdata_set_fence_keyword_coordinates_units_symbol_off_db1pointsdata_set_fence_keyword_coordinates_symbol = function
  | Db1pointsdata_set_fence_keyword_coordinates_symbol_t.Db1pointsdata_set_fence_keyword_coordinates_units_symbol _ -> true
  | _ -> false
;;

let is_db1pointsdata_set_fence_keyword_coordinates_kind_symbol_off_db1pointsdata_set_fence_keyword_coordinates_symbol = function
  | Db1pointsdata_set_fence_keyword_coordinates_symbol_t.Db1pointsdata_set_fence_keyword_coordinates_kind_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_db1pointsdata_set_fence_keyword_coordinates_units_angle_constructor sym_dkc =
  if not (is_db1pointsdata_set_fence_keyword_coordinates_units_symbol_off_db1pointsdata_set_fence_keyword_coordinates_symbol sym_dkc)
  then false
  else
    begin
      let sym_dcu = db1pointsdata_set_fence_keyword_coordinates_units_symbol_off_db1pointsdata_set_fence_keyword_coordinates_symbol sym_dkc in
      Db1pointsdata_set_fence_keyword_coordinates_units_symbol_v.is_db1pointsdata_set_fence_keyword_coordinates_units_angle_constructor sym_dcu
    end
;;

let is_db1pointsdata_set_fence_keyword_coordinates_units_length_constructor sym_dkc =
  if not (is_db1pointsdata_set_fence_keyword_coordinates_units_symbol_off_db1pointsdata_set_fence_keyword_coordinates_symbol sym_dkc)
  then false
  else
    begin
      let sym_dcu = db1pointsdata_set_fence_keyword_coordinates_units_symbol_off_db1pointsdata_set_fence_keyword_coordinates_symbol sym_dkc in
      Db1pointsdata_set_fence_keyword_coordinates_units_symbol_v.is_db1pointsdata_set_fence_keyword_coordinates_units_length_constructor sym_dcu
    end
;;

let is_db1pointsdata_set_fence_keyword_coordinates_kind_constructor sym_dkc =
  if not (is_db1pointsdata_set_fence_keyword_coordinates_kind_symbol_off_db1pointsdata_set_fence_keyword_coordinates_symbol sym_dkc)
  then false
  else
    begin
      let sym_dck = db1pointsdata_set_fence_keyword_coordinates_kind_symbol_off_db1pointsdata_set_fence_keyword_coordinates_symbol sym_dkc in
      Db1pointsdata_set_fence_keyword_coordinates_kind_symbol_v.is_db1pointsdata_set_fence_keyword_coordinates_kind_constructor sym_dck
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_db1pointsdata_set_fence_keyword_coordinates_units_angle_symbol_off_db1pointsdata_set_fence_keyword_coordinates_symbol sym_dkc =
  if not (is_db1pointsdata_set_fence_keyword_coordinates_units_symbol_off_db1pointsdata_set_fence_keyword_coordinates_symbol sym_dkc)
  then false
  else
    begin
  let sym_dcu = db1pointsdata_set_fence_keyword_coordinates_units_symbol_off_db1pointsdata_set_fence_keyword_coordinates_symbol sym_dkc in
  Db1pointsdata_set_fence_keyword_coordinates_units_symbol_v.is_db1pointsdata_set_fence_keyword_coordinates_units_angle_symbol_off_db1pointsdata_set_fence_keyword_coordinates_units_symbol sym_dcu
    end
;;

let is_db1pointsdata_set_fence_keyword_coordinates_units_length_symbol_off_db1pointsdata_set_fence_keyword_coordinates_symbol sym_dkc =
  if not (is_db1pointsdata_set_fence_keyword_coordinates_units_symbol_off_db1pointsdata_set_fence_keyword_coordinates_symbol sym_dkc)
  then false
  else
    begin
  let sym_dcu = db1pointsdata_set_fence_keyword_coordinates_units_symbol_off_db1pointsdata_set_fence_keyword_coordinates_symbol sym_dkc in
  Db1pointsdata_set_fence_keyword_coordinates_units_symbol_v.is_db1pointsdata_set_fence_keyword_coordinates_units_length_symbol_off_db1pointsdata_set_fence_keyword_coordinates_units_symbol sym_dcu
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let db1pointsdata_set_fence_keyword_coordinates_symbol_of_db1pointsdata_set_fence_keyword_coordinates_units_symbol sym_dcu = 
  Db1pointsdata_set_fence_keyword_coordinates_symbol_t.Db1pointsdata_set_fence_keyword_coordinates_units_symbol sym_dcu
;;

let db1pointsdata_set_fence_keyword_coordinates_symbol_of_db1pointsdata_set_fence_keyword_coordinates_kind_symbol sym_dck = 
  Db1pointsdata_set_fence_keyword_coordinates_symbol_t.Db1pointsdata_set_fence_keyword_coordinates_kind_symbol sym_dck
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let db1pointsdata_set_fence_keyword_coordinates_symbol_of_db1pointsdata_set_fence_keyword_coordinates_units_angle_symbol sym_dua = 
  let sym_dcu = Db1pointsdata_set_fence_keyword_coordinates_units_symbol_v.db1pointsdata_set_fence_keyword_coordinates_units_symbol_of_db1pointsdata_set_fence_keyword_coordinates_units_angle_symbol sym_dua in
    db1pointsdata_set_fence_keyword_coordinates_symbol_of_db1pointsdata_set_fence_keyword_coordinates_units_symbol sym_dcu
;;

let db1pointsdata_set_fence_keyword_coordinates_symbol_of_db1pointsdata_set_fence_keyword_coordinates_units_length_symbol sym_dul = 
  let sym_dcu = Db1pointsdata_set_fence_keyword_coordinates_units_symbol_v.db1pointsdata_set_fence_keyword_coordinates_units_symbol_of_db1pointsdata_set_fence_keyword_coordinates_units_length_symbol sym_dul in
    db1pointsdata_set_fence_keyword_coordinates_symbol_of_db1pointsdata_set_fence_keyword_coordinates_units_symbol sym_dcu
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let db1pointsdata_set_fence_keyword_coordinates_units_angle_constructor s = db1pointsdata_set_fence_keyword_coordinates_symbol_of_db1pointsdata_set_fence_keyword_coordinates_units_symbol (Db1pointsdata_set_fence_keyword_coordinates_units_symbol_v.db1pointsdata_set_fence_keyword_coordinates_units_angle_constructor s);;

let db1pointsdata_set_fence_keyword_coordinates_units_length_constructor s = db1pointsdata_set_fence_keyword_coordinates_symbol_of_db1pointsdata_set_fence_keyword_coordinates_units_symbol (Db1pointsdata_set_fence_keyword_coordinates_units_symbol_v.db1pointsdata_set_fence_keyword_coordinates_units_length_constructor s);;

let db1pointsdata_set_fence_keyword_coordinates_kind_constructor s = db1pointsdata_set_fence_keyword_coordinates_symbol_of_db1pointsdata_set_fence_keyword_coordinates_kind_symbol (Db1pointsdata_set_fence_keyword_coordinates_kind_symbol_v.db1pointsdata_set_fence_keyword_coordinates_kind_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Db1pointsdata_set_fence_keyword_coordinates_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Db1pointsdata_set_fence_keyword_coordinates_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try db1pointsdata_set_fence_keyword_coordinates_symbol_of_db1pointsdata_set_fence_keyword_coordinates_units_symbol
      (Db1pointsdata_set_fence_keyword_coordinates_units_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_set_fence_keyword_coordinates_units_symbol:Db1pointsdata_set_fence_keyword_coordinates_units_symbol_v.ml:make" ->
  try db1pointsdata_set_fence_keyword_coordinates_symbol_of_db1pointsdata_set_fence_keyword_coordinates_kind_symbol
      (Db1pointsdata_set_fence_keyword_coordinates_kind_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_set_fence_keyword_coordinates_kind_symbol:Db1pointsdata_set_fence_keyword_coordinates_kind_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Db1pointsdata_set_fence_keyword_coordinates_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Db1pointsdata_set_fence_keyword_coordinates_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Db1pointsdata_set_fence_keyword_coordinates_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Db1pointsdata_set_fence_keyword_coordinates_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Db1pointsdata_set_fence_keyword_coordinates subtype" nam s)
      "it does not exists"
      "Check file Db1pointsdata_set_fence_keyword_coordinates_symbol_v.ml"
    in
    failwith "Not_a_db1pointsdata_set_fence_keyword_coordinates_symbol:Db1pointsdata_set_fence_keyword_coordinates_symbol_v.ml:make"
;;


(** Db1pointsdata_set_fence_keyword_coordinates_symbol_v at 12:40:39 on 4 Jun 2017. created by version v2.4 of generator *)



