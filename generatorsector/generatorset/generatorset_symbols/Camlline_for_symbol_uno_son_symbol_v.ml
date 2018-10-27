(** {3 Camlline_for_symbol_uno_son_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Camlline_for_symbol_uno_son_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Camlline_for_symbol_uno_son_symbol_t.Camlline_for_symbol_uno_son_bare_symbol sym_usb ->
    Camlline_for_symbol_uno_son_bare_symbol_v.name sym_usb
  | Camlline_for_symbol_uno_son_symbol_t.Camlline_for_symbol_uno_son_ofstring_symbol sym_uso ->
    Camlline_for_symbol_uno_son_ofstring_symbol_v.name sym_uso
  | Camlline_for_symbol_uno_son_symbol_t.Camlline_for_symbol_uno_son_notleaf_symbol sym_usn ->
    Camlline_for_symbol_uno_son_notleaf_symbol_v.name sym_usn
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Camlline_for_symbol_uno_son_symbol_t.Camlline_for_symbol_uno_son_bare_symbol sym_usb ->
  Camlline_for_symbol_uno_son_bare_symbol_v.string_off sym_usb
  | Camlline_for_symbol_uno_son_symbol_t.Camlline_for_symbol_uno_son_ofstring_symbol sym_uso ->
  Camlline_for_symbol_uno_son_ofstring_symbol_v.string_off sym_uso
  | Camlline_for_symbol_uno_son_symbol_t.Camlline_for_symbol_uno_son_notleaf_symbol sym_usn ->
  Camlline_for_symbol_uno_son_notleaf_symbol_v.string_off sym_usn
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_sus =
  Format.sprintf "Camlline_for_symbol_uno_son_symbol_t.%s" (String.capitalize (name sym_sus))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_sus =
  Format.sprintf "%s \"%s\"" (longname sym_sus) (string_off sym_sus)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let camlline_for_symbol_uno_son_bare_symbol_off_camlline_for_symbol_uno_son_symbol = function
  | Camlline_for_symbol_uno_son_symbol_t.Camlline_for_symbol_uno_son_bare_symbol sym_usb -> sym_usb
  | sym_sus -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_symbol_uno_son_bare_symbol_off_camlline_for_symbol_uno_son_symbol"
      "Camlline_for_symbol_uno_son_bare_symbol"
      (name sym_sus) "check"
;;

let camlline_for_symbol_uno_son_ofstring_symbol_off_camlline_for_symbol_uno_son_symbol = function
  | Camlline_for_symbol_uno_son_symbol_t.Camlline_for_symbol_uno_son_ofstring_symbol sym_uso -> sym_uso
  | sym_sus -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_symbol_uno_son_ofstring_symbol_off_camlline_for_symbol_uno_son_symbol"
      "Camlline_for_symbol_uno_son_ofstring_symbol"
      (name sym_sus) "check"
;;

let camlline_for_symbol_uno_son_notleaf_symbol_off_camlline_for_symbol_uno_son_symbol = function
  | Camlline_for_symbol_uno_son_symbol_t.Camlline_for_symbol_uno_son_notleaf_symbol sym_usn -> sym_usn
  | sym_sus -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_symbol_uno_son_notleaf_symbol_off_camlline_for_symbol_uno_son_symbol"
      "Camlline_for_symbol_uno_son_notleaf_symbol"
      (name sym_sus) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_camlline_for_symbol_uno_son_bare_symbol_off_camlline_for_symbol_uno_son_symbol = function
  | Camlline_for_symbol_uno_son_symbol_t.Camlline_for_symbol_uno_son_bare_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_symbol_uno_son_ofstring_symbol_off_camlline_for_symbol_uno_son_symbol = function
  | Camlline_for_symbol_uno_son_symbol_t.Camlline_for_symbol_uno_son_ofstring_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_symbol_uno_son_notleaf_symbol_off_camlline_for_symbol_uno_son_symbol = function
  | Camlline_for_symbol_uno_son_symbol_t.Camlline_for_symbol_uno_son_notleaf_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_pipe_esstring_arrow_es sym_sus =
  if not (is_camlline_for_symbol_uno_son_bare_symbol_off_camlline_for_symbol_uno_son_symbol sym_sus)
  then false
  else
    begin
      let sym_usb = camlline_for_symbol_uno_son_bare_symbol_off_camlline_for_symbol_uno_son_symbol sym_sus in
      Camlline_for_symbol_uno_son_bare_symbol_v.is_pipe_esstring_arrow_es sym_usb
    end
;;

let is_pipe_esstring_arrow_es_sarg sym_sus =
  if not (is_camlline_for_symbol_uno_son_ofstring_symbol_off_camlline_for_symbol_uno_son_symbol sym_sus)
  then false
  else
    begin
      let sym_uso = camlline_for_symbol_uno_son_ofstring_symbol_off_camlline_for_symbol_uno_son_symbol sym_sus in
      Camlline_for_symbol_uno_son_ofstring_symbol_v.is_pipe_esstring_arrow_es_sarg sym_uso
    end
;;

let is_lpar_es_symbol_vdot_make_of_string_of_string_rpar sym_sus =
  if not (is_camlline_for_symbol_uno_son_notleaf_symbol_off_camlline_for_symbol_uno_son_symbol sym_sus)
  then false
  else
    begin
      let sym_usn = camlline_for_symbol_uno_son_notleaf_symbol_off_camlline_for_symbol_uno_son_symbol sym_sus in
      Camlline_for_symbol_uno_son_notleaf_symbol_v.is_lpar_es_symbol_vdot_make_of_string_of_string_rpar sym_usn
    end
;;

let is_failwith_not_es_symbol sym_sus =
  if not (is_camlline_for_symbol_uno_son_notleaf_symbol_off_camlline_for_symbol_uno_son_symbol sym_sus)
  then false
  else
    begin
      let sym_usn = camlline_for_symbol_uno_son_notleaf_symbol_off_camlline_for_symbol_uno_son_symbol sym_sus in
      Camlline_for_symbol_uno_son_notleaf_symbol_v.is_failwith_not_es_symbol sym_usn
    end
;;

let is_with_failure_not_es_symbol_arrow sym_sus =
  if not (is_camlline_for_symbol_uno_son_notleaf_symbol_off_camlline_for_symbol_uno_son_symbol sym_sus)
  then false
  else
    begin
      let sym_usn = camlline_for_symbol_uno_son_notleaf_symbol_off_camlline_for_symbol_uno_son_symbol sym_sus in
      Camlline_for_symbol_uno_son_notleaf_symbol_v.is_with_failure_not_es_symbol_arrow sym_usn
    end
;;

let is_es_symbol_vdot_string_off_sym_as sym_sus =
  if not (is_camlline_for_symbol_uno_son_notleaf_symbol_off_camlline_for_symbol_uno_son_symbol sym_sus)
  then false
  else
    begin
      let sym_usn = camlline_for_symbol_uno_son_notleaf_symbol_off_camlline_for_symbol_uno_son_symbol sym_sus in
      Camlline_for_symbol_uno_son_notleaf_symbol_v.is_es_symbol_vdot_string_off_sym_as sym_usn
    end
;;

let is_es_symbol_vdot_name_sym_as sym_sus =
  if not (is_camlline_for_symbol_uno_son_notleaf_symbol_off_camlline_for_symbol_uno_son_symbol sym_sus)
  then false
  else
    begin
      let sym_usn = camlline_for_symbol_uno_son_notleaf_symbol_off_camlline_for_symbol_uno_son_symbol sym_sus in
      Camlline_for_symbol_uno_son_notleaf_symbol_v.is_es_symbol_vdot_name_sym_as sym_usn
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let camlline_for_symbol_uno_son_symbol_of_camlline_for_symbol_uno_son_bare_symbol sym_usb = 
  Camlline_for_symbol_uno_son_symbol_t.Camlline_for_symbol_uno_son_bare_symbol sym_usb
;;

let camlline_for_symbol_uno_son_symbol_of_camlline_for_symbol_uno_son_ofstring_symbol sym_uso = 
  Camlline_for_symbol_uno_son_symbol_t.Camlline_for_symbol_uno_son_ofstring_symbol sym_uso
;;

let camlline_for_symbol_uno_son_symbol_of_camlline_for_symbol_uno_son_notleaf_symbol sym_usn = 
  Camlline_for_symbol_uno_son_symbol_t.Camlline_for_symbol_uno_son_notleaf_symbol sym_usn
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let pipe_esstring_arrow_es = camlline_for_symbol_uno_son_symbol_of_camlline_for_symbol_uno_son_bare_symbol Camlline_for_symbol_uno_son_bare_symbol_v.pipe_esstring_arrow_es;;

let pipe_esstring_arrow_es_sarg = camlline_for_symbol_uno_son_symbol_of_camlline_for_symbol_uno_son_ofstring_symbol Camlline_for_symbol_uno_son_ofstring_symbol_v.pipe_esstring_arrow_es_sarg;;

let lpar_es_symbol_vdot_make_of_string_of_string_rpar = camlline_for_symbol_uno_son_symbol_of_camlline_for_symbol_uno_son_notleaf_symbol Camlline_for_symbol_uno_son_notleaf_symbol_v.lpar_es_symbol_vdot_make_of_string_of_string_rpar;;

let failwith_not_es_symbol = camlline_for_symbol_uno_son_symbol_of_camlline_for_symbol_uno_son_notleaf_symbol Camlline_for_symbol_uno_son_notleaf_symbol_v.failwith_not_es_symbol;;

let with_failure_not_es_symbol_arrow = camlline_for_symbol_uno_son_symbol_of_camlline_for_symbol_uno_son_notleaf_symbol Camlline_for_symbol_uno_son_notleaf_symbol_v.with_failure_not_es_symbol_arrow;;

let es_symbol_vdot_string_off_sym_as = camlline_for_symbol_uno_son_symbol_of_camlline_for_symbol_uno_son_notleaf_symbol Camlline_for_symbol_uno_son_notleaf_symbol_v.es_symbol_vdot_string_off_sym_as;;

let es_symbol_vdot_name_sym_as = camlline_for_symbol_uno_son_symbol_of_camlline_for_symbol_uno_son_notleaf_symbol Camlline_for_symbol_uno_son_notleaf_symbol_v.es_symbol_vdot_name_sym_as;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Camlline_for_symbol_uno_son_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Camlline_for_symbol_uno_son_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try camlline_for_symbol_uno_son_symbol_of_camlline_for_symbol_uno_son_bare_symbol
      (Camlline_for_symbol_uno_son_bare_symbol_v.make nam s)
  with Failure "Not_Camlline_for_symbol_uno_son_bare_symbol:Camlline_for_symbol_uno_son_bare_symbol_v:make" ->
  try camlline_for_symbol_uno_son_symbol_of_camlline_for_symbol_uno_son_ofstring_symbol
      (Camlline_for_symbol_uno_son_ofstring_symbol_v.make nam s)
  with Failure "Not_Camlline_for_symbol_uno_son_ofstring_symbol:Camlline_for_symbol_uno_son_ofstring_symbol_v:make" ->
  try camlline_for_symbol_uno_son_symbol_of_camlline_for_symbol_uno_son_notleaf_symbol
      (Camlline_for_symbol_uno_son_notleaf_symbol_v.make nam s)
  with Failure "Not_Camlline_for_symbol_uno_son_notleaf_symbol:Camlline_for_symbol_uno_son_notleaf_symbol_v:make" ->
  failwith "Not_a_topson_notleaf:Camlline_for_symbol_uno_son_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Camlline_for_symbol_uno_son_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Camlline_for_symbol_uno_son_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Camlline_for_symbol_uno_son_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Camlline_for_symbol_uno_son subtype" nam s)
      "it does not exists"
      "Check file camlline_for_symbol_uno_son_symbol_v.ml"
    in
    failwith "Not_a_valid_camlline_for_symbol_uno_son_symbol:Camlline_for_symbol_uno_son_symbol_v.ml:make"
;;


(** created by version v1.11 of ./generator camlline_for_symbol_uno_son implementation_for_symbol symbol at 9:15 6 May 2013. *)



