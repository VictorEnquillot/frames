(** {3 Elementary_context_databox_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Elementary_context_databox_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Elementary_context_databox_symbol_t.Elementary_context_databox_skeletondata_symbol sym_eds ->
    Elementary_context_databox_skeletondata_symbol_v.name sym_eds
  | Elementary_context_databox_symbol_t.Elementary_context_databox_figuredata_symbol sym_edf ->
    Elementary_context_databox_figuredata_symbol_v.name sym_edf
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Elementary_context_databox_symbol_t.Elementary_context_databox_skeletondata_symbol sym_eds ->
  Elementary_context_databox_skeletondata_symbol_v.string_off sym_eds
  | Elementary_context_databox_symbol_t.Elementary_context_databox_figuredata_symbol sym_edf ->
  Elementary_context_databox_figuredata_symbol_v.string_off sym_edf
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_ecd =
  Format.sprintf "Elementary_context_databox_symbol_t.%s" (String.capitalize (name sym_ecd))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_ecd =
  Format.sprintf "%s \"%s\"" (longname sym_ecd) (string_off sym_ecd)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let elementary_context_databox_skeletondata_symbol_off_elementary_context_databox_symbol = function
  | Elementary_context_databox_symbol_t.Elementary_context_databox_skeletondata_symbol sym_eds -> sym_eds
  | sym_ecd -> Error_messages_v.print_fatal_error
      nam_cod "elementary_context_databox_skeletondata_symbol_off_elementary_context_databox_symbol"
      "Elementary_context_databox_skeletondata_symbol"
      (name sym_ecd) "check"
;;

let elementary_context_databox_figuredata_symbol_off_elementary_context_databox_symbol = function
  | Elementary_context_databox_symbol_t.Elementary_context_databox_figuredata_symbol sym_edf -> sym_edf
  | sym_ecd -> Error_messages_v.print_fatal_error
      nam_cod "elementary_context_databox_figuredata_symbol_off_elementary_context_databox_symbol"
      "Elementary_context_databox_figuredata_symbol"
      (name sym_ecd) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_elementary_context_databox_skeletondata_symbol_off_elementary_context_databox_symbol = function
  | Elementary_context_databox_symbol_t.Elementary_context_databox_skeletondata_symbol _ -> true
  | _ -> false
;;

let is_elementary_context_databox_figuredata_symbol_off_elementary_context_databox_symbol = function
  | Elementary_context_databox_symbol_t.Elementary_context_databox_figuredata_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_elementary_context_databox_skeletondata_constructor sym_ecd =
  if not (is_elementary_context_databox_skeletondata_symbol_off_elementary_context_databox_symbol sym_ecd)
  then false
  else
    begin
      let sym_eds = elementary_context_databox_skeletondata_symbol_off_elementary_context_databox_symbol sym_ecd in
      Elementary_context_databox_skeletondata_symbol_v.is_elementary_context_databox_skeletondata_constructor sym_eds
    end
;;

let is_elementary_context_databox_figuredata_constructor sym_ecd =
  if not (is_elementary_context_databox_figuredata_symbol_off_elementary_context_databox_symbol sym_ecd)
  then false
  else
    begin
      let sym_edf = elementary_context_databox_figuredata_symbol_off_elementary_context_databox_symbol sym_ecd in
      Elementary_context_databox_figuredata_symbol_v.is_elementary_context_databox_figuredata_constructor sym_edf
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let elementary_context_databox_symbol_of_elementary_context_databox_skeletondata_symbol sym_eds = 
  Elementary_context_databox_symbol_t.Elementary_context_databox_skeletondata_symbol sym_eds
;;

let elementary_context_databox_symbol_of_elementary_context_databox_figuredata_symbol sym_edf = 
  Elementary_context_databox_symbol_t.Elementary_context_databox_figuredata_symbol sym_edf
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let elementary_context_databox_skeletondata_constructor s = elementary_context_databox_symbol_of_elementary_context_databox_skeletondata_symbol (Elementary_context_databox_skeletondata_symbol_v.elementary_context_databox_skeletondata_constructor s);;

let elementary_context_databox_figuredata_constructor s = elementary_context_databox_symbol_of_elementary_context_databox_figuredata_symbol (Elementary_context_databox_figuredata_symbol_v.elementary_context_databox_figuredata_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Elementary_context_databox_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Elementary_context_databox_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try elementary_context_databox_symbol_of_elementary_context_databox_skeletondata_symbol
      (Elementary_context_databox_skeletondata_symbol_v.make nam s)
  with Failure "Not_a_elementary_context_databox_skeletondata_symbol:Elementary_context_databox_skeletondata_symbol_v.ml:make" ->
  try elementary_context_databox_symbol_of_elementary_context_databox_figuredata_symbol
      (Elementary_context_databox_figuredata_symbol_v.make nam s)
  with Failure "Not_a_elementary_context_databox_figuredata_symbol:Elementary_context_databox_figuredata_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Elementary_context_databox_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Elementary_context_databox_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Elementary_context_databox_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Elementary_context_databox_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Elementary_context_databox subtype" nam s)
      "it does not exists"
      "Check file Elementary_context_databox_symbol_v.ml"
    in
    failwith "Not_a_elementary_context_databox_symbol:Elementary_context_databox_symbol_v.ml:make"
;;


(** Elementary_context_databox_symbol_v at 11:52:22 on 9 May 2016. created by version v2.4 of generator *)



