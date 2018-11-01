(** {3 Section_for_symbol_body_son_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Section_for_symbol_body_son_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Section_for_symbol_body_son_symbol_t.Section_for_symbol_body_son_bare_symbol sym_bsb ->
    Section_for_symbol_body_son_bare_symbol_v.name sym_bsb
  | Section_for_symbol_body_son_symbol_t.Section_for_symbol_body_son_ofstring_symbol sym_bso ->
    Section_for_symbol_body_son_ofstring_symbol_v.name sym_bso
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Section_for_symbol_body_son_symbol_t.Section_for_symbol_body_son_bare_symbol sym_bsb ->
  Section_for_symbol_body_son_bare_symbol_v.string_off sym_bsb
  | Section_for_symbol_body_son_symbol_t.Section_for_symbol_body_son_ofstring_symbol sym_bso ->
  Section_for_symbol_body_son_ofstring_symbol_v.string_off sym_bso
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_sbs =
  Format.sprintf "Section_for_symbol_body_son_symbol_t.%s" (String.capitalize_ascii (name sym_sbs))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_sbs =
  Format.sprintf "%s \"%s\"" (longname sym_sbs) (string_off sym_sbs)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let section_for_symbol_body_son_bare_symbol_off_section_for_symbol_body_son_symbol = function
  | Section_for_symbol_body_son_symbol_t.Section_for_symbol_body_son_bare_symbol sym_bsb -> sym_bsb
  | sym_sbs -> Error_messages_v.print_fatal_error
      nam_cod "section_for_symbol_body_son_bare_symbol_off_section_for_symbol_body_son_symbol"
      "Section_for_symbol_body_son_bare_symbol"
      (name sym_sbs) "check"
;;

let section_for_symbol_body_son_ofstring_symbol_off_section_for_symbol_body_son_symbol = function
  | Section_for_symbol_body_son_symbol_t.Section_for_symbol_body_son_ofstring_symbol sym_bso -> sym_bso
  | sym_sbs -> Error_messages_v.print_fatal_error
      nam_cod "section_for_symbol_body_son_ofstring_symbol_off_section_for_symbol_body_son_symbol"
      "Section_for_symbol_body_son_ofstring_symbol"
      (name sym_sbs) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_section_for_symbol_body_son_bare_symbol_off_section_for_symbol_body_son_symbol = function
  | Section_for_symbol_body_son_symbol_t.Section_for_symbol_body_son_bare_symbol _ -> true
  | _ -> false
;;

let is_section_for_symbol_body_son_ofstring_symbol_off_section_for_symbol_body_son_symbol = function
  | Section_for_symbol_body_son_symbol_t.Section_for_symbol_body_son_ofstring_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_make_ecstring_pattern_bare_for_symbol sym_sbs =
  if not (is_section_for_symbol_body_son_bare_symbol_off_section_for_symbol_body_son_symbol sym_sbs)
  then false
  else
    begin
      let sym_bsb = section_for_symbol_body_son_bare_symbol_off_section_for_symbol_body_son_symbol sym_sbs in
      Section_for_symbol_body_son_bare_symbol_v.is_make_ecstring_pattern_bare_for_symbol sym_bsb
    end
;;

let is_pipe_topson_symbol_type_bare_constructors sym_sbs =
  if not (is_section_for_symbol_body_son_bare_symbol_off_section_for_symbol_body_son_symbol sym_sbs)
  then false
  else
    begin
      let sym_bsb = section_for_symbol_body_son_bare_symbol_off_section_for_symbol_body_son_symbol sym_sbs in
      Section_for_symbol_body_son_bare_symbol_v.is_pipe_topson_symbol_type_bare_constructors sym_bsb
    end
;;

let is_make_ecstring_pattern_ofstring_for_symbol sym_sbs =
  if not (is_section_for_symbol_body_son_ofstring_symbol_off_section_for_symbol_body_son_symbol sym_sbs)
  then false
  else
    begin
      let sym_bso = section_for_symbol_body_son_ofstring_symbol_off_section_for_symbol_body_son_symbol sym_sbs in
      Section_for_symbol_body_son_ofstring_symbol_v.is_make_ecstring_pattern_ofstring_for_symbol sym_bso
    end
;;

let is_pipe_topson_symbol_type_ofstring_constructors sym_sbs =
  if not (is_section_for_symbol_body_son_ofstring_symbol_off_section_for_symbol_body_son_symbol sym_sbs)
  then false
  else
    begin
      let sym_bso = section_for_symbol_body_son_ofstring_symbol_off_section_for_symbol_body_son_symbol sym_sbs in
      Section_for_symbol_body_son_ofstring_symbol_v.is_pipe_topson_symbol_type_ofstring_constructors sym_bso
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let section_for_symbol_body_son_symbol_of_section_for_symbol_body_son_bare_symbol sym_bsb = 
  Section_for_symbol_body_son_symbol_t.Section_for_symbol_body_son_bare_symbol sym_bsb
;;

let section_for_symbol_body_son_symbol_of_section_for_symbol_body_son_ofstring_symbol sym_bso = 
  Section_for_symbol_body_son_symbol_t.Section_for_symbol_body_son_ofstring_symbol sym_bso
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let make_ecstring_pattern_bare_for_symbol = section_for_symbol_body_son_symbol_of_section_for_symbol_body_son_bare_symbol Section_for_symbol_body_son_bare_symbol_v.make_ecstring_pattern_bare_for_symbol;;

let pipe_topson_symbol_type_bare_constructors = section_for_symbol_body_son_symbol_of_section_for_symbol_body_son_bare_symbol Section_for_symbol_body_son_bare_symbol_v.pipe_topson_symbol_type_bare_constructors;;

let make_ecstring_pattern_ofstring_for_symbol = section_for_symbol_body_son_symbol_of_section_for_symbol_body_son_ofstring_symbol Section_for_symbol_body_son_ofstring_symbol_v.make_ecstring_pattern_ofstring_for_symbol;;

let pipe_topson_symbol_type_ofstring_constructors = section_for_symbol_body_son_symbol_of_section_for_symbol_body_son_ofstring_symbol Section_for_symbol_body_son_ofstring_symbol_v.pipe_topson_symbol_type_ofstring_constructors;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Section_for_symbol_body_son_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Section_for_symbol_body_son_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try section_for_symbol_body_son_symbol_of_section_for_symbol_body_son_bare_symbol
      (Section_for_symbol_body_son_bare_symbol_v.make nam s)
  with Failure "Not_Section_for_symbol_body_son_bare_symbol:Section_for_symbol_body_son_bare_symbol_v:make" ->
  try section_for_symbol_body_son_symbol_of_section_for_symbol_body_son_ofstring_symbol
      (Section_for_symbol_body_son_ofstring_symbol_v.make nam s)
  with Failure "Not_Section_for_symbol_body_son_ofstring_symbol:Section_for_symbol_body_son_ofstring_symbol_v:make" ->
  failwith "Not_a_topson_notleaf:Section_for_symbol_body_son_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Section_for_symbol_body_son_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Section_for_symbol_body_son_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Section_for_symbol_body_son_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Section_for_symbol_body_son subtype" nam s)
      "it does not exists"
      "Check file section_for_symbol_body_son_symbol_v.ml"
    in
    failwith "Not_a_valid_section_for_symbol_body_son_symbol:Section_for_symbol_body_son_symbol_v.ml:make"
;;


(** created by version v1.11 of ./generator section_for_symbol_body_son implementation_for_symbol symbol at 10:33 30 Apr 2013. *)



