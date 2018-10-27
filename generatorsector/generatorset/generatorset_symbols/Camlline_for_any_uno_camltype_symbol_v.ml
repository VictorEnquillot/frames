(** {3 Camlline_for_any_uno_camltype_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Camlline_for_any_uno_camltype_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Camlline_for_any_uno_camltype_symbol_t.Camlline_for_any_uno_camltype_son_bare_symbol sym_csb ->
    Camlline_for_any_uno_camltype_son_bare_symbol_v.name sym_csb
  | Camlline_for_any_uno_camltype_symbol_t.Camlline_for_any_uno_camltype_son_notleaf_symbol sym_csn ->
    Camlline_for_any_uno_camltype_son_notleaf_symbol_v.name sym_csn
  | Camlline_for_any_uno_camltype_symbol_t.Camlline_for_any_uno_camltype_son_ofstring_symbol sym_cso ->
    Camlline_for_any_uno_camltype_son_ofstring_symbol_v.name sym_cso
  | Camlline_for_any_uno_camltype_symbol_t.Camlline_for_any_uno_camltype_top_symbol sym_uct ->
    Camlline_for_any_uno_camltype_top_symbol_v.name sym_uct
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Camlline_for_any_uno_camltype_symbol_t.Camlline_for_any_uno_camltype_son_bare_symbol sym_csb ->
  Camlline_for_any_uno_camltype_son_bare_symbol_v.string_off sym_csb
  | Camlline_for_any_uno_camltype_symbol_t.Camlline_for_any_uno_camltype_son_notleaf_symbol sym_csn ->
  Camlline_for_any_uno_camltype_son_notleaf_symbol_v.string_off sym_csn
  | Camlline_for_any_uno_camltype_symbol_t.Camlline_for_any_uno_camltype_son_ofstring_symbol sym_cso ->
  Camlline_for_any_uno_camltype_son_ofstring_symbol_v.string_off sym_cso
  | Camlline_for_any_uno_camltype_symbol_t.Camlline_for_any_uno_camltype_top_symbol sym_uct ->
  Camlline_for_any_uno_camltype_top_symbol_v.string_off sym_uct
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_auc =
  Format.sprintf "Camlline_for_any_uno_camltype_symbol_t.%s" (String.capitalize (name sym_auc))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_auc =
  Format.sprintf "%s \"%s\"" (longname sym_auc) (string_off sym_auc)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let camlline_for_any_uno_camltype_son_bare_symbol_off_camlline_for_any_uno_camltype_symbol = function
  | Camlline_for_any_uno_camltype_symbol_t.Camlline_for_any_uno_camltype_son_bare_symbol sym_csb -> sym_csb
  | sym_auc -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_any_uno_camltype_son_bare_symbol_off_camlline_for_any_uno_camltype_symbol"
      "Camlline_for_any_uno_camltype_son_bare_symbol"
      (name sym_auc) "check"
;;

let camlline_for_any_uno_camltype_son_notleaf_symbol_off_camlline_for_any_uno_camltype_symbol = function
  | Camlline_for_any_uno_camltype_symbol_t.Camlline_for_any_uno_camltype_son_notleaf_symbol sym_csn -> sym_csn
  | sym_auc -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_any_uno_camltype_son_notleaf_symbol_off_camlline_for_any_uno_camltype_symbol"
      "Camlline_for_any_uno_camltype_son_notleaf_symbol"
      (name sym_auc) "check"
;;

let camlline_for_any_uno_camltype_son_ofstring_symbol_off_camlline_for_any_uno_camltype_symbol = function
  | Camlline_for_any_uno_camltype_symbol_t.Camlline_for_any_uno_camltype_son_ofstring_symbol sym_cso -> sym_cso
  | sym_auc -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_any_uno_camltype_son_ofstring_symbol_off_camlline_for_any_uno_camltype_symbol"
      "Camlline_for_any_uno_camltype_son_ofstring_symbol"
      (name sym_auc) "check"
;;

let camlline_for_any_uno_camltype_top_symbol_off_camlline_for_any_uno_camltype_symbol = function
  | Camlline_for_any_uno_camltype_symbol_t.Camlline_for_any_uno_camltype_top_symbol sym_uct -> sym_uct
  | sym_auc -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_any_uno_camltype_top_symbol_off_camlline_for_any_uno_camltype_symbol"
      "Camlline_for_any_uno_camltype_top_symbol"
      (name sym_auc) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_camlline_for_any_uno_camltype_son_bare_symbol_off_camlline_for_any_uno_camltype_symbol = function
  | Camlline_for_any_uno_camltype_symbol_t.Camlline_for_any_uno_camltype_son_bare_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_any_uno_camltype_son_notleaf_symbol_off_camlline_for_any_uno_camltype_symbol = function
  | Camlline_for_any_uno_camltype_symbol_t.Camlline_for_any_uno_camltype_son_notleaf_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_any_uno_camltype_son_ofstring_symbol_off_camlline_for_any_uno_camltype_symbol = function
  | Camlline_for_any_uno_camltype_symbol_t.Camlline_for_any_uno_camltype_son_ofstring_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_any_uno_camltype_top_symbol_off_camlline_for_any_uno_camltype_symbol = function
  | Camlline_for_any_uno_camltype_symbol_t.Camlline_for_any_uno_camltype_top_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_pipe_es sym_auc =
  if not (is_camlline_for_any_uno_camltype_son_bare_symbol_off_camlline_for_any_uno_camltype_symbol sym_auc)
  then false
  else
    begin
      let sym_csb = camlline_for_any_uno_camltype_son_bare_symbol_off_camlline_for_any_uno_camltype_symbol sym_auc in
      Camlline_for_any_uno_camltype_son_bare_symbol_v.is_pipe_es sym_csb
    end
;;

let is_pipe_es_any_constructor_of_es_any_tdot_es_any sym_auc =
  if not (is_camlline_for_any_uno_camltype_son_notleaf_symbol_off_camlline_for_any_uno_camltype_symbol sym_auc)
  then false
  else
    begin
      let sym_csn = camlline_for_any_uno_camltype_son_notleaf_symbol_off_camlline_for_any_uno_camltype_symbol sym_auc in
      Camlline_for_any_uno_camltype_son_notleaf_symbol_v.is_pipe_es_any_constructor_of_es_any_tdot_es_any sym_csn
    end
;;

let is_pipe_es_constructor_of_string sym_auc =
  if not (is_camlline_for_any_uno_camltype_son_ofstring_symbol_off_camlline_for_any_uno_camltype_symbol sym_auc)
  then false
  else
    begin
      let sym_cso = camlline_for_any_uno_camltype_son_ofstring_symbol_off_camlline_for_any_uno_camltype_symbol sym_auc in
      Camlline_for_any_uno_camltype_son_ofstring_symbol_v.is_pipe_es_constructor_of_string sym_cso
    end
;;

let is_pipe_et_any_constructor_of_et_any_tdot_et_any sym_auc =
  if not (is_camlline_for_any_uno_camltype_top_symbol_off_camlline_for_any_uno_camltype_symbol sym_auc)
  then false
  else
    begin
      let sym_uct = camlline_for_any_uno_camltype_top_symbol_off_camlline_for_any_uno_camltype_symbol sym_auc in
      Camlline_for_any_uno_camltype_top_symbol_v.is_pipe_et_any_constructor_of_et_any_tdot_et_any sym_uct
    end
;;

let is_type_et_any_equal sym_auc =
  if not (is_camlline_for_any_uno_camltype_top_symbol_off_camlline_for_any_uno_camltype_symbol sym_auc)
  then false
  else
    begin
      let sym_uct = camlline_for_any_uno_camltype_top_symbol_off_camlline_for_any_uno_camltype_symbol sym_auc in
      Camlline_for_any_uno_camltype_top_symbol_v.is_type_et_any_equal sym_uct
    end
;;

let is_type_et_any_equal_et sym_auc =
  if not (is_camlline_for_any_uno_camltype_top_symbol_off_camlline_for_any_uno_camltype_symbol sym_auc)
  then false
  else
    begin
      let sym_uct = camlline_for_any_uno_camltype_top_symbol_off_camlline_for_any_uno_camltype_symbol sym_auc in
      Camlline_for_any_uno_camltype_top_symbol_v.is_type_et_any_equal_et sym_uct
    end
;;

let is_type_et_any_equal_private sym_auc =
  if not (is_camlline_for_any_uno_camltype_top_symbol_off_camlline_for_any_uno_camltype_symbol sym_auc)
  then false
  else
    begin
      let sym_uct = camlline_for_any_uno_camltype_top_symbol_off_camlline_for_any_uno_camltype_symbol sym_auc in
      Camlline_for_any_uno_camltype_top_symbol_v.is_type_et_any_equal_private sym_uct
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let camlline_for_any_uno_camltype_symbol_of_camlline_for_any_uno_camltype_son_bare_symbol sym_csb = 
  Camlline_for_any_uno_camltype_symbol_t.Camlline_for_any_uno_camltype_son_bare_symbol sym_csb
;;

let camlline_for_any_uno_camltype_symbol_of_camlline_for_any_uno_camltype_son_notleaf_symbol sym_csn = 
  Camlline_for_any_uno_camltype_symbol_t.Camlline_for_any_uno_camltype_son_notleaf_symbol sym_csn
;;

let camlline_for_any_uno_camltype_symbol_of_camlline_for_any_uno_camltype_son_ofstring_symbol sym_cso = 
  Camlline_for_any_uno_camltype_symbol_t.Camlline_for_any_uno_camltype_son_ofstring_symbol sym_cso
;;

let camlline_for_any_uno_camltype_symbol_of_camlline_for_any_uno_camltype_top_symbol sym_uct = 
  Camlline_for_any_uno_camltype_symbol_t.Camlline_for_any_uno_camltype_top_symbol sym_uct
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let pipe_es = camlline_for_any_uno_camltype_symbol_of_camlline_for_any_uno_camltype_son_bare_symbol Camlline_for_any_uno_camltype_son_bare_symbol_v.pipe_es;;

let pipe_es_any_constructor_of_es_any_tdot_es_any = camlline_for_any_uno_camltype_symbol_of_camlline_for_any_uno_camltype_son_notleaf_symbol Camlline_for_any_uno_camltype_son_notleaf_symbol_v.pipe_es_any_constructor_of_es_any_tdot_es_any;;

let pipe_es_constructor_of_string = camlline_for_any_uno_camltype_symbol_of_camlline_for_any_uno_camltype_son_ofstring_symbol Camlline_for_any_uno_camltype_son_ofstring_symbol_v.pipe_es_constructor_of_string;;

let pipe_et_any_constructor_of_et_any_tdot_et_any = camlline_for_any_uno_camltype_symbol_of_camlline_for_any_uno_camltype_top_symbol Camlline_for_any_uno_camltype_top_symbol_v.pipe_et_any_constructor_of_et_any_tdot_et_any;;

let type_et_any_equal = camlline_for_any_uno_camltype_symbol_of_camlline_for_any_uno_camltype_top_symbol Camlline_for_any_uno_camltype_top_symbol_v.type_et_any_equal;;

let type_et_any_equal_et = camlline_for_any_uno_camltype_symbol_of_camlline_for_any_uno_camltype_top_symbol Camlline_for_any_uno_camltype_top_symbol_v.type_et_any_equal_et;;

let type_et_any_equal_private = camlline_for_any_uno_camltype_symbol_of_camlline_for_any_uno_camltype_top_symbol Camlline_for_any_uno_camltype_top_symbol_v.type_et_any_equal_private;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Camlline_for_any_uno_camltype_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Camlline_for_any_uno_camltype_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try camlline_for_any_uno_camltype_symbol_of_camlline_for_any_uno_camltype_son_bare_symbol
      (Camlline_for_any_uno_camltype_son_bare_symbol_v.make nam s)
  with Failure "Not_Camlline_for_any_uno_camltype_son_bare_symbol:Camlline_for_any_uno_camltype_son_bare_symbol_v:make" ->
  try camlline_for_any_uno_camltype_symbol_of_camlline_for_any_uno_camltype_son_notleaf_symbol
      (Camlline_for_any_uno_camltype_son_notleaf_symbol_v.make nam s)
  with Failure "Not_Camlline_for_any_uno_camltype_son_notleaf_symbol:Camlline_for_any_uno_camltype_son_notleaf_symbol_v:make" ->
  try camlline_for_any_uno_camltype_symbol_of_camlline_for_any_uno_camltype_son_ofstring_symbol
      (Camlline_for_any_uno_camltype_son_ofstring_symbol_v.make nam s)
  with Failure "Not_Camlline_for_any_uno_camltype_son_ofstring_symbol:Camlline_for_any_uno_camltype_son_ofstring_symbol_v:make" ->
  try camlline_for_any_uno_camltype_symbol_of_camlline_for_any_uno_camltype_top_symbol
      (Camlline_for_any_uno_camltype_top_symbol_v.make nam s)
  with Failure "Not_Camlline_for_any_uno_camltype_top_symbol:Camlline_for_any_uno_camltype_top_symbol_v:make" ->
  failwith "Not_a_topson_notleaf:Camlline_for_any_uno_camltype_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Camlline_for_any_uno_camltype_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Camlline_for_any_uno_camltype_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Camlline_for_any_uno_camltype_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Camlline_for_any_uno_camltype subtype" nam s)
      "it does not exists"
      "Check file camlline_for_any_uno_camltype_symbol_v.ml"
    in
    failwith "Not_a_valid_camlline_for_any_uno_camltype_symbol:Camlline_for_any_uno_camltype_symbol_v.ml:make"
;;


(** created by version v1.11 of ./generator camlline_for_any_uno_camltype implementation_for_symbol symbol at 9:15 6 May 2013. *)



