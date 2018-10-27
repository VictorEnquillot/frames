(** {3 Camlparagraph_for_any_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Camlparagraph_for_any_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol sym_fac ->
    Camlparagraph_for_any_comment_symbol_v.name sym_fac
  | Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_function_symbol sym_faf ->
    Camlparagraph_for_any_function_symbol_v.name sym_faf
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol sym_fac ->
  Camlparagraph_for_any_comment_symbol_v.string_off sym_fac
  | Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_function_symbol sym_faf ->
  Camlparagraph_for_any_function_symbol_v.string_off sym_faf
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_cfa =
  Format.sprintf "Camlparagraph_for_any_symbol_t.%s" (String.capitalize (name sym_cfa))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_cfa =
  Format.sprintf "%s \"%s\"" (longname sym_cfa) (string_off sym_cfa)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let camlparagraph_for_any_comment_symbol_off_camlparagraph_for_any_symbol = function
  | Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol sym_fac -> sym_fac
  | sym_cfa -> Error_messages_v.print_fatal_error
      nam_cod "camlparagraph_for_any_comment_symbol_off_camlparagraph_for_any_symbol"
      "Camlparagraph_for_any_comment_symbol"
      (name sym_cfa) "check"
;;

let camlparagraph_for_any_function_symbol_off_camlparagraph_for_any_symbol = function
  | Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_function_symbol sym_faf -> sym_faf
  | sym_cfa -> Error_messages_v.print_fatal_error
      nam_cod "camlparagraph_for_any_function_symbol_off_camlparagraph_for_any_symbol"
      "Camlparagraph_for_any_function_symbol"
      (name sym_cfa) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_camlparagraph_for_any_comment_symbol_off_camlparagraph_for_any_symbol = function
  | Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol _ -> true
  | _ -> false
;;

let is_camlparagraph_for_any_function_symbol_off_camlparagraph_for_any_symbol = function
  | Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_function_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_camlfile_title sym_cfa =
  if not (is_camlparagraph_for_any_comment_symbol_off_camlparagraph_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fac = camlparagraph_for_any_comment_symbol_off_camlparagraph_for_any_symbol sym_cfa in
      Camlparagraph_for_any_comment_symbol_v.is_camlfile_title sym_fac
    end
;;

let is_empty sym_cfa =
  if not (is_camlparagraph_for_any_comment_symbol_off_camlparagraph_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fac = camlparagraph_for_any_comment_symbol_off_camlparagraph_for_any_symbol sym_cfa in
      Camlparagraph_for_any_comment_symbol_v.is_empty sym_fac
    end
;;

let is_ending sym_cfa =
  if not (is_camlparagraph_for_any_comment_symbol_off_camlparagraph_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fac = camlparagraph_for_any_comment_symbol_off_camlparagraph_for_any_symbol sym_cfa in
      Camlparagraph_for_any_comment_symbol_v.is_ending sym_fac
    end
;;

let is_item_title sym_cfa =
  if not (is_camlparagraph_for_any_comment_symbol_off_camlparagraph_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_fac = camlparagraph_for_any_comment_symbol_off_camlparagraph_for_any_symbol sym_cfa in
      Camlparagraph_for_any_comment_symbol_v.is_item_title sym_fac
    end
;;

let is_let_nam_cod_equal sym_cfa =
  if not (is_camlparagraph_for_any_function_symbol_off_camlparagraph_for_any_symbol sym_cfa)
  then false
  else
    begin
      let sym_faf = camlparagraph_for_any_function_symbol_off_camlparagraph_for_any_symbol sym_cfa in
      Camlparagraph_for_any_function_symbol_v.is_let_nam_cod_equal sym_faf
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let camlparagraph_for_any_symbol_of_camlparagraph_for_any_comment_symbol sym_fac = 
  Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol sym_fac
;;

let camlparagraph_for_any_symbol_of_camlparagraph_for_any_function_symbol sym_faf = 
  Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_function_symbol sym_faf
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let camlfile_title = camlparagraph_for_any_symbol_of_camlparagraph_for_any_comment_symbol Camlparagraph_for_any_comment_symbol_v.camlfile_title;;

let empty = camlparagraph_for_any_symbol_of_camlparagraph_for_any_comment_symbol Camlparagraph_for_any_comment_symbol_v.empty;;

let ending = camlparagraph_for_any_symbol_of_camlparagraph_for_any_comment_symbol Camlparagraph_for_any_comment_symbol_v.ending;;

let item_title = camlparagraph_for_any_symbol_of_camlparagraph_for_any_comment_symbol Camlparagraph_for_any_comment_symbol_v.item_title;;

let let_nam_cod_equal = camlparagraph_for_any_symbol_of_camlparagraph_for_any_function_symbol Camlparagraph_for_any_function_symbol_v.let_nam_cod_equal;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Camlparagraph_for_any_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Camlparagraph_for_any_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try camlparagraph_for_any_symbol_of_camlparagraph_for_any_comment_symbol
      (Camlparagraph_for_any_comment_symbol_v.make nam s)
  with Failure "Not_Camlparagraph_for_any_comment_symbol:Camlparagraph_for_any_comment_symbol_v:make" ->
  try camlparagraph_for_any_symbol_of_camlparagraph_for_any_function_symbol
      (Camlparagraph_for_any_function_symbol_v.make nam s)
  with Failure "Not_Camlparagraph_for_any_function_symbol:Camlparagraph_for_any_function_symbol_v:make" ->
  failwith "Not_a_topson_notleaf:Camlparagraph_for_any_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Camlparagraph_for_any_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Camlparagraph_for_any_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Camlparagraph_for_any_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Camlparagraph_for_any subtype" nam s)
      "it does not exists"
      "Check file camlparagraph_for_any_symbol_v.ml"
    in
    failwith "Not_a_valid_camlparagraph_for_any_symbol:Camlparagraph_for_any_symbol_v.ml:make"
;;


(** created by version v1.11 of ./generator camlparagraph_for_any implementation_for_symbol symbol at 15:11 24 Apr 2013. *)



