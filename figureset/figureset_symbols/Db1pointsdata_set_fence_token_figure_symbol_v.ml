(** {3 Db1pointsdata_set_fence_token_figure_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Db1pointsdata_set_fence_token_figure_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Db1pointsdata_set_fence_token_figure_symbol_t.Db1pointsdata_set_fence_token_figure_kind_symbol sym_dfk ->
    Db1pointsdata_set_fence_token_figure_kind_symbol_v.name sym_dfk
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Db1pointsdata_set_fence_token_figure_symbol_t.Db1pointsdata_set_fence_token_figure_kind_symbol sym_dfk ->
  Db1pointsdata_set_fence_token_figure_kind_symbol_v.string_off sym_dfk
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_dtf =
  Format.sprintf "Db1pointsdata_set_fence_token_figure_symbol_t.%s" (String.capitalize_ascii (name sym_dtf))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_dtf =
  Format.sprintf "%s \"%s\"" (longname sym_dtf) (string_off sym_dtf)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let db1pointsdata_set_fence_token_figure_kind_symbol_off_db1pointsdata_set_fence_token_figure_symbol = function
  | Db1pointsdata_set_fence_token_figure_symbol_t.Db1pointsdata_set_fence_token_figure_kind_symbol sym_dfk -> sym_dfk
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let db1pointsdata_set_fence_token_figure_kind_segment_symbol_off_db1pointsdata_set_fence_token_figure_symbol sym_dtf = 
  let sym_dfk = db1pointsdata_set_fence_token_figure_kind_symbol_off_db1pointsdata_set_fence_token_figure_symbol sym_dtf in
    Db1pointsdata_set_fence_token_figure_kind_symbol_v.db1pointsdata_set_fence_token_figure_kind_segment_symbol_off_db1pointsdata_set_fence_token_figure_kind_symbol sym_dfk
;;

let db1pointsdata_set_fence_token_figure_kind_triangle_symbol_off_db1pointsdata_set_fence_token_figure_symbol sym_dtf = 
  let sym_dfk = db1pointsdata_set_fence_token_figure_kind_symbol_off_db1pointsdata_set_fence_token_figure_symbol sym_dtf in
    Db1pointsdata_set_fence_token_figure_kind_symbol_v.db1pointsdata_set_fence_token_figure_kind_triangle_symbol_off_db1pointsdata_set_fence_token_figure_kind_symbol sym_dfk
;;

let db1pointsdata_set_fence_token_figure_kind_point_symbol_off_db1pointsdata_set_fence_token_figure_symbol sym_dtf = 
  let sym_dfk = db1pointsdata_set_fence_token_figure_kind_symbol_off_db1pointsdata_set_fence_token_figure_symbol sym_dtf in
    Db1pointsdata_set_fence_token_figure_kind_symbol_v.db1pointsdata_set_fence_token_figure_kind_point_symbol_off_db1pointsdata_set_fence_token_figure_kind_symbol sym_dfk
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_db1pointsdata_set_fence_token_figure_kind_symbol_off_db1pointsdata_set_fence_token_figure_symbol = function
  | Db1pointsdata_set_fence_token_figure_symbol_t.Db1pointsdata_set_fence_token_figure_kind_symbol _ -> true
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_db1pointsdata_set_fence_token_figure_kind_segment_constructor sym_dtf =
  if not (is_db1pointsdata_set_fence_token_figure_kind_symbol_off_db1pointsdata_set_fence_token_figure_symbol sym_dtf)
  then false
  else
    begin
      let sym_dfk = db1pointsdata_set_fence_token_figure_kind_symbol_off_db1pointsdata_set_fence_token_figure_symbol sym_dtf in
      Db1pointsdata_set_fence_token_figure_kind_symbol_v.is_db1pointsdata_set_fence_token_figure_kind_segment_constructor sym_dfk
    end
;;

let is_db1pointsdata_set_fence_token_figure_kind_triangle_constructor sym_dtf =
  if not (is_db1pointsdata_set_fence_token_figure_kind_symbol_off_db1pointsdata_set_fence_token_figure_symbol sym_dtf)
  then false
  else
    begin
      let sym_dfk = db1pointsdata_set_fence_token_figure_kind_symbol_off_db1pointsdata_set_fence_token_figure_symbol sym_dtf in
      Db1pointsdata_set_fence_token_figure_kind_symbol_v.is_db1pointsdata_set_fence_token_figure_kind_triangle_constructor sym_dfk
    end
;;

let is_db1pointsdata_set_fence_token_figure_kind_point_constructor sym_dtf =
  if not (is_db1pointsdata_set_fence_token_figure_kind_symbol_off_db1pointsdata_set_fence_token_figure_symbol sym_dtf)
  then false
  else
    begin
      let sym_dfk = db1pointsdata_set_fence_token_figure_kind_symbol_off_db1pointsdata_set_fence_token_figure_symbol sym_dtf in
      Db1pointsdata_set_fence_token_figure_kind_symbol_v.is_db1pointsdata_set_fence_token_figure_kind_point_constructor sym_dfk
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_db1pointsdata_set_fence_token_figure_kind_segment_symbol_off_db1pointsdata_set_fence_token_figure_symbol sym_dtf =
  if not (is_db1pointsdata_set_fence_token_figure_kind_symbol_off_db1pointsdata_set_fence_token_figure_symbol sym_dtf)
  then false
  else
    begin
  let sym_dfk = db1pointsdata_set_fence_token_figure_kind_symbol_off_db1pointsdata_set_fence_token_figure_symbol sym_dtf in
  Db1pointsdata_set_fence_token_figure_kind_symbol_v.is_db1pointsdata_set_fence_token_figure_kind_segment_symbol_off_db1pointsdata_set_fence_token_figure_kind_symbol sym_dfk
    end
;;

let is_db1pointsdata_set_fence_token_figure_kind_triangle_symbol_off_db1pointsdata_set_fence_token_figure_symbol sym_dtf =
  if not (is_db1pointsdata_set_fence_token_figure_kind_symbol_off_db1pointsdata_set_fence_token_figure_symbol sym_dtf)
  then false
  else
    begin
  let sym_dfk = db1pointsdata_set_fence_token_figure_kind_symbol_off_db1pointsdata_set_fence_token_figure_symbol sym_dtf in
  Db1pointsdata_set_fence_token_figure_kind_symbol_v.is_db1pointsdata_set_fence_token_figure_kind_triangle_symbol_off_db1pointsdata_set_fence_token_figure_kind_symbol sym_dfk
    end
;;

let is_db1pointsdata_set_fence_token_figure_kind_point_symbol_off_db1pointsdata_set_fence_token_figure_symbol sym_dtf =
  if not (is_db1pointsdata_set_fence_token_figure_kind_symbol_off_db1pointsdata_set_fence_token_figure_symbol sym_dtf)
  then false
  else
    begin
  let sym_dfk = db1pointsdata_set_fence_token_figure_kind_symbol_off_db1pointsdata_set_fence_token_figure_symbol sym_dtf in
  Db1pointsdata_set_fence_token_figure_kind_symbol_v.is_db1pointsdata_set_fence_token_figure_kind_point_symbol_off_db1pointsdata_set_fence_token_figure_kind_symbol sym_dfk
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let db1pointsdata_set_fence_token_figure_symbol_of_db1pointsdata_set_fence_token_figure_kind_symbol sym_dfk = 
  Db1pointsdata_set_fence_token_figure_symbol_t.Db1pointsdata_set_fence_token_figure_kind_symbol sym_dfk
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let db1pointsdata_set_fence_token_figure_symbol_of_db1pointsdata_set_fence_token_figure_kind_segment_symbol sym_dks = 
  let sym_dfk = Db1pointsdata_set_fence_token_figure_kind_symbol_v.db1pointsdata_set_fence_token_figure_kind_symbol_of_db1pointsdata_set_fence_token_figure_kind_segment_symbol sym_dks in
    db1pointsdata_set_fence_token_figure_symbol_of_db1pointsdata_set_fence_token_figure_kind_symbol sym_dfk
;;

let db1pointsdata_set_fence_token_figure_symbol_of_db1pointsdata_set_fence_token_figure_kind_triangle_symbol sym_dkt = 
  let sym_dfk = Db1pointsdata_set_fence_token_figure_kind_symbol_v.db1pointsdata_set_fence_token_figure_kind_symbol_of_db1pointsdata_set_fence_token_figure_kind_triangle_symbol sym_dkt in
    db1pointsdata_set_fence_token_figure_symbol_of_db1pointsdata_set_fence_token_figure_kind_symbol sym_dfk
;;

let db1pointsdata_set_fence_token_figure_symbol_of_db1pointsdata_set_fence_token_figure_kind_point_symbol sym_dkp = 
  let sym_dfk = Db1pointsdata_set_fence_token_figure_kind_symbol_v.db1pointsdata_set_fence_token_figure_kind_symbol_of_db1pointsdata_set_fence_token_figure_kind_point_symbol sym_dkp in
    db1pointsdata_set_fence_token_figure_symbol_of_db1pointsdata_set_fence_token_figure_kind_symbol sym_dfk
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let db1pointsdata_set_fence_token_figure_kind_segment_constructor s = db1pointsdata_set_fence_token_figure_symbol_of_db1pointsdata_set_fence_token_figure_kind_symbol (Db1pointsdata_set_fence_token_figure_kind_symbol_v.db1pointsdata_set_fence_token_figure_kind_segment_constructor s);;

let db1pointsdata_set_fence_token_figure_kind_triangle_constructor s = db1pointsdata_set_fence_token_figure_symbol_of_db1pointsdata_set_fence_token_figure_kind_symbol (Db1pointsdata_set_fence_token_figure_kind_symbol_v.db1pointsdata_set_fence_token_figure_kind_triangle_constructor s);;

let db1pointsdata_set_fence_token_figure_kind_point_constructor s = db1pointsdata_set_fence_token_figure_symbol_of_db1pointsdata_set_fence_token_figure_kind_symbol (Db1pointsdata_set_fence_token_figure_kind_symbol_v.db1pointsdata_set_fence_token_figure_kind_point_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Db1pointsdata_set_fence_token_figure_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Db1pointsdata_set_fence_token_figure_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try db1pointsdata_set_fence_token_figure_symbol_of_db1pointsdata_set_fence_token_figure_kind_symbol
      (Db1pointsdata_set_fence_token_figure_kind_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_set_fence_token_figure_kind_symbol:Db1pointsdata_set_fence_token_figure_kind_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Db1pointsdata_set_fence_token_figure_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Db1pointsdata_set_fence_token_figure_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Db1pointsdata_set_fence_token_figure_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Db1pointsdata_set_fence_token_figure_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Db1pointsdata_set_fence_token_figure subtype" nam s)
      "it does not exists"
      "Check file Db1pointsdata_set_fence_token_figure_symbol_v.ml"
    in
    failwith "Not_a_db1pointsdata_set_fence_token_figure_symbol:Db1pointsdata_set_fence_token_figure_symbol_v.ml:make"
;;


(** Db1pointsdata_set_fence_token_figure_symbol_v at 15:7:20 on 31 Oct 2018. created by version v2.5 of generator *)



