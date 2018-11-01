(** {3 Db1pointsdata_set_body_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Db1pointsdata_set_body_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_bundle_symbol sym_dbb ->
    Db1pointsdata_set_body_bundle_symbol_v.name sym_dbb
  | Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_cluster_symbol sym_dbc ->
    Db1pointsdata_set_body_cluster_symbol_v.name sym_dbc
  | Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_record_symbol sym_dbr ->
    Db1pointsdata_set_body_record_symbol_v.name sym_dbr
  | Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_sequence_symbol sym_dbs ->
    Db1pointsdata_set_body_sequence_symbol_v.name sym_dbs
  | Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_name_symbol sym_dbn ->
    Db1pointsdata_set_body_name_symbol_v.name sym_dbn
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_bundle_symbol sym_dbb ->
  Db1pointsdata_set_body_bundle_symbol_v.string_off sym_dbb
  | Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_cluster_symbol sym_dbc ->
  Db1pointsdata_set_body_cluster_symbol_v.string_off sym_dbc
  | Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_record_symbol sym_dbr ->
  Db1pointsdata_set_body_record_symbol_v.string_off sym_dbr
  | Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_sequence_symbol sym_dbs ->
  Db1pointsdata_set_body_sequence_symbol_v.string_off sym_dbs
  | Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_name_symbol sym_dbn ->
  Db1pointsdata_set_body_name_symbol_v.string_off sym_dbn
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_dsb =
  Format.sprintf "Db1pointsdata_set_body_symbol_t.%s" (String.capitalize_ascii (name sym_dsb))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_dsb =
  Format.sprintf "%s \"%s\"" (longname sym_dsb) (string_off sym_dsb)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let db1pointsdata_set_body_bundle_symbol_off_db1pointsdata_set_body_symbol = function
  | Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_bundle_symbol sym_dbb -> sym_dbb
  | sym_dsb -> Error_messages_v.print_fatal_error
      nam_cod "db1pointsdata_set_body_bundle_symbol_off_db1pointsdata_set_body_symbol"
      "Db1pointsdata_set_body_bundle_symbol"
      (name sym_dsb) "check"
;;

let db1pointsdata_set_body_cluster_symbol_off_db1pointsdata_set_body_symbol = function
  | Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_cluster_symbol sym_dbc -> sym_dbc
  | sym_dsb -> Error_messages_v.print_fatal_error
      nam_cod "db1pointsdata_set_body_cluster_symbol_off_db1pointsdata_set_body_symbol"
      "Db1pointsdata_set_body_cluster_symbol"
      (name sym_dsb) "check"
;;

let db1pointsdata_set_body_record_symbol_off_db1pointsdata_set_body_symbol = function
  | Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_record_symbol sym_dbr -> sym_dbr
  | sym_dsb -> Error_messages_v.print_fatal_error
      nam_cod "db1pointsdata_set_body_record_symbol_off_db1pointsdata_set_body_symbol"
      "Db1pointsdata_set_body_record_symbol"
      (name sym_dsb) "check"
;;

let db1pointsdata_set_body_sequence_symbol_off_db1pointsdata_set_body_symbol = function
  | Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_sequence_symbol sym_dbs -> sym_dbs
  | sym_dsb -> Error_messages_v.print_fatal_error
      nam_cod "db1pointsdata_set_body_sequence_symbol_off_db1pointsdata_set_body_symbol"
      "Db1pointsdata_set_body_sequence_symbol"
      (name sym_dsb) "check"
;;

let db1pointsdata_set_body_name_symbol_off_db1pointsdata_set_body_symbol = function
  | Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_name_symbol sym_dbn -> sym_dbn
  | sym_dsb -> Error_messages_v.print_fatal_error
      nam_cod "db1pointsdata_set_body_name_symbol_off_db1pointsdata_set_body_symbol"
      "Db1pointsdata_set_body_name_symbol"
      (name sym_dsb) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let db1pointsdata_set_body_bundle_coordinates_symbol_off_db1pointsdata_set_body_symbol sym_dsb = 
  let sym_dbb = db1pointsdata_set_body_bundle_symbol_off_db1pointsdata_set_body_symbol sym_dsb in
    Db1pointsdata_set_body_bundle_symbol_v.db1pointsdata_set_body_bundle_coordinates_symbol_off_db1pointsdata_set_body_bundle_symbol sym_dbb
;;

let db1pointsdata_set_body_bundle_figure_symbol_off_db1pointsdata_set_body_symbol sym_dsb = 
  let sym_dbb = db1pointsdata_set_body_bundle_symbol_off_db1pointsdata_set_body_symbol sym_dsb in
    Db1pointsdata_set_body_bundle_symbol_v.db1pointsdata_set_body_bundle_figure_symbol_off_db1pointsdata_set_body_bundle_symbol sym_dbb
;;

let db1pointsdata_set_body_cluster_information_symbol_off_db1pointsdata_set_body_symbol sym_dsb = 
  let sym_dbc = db1pointsdata_set_body_cluster_symbol_off_db1pointsdata_set_body_symbol sym_dsb in
    Db1pointsdata_set_body_cluster_symbol_v.db1pointsdata_set_body_cluster_information_symbol_off_db1pointsdata_set_body_cluster_symbol sym_dbc
;;

let db1pointsdata_set_body_cluster_vertex_symbol_off_db1pointsdata_set_body_symbol sym_dsb = 
  let sym_dbc = db1pointsdata_set_body_cluster_symbol_off_db1pointsdata_set_body_symbol sym_dsb in
    Db1pointsdata_set_body_cluster_symbol_v.db1pointsdata_set_body_cluster_vertex_symbol_off_db1pointsdata_set_body_cluster_symbol sym_dbc
;;

let db1pointsdata_set_body_record_vertex_symbol_off_db1pointsdata_set_body_symbol sym_dsb = 
  let sym_dbr = db1pointsdata_set_body_record_symbol_off_db1pointsdata_set_body_symbol sym_dsb in
    Db1pointsdata_set_body_record_symbol_v.db1pointsdata_set_body_record_vertex_symbol_off_db1pointsdata_set_body_record_symbol sym_dbr
;;

let db1pointsdata_set_body_sequence_float_symbol_off_db1pointsdata_set_body_symbol sym_dsb = 
  let sym_dbs = db1pointsdata_set_body_sequence_symbol_off_db1pointsdata_set_body_symbol sym_dsb in
    Db1pointsdata_set_body_sequence_symbol_v.db1pointsdata_set_body_sequence_float_symbol_off_db1pointsdata_set_body_sequence_symbol sym_dbs
;;

let db1pointsdata_set_body_name_vertex_symbol_off_db1pointsdata_set_body_symbol sym_dsb = 
  let sym_dbn = db1pointsdata_set_body_name_symbol_off_db1pointsdata_set_body_symbol sym_dsb in
    Db1pointsdata_set_body_name_symbol_v.db1pointsdata_set_body_name_vertex_symbol_off_db1pointsdata_set_body_name_symbol sym_dbn
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_db1pointsdata_set_body_bundle_symbol_off_db1pointsdata_set_body_symbol = function
  | Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_bundle_symbol _ -> true
  | _ -> false
;;

let is_db1pointsdata_set_body_cluster_symbol_off_db1pointsdata_set_body_symbol = function
  | Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_cluster_symbol _ -> true
  | _ -> false
;;

let is_db1pointsdata_set_body_record_symbol_off_db1pointsdata_set_body_symbol = function
  | Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_record_symbol _ -> true
  | _ -> false
;;

let is_db1pointsdata_set_body_sequence_symbol_off_db1pointsdata_set_body_symbol = function
  | Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_sequence_symbol _ -> true
  | _ -> false
;;

let is_db1pointsdata_set_body_name_symbol_off_db1pointsdata_set_body_symbol = function
  | Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_name_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_db1pointsdata_set_body_bundle_coordinates_constructor sym_dsb =
  if not (is_db1pointsdata_set_body_bundle_symbol_off_db1pointsdata_set_body_symbol sym_dsb)
  then false
  else
    begin
      let sym_dbb = db1pointsdata_set_body_bundle_symbol_off_db1pointsdata_set_body_symbol sym_dsb in
      Db1pointsdata_set_body_bundle_symbol_v.is_db1pointsdata_set_body_bundle_coordinates_constructor sym_dbb
    end
;;

let is_db1pointsdata_set_body_bundle_figure_constructor sym_dsb =
  if not (is_db1pointsdata_set_body_bundle_symbol_off_db1pointsdata_set_body_symbol sym_dsb)
  then false
  else
    begin
      let sym_dbb = db1pointsdata_set_body_bundle_symbol_off_db1pointsdata_set_body_symbol sym_dsb in
      Db1pointsdata_set_body_bundle_symbol_v.is_db1pointsdata_set_body_bundle_figure_constructor sym_dbb
    end
;;

let is_db1pointsdata_set_body_cluster_information_constructor sym_dsb =
  if not (is_db1pointsdata_set_body_cluster_symbol_off_db1pointsdata_set_body_symbol sym_dsb)
  then false
  else
    begin
      let sym_dbc = db1pointsdata_set_body_cluster_symbol_off_db1pointsdata_set_body_symbol sym_dsb in
      Db1pointsdata_set_body_cluster_symbol_v.is_db1pointsdata_set_body_cluster_information_constructor sym_dbc
    end
;;

let is_db1pointsdata_set_body_cluster_vertex_constructor sym_dsb =
  if not (is_db1pointsdata_set_body_cluster_symbol_off_db1pointsdata_set_body_symbol sym_dsb)
  then false
  else
    begin
      let sym_dbc = db1pointsdata_set_body_cluster_symbol_off_db1pointsdata_set_body_symbol sym_dsb in
      Db1pointsdata_set_body_cluster_symbol_v.is_db1pointsdata_set_body_cluster_vertex_constructor sym_dbc
    end
;;

let is_db1pointsdata_set_body_record_vertex_constructor sym_dsb =
  if not (is_db1pointsdata_set_body_record_symbol_off_db1pointsdata_set_body_symbol sym_dsb)
  then false
  else
    begin
      let sym_dbr = db1pointsdata_set_body_record_symbol_off_db1pointsdata_set_body_symbol sym_dsb in
      Db1pointsdata_set_body_record_symbol_v.is_db1pointsdata_set_body_record_vertex_constructor sym_dbr
    end
;;

let is_db1pointsdata_set_body_sequence_float_constructor sym_dsb =
  if not (is_db1pointsdata_set_body_sequence_symbol_off_db1pointsdata_set_body_symbol sym_dsb)
  then false
  else
    begin
      let sym_dbs = db1pointsdata_set_body_sequence_symbol_off_db1pointsdata_set_body_symbol sym_dsb in
      Db1pointsdata_set_body_sequence_symbol_v.is_db1pointsdata_set_body_sequence_float_constructor sym_dbs
    end
;;

let is_db1pointsdata_set_body_name_vertex_constructor sym_dsb =
  if not (is_db1pointsdata_set_body_name_symbol_off_db1pointsdata_set_body_symbol sym_dsb)
  then false
  else
    begin
      let sym_dbn = db1pointsdata_set_body_name_symbol_off_db1pointsdata_set_body_symbol sym_dsb in
      Db1pointsdata_set_body_name_symbol_v.is_db1pointsdata_set_body_name_vertex_constructor sym_dbn
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_db1pointsdata_set_body_bundle_coordinates_symbol_off_db1pointsdata_set_body_symbol sym_dsb =
  if not (is_db1pointsdata_set_body_bundle_symbol_off_db1pointsdata_set_body_symbol sym_dsb)
  then false
  else
    begin
  let sym_dbb = db1pointsdata_set_body_bundle_symbol_off_db1pointsdata_set_body_symbol sym_dsb in
  Db1pointsdata_set_body_bundle_symbol_v.is_db1pointsdata_set_body_bundle_coordinates_symbol_off_db1pointsdata_set_body_bundle_symbol sym_dbb
    end
;;

let is_db1pointsdata_set_body_bundle_figure_symbol_off_db1pointsdata_set_body_symbol sym_dsb =
  if not (is_db1pointsdata_set_body_bundle_symbol_off_db1pointsdata_set_body_symbol sym_dsb)
  then false
  else
    begin
  let sym_dbb = db1pointsdata_set_body_bundle_symbol_off_db1pointsdata_set_body_symbol sym_dsb in
  Db1pointsdata_set_body_bundle_symbol_v.is_db1pointsdata_set_body_bundle_figure_symbol_off_db1pointsdata_set_body_bundle_symbol sym_dbb
    end
;;

let is_db1pointsdata_set_body_cluster_information_symbol_off_db1pointsdata_set_body_symbol sym_dsb =
  if not (is_db1pointsdata_set_body_cluster_symbol_off_db1pointsdata_set_body_symbol sym_dsb)
  then false
  else
    begin
  let sym_dbc = db1pointsdata_set_body_cluster_symbol_off_db1pointsdata_set_body_symbol sym_dsb in
  Db1pointsdata_set_body_cluster_symbol_v.is_db1pointsdata_set_body_cluster_information_symbol_off_db1pointsdata_set_body_cluster_symbol sym_dbc
    end
;;

let is_db1pointsdata_set_body_cluster_vertex_symbol_off_db1pointsdata_set_body_symbol sym_dsb =
  if not (is_db1pointsdata_set_body_cluster_symbol_off_db1pointsdata_set_body_symbol sym_dsb)
  then false
  else
    begin
  let sym_dbc = db1pointsdata_set_body_cluster_symbol_off_db1pointsdata_set_body_symbol sym_dsb in
  Db1pointsdata_set_body_cluster_symbol_v.is_db1pointsdata_set_body_cluster_vertex_symbol_off_db1pointsdata_set_body_cluster_symbol sym_dbc
    end
;;

let is_db1pointsdata_set_body_record_vertex_symbol_off_db1pointsdata_set_body_symbol sym_dsb =
  if not (is_db1pointsdata_set_body_record_symbol_off_db1pointsdata_set_body_symbol sym_dsb)
  then false
  else
    begin
  let sym_dbr = db1pointsdata_set_body_record_symbol_off_db1pointsdata_set_body_symbol sym_dsb in
  Db1pointsdata_set_body_record_symbol_v.is_db1pointsdata_set_body_record_vertex_symbol_off_db1pointsdata_set_body_record_symbol sym_dbr
    end
;;

let is_db1pointsdata_set_body_sequence_float_symbol_off_db1pointsdata_set_body_symbol sym_dsb =
  if not (is_db1pointsdata_set_body_sequence_symbol_off_db1pointsdata_set_body_symbol sym_dsb)
  then false
  else
    begin
  let sym_dbs = db1pointsdata_set_body_sequence_symbol_off_db1pointsdata_set_body_symbol sym_dsb in
  Db1pointsdata_set_body_sequence_symbol_v.is_db1pointsdata_set_body_sequence_float_symbol_off_db1pointsdata_set_body_sequence_symbol sym_dbs
    end
;;

let is_db1pointsdata_set_body_name_vertex_symbol_off_db1pointsdata_set_body_symbol sym_dsb =
  if not (is_db1pointsdata_set_body_name_symbol_off_db1pointsdata_set_body_symbol sym_dsb)
  then false
  else
    begin
  let sym_dbn = db1pointsdata_set_body_name_symbol_off_db1pointsdata_set_body_symbol sym_dsb in
  Db1pointsdata_set_body_name_symbol_v.is_db1pointsdata_set_body_name_vertex_symbol_off_db1pointsdata_set_body_name_symbol sym_dbn
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let db1pointsdata_set_body_symbol_of_db1pointsdata_set_body_bundle_symbol sym_dbb = 
  Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_bundle_symbol sym_dbb
;;

let db1pointsdata_set_body_symbol_of_db1pointsdata_set_body_cluster_symbol sym_dbc = 
  Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_cluster_symbol sym_dbc
;;

let db1pointsdata_set_body_symbol_of_db1pointsdata_set_body_record_symbol sym_dbr = 
  Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_record_symbol sym_dbr
;;

let db1pointsdata_set_body_symbol_of_db1pointsdata_set_body_sequence_symbol sym_dbs = 
  Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_sequence_symbol sym_dbs
;;

let db1pointsdata_set_body_symbol_of_db1pointsdata_set_body_name_symbol sym_dbn = 
  Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_name_symbol sym_dbn
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let db1pointsdata_set_body_symbol_of_db1pointsdata_set_body_bundle_coordinates_symbol sym_dbc = 
  let sym_dbb = Db1pointsdata_set_body_bundle_symbol_v.db1pointsdata_set_body_bundle_symbol_of_db1pointsdata_set_body_bundle_coordinates_symbol sym_dbc in
    db1pointsdata_set_body_symbol_of_db1pointsdata_set_body_bundle_symbol sym_dbb
;;

let db1pointsdata_set_body_symbol_of_db1pointsdata_set_body_bundle_figure_symbol sym_dbf = 
  let sym_dbb = Db1pointsdata_set_body_bundle_symbol_v.db1pointsdata_set_body_bundle_symbol_of_db1pointsdata_set_body_bundle_figure_symbol sym_dbf in
    db1pointsdata_set_body_symbol_of_db1pointsdata_set_body_bundle_symbol sym_dbb
;;

let db1pointsdata_set_body_symbol_of_db1pointsdata_set_body_cluster_information_symbol sym_dci = 
  let sym_dbc = Db1pointsdata_set_body_cluster_symbol_v.db1pointsdata_set_body_cluster_symbol_of_db1pointsdata_set_body_cluster_information_symbol sym_dci in
    db1pointsdata_set_body_symbol_of_db1pointsdata_set_body_cluster_symbol sym_dbc
;;

let db1pointsdata_set_body_symbol_of_db1pointsdata_set_body_cluster_vertex_symbol sym_dcv = 
  let sym_dbc = Db1pointsdata_set_body_cluster_symbol_v.db1pointsdata_set_body_cluster_symbol_of_db1pointsdata_set_body_cluster_vertex_symbol sym_dcv in
    db1pointsdata_set_body_symbol_of_db1pointsdata_set_body_cluster_symbol sym_dbc
;;

let db1pointsdata_set_body_symbol_of_db1pointsdata_set_body_record_vertex_symbol sym_drv = 
  let sym_dbr = Db1pointsdata_set_body_record_symbol_v.db1pointsdata_set_body_record_symbol_of_db1pointsdata_set_body_record_vertex_symbol sym_drv in
    db1pointsdata_set_body_symbol_of_db1pointsdata_set_body_record_symbol sym_dbr
;;

let db1pointsdata_set_body_symbol_of_db1pointsdata_set_body_sequence_float_symbol sym_dsf = 
  let sym_dbs = Db1pointsdata_set_body_sequence_symbol_v.db1pointsdata_set_body_sequence_symbol_of_db1pointsdata_set_body_sequence_float_symbol sym_dsf in
    db1pointsdata_set_body_symbol_of_db1pointsdata_set_body_sequence_symbol sym_dbs
;;

let db1pointsdata_set_body_symbol_of_db1pointsdata_set_body_name_vertex_symbol sym_dnv = 
  let sym_dbn = Db1pointsdata_set_body_name_symbol_v.db1pointsdata_set_body_name_symbol_of_db1pointsdata_set_body_name_vertex_symbol sym_dnv in
    db1pointsdata_set_body_symbol_of_db1pointsdata_set_body_name_symbol sym_dbn
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let db1pointsdata_set_body_bundle_coordinates_constructor s = db1pointsdata_set_body_symbol_of_db1pointsdata_set_body_bundle_symbol (Db1pointsdata_set_body_bundle_symbol_v.db1pointsdata_set_body_bundle_coordinates_constructor s);;

let db1pointsdata_set_body_bundle_figure_constructor s = db1pointsdata_set_body_symbol_of_db1pointsdata_set_body_bundle_symbol (Db1pointsdata_set_body_bundle_symbol_v.db1pointsdata_set_body_bundle_figure_constructor s);;

let db1pointsdata_set_body_cluster_information_constructor s = db1pointsdata_set_body_symbol_of_db1pointsdata_set_body_cluster_symbol (Db1pointsdata_set_body_cluster_symbol_v.db1pointsdata_set_body_cluster_information_constructor s);;

let db1pointsdata_set_body_cluster_vertex_constructor s = db1pointsdata_set_body_symbol_of_db1pointsdata_set_body_cluster_symbol (Db1pointsdata_set_body_cluster_symbol_v.db1pointsdata_set_body_cluster_vertex_constructor s);;

let db1pointsdata_set_body_record_vertex_constructor s = db1pointsdata_set_body_symbol_of_db1pointsdata_set_body_record_symbol (Db1pointsdata_set_body_record_symbol_v.db1pointsdata_set_body_record_vertex_constructor s);;

let db1pointsdata_set_body_sequence_float_constructor s = db1pointsdata_set_body_symbol_of_db1pointsdata_set_body_sequence_symbol (Db1pointsdata_set_body_sequence_symbol_v.db1pointsdata_set_body_sequence_float_constructor s);;

let db1pointsdata_set_body_name_vertex_constructor s = db1pointsdata_set_body_symbol_of_db1pointsdata_set_body_name_symbol (Db1pointsdata_set_body_name_symbol_v.db1pointsdata_set_body_name_vertex_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Db1pointsdata_set_body_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Db1pointsdata_set_body_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try db1pointsdata_set_body_symbol_of_db1pointsdata_set_body_bundle_symbol
      (Db1pointsdata_set_body_bundle_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_set_body_bundle_symbol:Db1pointsdata_set_body_bundle_symbol_v.ml:make" ->
  try db1pointsdata_set_body_symbol_of_db1pointsdata_set_body_cluster_symbol
      (Db1pointsdata_set_body_cluster_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_set_body_cluster_symbol:Db1pointsdata_set_body_cluster_symbol_v.ml:make" ->
  try db1pointsdata_set_body_symbol_of_db1pointsdata_set_body_record_symbol
      (Db1pointsdata_set_body_record_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_set_body_record_symbol:Db1pointsdata_set_body_record_symbol_v.ml:make" ->
  try db1pointsdata_set_body_symbol_of_db1pointsdata_set_body_sequence_symbol
      (Db1pointsdata_set_body_sequence_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_set_body_sequence_symbol:Db1pointsdata_set_body_sequence_symbol_v.ml:make" ->
  try db1pointsdata_set_body_symbol_of_db1pointsdata_set_body_name_symbol
      (Db1pointsdata_set_body_name_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_set_body_name_symbol:Db1pointsdata_set_body_name_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Db1pointsdata_set_body_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Db1pointsdata_set_body_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Db1pointsdata_set_body_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Db1pointsdata_set_body_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Db1pointsdata_set_body subtype" nam s)
      "it does not exists"
      "Check file Db1pointsdata_set_body_symbol_v.ml"
    in
    failwith "Not_a_db1pointsdata_set_body_symbol:Db1pointsdata_set_body_symbol_v.ml:make"
;;


(** Db1pointsdata_set_body_symbol_v at 15:7:18 on 31 Oct 2018. created by version v2.5 of generator *)



