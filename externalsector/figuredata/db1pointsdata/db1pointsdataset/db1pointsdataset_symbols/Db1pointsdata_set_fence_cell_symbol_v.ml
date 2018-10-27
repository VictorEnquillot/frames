(** {3 Db1pointsdata_set_fence_cell_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Db1pointsdata_set_fence_cell_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Db1pointsdata_set_fence_cell_symbol_t.Db1pointsdata_set_fence_cell_coordinates_symbol sym_dcc ->
    Db1pointsdata_set_fence_cell_coordinates_symbol_v.name sym_dcc
  | Db1pointsdata_set_fence_cell_symbol_t.Db1pointsdata_set_fence_cell_figure_symbol sym_dcf ->
    Db1pointsdata_set_fence_cell_figure_symbol_v.name sym_dcf
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Db1pointsdata_set_fence_cell_symbol_t.Db1pointsdata_set_fence_cell_coordinates_symbol sym_dcc ->
  Db1pointsdata_set_fence_cell_coordinates_symbol_v.string_off sym_dcc
  | Db1pointsdata_set_fence_cell_symbol_t.Db1pointsdata_set_fence_cell_figure_symbol sym_dcf ->
  Db1pointsdata_set_fence_cell_figure_symbol_v.string_off sym_dcf
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_dfc =
  Format.sprintf "Db1pointsdata_set_fence_cell_symbol_t.%s" (String.capitalize (name sym_dfc))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_dfc =
  Format.sprintf "%s \"%s\"" (longname sym_dfc) (string_off sym_dfc)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let db1pointsdata_set_fence_cell_coordinates_symbol_off_db1pointsdata_set_fence_cell_symbol = function
  | Db1pointsdata_set_fence_cell_symbol_t.Db1pointsdata_set_fence_cell_coordinates_symbol sym_dcc -> sym_dcc
  | sym_dfc -> Error_messages_v.print_fatal_error
      nam_cod "db1pointsdata_set_fence_cell_coordinates_symbol_off_db1pointsdata_set_fence_cell_symbol"
      "Db1pointsdata_set_fence_cell_coordinates_symbol"
      (name sym_dfc) "check"
;;

let db1pointsdata_set_fence_cell_figure_symbol_off_db1pointsdata_set_fence_cell_symbol = function
  | Db1pointsdata_set_fence_cell_symbol_t.Db1pointsdata_set_fence_cell_figure_symbol sym_dcf -> sym_dcf
  | sym_dfc -> Error_messages_v.print_fatal_error
      nam_cod "db1pointsdata_set_fence_cell_figure_symbol_off_db1pointsdata_set_fence_cell_symbol"
      "Db1pointsdata_set_fence_cell_figure_symbol"
      (name sym_dfc) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let db1pointsdata_set_fence_cell_coordinates_kind_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc = 
  let sym_dcc = db1pointsdata_set_fence_cell_coordinates_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc in
    Db1pointsdata_set_fence_cell_coordinates_symbol_v.db1pointsdata_set_fence_cell_coordinates_kind_symbol_off_db1pointsdata_set_fence_cell_coordinates_symbol sym_dcc
;;

let db1pointsdata_set_fence_cell_coordinates_units_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc = 
  let sym_dcc = db1pointsdata_set_fence_cell_coordinates_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc in
    Db1pointsdata_set_fence_cell_coordinates_symbol_v.db1pointsdata_set_fence_cell_coordinates_units_symbol_off_db1pointsdata_set_fence_cell_coordinates_symbol sym_dcc
;;

let db1pointsdata_set_fence_cell_coordinates_units_angle_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc = 
  let sym_dcc = db1pointsdata_set_fence_cell_coordinates_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc in
    Db1pointsdata_set_fence_cell_coordinates_symbol_v.db1pointsdata_set_fence_cell_coordinates_units_angle_symbol_off_db1pointsdata_set_fence_cell_coordinates_symbol sym_dcc
;;

let db1pointsdata_set_fence_cell_coordinates_units_length_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc = 
  let sym_dcc = db1pointsdata_set_fence_cell_coordinates_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc in
    Db1pointsdata_set_fence_cell_coordinates_symbol_v.db1pointsdata_set_fence_cell_coordinates_units_length_symbol_off_db1pointsdata_set_fence_cell_coordinates_symbol sym_dcc
;;

let db1pointsdata_set_fence_cell_figure_kind_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc = 
  let sym_dcf = db1pointsdata_set_fence_cell_figure_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc in
    Db1pointsdata_set_fence_cell_figure_symbol_v.db1pointsdata_set_fence_cell_figure_kind_symbol_off_db1pointsdata_set_fence_cell_figure_symbol sym_dcf
;;

let db1pointsdata_set_fence_cell_figure_name_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc = 
  let sym_dcf = db1pointsdata_set_fence_cell_figure_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc in
    Db1pointsdata_set_fence_cell_figure_symbol_v.db1pointsdata_set_fence_cell_figure_name_symbol_off_db1pointsdata_set_fence_cell_figure_symbol sym_dcf
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_db1pointsdata_set_fence_cell_coordinates_symbol_off_db1pointsdata_set_fence_cell_symbol = function
  | Db1pointsdata_set_fence_cell_symbol_t.Db1pointsdata_set_fence_cell_coordinates_symbol _ -> true
  | _ -> false
;;

let is_db1pointsdata_set_fence_cell_figure_symbol_off_db1pointsdata_set_fence_cell_symbol = function
  | Db1pointsdata_set_fence_cell_symbol_t.Db1pointsdata_set_fence_cell_figure_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_db1pointsdata_set_fence_cell_coordinates_kind_constructor sym_dfc =
  if not (is_db1pointsdata_set_fence_cell_coordinates_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc)
  then false
  else
    begin
      let sym_dcc = db1pointsdata_set_fence_cell_coordinates_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc in
      Db1pointsdata_set_fence_cell_coordinates_symbol_v.is_db1pointsdata_set_fence_cell_coordinates_kind_constructor sym_dcc
    end
;;

let is_db1pointsdata_set_fence_cell_coordinates_units_angle_constructor sym_dfc =
  if not (is_db1pointsdata_set_fence_cell_coordinates_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc)
  then false
  else
    begin
      let sym_dcc = db1pointsdata_set_fence_cell_coordinates_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc in
      Db1pointsdata_set_fence_cell_coordinates_symbol_v.is_db1pointsdata_set_fence_cell_coordinates_units_angle_constructor sym_dcc
    end
;;

let is_db1pointsdata_set_fence_cell_coordinates_units_length_constructor sym_dfc =
  if not (is_db1pointsdata_set_fence_cell_coordinates_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc)
  then false
  else
    begin
      let sym_dcc = db1pointsdata_set_fence_cell_coordinates_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc in
      Db1pointsdata_set_fence_cell_coordinates_symbol_v.is_db1pointsdata_set_fence_cell_coordinates_units_length_constructor sym_dcc
    end
;;

let is_db1pointsdata_set_fence_cell_figure_kind_constructor sym_dfc =
  if not (is_db1pointsdata_set_fence_cell_figure_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc)
  then false
  else
    begin
      let sym_dcf = db1pointsdata_set_fence_cell_figure_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc in
      Db1pointsdata_set_fence_cell_figure_symbol_v.is_db1pointsdata_set_fence_cell_figure_kind_constructor sym_dcf
    end
;;

let is_db1pointsdata_set_fence_cell_figure_name_constructor sym_dfc =
  if not (is_db1pointsdata_set_fence_cell_figure_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc)
  then false
  else
    begin
      let sym_dcf = db1pointsdata_set_fence_cell_figure_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc in
      Db1pointsdata_set_fence_cell_figure_symbol_v.is_db1pointsdata_set_fence_cell_figure_name_constructor sym_dcf
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_db1pointsdata_set_fence_cell_coordinates_kind_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc =
  if not (is_db1pointsdata_set_fence_cell_coordinates_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc)
  then false
  else
    begin
  let sym_dcc = db1pointsdata_set_fence_cell_coordinates_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc in
  Db1pointsdata_set_fence_cell_coordinates_symbol_v.is_db1pointsdata_set_fence_cell_coordinates_kind_symbol_off_db1pointsdata_set_fence_cell_coordinates_symbol sym_dcc
    end
;;

let is_db1pointsdata_set_fence_cell_coordinates_units_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc =
  if not (is_db1pointsdata_set_fence_cell_coordinates_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc)
  then false
  else
    begin
  let sym_dcc = db1pointsdata_set_fence_cell_coordinates_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc in
  Db1pointsdata_set_fence_cell_coordinates_symbol_v.is_db1pointsdata_set_fence_cell_coordinates_units_symbol_off_db1pointsdata_set_fence_cell_coordinates_symbol sym_dcc
    end
;;

let is_db1pointsdata_set_fence_cell_coordinates_units_angle_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc =
  if not (is_db1pointsdata_set_fence_cell_coordinates_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc)
  then false
  else
    begin
  let sym_dcc = db1pointsdata_set_fence_cell_coordinates_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc in
  Db1pointsdata_set_fence_cell_coordinates_symbol_v.is_db1pointsdata_set_fence_cell_coordinates_units_angle_symbol_off_db1pointsdata_set_fence_cell_coordinates_symbol sym_dcc
    end
;;

let is_db1pointsdata_set_fence_cell_coordinates_units_length_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc =
  if not (is_db1pointsdata_set_fence_cell_coordinates_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc)
  then false
  else
    begin
  let sym_dcc = db1pointsdata_set_fence_cell_coordinates_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc in
  Db1pointsdata_set_fence_cell_coordinates_symbol_v.is_db1pointsdata_set_fence_cell_coordinates_units_length_symbol_off_db1pointsdata_set_fence_cell_coordinates_symbol sym_dcc
    end
;;

let is_db1pointsdata_set_fence_cell_figure_kind_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc =
  if not (is_db1pointsdata_set_fence_cell_figure_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc)
  then false
  else
    begin
  let sym_dcf = db1pointsdata_set_fence_cell_figure_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc in
  Db1pointsdata_set_fence_cell_figure_symbol_v.is_db1pointsdata_set_fence_cell_figure_kind_symbol_off_db1pointsdata_set_fence_cell_figure_symbol sym_dcf
    end
;;

let is_db1pointsdata_set_fence_cell_figure_name_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc =
  if not (is_db1pointsdata_set_fence_cell_figure_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc)
  then false
  else
    begin
  let sym_dcf = db1pointsdata_set_fence_cell_figure_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc in
  Db1pointsdata_set_fence_cell_figure_symbol_v.is_db1pointsdata_set_fence_cell_figure_name_symbol_off_db1pointsdata_set_fence_cell_figure_symbol sym_dcf
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let db1pointsdata_set_fence_cell_symbol_of_db1pointsdata_set_fence_cell_coordinates_symbol sym_dcc = 
  Db1pointsdata_set_fence_cell_symbol_t.Db1pointsdata_set_fence_cell_coordinates_symbol sym_dcc
;;

let db1pointsdata_set_fence_cell_symbol_of_db1pointsdata_set_fence_cell_figure_symbol sym_dcf = 
  Db1pointsdata_set_fence_cell_symbol_t.Db1pointsdata_set_fence_cell_figure_symbol sym_dcf
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let db1pointsdata_set_fence_cell_symbol_of_db1pointsdata_set_fence_cell_coordinates_kind_symbol sym_dck = 
  let sym_dcc = Db1pointsdata_set_fence_cell_coordinates_symbol_v.db1pointsdata_set_fence_cell_coordinates_symbol_of_db1pointsdata_set_fence_cell_coordinates_kind_symbol sym_dck in
    db1pointsdata_set_fence_cell_symbol_of_db1pointsdata_set_fence_cell_coordinates_symbol sym_dcc
;;

let db1pointsdata_set_fence_cell_symbol_of_db1pointsdata_set_fence_cell_coordinates_units_symbol sym_dcu = 
  let sym_dcc = Db1pointsdata_set_fence_cell_coordinates_symbol_v.db1pointsdata_set_fence_cell_coordinates_symbol_of_db1pointsdata_set_fence_cell_coordinates_units_symbol sym_dcu in
    db1pointsdata_set_fence_cell_symbol_of_db1pointsdata_set_fence_cell_coordinates_symbol sym_dcc
;;

let db1pointsdata_set_fence_cell_symbol_of_db1pointsdata_set_fence_cell_coordinates_units_angle_symbol sym_dua = 
  let sym_dcc = Db1pointsdata_set_fence_cell_coordinates_symbol_v.db1pointsdata_set_fence_cell_coordinates_symbol_of_db1pointsdata_set_fence_cell_coordinates_units_angle_symbol sym_dua in
    db1pointsdata_set_fence_cell_symbol_of_db1pointsdata_set_fence_cell_coordinates_symbol sym_dcc
;;

let db1pointsdata_set_fence_cell_symbol_of_db1pointsdata_set_fence_cell_coordinates_units_length_symbol sym_dul = 
  let sym_dcc = Db1pointsdata_set_fence_cell_coordinates_symbol_v.db1pointsdata_set_fence_cell_coordinates_symbol_of_db1pointsdata_set_fence_cell_coordinates_units_length_symbol sym_dul in
    db1pointsdata_set_fence_cell_symbol_of_db1pointsdata_set_fence_cell_coordinates_symbol sym_dcc
;;

let db1pointsdata_set_fence_cell_symbol_of_db1pointsdata_set_fence_cell_figure_kind_symbol sym_dfk = 
  let sym_dcf = Db1pointsdata_set_fence_cell_figure_symbol_v.db1pointsdata_set_fence_cell_figure_symbol_of_db1pointsdata_set_fence_cell_figure_kind_symbol sym_dfk in
    db1pointsdata_set_fence_cell_symbol_of_db1pointsdata_set_fence_cell_figure_symbol sym_dcf
;;

let db1pointsdata_set_fence_cell_symbol_of_db1pointsdata_set_fence_cell_figure_name_symbol sym_dfn = 
  let sym_dcf = Db1pointsdata_set_fence_cell_figure_symbol_v.db1pointsdata_set_fence_cell_figure_symbol_of_db1pointsdata_set_fence_cell_figure_name_symbol sym_dfn in
    db1pointsdata_set_fence_cell_symbol_of_db1pointsdata_set_fence_cell_figure_symbol sym_dcf
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let db1pointsdata_set_fence_cell_coordinates_kind_constructor s = db1pointsdata_set_fence_cell_symbol_of_db1pointsdata_set_fence_cell_coordinates_symbol (Db1pointsdata_set_fence_cell_coordinates_symbol_v.db1pointsdata_set_fence_cell_coordinates_kind_constructor s);;

let db1pointsdata_set_fence_cell_coordinates_units_angle_constructor s = db1pointsdata_set_fence_cell_symbol_of_db1pointsdata_set_fence_cell_coordinates_symbol (Db1pointsdata_set_fence_cell_coordinates_symbol_v.db1pointsdata_set_fence_cell_coordinates_units_angle_constructor s);;

let db1pointsdata_set_fence_cell_coordinates_units_length_constructor s = db1pointsdata_set_fence_cell_symbol_of_db1pointsdata_set_fence_cell_coordinates_symbol (Db1pointsdata_set_fence_cell_coordinates_symbol_v.db1pointsdata_set_fence_cell_coordinates_units_length_constructor s);;

let db1pointsdata_set_fence_cell_figure_kind_constructor s = db1pointsdata_set_fence_cell_symbol_of_db1pointsdata_set_fence_cell_figure_symbol (Db1pointsdata_set_fence_cell_figure_symbol_v.db1pointsdata_set_fence_cell_figure_kind_constructor s);;

let db1pointsdata_set_fence_cell_figure_name_constructor s = db1pointsdata_set_fence_cell_symbol_of_db1pointsdata_set_fence_cell_figure_symbol (Db1pointsdata_set_fence_cell_figure_symbol_v.db1pointsdata_set_fence_cell_figure_name_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Db1pointsdata_set_fence_cell_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Db1pointsdata_set_fence_cell_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try db1pointsdata_set_fence_cell_symbol_of_db1pointsdata_set_fence_cell_coordinates_symbol
      (Db1pointsdata_set_fence_cell_coordinates_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_set_fence_cell_coordinates_symbol:Db1pointsdata_set_fence_cell_coordinates_symbol_v.ml:make" ->
  try db1pointsdata_set_fence_cell_symbol_of_db1pointsdata_set_fence_cell_figure_symbol
      (Db1pointsdata_set_fence_cell_figure_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_set_fence_cell_figure_symbol:Db1pointsdata_set_fence_cell_figure_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Db1pointsdata_set_fence_cell_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Db1pointsdata_set_fence_cell_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Db1pointsdata_set_fence_cell_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Db1pointsdata_set_fence_cell_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Db1pointsdata_set_fence_cell subtype" nam s)
      "it does not exists"
      "Check file Db1pointsdata_set_fence_cell_symbol_v.ml"
    in
    failwith "Not_a_db1pointsdata_set_fence_cell_symbol:Db1pointsdata_set_fence_cell_symbol_v.ml:make"
;;


(** Db1pointsdata_set_fence_cell_symbol_v at 12:40:39 on 4 Jun 2017. created by version v2.4 of generator *)



